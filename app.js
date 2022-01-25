const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
const { Client } = require('pg');
const client = new Client({
  host: "localhost",
  user: "sean",
  port: 5432,
  password: "sean",
  database: "rocks"
});

client.connect();

const getRocks = (req, res) => {
  client.query('SELECT * FROM rocks', (err, results) => {
    if (err) {
      console.log(err.message);
    }
    res.status(200).json(results.rows)
  });
}

router.get('/', getRocks);

//add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');
