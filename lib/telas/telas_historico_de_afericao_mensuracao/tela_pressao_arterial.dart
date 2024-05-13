import 'package:flutter/material.dart';
import 'package:ye_gestao_de_saude/_comum/cores.dart';

class PressaoArterial extends StatelessWidget {
  const PressaoArterial({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pressão Arterial",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: CoresPrincipais.corTema,
      ),
      body: const Column(
      ),
    );
  }
  
}