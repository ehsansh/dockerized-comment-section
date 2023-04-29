//on local
module.exports = {
    db: {
        database: process.env.DB_NAME,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        options: {
            dialect: 'mysql',
            host: 'db',
            operatorsAliases: false,
            storage: './comments.sqlite',
        },
    },
};
