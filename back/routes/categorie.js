const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const Categorie = require('../services/categorie');

Router.get('/', async function(req, res, next) {
    try {
        const categorie = await Categorie.getAll();
        res.status(200).json({
            items: categorie
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});

module.exports = Router;
