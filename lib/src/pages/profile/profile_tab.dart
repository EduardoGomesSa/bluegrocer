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
        children: [
          // email
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.email,
            icon: Icons.email,
            label: 'Email',
          ),

          // nome
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),
          // celular
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),
          // cpf
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
          // botão de atualizar senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Atualizar Senha'),
            ),
          ),
        ],
      ),
    );
  }
}
