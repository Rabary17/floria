const express = require('express');
const app = express();
const server = require('http').Server(app);
const bodyParser = require('body-parser');
const Config = require('./config.js');
const RouteMain = require('./routes/main');
const RouteArticle = require('./routes/article');
const RouteArticles = require('./routes/articles');
const Response = require('./services/response');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// parse application/json
app.use(bodyParser.json());

app.use(Response.apiHeaders);

app.use('/api/', RouteMain);
app.use('/api/article/', RouteArticle);
app.use('/api/articles/', RouteArticles);

server.listen(Config.serverPort);
