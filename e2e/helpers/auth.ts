// e2e/helpers/auth.ts
// Authentication helper for E2E tests

import type { Page } from "@playwright/test";

/**
 * Login helper for E2E tests
 * Uses credentials from environment variables (.env.test file)
 *
 * @param page - Playwright page object
 * @param email - User email (optional, defaults to E2E_USERNAME from .env.test)
 * @param password - User password (optional, defaults to E2E_PASSWORD from .env.test)
 */
export async function loginAsUser(
  page: Page,
  email: string = process.env.E2E_USERNAME || "",
  password: string = process.env.E2E_PASSWORD || ""
): Promise<void> {
  console.log(`[E2E Auth] Logging in as: ${email}`);

  // Navigate to login page
  await page.goto("/auth/login");

  // Fill in login form using data-testid selectors
  await page.getByTestId("login-email-input").fill(email);
  await page.getByTestId("login-password-input").fill(password);

  // Click login button
  await page.getByTestId("login-submit-button").click();

  // Wait for redirect to dashboard (indicates successful login)
  await page.waitForURL("/dashboard", { timeout: 10000 });

  console.log("[E2E Auth] Login successful!");
}

/**
 * Logout helper for E2E tests
 */
export async function logoutUser(): Promise<void> {
  // TODO: Implement logout when authentication is ready
  // TODO: When Supabase is ready, implement:
  // await page.getByTestId("user-dropdown").click();
  // await page.getByTestId("logout-button").click();
  // await page.waitForURL("/auth/login");
}

/**
 * Check if user is authenticated
 */
export async function isAuthenticated(): Promise<boolean> {
  // TODO: Implement authentication check when Supabase is ready
  // For now, return false
  return false;

  // TODO: When Supabase is ready, implement:
  // const userDropdown = page.getByTestId("user-dropdown");
  // return await userDropdown.isVisible();
}
