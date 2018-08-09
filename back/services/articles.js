const Db = require('./database');
const fs = require('fs');
const ArticleRepository = require('../repository/article');
const CategorieRepository = require('../repository/category');

module.exports = {
    getPinned() {
        return new Promise((resolv, reject) => {
            fs.readFile('samples/pinned.json', 'utf8', function (err, data) {
                if (err) throw err;
                obj = JSON.parse(data);
                resolv(obj);
            });
        });
    },
    async getLatest() {
        return new Promise(async (resolve, reject) => {
            const promises = [];
            const categories = await CategorieRepository.findAll();
            categories.forEach(categorie => {
                promises.push(ArticleRepository.findLatestByCategorie(categorie.uuid));
            });
            Promise.all(promises).then(function(res) {
                resolve(res);
            });
        });
    }
};
