import { RowDataPacket } from "mysql2"

export interface ICategory extends RowDataPacket {
  id: number;
  name: string;
  title: string;
  icon: string;
}

export interface IJoke extends RowDataPacket {
  id: number;
  setup: string;
  punchline: string;
  categoryName: string;
}
