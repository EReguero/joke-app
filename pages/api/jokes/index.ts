import { IJoke } from "../types/interfaces";
import { NextApiRequest, NextApiResponse } from "next";
import { pool } from "../../../config/db";


export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<unknown>
) {
  const { query: {}, method, body: {viewed}} = req

  if (method == 'POST') {
    try {
      //Get as much 20 random jokes of all categories that is not in repeat jokes array.
      const query =`SELECT jokes.*, categories.name as categoryName FROM jokes INNER JOIN categories ON categories.id = jokes.type ${viewed && viewed.length > 0 ? "WHERE jokes.id NOT IN ? " : ""} ORDER BY RAND() LIMIT 20`
      const [rows] = await pool.query<IJoke[]>(query, [viewed]);
      res.status(200).json(rows);
    } catch (err) {
      res.status(400).send({
        message: err,
      });
    }
  }else{
      res.setHeader('Allow', ['POST'])
      res.status(405).end(`Method ${method} Not Allowed`)
  }

}
