const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Categorie = require('../services/categorie');

Router.get('/categorie', async function(req, res, next) {
    try {
        const categorie = await Categorie.findByUid(req.params.eventuid);
        res.status(200).json(categorie);
    } catch(e) {
        return Response.sendError(res, e);
    }
});

module.exports = Router;
