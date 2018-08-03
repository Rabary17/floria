const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Article = require('../services/article');

Router.get('/:articleuid', async function(req, res, next) {
    try {
        const article = await Article.findByUid(req.params.eventuid);
        res.status(200).json(article);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

module.exports = Router;
