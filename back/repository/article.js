const Db = require('../services/database');
const ClientException = require('../exceptions/ClientException');

module.exports = {
    toObject(article) {
        const art = {...article};
        // titre
        // soustitre
        // cash
        // mensualite
        // images
        try {
            art.fiche = JSON.parse(art.fiche);
            if(art.fiche.titre) art.titre = art.fiche.titre;
            if(art.fiche.soustitre) art.soustitre = art.fiche.soustitre;
            if(art.fiche.cash) art.cash = art.fiche.cash;
            if(art.fiche.mensualite) art.mensualite = art.fiche.mensualite;
            if(art.fiche.images) art.images = art.fiche.images;
        } catch(e) {
            // raf
        }
        return art;
    },
    async insert(article) {
        const mensualite = typeof article.mensualite === 'undefined' ? null : Number(article.mensualite);
        const prixCash = typeof article.prix_cash === 'undefined' ? null : Number(article.prix_cash);

        return await Db.query(
            `INSERT INTO articles VALUES (
                uuid(), ?, ?, ?, ?, ?, ?, ?
            )`,
            [
                // uuid
                article.categorie, //categorie
                new Date(), //date_insertion
                mensualite, //mensualite
                'MGA', //currency
                null, //utilisateur_id,
                JSON.stringify(article.fiche), // informations
                0, // pinned
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
            sql += ` AND fiche->"$.cash" >= ? `;
            parameters.push(parseFloat(params.prix_min));
        }
        if(params.prix_max && params.prix_max !== '-') {
            sql += ` AND fiche->"$.cash" <= ? `;
            parameters.push(parseFloat(params.prix_max));
        }
        if(params.categorie && params.categorie !== '-') {
            sql += ` AND categorie = ? `;
            parameters.push(params.categorie);
        }
        if(params.mensualite && params.mensualite !== '-') {
            sql += ` AND mensualite = ? `;
            parameters.push(parseFloat(params.mensualite));
        }
        sql += ` LIMIT 20 `;
        return Db.queryAll(sql, parameters);
    }
};
