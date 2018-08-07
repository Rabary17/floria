const Db = require('./database');
const fs = require('fs');
const ClientException = require('../exceptions/ClientException');
const CategorieRepository = require('../repository/category');
const ArticleRepository = require('../repository/article');

module.exports = {
    async add(article) {
        if(! article) throw new ClientException.BadRequestException();
        return await ArticleRepository.insert(article);
    },

    async findByUid(uuid) {
        return await ArticleRepository.findByUuid(uuid);
    }
};
