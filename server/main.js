const express = require('express');
const path = require('path');
const proxy = require('express-http-proxy');
const app = express();

app.use(express.static(path.join(__dirname, 'build')));
app.use('/proxy', proxy('www.google.com'));

app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname, 'build', 'index.html'));
});

app.get('*', function(req, res){
  res.status(404).send({ message: "bad request" });
});

app.listen(9000, function() {
  console.log('Server started on port 9000');
});
