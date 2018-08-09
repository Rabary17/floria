const Db = require('../services/database');
const ClientException = require('../exceptions/ClientException');

module.exports = {
    toObject(category) {
        const cat = {...category};
        cat.nom = JSON.parse(cat.nom);
        cat.fiche = JSON.parse(cat.fiche);
        return cat;
    },
    async findByUuid(uuid) {
        const category = await Db.queryOne("SELECT * FROM categories WHERE uuid = ?", [uuid]);
        if(category.length === 0) throw new ClientException.NotFoundException();
        return this.toObject(category);
    },
    async findAll() {
        const categories = await Db.queryAll("SELECT * FROM categories");
        return categories.map(cat => this.toObject(cat));
    }
};
