import type { Category } from './category';

export type ProjectMetadata = {
  link: string;
  title: string;
  category: Category; //Category;
  categories: Category[]; //Category[];
  avif: string;
  fallback: string;
};
