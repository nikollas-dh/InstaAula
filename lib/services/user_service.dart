import 'package:instagram_nikollas/models/Usuario.dart';

class UserService {
  static Usuario? usuarioCadastrado;

  static void cadastrar(Usuario usuario) {
    usuarioCadastrado = usuario;
  }

  static bool fazerLogin({
    required String email,
    required String senha,
  }) {
    if (usuarioCadastrado == null) {
      return false;
    }

    return usuarioCadastrado!.email == email &&
        usuarioCadastrado!.senha == senha;
  }
}