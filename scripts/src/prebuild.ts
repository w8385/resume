#!/usr/bin/env bun
import { $ } from "bun";
import path from "node:path";

$.cwd(path.resolve(import.meta.dir, "../../"));
await $`bun ./scripts/src/reset.ts`;
await $`bun ./scripts/src/fetch-github-metadata.ts`;
await $`bun ./scripts/src/fetch-solved-metadata.ts`;
await $`bun ./scripts/src/download-icons.ts`;
