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
        
        const promises = [];
        const categories = await CategorieRepository.findAll();
        const cat_uuid = [];
        for(let i =0; i < categories.length; i++) {
            categorie_uuid = categories[i].uuid; 
            cat_uuid.push(categorie_uuid);
        }
        cat_uuid.forEach(categorie => {
            promises.push(
                ArticleRepository.findLatestByCategorie(categorie).then(res => {
                    return res;
                })
            );
        });

        var article = Promise.all(promises, (res) => {
            resolv(res);
        });
        /*
        ArticleRepository.findLatestByCategorie('128628c0-9a15-11e8-a0ed-0024d7ada560').then(res => {
            console.log(res);
        });
        */
       
        return article;

        // return new Promise((resolv, reject) => {
        //     fs.readFile('samples/latest.json', 'utf8', function (err, data) {
        //         if (err) throw err;
        //         obj = JSON.parse(data);
        //         resolv(obj);
        //     });
        // });
    }
};
