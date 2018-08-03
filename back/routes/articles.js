const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Articles = require('../services/articles');

Router.get('/pinned', async function(req, res, next) {
    try {
        const articles = await Articles.getPinned();
        res.status(200).json(articles);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/latest', async function(req, res, next) {
    try {
        const articles = await Articles.getLatest();
        res.status(200).json(articles);
    } catch(e) {
        return Response.sendError(res, e);
    }
});


module.exports = Router;
