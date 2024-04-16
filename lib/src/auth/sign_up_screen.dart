import 'package:bluegrocer/src/config/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ),

          // Formulário
          Container(),
        ],
      ),
    );
  }
}
