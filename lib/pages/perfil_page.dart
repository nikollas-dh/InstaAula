import 'package:flutter/material.dart';
import 'package:instagram_nikollas/services/user_service.dart';
import 'package:instagram_nikollas/pages/editar_perfil_page.dart';
import 'package:instagram_nikollas/pages/login_page.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    final usuario = UserService.usuarioCadastrado;

    if (usuario == null) {
      return const Scaffold(
        body: Center(
          child: Text('Nenhum usuário cadastrado.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),

        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sair',
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              // Foto de perfil
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/perfil.png',
                ),
              ),

              const SizedBox(height: 20),

              // Nome
              Text(
                usuario.nome,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              // Nome de usuário
              Text(
                '@${usuario.usuario}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 16),

              // Biografia
              Text(
                usuario.biografia.isEmpty
                    ? 'Nenhuma biografia adicionada.'
                    : usuario.biografia,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 24),

              // Editar perfil
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const EditarPerfilPage(),
                      ),
                    );

                    setState(() {});
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Editar Perfil'),
                ),
              ),

              const SizedBox(height: 12),

              // Sair
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text('Sair'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}