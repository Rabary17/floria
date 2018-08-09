const Db = require('../services/database');
const ClientException = require('../exceptions/ClientException');

module.exports = {
    toObject(article) {
        const art = {...article};
        art.fiche = JSON.parse(art.fiche);
        return art;
    },
    async insert(article) {
        return await Db.query(
            `INSERT INTO articles VALUES (
                uuid(), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
            )`, 
            [
                // uuid
                article.categorie_uuid, //categorie
                new Date, //date_insertion
                article.titre, // titre
                article.description, //description
                article.prix_cash, //prix_cash
                article.mensualite, //mensualite
                article.currency, //currency
                null, //location_geo
                article.lieu, //lieu
                article.adresse, //adresse
                null, //utilisateur_id, 
                JSON.stringify(article.informations) // informations
            ]
        );
    },
    async findByUuid(uuid) {
        const article = await Db.query("SELECT * FROM articles WHERE uuid = ?", [uuid]);
        if(article.length === 0) throw new ClientException.NotFoundException();
        return this.toObject(article);
    },
    findLatestByCategorie(categoryUuid) {
        return Db.query(
            `
                SELECT * 
                FROM articles 
                WHERE categorie = ?
                ORDER BY date_insertion
                LIMIT 5
            `, 
            [categoryUuid]
        );
    }
    
};
