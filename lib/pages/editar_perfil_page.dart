import 'package:flutter/material.dart';
import 'package:instagram_nikollas/services/user_service.dart';

class EditarPerfilPage extends StatefulWidget {
  const EditarPerfilPage({super.key});

  @override
  State<EditarPerfilPage> createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState extends State<EditarPerfilPage> {
  final _nomeController = TextEditingController();
  final _usuarioController = TextEditingController();
  final _biografiaController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final usuario = UserService.usuarioCadastrado;

    if (usuario != null) {
      _nomeController.text = usuario.nome;
      _usuarioController.text = usuario.usuario;
      _biografiaController.text = usuario.biografia;
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _usuarioController.dispose();
    _biografiaController.dispose();
    super.dispose();
  }

  void _salvarAlteracoes() {
    final usuario = UserService.usuarioCadastrado;

    if (usuario == null) {
      return;
    }

    final nome = _nomeController.text.trim();
    final nomeUsuario = _usuarioController.text.trim();
    final biografia = _biografiaController.text.trim();

    // Verifica os campos obrigatórios
    if (nome.isEmpty || nomeUsuario.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Nome e nome de usuário são obrigatórios.',
          ),
        ),
      );

      return;
    }

    // Atualiza os dados
    usuario.nome = nome;
    usuario.usuario = nomeUsuario;
    usuario.biografia = biografia;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Perfil atualizado com sucesso!',
        ),
      ),
    );

    // Volta para o perfil
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Foto de perfil
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/images/perfil.png',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Alterar foto
              TextButton.icon(
                onPressed: () {
                  // Futuramente podemos colocar
                  // a opção de escolher outra imagem.
                },
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Alterar foto'),
              ),

              const SizedBox(height: 24),

              // Nome
              TextField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite seu nome',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Nome de usuário
              TextField(
                controller: _usuarioController,
                decoration: const InputDecoration(
                  labelText: 'Nome de usuário',
                  hintText: 'Digite seu nome de usuário',
                  prefixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Biografia
              TextField(
                controller: _biografiaController,
                maxLines: 4,
                maxLength: 150,
                decoration: const InputDecoration(
                  labelText: 'Biografia',
                  hintText: 'Conte um pouco sobre você...',
                  prefixIcon: Icon(Icons.description_outlined),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              // Salvar
              SizedBox(
                height: 52,
                child: FilledButton(
                  onPressed: _salvarAlteracoes,
                  child: const Text(
                    'Salvar alterações',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Cancelar
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}