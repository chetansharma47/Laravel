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
        $data = Message::where(function ($query) use ($user, $touser) {
            $query->where("from_user_id", $user)
                ->where("to_user_id", $touser);
        })
            ->orWhere(function ($query) use ($user, $touser) {
                $query->where("from_user_id", $touser)
                    ->where("to_user_id", $user);
            })
        //    latest data with paginate pagination.
            ->latest()
            ->paginate(5);
            // ->get();
            
        return $this->responseOk("Messages fetched successfully.",["message" => $data]);
    }


// =======================================
// backup code

                public function latestmessage(Request $request) {
                    $user = auth()->user()->id;
                    // $search=$request->input('search')
                    $case = 'CASE 
                    WHEN add_friends.from_user_id = ' . $user . ' THEN add_friends.to_user_id
                    WHEN add_friends.to_user_id = ' . $user . ' THEN add_friends.from_user_id
                    END';
                    $data = DB::table('add_friends')
                        ->select(
                            'add_friends.*',
                            DB::raw('MAX(messages.created_at) as latest_message_date'),
                            // 'users.first_name
                          
                            DB::raw('messages.message as latest_message'),
                            DB::raw('messages.from_user_id as message_from'),
                            DB::raw('messages.from_user_id ='.$user.' as self_message' ),
                            DB::raw('2 as unread_count' ),
        
                            
                            DB::raw("(CASE 
                            WHEN add_friends.from_user_id = $user THEN CONCAT(to_user.first_name, ' ', to_user.last_name)
                            WHEN add_friends.to_user_id = $user THEN CONCAT(from_user.first_name, ' ', from_user.last_name)
                         END) AS name"),
                         DB::raw("(CASE 
                            WHEN add_friends.from_user_id = $user THEN to_user.id
                            WHEN add_friends.to_user_id = $user THEN from_user.id
                         END) AS user_id"),
                         DB::raw("(CASE 
                            WHEN add_friends.from_user_id = $user THEN to_user.image
                            WHEN add_friends.to_user_id = $user THEN from_user.image
                         END) AS image")
                            // 'from_user.first_name as from_user_name',
                            // 'to_user.first_name as to_user_name'
                            )
                            ->where('status','Accepted')
                            
                        ->leftJoin('messages', function($join) use ($user, $case) {
                            $join->where("messages.id", "=", DB::raw("(SELECT MAX(m.id) FROM messages m WHERE ($case) = m.from_user_id OR ($case) = m.to_user_id)"));
                        })
                        
                        ->leftJoin('users as from_user', function($join) use ($user) {
                            $join->on('from_user.id', '=', 'add_friends.from_user_id');
                        })
        
                        ->leftJoin('users as to_user', function($join) use ($user) {
                    $join->on('to_user.id', '=', 'add_friends.to_user_id');
                })
        
                ->where(function($query) use ($user) {
                    $query->where('add_friends.from_user_id', $user)
                          ->orWhere('add_friends.to_user_id', $user);
                })
                        ->groupBy('add_friends.id', 'messages.message', "messages.from_user_id",'name')
                        ->orderBy('latest_message_date', 'desc')
                        ->get();
                        // ->toSql();
                        return $this->responseOk("Friend list fetched successfully. ",["msg-list"=>$data]);
            }

            // ===================


        //     public function latestmessage(Request $request) {
        //         $user = auth()->user()->id;
        //         $search=$request->message_search;
        //         $case = 'CASE 
        //         WHEN add_friends.from_user_id = ' . $user . ' THEN add_friends.to_user_id
        //         WHEN add_friends.to_user_id = ' . $user . ' THEN add_friends.from_user_id
        //         END';
        //         $data = DB::table('add_friends')
        //             ->select(
        //                 'add_friends.*',
        //                 DB::raw('MAX(messages.created_at) as latest_message_date'),
        //                 // 'users.first_name
                      
        //                 DB::raw('messages.message as latest_message'),
        //                 DB::raw('messages.from_user_id as message_from'),
        //                 DB::raw('messages.from_user_id ='.$user.' as self_message' ),
        //                 DB::raw('2 as unread_count' ),
    
                        
        //                 DB::raw("(CASE 
        //                 WHEN add_friends.from_user_id = $user THEN CONCAT(to_user.first_name, ' ', to_user.last_name)
        //                 WHEN add_friends.to_user_id = $user THEN CONCAT(from_user.first_name, ' ', from_user.last_name)
        //              END) AS name"),
        //              DB::raw("(CASE 
        //                 WHEN add_friends.from_user_id = $user THEN to_user.id
        //                 WHEN add_friends.to_user_id = $user THEN from_user.id
        //              END) AS user_id"),
        //              DB::raw("(CASE 
        //                 WHEN add_friends.from_user_id = $user THEN to_user.image
        //                 WHEN add_friends.to_user_id = $user THEN from_user.image
        //              END) AS image")
        //                 // 'from_user.first_name as from_user_name',
        //                 // 'to_user.first_name as to_user_name'
        //                 )
        //                 ->where('status','Accepted')
                        
        //             ->leftJoin('messages', function($join) use ($user, $case) {
        //                 $join->where("messages.id", "=", DB::raw("(SELECT MAX(m.id) FROM messages m WHERE ($case) = m.from_user_id OR ($case) = m.to_user_id)"));
        //             })
                    
        //             ->leftJoin('users as from_user', function($join) use ($user) {
        //                 $join->on('from_user.id', '=', 'add_friends.from_user_id');
        //             })
    
        //             ->leftJoin('users as to_user', function($join) use ($user) {
        //         $join->on('to_user.id', '=', 'add_friends.to_user_id');
        //     });

    
        //     $datas=Message::where(function ($q) use ($search){
        //         $q->where('message', 'LIKE', '%' . $search . '%');
              
        //     })

        //     ->where(function($query) use ($user) {
        //         $query->where('add_friends.from_user_id', $user)
        //               ->orWhere('add_friends.to_user_id', $user);
        //     })

           

        //             ->groupBy('add_friends.id', 'messages.message', "messages.from_user_id",'name')
        //             ->orderBy('latest_message_date', 'desc')
        //             ->get();
        //             // ->toSql();
        //             return $this->responseOk("Friend list fetched successfully. ",["msg-list"=>$data]);
        // }











               

          
                
    public function deleteChat(Request $request, $id)
    {
        $del = Message::find($id)
            ->delete();
        return $this->responseOk(["message deleted successfully!"]);
    }

    
   
   
   
    // public function deletemsgChat(Request $request)
    // {
    //     $fromUser = $request->id;
    //     $users = User::where('id', $fromUser) 
    //                  ->select(['socket_id']) 
    //                  ->first(); 

                     
    //     return $this->responseOk(['data' => $users]); 
    // }
    


}