import 'package:flutter/material.dart';
import 'package:instagram_nikollas/widgets/post_instagram.dart';
import 'package:instagram_nikollas/widgets/stories.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            title: const Text(
              'InstaAula',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic  
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),
            ],
          ),
          const SliverToBoxAdapter(
            child: Stories(),
          ),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'flutter.dev',
              local: 'São Paulo, Brasil',
              legenda: 'Construindo interfaces incriveis com Flutter',
              cor: Colors.blue,
              icone: Icons.flutter_dash,
              curtidasIniciais: 128,
            ),
          ),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'professor.mobile',
              local: 'Osasco, Brasil',
              legenda: 'Aula de desenvolvimento mobile concluida com sucesso!',
              cor: Colors.deepPurple,
              icone: Icons.school,
              curtidasIniciais: 94,
            ),
          ), 

           const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'dart.brasil',
              local: 'Brasil',
              legenda: 'Hoje e dia de praticar Dart e aprender algo novo.',
              cor: Colors.teal,
              icone: Icons.code,
              curtidasIniciais: 211,
            ),
          ), 
          
        ],
      )
    );
  }
}
