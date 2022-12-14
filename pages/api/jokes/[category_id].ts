import { NextApiRequest, NextApiResponse } from "next";
import { pool } from "../../../config/db";
import { IJoke } from "../types/interfaces";


export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<unknown>
) {
  const { query: { category_id }, body: {viewed}, method } = req
  //Check request type
  if (method == 'POST') {
    try {
      //Get as much 20 random jokes of X category that is not in repeat jokes array.
      const query = `SELECT jokes.*, categories.name as categoryName FROM jokes INNER JOIN categories ON categories.id = jokes.type WHERE categories.name = ?${viewed && viewed.length > 0 ?" AND jokes.id NOT IN (?)" : ""} ORDER BY RAND() LIMIT 8`
      const [rows] = await pool.query<IJoke[]>(query, [category_id, viewed]);

      res.status(200).json(rows);
    } catch (err) {
      res.status(400).send({
        message: err,
      });
    }
  } else {
    //If is not POST block request
    res.setHeader('Allow', ['POST'])
    res.status(405).end(`Method ${method} Not Allowed`);

  }

}
