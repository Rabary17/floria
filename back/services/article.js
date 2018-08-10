const ClientException = require('../exceptions/ClientException');
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
