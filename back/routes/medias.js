const Express = require('express');
const Router = Express.Router();
const Response = require('../services/response');
const multer = require('multer');
const Config = require('../config');
const path = require('path');
const uuidv4 = require('uuid/v4');
const fs = require('fs');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, Config.medias.uploadDir);
    },
    filename: (req, file, cb) => {
        cb(null, uuidv4() + '.' + path.extname(file.originalname).replace(/^./, ''));
    }
});
const upload = multer({storage: storage});

Router.post('/', upload.single('photo'), async function(req, res, next) {
    try {
        res.status(200).json({
            filename: req.file.filename
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.get('/:file', async function(req, res, next) {
    try {
        const filename = `${Config.medias.uploadDir}/${req.params.file}`;
        fs.stat(filename, (err, stats) => {
            if (err) {
                // Send blank image
                res.sendFile(`${__dirname.replace('routes', 'samples')}/blank-image.jpeg`);
            } else {
                res.sendFile(filename);
            }
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});

Router.delete('/:file', async function(req, res, next) {
    try {
        fs.unlink(`${Config.medias.uploadDir}/${req.params.file}`, error => {
            if (error) {
                return Response.sendError(res, error);
            }
            res.status(204).json({});
        });
    } catch(e) {
        return Response.sendError(res, e);
    }
});

module.exports = Router;
