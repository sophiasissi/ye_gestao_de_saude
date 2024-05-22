import 'package:flutter/material.dart';
import 'package:ye_gestao_de_saude/_comum/cores.dart';
import 'package:ye_gestao_de_saude/_core/my_colors.dart';

class Glicemia extends StatelessWidget {
  const Glicemia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Glicemia",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: MyColors.colorTheme,
      ),
      body: Column(
        children: [
          Column( 
            children: [
              const Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("05/07/2020", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: CoresPrincipais.corTema,
                  alignment: Alignment.center,
                  child: const Text("85", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Normal", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
              ],
            ),
            const Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("06/07/2020", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: CoresPrincipais.corTema,
                  alignment: Alignment.center,
                  child: const Text("150", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Alta", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
              ],
            ),
            const Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("07/07/2020", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: CoresPrincipais.corTema,
                  alignment: Alignment.center,
                  child: const Text("100", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("Normal", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
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
        child: const Icon(Icons.add, color: CoresPrincipais.corTema),
      ),
    );
  }
}