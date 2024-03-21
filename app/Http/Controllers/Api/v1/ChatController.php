<?php

namespace App\Http\Controllers\Api\v1;

use Illuminate\Http\Request;
use App\Models\Message;
use App\Models\AddFriend;
use App\User;
use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Api\v1\ResponseController;

class ChatController extends ResponseController
{
    public function userChat(Request $request)
    {
        $user = auth()->user()->id;
        $touser = $request->to_user_id;

        // Update is_read to 1 for unread messages
        DB::table('messages')
            ->where('is_read', 0) // Only update unread messages
            ->where('to_user_id', $user)
            ->where('from_user_id',$touser)
            ->update(['is_read' => 1]);

        // Fetch latest messages with pagination
        $data = Message::where(function ($query) use ($user, $touser) {
            $query->where("from_user_id", $user)
                ->where("to_user_id", $touser);
        })
        ->orWhere(function ($query) use ($user, $touser) {
            $query->where("from_user_id", $touser)
                ->where("to_user_id", $user);
        })
        ->latest()
        ->paginate(25);

        return $this->responseOk("Messages fetched successfully.",["message" => $data]);
    }


    public function latestmessage(Request $request)
    {
        $user = auth()->user()->id;
        $search = $request->search;

        $case = 'CASE
            WHEN add_friends.from_user_id = ' . $user . ' THEN add_friends.to_user_id
            WHEN add_friends.to_user_id = ' . $user . ' THEN add_friends.from_user_id
            END';

        $data = DB::table('add_friends')
            ->select(
                'add_friends.*',
                DB::raw('MAX(messages.created_at) as latest_message_date'),
                DB::raw('messages.message as latest_message'),
                DB::raw('messages.from_user_id as message_from'),
                DB::raw('messages.from_user_id =' . $user . ' as self_message'),

                DB::raw("(CASE
                    WHEN add_friends.from_user_id = $user THEN CONCAT(to_user.first_name, ' ', to_user.last_name)
                    WHEN add_friends.to_user_id = $user THEN CONCAT(from_user.first_name, ' ', from_user.last_name)
                    END) AS name"),

                DB::raw("(CASE
                    WHEN add_friends.from_user_id = $user THEN to_user.display_name
                    WHEN add_friends.to_user_id = $user THEN from_user.display_name
                    END) AS display_name"),

                DB::raw("(CASE
                    WHEN add_friends.from_user_id = $user THEN to_user.id
                    WHEN add_friends.to_user_id = $user THEN from_user.id
                 END) AS user_id"),

                 DB::raw("(CASE
                 WHEN add_friends.from_user_id = $user THEN CONCAT('http://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/public/storage_old/users/', to_user.image)
                 WHEN add_friends.to_user_id = $user THEN CONCAT('http://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/public/storage_old/users/', from_user.image)
             END) AS image"),



                 DB::raw("(CASE
                WHEN add_friends.from_user_id = $user AND to_user.socket_id IS NOT NULL THEN true
                WHEN add_friends.to_user_id = $user AND from_user.socket_id IS NOT NULL THEN true
                ELSE false
             END) AS online"),

             // Calculate the sum of unread messages for each friend
             DB::raw('(SELECT SUM(CASE WHEN m.is_read = 0 AND m.from_user_id != ' . $user . ' THEN 1 ELSE 0 END)
             FROM messages m
             WHERE (m.from_user_id = add_friends.from_user_id AND m.to_user_id = add_friends.to_user_id)
             OR (m.from_user_id = add_friends.to_user_id AND m.to_user_id = add_friends.from_user_id)) AS unread'),
            )
            ->where('status', 'Accepted')

            ->join('messages', function ($join) use ($user, $case) {
                $join->where("messages.id", "=", DB::raw("(SELECT MAX(m.id) FROM messages m WHERE ($case) = m.from_user_id OR ($case) = m.to_user_id)"));
            })

            // =========
            // ->join('messages', function ($join) use ($user) {
            //     $join->on(function ($query) use ($user) {
            //         $query->where('messages.id', '=', DB::raw('(SELECT MAX(m.id) FROM messages m WHERE m.from_user_id = ' . $user . ' AND m.to_user_id = add_friends.to_user_id)'));
            //         $query->orWhere('messages.id', '=', DB::raw('(SELECT MAX(m.id) FROM messages m WHERE m.from_user_id = add_friends.from_user_id AND m.to_user_id = ' . $user . ')'));
            //     });
            // })

            // =====
            ->leftJoin('users as from_user', function ($join) use ($user) {
                $join->on('from_user.id', '=', 'add_friends.from_user_id');
            })
            ->leftJoin('users as to_user', function ($join) use ($user) {
                $join->on('to_user.id', '=', 'add_friends.to_user_id');
            })
            ->where(function ($query) use ($user) {
                $query->where('add_friends.from_user_id', $user)
                    ->orWhere('add_friends.to_user_id', $user);
            })
            ->groupBy('add_friends.id', 'messages.message', "messages.from_user_id", 'name')
            ->orderBy('latest_message_date', 'desc');

        if ($search) {
            $data->having('name', 'LIKE', '%' . $search . '%')
                ->orHaving('display_name', 'LIKE', '%' . $search . '%');
        }
        $result = $data->get();
        // ->latest()

        // Update is_read to 1 for unread messages
        // DB::table('messages')
        //     ->where('is_read', 0) // Only update unread messages
        //     ->where('to_user_id', '=', $user) // Exclude messages sent by the authenticated user
        //     ->update(['is_read' => 1]);

        return $this->responseOk("Friend list fetched successfully.", ["friend_list" => $result]);
    }




    public function deleteChat(Request $request, $id)
    {
        $del = Message::find($id)
            ->delete();
        return $this->responseOk(["message deleted successfully!"]);
    }




//     public function uploadImage(Request $request)
// {
//     // Validation rules for the image
//     $validator = Validator::make($request->all(), [
//         'image' => 'required|mimes:png,jpg,jpeg,gif'
//     ]);

//     // Check if validation fails
//     if ($validator->fails()) {
//         return response()->json([
//             'status' => false,
//             'message' => 'Please fix the errors',
//             'errors' => $validator->errors()
//         ]);
//     }

//     // Handle image upload
//     $img = $request->file('image'); // Retrieving the uploaded image
//     $ext = $img->getClientOriginalExtension(); // Get the original extension of the file
//     $imageName = time() . '.' . $ext; // Generate a unique name for the image
//     $img->move(public_path('uploads'), $imageName); // Move the image to the 'public/uploads' directory

//     // Create a new Image model instance
//     $image = new Image;
//     $image->image = $imageName; // Assign the image name to the 'image' property of the Image model
//     $image->save(); // Save the model instance to the database

//     // Return response with success message and image details
//     return response()->json([
//         'status' => true,
//         'message' => 'Image uploaded successfully.',
//         'path' => asset('uploads/' . $imageName), // Provide the URL to access the uploaded image
//         'data' => $image // Provide the Image model data
//     ]);





// }


}
