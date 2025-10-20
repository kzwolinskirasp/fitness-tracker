// @ts-check
import { defineConfig } from "astro/config";
import { loadEnv } from "vite";

import react from "@astrojs/react";
import sitemap from "@astrojs/sitemap";
import tailwindcss from "@tailwindcss/vite";
import node from "@astrojs/node";

// Load environment variables based on NODE_ENV
// Uses .env.test for test environment, .env for development/production
const mode = process.env.NODE_ENV || "development";
const env = loadEnv(mode, process.cwd(), "");

// CRITICAL: Only inject test env vars when NODE_ENV=test
// This ensures npm run dev uses .env (local db) and test:e2e uses .env.test (cloud db)
if (mode === "test") {
  if (env.SUPABASE_URL) process.env.SUPABASE_URL = env.SUPABASE_URL;
  if (env.SUPABASE_KEY) process.env.SUPABASE_KEY = env.SUPABASE_KEY;
}

// https://astro.build/config
export default defineConfig({
  output: "server",
  integrations: [react(), sitemap()],
  server: { port: 4321 },
  vite: {
    plugins: [tailwindcss()],
    // Explicitly define environment variables for import.meta.env (for client-side code)
    // These work in build mode, but for dev server we rely on process.env injection above
    define: {
      "import.meta.env.SUPABASE_URL": JSON.stringify(process.env.SUPABASE_URL),
      "import.meta.env.SUPABASE_KEY": JSON.stringify(process.env.SUPABASE_KEY),
    },
  },
  adapter: node({
    mode: "standalone",
  }),
});
