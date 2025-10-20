import { createClient } from "@supabase/supabase-js";
import type { Database } from "../db/database.types.ts";

// CRITICAL: Use process.env instead of import.meta.env for runtime flexibility
// This allows tests to use different database based on NODE_ENV
const supabaseUrl = process.env.SUPABASE_URL || import.meta.env.SUPABASE_URL;
const supabaseAnonKey = process.env.SUPABASE_KEY || import.meta.env.SUPABASE_KEY;

export const supabaseClient = createClient<Database>(supabaseUrl, supabaseAnonKey);
