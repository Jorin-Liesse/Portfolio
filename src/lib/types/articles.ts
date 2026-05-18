export const ALL_ARTICLES = ["About", "Resume", "Projects", "Contact"] as const;

export type Articles = (typeof ALL_ARTICLES)[number];
