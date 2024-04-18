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
var apn = require('apn');
const admin = require("firebase-admin");
const { initializeApp } = require("firebase-admin/app");
var fs = require('fs');
const { resolveObjectURL } = require("buffer");
const { json } = require("express");

initializeApp({
    credential: admin.credential.cert({
        "type": "service_account",
        "project_id": "loyalty-app-486c8",
        "private_key_id": "c87a26a23757dfe5b1c57c99aa07375b092d9874",
        "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDDVRyF7+vuXb06\nyVMGcVz4/EcnNFlcSjihYhM02KWmVmAcRY1kOYuaw7bEWkKJVyqYXUrWn4njQj0d\ntcpK5oJbFH0e34SQ7hI8ETCg8/uZw9+OxukDyBk43VHt7yS7imlTqQAHrZIda3vb\naG/S5Ww5HteMSE2gitGWez0WM6wPMA41zdjeV1sWcwb4iGT47VJ2pVu7GS6+7wi2\nEfjRZwie63TWJU3dr+mHMQ3ZU/UvfW5OnVQ23UCCqwUR7OIteoV4cjQ8BGU646sR\n55PzDSG2LzVBDbqnJylaIGD89jYGTc2MjsnMGPLV0EzrUSGzKlUl1AV3TUwM4kU0\nWfUvK8rzAgMBAAECggEAK5E8wu0AARMcZVPJNmsrkwdl8WseMVUGq4w9/3ABBohG\neJfU0RF6v2K+za3aIFr2T7SjQBqmfS9lhU5qV+lxEtKPk8bEATVwkMA+ye+RYzsK\njoR0LZlAcuv+XaUU2tWk53mO3aeLqw8xuX7iTjZIvLbR2eK4mcHMvJUxS1XsHxiz\nWPSs+vqYY9XAdWBdRMGtOmTOMjfrqSQv/zNy8YG76scFflX6MB7AVXRxye26WgdF\nXeF6VRFuhp0fpQF2HeoQysa/tKgjdStAEWuX8jBI1NP8+7IpvIe7G1mE8vrTdYcH\nYQxTIO8NEpJYAzDH2esl3Rs/VFEtUj3QwC0n9J812QKBgQDwHU7qzrPbUit6gXoK\nW+mqCEemaoIkXxFOpE3Agpw47SD7CrFRVPgyb/7aUapNZjo0BBIvg8nMFTiVNSDm\nGZlWgPX94+25UrF6OOykylbNppgl9nygABrmK2BJBOphTscD+s3mBKaCDjFN0sGW\nqTJIheChjeJAip+965BRcq2s+wKBgQDQQVqVEJVDWyCeztXqOonIkROkpErlH2lH\nXkhoT/ilE2bxdOB2kJCMMDM9MxCMtMmXWp1aeSD28bsT0b59Et6SBAYjYz0Mv/tj\nP2vReBiEHYQqjmJjgRjlViBwBE822KKyRn7V3nlL//H2y0dBpWqmrzhpQJBhe5o5\n6TF0sxgIaQKBgQCydrYfI37edhZGuVFBvcrQS9MlR2hvLBGrB8eaW/lM/kJTFEFy\nl9rZchBTp/sSB/cejiAOHL+x5dvmWlSXcVNczgEHsY8Q/PtYQlLwsEsQEtBm9urt\n6OYVSQwJeZPSu0CEHrdGTRKM+4t9sjWciykKaibpLJGLMv1DpX/gaYHYXQKBgQCR\nkOzw/utmbl8Jwkex9oLyp72UOqaDKwaatSNljmidckdlhS2Uko4G/3YBVB1ATOoQ\nGm2cnMhW9Dawrs44fKUIaTmlKKu2qsbb46vIeeqhBkSovme1Z7pwK1h3E/wOuTRX\n6oCjm2MrpVaLDCHdl/NJWXbT0yZYjV4LFp3UFY856QKBgQDZOh+Iq8hq5CSxZM61\nXlLyYQmy/T7qgJtty94yPYZ6rMm7jdmJRZl7PxwKYBEga08Ccy6uEu3/TmkDWrsm\nxCHWX512OAj4X33ONkOF6v8157lubySv4/LTwntRM+QhD1EoHjP0Fd1RXbpWmnzl\n01NWaOcjGmaRqdlnzqSzQRVkyw==\n-----END PRIVATE KEY-----\n",
        "client_email": "firebase-adminsdk-cu745@loyalty-app-486c8.iam.gserviceaccount.com",
        "client_id": "105076793225047864521",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-cu745%40loyalty-app-486c8.iam.gserviceaccount.com",
        "universe_domain": "googleapis.com"
    })
});

const app = express();
app.use(express.json());
const server = http.createServer(app);
const io = new Server(server);
// =
// ios
// var options = {
//     token: {
//       key: "path/to/APNsAuthKey_XXXXXXXXXX.p8",
//       keyId: "key-id",
//       teamId: "developer-team-id"
//     },
//     production: false
//   };


// firebase
const sendnotification = (deviceToken, msgId, message) => {


    console.log('deviceToken', msgId, message)
    let data = {
        msgId: msgId,
        message: message,
    }

    console.log('data:::::::::::::::::::', "::::::::::", data)

    admin.messaging().send({
        token: deviceToken,
        notification: {
            title: 'New Message',
            body: 'You have a new message!'
        },
        data: {
            data: JSON.stringify(data)
        }
    }).then(((success) => {
        console.log('success', success)
    }))
        .catch((error) => {
            console.log('error::::::::::::::::::::', error.message)
        })
}
const sendFcmNotification = async (deviceToken, title, body, data) => {

    const message = {
        notification: {
            // title,
            //body,
            badge: "0",
            sound: "default"
        },
        // data: {
        //     'data': JSON.stringify(data),
        // }
    }
    admin.messaging().sendToDevice(deviceToken, message).then(res => console).catch()
}


// const sendnotification = async (deviceToken, type = 10) => {
//     console.log('deviceToken',deviceToken)
//     try {
//         // await admin.messaging().getToken().send({
//         //     token:deviceToken,
//         //     notification: {
//         //         title: "Message from",
//         //         body: "Chat notification",
//         //     },
//         //     apns: {
//         //         payload: {
//         //             aps: {
//         //                 'mutable-content': 1,
//         //             },
//         //             customKey: 'customValue',
//         //         },
//         //     },
//         //     data: {
//         //         type
//         //         // Your data payload here
//         //     },
//         // });

//         const message = {
//             notification: {
//               title: "afsg",
//               //body: {},
//             },
//             data: {},
//             token: deviceToken,
//             apns: {
//                 payload: {
//                   aps: {
//                     'mutable-content': 1, // Required for rich notifications
//                   },
//                   customKey: 'customValue', // Custom data for APNs
//                 },
//               },
//           };

//          admin.messaging()
//          .send(message)
//          .then((result)=>console.log('notres',result))
//          .catch((result)=>console.log('notres',result))

//     } catch (error) {
//         console.error("Error sending notification:", error);
//     }
// };






// =================

const apnProvider = new apn.Provider({
    token: {
        key: fs.readFileSync('./AuthKey_K9S83S27J6.p8', { encoding: 'utf8', flag: 'r' }), // Path to your APNS authentication key file
        keyId: 'K9S83S27J6', // Your APNS key ID
        teamId: 'E9CR4FM47D', // Your Apple Developer Team ID
    },
    production: false, // Set to true for production environment
});


const iosnotification = (notification, deviceToken) => {
    apnProvider.send(notification, deviceToken).then((result) => {
        console.log('Notification sent:', result);
    }).catch((error) => {
        console.error('Error sending notification:', error);
    });

}



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

                    "INSERT INTO messages SET  message = ?, from_user_id = ?, to_user_id = ?,type=?, is_read = 0, created_at=?, updated_at=?, chat_id=?",

                    [
                        msg.message,
                        msg.from_user_id,
                        msg.to_user_id,
                        msg.type,
                        datetime,
                        datetime,
                        msg.chat_id
                    ]
                );

                const device = await con.query(
                    "SELECT device_type ,device_token FROM users WHERE id = ?",
                    [msg.to_user_id]
                );
                console.log(device);

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

                let userData = device[0][0]
                console.log(userData);


                if (userData.device_type == "Android" && userData.device_token) {
                    console.log('userData', userData)

                    // const message = {
                    //     notification: {
                    //     title: 'New Message',
                    //     body: 'You have new received message!'
                    //     },
                    //     topic: 'highScores',
                    //     deviceToken: userData.device_token // Replace with the device token of the recipient
                    // };
                    //      admin.messaging().send(message)
                    //         .then((response) => {
                    //          console.log('Successfully sent message:', response);
                    //         })
                    //         .catch((error) => {
                    //             console.error('Error sending message:', error);
                    //         });

                    sendnotification(userData.device_token, results.id, results.message)

                    //sendFcmNotification(userData.device_token)
                }
                else {

                    console.log('else case')

                    const iosnotificationsend = new apn.Notification({

                        alert: `you have received message ${results.message}`, // Notification message
                        sound: 'default', // Notification sound
                        badge: 1, // Badge count.
                        payload: {
                            userId: results.from_user_id,
                            type: "chat_message",
                            customKey: 'value',
                        },
                        deviceToken: userData.device_token,
                        topic: 'com.captial.motion.user'
                    })
                    iosnotification(iosnotificationsend, userData.device_token)


                }

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
    // ====
    // delete for every one


    socket.on('delete-message-everyone', async (data) => {
        try {
            var { from_user_id, to_user_id, msgId } = data;
            const msg = await con.query("SELECT * from messages where From_user_id=?", [msgId])
            if (msg) {
                const del = await con.query("DELETE FROM messages WHERE is_read = ? AND from_user_id = ? AND to_user_id = ?", [0, data.from_user_id, data.to_user_id]);
                io.emit('delete-message-everyone', { from_user_id: data.from_user_id })
                console.log('message delete successfully')
            }
        }
        catch (error) {
            console.error('Error deleting message:', error);
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



    // ===
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
const PORT = 3002
server.listen(PORT, () => console.log("server started at port " + PORT));





// object destructing
// let user = {
//     name: "gaurav",
//     age: 26,
//     city: "nainital",

// }
// let { name:n, age:a,city:city } = user;

// console.log(name);
// console.log(age);
// console.log(city);
