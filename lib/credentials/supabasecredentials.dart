import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseCredentials {
  static const String APIKEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZiZHVvd3FiaWV5Znd1Zmxrd3h0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY4MjMwMjUsImV4cCI6MjAzMjM5OTAyNX0.tZNizwHMXyNOrrWucL0MgmD2lC4TJguSXnaGs9KF7HI";
  static const String APIURL = "https://vbduowqbieyfwuflkwxt.supabase.co";

  static SupabaseClient supabaseClient =SupabaseClient(APIURL, APIKEY);
}