const mysql=require("mysql2/promise")
const pool=mysql.createPool({

    host:"localhost",
    user:"root",
    password:"redhat",
    database:"society_19_january",
})
    pool.getConnection()
    .then(connection=>{
        console.log("database connected successfully !")
        connection.release()
    })
    .catch(error =>{
        console.log("connection failed !",error.message)
    })

module.exports=pool
