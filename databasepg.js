const { Client } = require('pg');

const client = new Client({
  host: "localhost",
  user: "sean",
  port: 5432,
  password: "sean",
  database: "rocks"
})

client.connect();

client.query(`SELECT * FROM rocks`, (err, res) => {
  if(!err){
    console.log(res.rows)
  } else {
    console.log(err.message);
  }
  client.end;
});
