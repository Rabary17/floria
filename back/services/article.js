const Db = require('./database');
const fs = require('fs');

module.exports = {
    findByUid(uid) {
        return new Promise((resolv, reject) => {
            fs.readFile('samples/article.json', 'utf8', function (err, data) {
                if (err) throw err;
                obj = JSON.parse(data);
                resolv(obj);
            });
        });
    }
};
