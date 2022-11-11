import { ICategory } from '../types/interfaces';
import { NextApiRequest, NextApiResponse } from "next";
import { pool } from "../../../config/db";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<unknown>
) {
  const { query: { category_id }, method, } = req
  
  //Check method of request
  if (method == 'GET') {
    try {
      //Get category request
      const [rows] = await pool.query<ICategory[]>('SELECT * FROM categories WHERE name = ?', [category_id]);
      let result = {};

      //If exist get data
      if (rows.length == 1) {
        result = rows[0];
      }
        
      res.status(200).json(result);
    } catch (err) {
      res.status(400).send({
        message: "Error message",
      });
    }
    
  } else {
      //If is not GET block request
      res.setHeader('Allow', ['GET'])
      res.status(405).end(`Method ${method} Not Allowed`)
  }

}
