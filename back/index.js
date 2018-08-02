const express = require('express');
const app = express();
const server = require('http').Server(app);
const bodyParser = require('body-parser');
const Config = require('./config.js');
const RouteMain = require('./routes/main');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// parse application/json
app.use(bodyParser.json());

app.use('/', RouteMain);

server.listen(Config.serverPort);
