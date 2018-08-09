const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Articles = require('../services/articles');
const ArticleRepository = require('../repository/article');

Router.get('/pinned', async function(req, res, next) {
    try {
        const articles = await Articles.getPinned(1);
        res.status(200).json({
            items: articles
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});


Router.get('/latest', async function(req, res, next) {
    try {
        const articles = await Articles.getLatest();
        res.status(200).json({
            items: articles
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/search/:categorie/:mensualite/:prix_min/:prix_max', async function(req, res, next){
    try {
        let params = {
            'cat' : req.params.categorie,
            'men' : req.params.mensualite,
            'prix_min' : req.params.prix_min,
            'prix_max': req.params.prix_max
        };
        const articles = await ArticleRepository.search(params);
        res.status(200).json(articles.map(article => ArticleRepository.toObject(article)));
    } catch(e) {
        return Response.sendError(res, e);
    }
});

module.exports = Router;
