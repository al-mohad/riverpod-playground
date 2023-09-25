import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/services/auth_service.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(authServiceProvider));
});

class AuthRepository {
  final AuthService _authService;
  AuthRepository(this._authService);

  Future<String> login(String email, String password) async {
    return _authService.login(email, password);
  }
}
