export const ALL_CATEGORIES = ['Best', 'Games', 'Models', 'Websites', 'UI', 'All'] as const;

export type Category = (typeof ALL_CATEGORIES)[number];
