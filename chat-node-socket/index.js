// const express = require("express");
// const con = require("./config");
// const http = require("http");
// const { Server } = require("socket.io");
// const { resourceLimits } = require("worker_threads");
// const app = express();
// app.use(express.json());
// const server = http.createServer(app);
// const io = new Server(server);

// // socket.io start
// io.on("connection", async (socket) => {
//     const headers = socket.request.headers;
//     const user_id = headers["user_id"];
//     //  var user_id=socket.request.user_id;

//     console.log("user connected:", user_id);
//     try {
//         await con.query("UPDATE users SET socket_id=? WHERE id=?", [
//             socket.id,
//             user_id,
//         ]);
//         console.log("id inserted into database");

//         socket.on("chat_message", async (msg) => {
//             // message query
//             try {
//                 var currentdate = new Date();
//                 var datetime =
//                     currentdate.getFullYear() +
//                     "-" +
//                     currentdate.getMonth() +
//                     "-" +
//                     currentdate.getDate() +
//                     " " +
//                     currentdate.getHours() +
//                     ":" +
//                     currentdate.getMinutes() +
//                     ":" +
//                     currentdate.getSeconds();

//                 const result = await con.query(
//                     "INSERT INTO messages SET  message = ?, from_user_id = ?, to_user_id = ?,created_at=?,updated_at=?",

//                     [
//                         msg.message,
//                         msg.from_user_id,
//                         msg.to_user_id,
//                         datetime,
//                         datetime,
//                     ]
//                 );

//                 // console.log("this is inserted data", result);

//                 console.log("Message inserted into database");

//                 const data = await con.query(
//                     "SELECT socket_id FROM users WHERE id = ?",
//                     [msg.to_user_id]
//                 );
//                 console.log(data);

//                 // socket.emit is use to  self send message except all
//                 const results = {
//                     id: result[0].insertId,
//                     message: msg.message,
//                     from_user_id: msg.from_user_id,
//                     to_user_id: msg.to_user_id,
//                     created_at: datetime,
//                     updated_at: datetime,
//                 };

//                 socket.emit("chat_message", results);

//                io.to(data[0][0].socket_id).emit("chat_message", results);
//             } catch (error) {
//                 console.log("error", error);
//             }
//         });
//     } catch (error) {
//         console.log("error", error);
//     }
//     // When a client disconnects
//     socket.on("disconnect", () => {
//         console.log("user disconnected");
//     });
// });
// server.listen(3001, () => console.log("server started at port 3001"));



// ==========================
const express = require("express");
const con = require("./config");
const http = require("http");
const { Server } = require("socket.io");
const { resourceLimits } = require("worker_threads");
const { error } = require("console");

const app = express();
app.use(express.json());
const server = http.createServer(app);
const io = new Server(server);

// socket.io start
io.on("connection", async (socket) => {
    const headers = socket.request.headers;
    const user_id = headers["user_id"];
    //  var user_id=socket.request.user_id;

    console.log("user connected:", user_id);
    try {
        await con.query("UPDATE users SET socket_id=? WHERE id=?", [
            socket.id,
            user_id,
        ]);
        socket.user_id = user_id
        io.emit("userOnline", { user_id, status: 1 })

        socket.on("chat_message", async (msg) => {
            // message query
            try {
                var currentdate = new Date();
                var datetime =
                    currentdate.getFullYear() +
                    "-" +
                    (currentdate.getMonth() + 1) +
                    "-" +
                    currentdate.getDate() +
                    " " +
                    currentdate.getHours() +
                    ":" +
                    currentdate.getMinutes() +
                    ":" +
                    currentdate.getSeconds();

                const result = await con.query(
                    "INSERT INTO messages SET  message = ?, from_user_id = ?, to_user_id = ?,type=?, is_read = 0,created_at=?,updated_at=?",

                    [
                        msg.message,
                        msg.from_user_id,
                        msg.to_user_id,
                        msg.type,
                        datetime,
                        datetime,
                    ]
                );

                // console.log("this is inserted data", result);

                // console.log("Message inserted into database");

                const data = await con.query(
                    "SELECT socket_id FROM users WHERE id = ?",
                    [msg.to_user_id]
                );
                // console.log(data);

                // socket.emit is use to  self send message except all
                const results = {
                    id: result[0].insertId,
                    message: msg.message,
                    type: msg.type,
                    from_user_id: msg.from_user_id,
                    to_user_id: msg.to_user_id,
                    created_at: datetime,
                    updated_at: datetime,
                };

                socket.emit("chat_message", results);

                io.to(data[0][0].socket_id).emit("chat_message", results);
            } catch (error) {
                console.log("error", error);
            }
        });
    } catch (error) {
        console.log("error", error);
    }
    // =================
    // message-read

    socket.on("mark-as-read", async (data) => {
        try {
            const { userId, messageId } = data;

            let user = await con.query("SELECT * FROM users WHERE id = ?", [userId])
            user = user[0][0]

            if (user) {

                console.log("::::::::::::::read::::::::::::", user.socket_id)
                await con.query("UPDATE messages SET is_read = ? WHERE id = ?", [1, messageId, userId]);
                io.to(user.socket_id).emit('message-read', { userId: user_id, messageId })
                console.log("message read")
            }
        }
        catch (error) {
            console.log('mark as read error:', error)
        }
    });

    // unread-message
    socket.on("mark-as-unread", async (data) => {
        0
        try {
            const { userId, messageId } = data;
            await con.query("UPDATE messages SET is_read = ? WHERE id = ? AND to_user_id = ?", [0, messageId, userId]);
            io.emit('message-unread', { userId, messageId })
            console.log("unread message ")
        }
        catch (error) {
            console.log('mark as error:', error)

        }
    });


    //user chat update

    socket.on("read-chat", async (data) => {
        try {
            const { userId } = data;

            let user = await con.query("SELECT * FROM users WHERE id = ?", [userId])
            user = user[0][0]

            if (user) {
                io.to(user.socket_id).emit('read-chat', { userId: user_id })
            }
        }
        catch (error) {
            console.log('mark as read error:', error)
        }
    });



    // ===========================
    // When a client disconnects
    socket.on("disconnect", async () => {
        try {
            if (socket.user_id) {
                io.emit("userOnline", { user_id: socket.user_id, status: 0 })
                await con.query("UPDATE users SET socket_id=? WHERE id=?", [
                    null,
                    socket.user_id,
                ]);
            }
        } catch (error) {

        }
        console.log("user disconnected");
    });

    // socket.on('delete-message', (data) => {
    //     const id = data.id; // Extract the id from the data object
    //     con.query("DELETE FROM `messages` WHERE `id` = ?", [id], (err, result) => {
    //         if (err) {
    //             console.log("Error deleting message:", err);
    //             return;
    //         }
    //         io.emit('message', { type: 'delete-message', id: id });
    //     });
    // });


    // ===========================


    // socket.on('delete-message', async (data) => {
    //     const id = data.id; // Extract the id from the data object
    //     con.query("DELETE FROM `messages` WHERE `id` = ?", [id], (err, result) => {
    //         if (err) {
    //             console.log("Error deleting message:", err);
    //             return;
    //         }
    //         io.emit('message', { type: 'delete-message', id: id });
    //     });
    // });

    socket.on("delete-message", async (data) => {
        try {
            id = data.id
            const result = await new Promise((resolve, reject) => {
                con.query("Delete from messages where id=?", [id], (error, result) => {
                    if (error) {
                        reject(error)
                    } else {
                        resolve(result)
                    }
                });
            });
            io.emit("delete-message", { type: 'delete-message', id: id });
            console.log("Message deleted successfully!", result);
        }
        catch (error) {
            console.log("delete message", error)
        }
    })

});
const PORT = 3001
server.listen(PORT, () => console.log("server started at port " + PORT));
