import 'package:job_search/credentials/supabasecredentials.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
/*
class AuthenticationService {
  Future<void> signInWithMagicLink({
    required String email,
  }) async {
    final response = await SupabaseCredentials.supabaseClient.auth.signInWithOtp(
      email: email,
    );

    if (response.error != null) {
      // Hata durumunu ele alın
      print('Error sending magic link: ${response.error!.message}');
    } else {
      // Başarı durumu
      print('Magic link sent to $email');
    }
  }


  // Oturum açmış kullanıcıyı kontrol etme
  User? get currentUser {
    return SupabaseCredentials.supabaseClient.auth.currentUser;
  }
}*/