module.exports = {
    serverPort: 3000,
    database: {
        host     : 'localhost',
        user     : 'root',
        password : 'r00t',
        database : 'primora'
    },
    api: {
        allowedOrigin: [
            'http://localhost:3000',
            'http://localhost:4200',
            'http://52.169.54.188'
        ]
    },
    medias: {
        uploadDir: './uploads/'
    }
};
