import type { Component } from 'svelte';
import type { ProjectMetadata } from '$lib/types/project-meta-data';

export type ProjectModule = {
  default: Component;
  projectMetadata: ProjectMetadata;
};
