import { defineConfig, devices } from "@playwright/test";
import dotenv from "dotenv";

/**
 * Read environment variables from file.
 * Uses .env.test for e2e tests to isolate test data from production.
 * https://github.com/motdotla/dotenv
 */
dotenv.config({ path: ".env.test" });

/**
 * See https://playwright.dev/docs/test-configuration.
 */
export default defineConfig({
  testDir: "./e2e",

  /* Run tests in files in parallel */
  fullyParallel: true,

  /* Fail the build on CI if you accidentally left test.only in the source code. */
  forbidOnly: !!process.env.CI,

  /* Retry on CI only */
  retries: process.env.CI ? 2 : 0,

  /* Opt out of parallel tests on CI. */
  workers: process.env.CI ? 1 : undefined,

  /* Reporter to use. See https://playwright.dev/docs/test-reporters */
  reporter: [
    ["html", { outputFolder: "playwright-report" }],
    ["json", { outputFile: "playwright-report/results.json" }],
    ["list"],
  ],

  /* Shared settings for all the projects below. See https://playwright.dev/docs/api/class-testoptions. */
  use: {
    /* Base URL to use in actions like `await page.goto('/')`. */
    baseURL: process.env.PLAYWRIGHT_BASE_URL || "http://localhost:4321",

    /* Collect trace when retrying the failed test. See https://playwright.dev/docs/trace-viewer */
    trace: "on-first-retry",

    /* Screenshot on failure */
    screenshot: "only-on-failure",

    /* Video on failure */
    video: "retain-on-failure",

    /* Maximum time each action can take */
    actionTimeout: 10000,
  },

  /* Configure projects for Chromium only (as per guidelines) */
  projects: [
    {
      name: "chromium",
      use: { ...devices["Desktop Chrome"] },
    },
  ],

  /* Run your local dev server before starting the tests */
  webServer: {
    command: "NODE_ENV=test npm run dev",
    url: "http://localhost:4321",
    // CRITICAL: Never reuse existing dev server
    // We need a fresh server with NODE_ENV=test to use test database
    // If you have npm run dev running, STOP IT before running tests
    reuseExistingServer: false,
    timeout: 120000,
    env: {
      NODE_ENV: "test",
      // Explicitly pass test environment variables to the dev server
      // This ensures the app connects to the test database in the cloud
      SUPABASE_URL: process.env.SUPABASE_URL || "",
      SUPABASE_KEY: process.env.SUPABASE_KEY || "",
    },
  },

  /* Global timeout for each test */
  timeout: 30000,

  /* Expect timeout */
  expect: {
    timeout: 5000,
  },
});
