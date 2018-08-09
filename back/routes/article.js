const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Article = require('../services/article');
const ArticleRepository = require('../repository/article');

Router.post('/', async function(req, res, next) {
    try {
        const article = await Article.add(req.body);
        res.status(200).json(article);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/:articleuid', async function(req, res, next) {
    try {
        const article = await Article.findByUid(req.params.articleuid);
        res.status(200).json(article);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/:categorie/:mensualite/:prix_min/:prix_max', async function(req, res, next) {
    try {
        const article = await Article.findByUid(req.params.articleuid);
        res.status(200).json(article);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/search/:categorie/:mensualite/:prix_min/:prix_max', async function(req, res, next){
    let params = {
                  'cat' : req.params.categorie,
                  'men' : req.params.mensualite,
                  'prix_min' : req.params.prix_min,
                  'prix_max': req.params.prix_max 
                };
    try {
        const article = await ArticleRepository.search(params);
        let results = res.status(200).json(article);
        return results.map( result => ArticleRepository.toObject(result));
        console.log(article);
    } catch(e) {
        return Response.sendError(res, e);
    }
}),
module.exports = Router;
