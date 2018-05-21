
var mysql = require('mysql');

/*
may need something like this for mysql deb
if (process.env.NODE_ENV === 'production') {
   //dbURI = 'mongodb://loc8ruser:wildbill@ds015584.mlab.com:15584/heroku_8qx2w1bk';
   dbURI = 'not yet';
}
*/


console.log("Attempting to connect to mysql db");

if (! process.env.DB_HOST )     { console.error("env var DB_HOST must be defined"); process.exit(1); }
if (! process.env.DB_USER )     { console.error("env var DB_USER must be defined"); process.exit(1); }
if (! process.env.DB_PASSWORD ) { console.error("env var DB_PASSWORD must be defined"); process.exit(1); }
if (! process.env.DB_DATABASE ) { console.error("env var DB_DATABASE must be defined"); process.exit(1); }


var connection = mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});


var pool = mysql.createPool({
  connectionLimit : 10,
  host : 'localhost',
  user : 'wq_dba',
  password: 'ntus',
  database: 'water_quality'
});





connection.connect(function(err) {
  if (!err) {
    console.log("Database is connected");
  }
  else {
    console.log("Error connecting to database");
  }
});

/* could need something like this
mongoose.connection.on('connected', function () {
  console.log('Mongoose connected to ' + dbURI );
});

mongoose.connection.on('error', function (err) {
  console.log('Mongoose connection error ' + err );
});

mongoose.connection.on('disconnected', function () {
  console.log('Mongoose disconnected');
});
*/


gracefulShutdown = function (msg, callback) {
  connection.end();
  pool.end();
  console.log('mysql connection ended through ' + msg);
  callback();
};

//for nodemon restarts
process.once('SIGUSR2', function () {
  gracefulShutdown('nodemon restart', function () {
    process.kill(process.pid, 'SIGUSR2');
  });
});

//for app termination
process.once('SIGINT', function () {
  gracefulShutdown('app termination', function () {
    process.exit(0);
  });
});

//for app termination
process.once('SIGTERM', function () {
  gracefulShutdown('Heroku app termination', function () {
    process.exit(0);
  });
});

module.exports.connection = connection;
module.exports.pool = pool;
