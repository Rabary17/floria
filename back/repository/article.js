const Db = require('../services/database');
const ClientException = require('../exceptions/ClientException');

module.exports = {
    toObject(article) {
        const art = {...article};
        try {
            art.fiche = JSON.parse(art.fiche);
        } catch(e) {
            // raf
        }
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
        const article = await Db.queryOne("SELECT * FROM articles WHERE uuid = ?", [uuid]);
        if(article.length === 0) throw new ClientException.NotFoundException();
        return this.toObject(article);
    },
    findLatestByCategorie(categoryUuid) {
        return Db.queryAll(
            `
                SELECT * 
                FROM articles 
                WHERE categorie = ?
                ORDER BY date_insertion DESC
                LIMIT 10
            `,
            [ categoryUuid ]
        );
    },
    findPinned(pinnedValue) {
        return Db.queryAll(
            `
                SELECT * 
                FROM articles 
                WHERE pinned = ?
                ORDER BY date_insertion DESC
                LIMIT 10
            `,
            [ pinnedValue ]
        );
    },
    search(params) {
        const parameters = [];
        let sql = `
            SELECT * 
            FROM articles 
            WHERE 1 = 1
        `;
        if(params.prix_min && params.prix_min !== '-') {
            sql += ` AND prix_cash >= ? `;
            parameters.push(params.prix_min);
        }
        if(params.prix_max && params.prix_max !== '-') {
            sql += ` AND prix_cash <= ? `;
            parameters.push(params.prix_max);
        }
        if(params.categorie && params.categorie !== '-') {
            sql += ` AND categorie = ? `;
            parameters.push(params.categorie);
        }
        if(params.mensualite && params.mensualite !== '-') {
            sql += ` AND mensualite = ? `;
            parameters.push(params.mensualite);
        }
        console.log(params);
        console.log(sql);
        sql += ` LIMIT 20 `;
        return Db.queryAll(sql, parameters);
    }
};
