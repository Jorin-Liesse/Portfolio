import type { Category } from './category';

export type ProjectMetadata = {
  link: string;
  title: string;
  category: Category;
  categories: Category[];
  avif: string;
  fallback: string;
};
