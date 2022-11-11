import { ICategory } from '../types/interfaces';
import { NextApiRequest, NextApiResponse } from "next";
import { pool } from "../../../config/db";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<unknown>
) {
  const { query: { id, name }, method, } = req
  
  //Check method of request
  if (method == 'GET') {
    try {
      //Get all categories
      const [rows] = await pool.query<ICategory[]>('SELECT * FROM categories');
      res.status(200).json(rows);
    } catch (err) {
      res.status(400).send({
        message: err,
      });
    }
  }else{
    //If is not GET block request
    res.setHeader('Allow', ['GET'])
    res.status(405).end(`Method ${method} Not Allowed`)
  }

}
