const CategoryRepository = require('../repository/category');

module.exports = {
    async getAll() {
        return await CategoryRepository.findAll();
    },

};
