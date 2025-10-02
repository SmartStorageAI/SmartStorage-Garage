// import '../../domain/repositories/auth_repo.dart';

class AuthRepositoryImpl /* implements IAuthRepository */ {
  Future<bool> login(String user, String pass) async {
    // TODO: llamada HTTP real
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return user.isNotEmpty && pass.isNotEmpty;
  }
}
