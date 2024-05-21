import 'package:flutter/material.dart';
import 'package:ye_gestao_de_saude/_core/my_colors.dart';

class PressaoArterial extends StatelessWidget {
  const PressaoArterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Press Arterial",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: MyColors.colorTheme,
      ),
      body: Column(
        children: [
          Column( // Ajuste conforme necessário
            children: [
              const Divider(height: 1,),
              Row( // Substitua ListView por Row
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("05/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("120 X 80", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Normal", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
              ],
            ),
            const Divider(height: 1,),
              Row( // Substitua ListView por Row
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("06/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("110 X 70", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Normal", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
              ],
            ),
            const Divider(height: 1,),
              Row( // Substitua ListView por Row
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("07/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("150 X 100", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, // Ocupa 1/3 da tela
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Alta", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
              ],
            ),
            const Divider(height: 1,),
          ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey.shade200,
        splashColor: Colors.green.shade100,
        child: const Icon(Icons.add, color: MyColors.colorTheme),
      ),
    );
  }
}