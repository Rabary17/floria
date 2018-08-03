const Db = require('./database');
const fs = require('fs');

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
    getLatest() {
        return new Promise((resolv, reject) => {
            fs.readFile('samples/latest.json', 'utf8', function (err, data) {
                if (err) throw err;
                obj = JSON.parse(data);
                resolv(obj);
            });
        });
    }
};
