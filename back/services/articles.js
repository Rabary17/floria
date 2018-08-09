const Db = require('./database');
const fs = require('fs');
const ArticleRepository = require('../repository/article');
const CategorieRepository = require('../repository/category');

module.exports = {
    async getPinned() {
        let articles =  await ArticleRepository.findPinned(0);
        return articles.map(function(article) {
            return ArticleRepository.toObject(article)
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
