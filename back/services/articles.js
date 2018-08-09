const Db = require('./database');
const fs = require('fs');
const ArticleRepository = require('../repository/article');
const CategorieRepository = require('../repository/category');

module.exports = {
    getPinned() {
        return new Promise((resolve, reject) => {
            fs.readFile('samples/pinned.json', 'utf8', function (err, data) {
                if (err) throw err;
                obj = JSON.parse(data);
                resolve(obj);
            });
        });
    },

    async getLatest() {
        const promises = [];
        const categories = await CategorieRepository.findAll();
        categories.forEach(categorie => {
            promises.push(
                ArticleRepository.findLatestByCategorie(categorie.uuid)
            );
        });

        return new Promise((resolve, reject) => {
            Promise.all(promises).then(res => {
                let result = [];
                res.forEach(item => {
                    result = result.concat(
                        item.map(article => ArticleRepository.toObject(article))
                    );
                });
                resolve(result);
            });
        });
    }
};
