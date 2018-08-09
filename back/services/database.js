'use strict';

const mysql = require('mysql');
const Config = require('../config');

class Mysql {

    constructor() {
        this.pool = mysql.createPool({
            connectionLimit : 100,
            host     : Config.database.host,
            user     : Config.database.user,
            password : Config.database.password,
            database : Config.database.database,
            debug    :  false,
            charset  : 'utf8mb4_unicode_ci'
        });
    }

    escape(str) {
        return mysql.escape(str);
    }

    // TODO remove this method
    query(sql, params) {
        return new Promise((resolve, reject) => {
            this.pool.query(sql, params, function (error, rows, fields) {
                console.log(rows);
                if (error) {
                    reject(error);
                    return false;
                }
                // TODO OkPacket in rows ?
                if(typeof rows !== 'undefined' && 0 in rows) resolve(rows[0]);
                else resolve(rows);
            });
        });
    }

    queryAll(sql, params) {
        return new Promise((resolve, reject) => {
            this.pool.query(sql, params, function (error, rows, fields) {
                if (error) {
                    reject(error);
                    return false;
                }
                resolve(rows);
            });
        });
    }

    queryOne(sql, params) {
        return new Promise((resolve, reject) => {
            this.queryAll(sql, params).then(rows =>  {
                if(typeof rows !== 'undefined' && 0 in rows) resolve(rows[0]);
                else reject(rows);
            });
        });
    }
}

module.exports = new Mysql();