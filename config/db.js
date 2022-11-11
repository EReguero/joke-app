import { createPool } from "mysql2/promise";

//DB Config
const config = {
  host: process.env.DBHOST,
  port: process.env.DBPORT,
  user: process.env.DBUSER,
  password: process.env.DBPASS,
  database: process.env.DB,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
};

//Create DB pool
const pool = createPool(config);

export { pool };
