import 'package:bluegrocer/src/pages/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:bluegrocer/src/config/app_data.dart' as app_data;

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          // email
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
          ),

          // nome
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
          ),
          // celular
          CustomTextField(
            icon: Icons.phone,
            label: 'Celular',
          ),
          // cpf
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
          ),
          // botão de atualizar senha
        ],
      ),
    );
  }
}
