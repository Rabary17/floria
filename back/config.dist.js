module.exports = {
    serverPort: 3000,
    database: {
        host     : 'localhost',
        user     : 'root',
        password : 'root',
        database : 'primora'
    },
    api: {
        allowedOrigin: [
            'http://localhost:3000',
            'http://localhost:4200'
        ]
    }
};
