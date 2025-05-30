import pg from 'pg';
import dotenv from 'dotenv';
dotenv.config();

const pgPool = new pg.Pool({
    user: process.env.PG_USER,
    password: process.env.PG_PW,
    database: process.env.PG_DB,
    host: process.env.PG_HOST,
    port: process.env.PG_PORT,
})

pgPool.on('connect', () => {
    console.log('Connected to database');
});

pgPool.on('error', (err) => {
    console.error('Unexpected error on client', err);
    process.exit(-1);
});

export {pgPool};