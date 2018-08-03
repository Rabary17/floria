const Express = require('express');
const Router = Express.Router();

Router.get('/', function(req, res, next) {
    try {
        res.status(200).json([]);
    } catch(e) {
        // TODO
    }
});

module.exports = Router;
