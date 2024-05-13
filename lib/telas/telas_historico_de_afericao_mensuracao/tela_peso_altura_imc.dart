import 'package:flutter/material.dart';
import 'package:ye_gestao_de_saude/_comum/cores.dart';

class PesoAlturaIMC extends StatelessWidget {
  const PesoAlturaIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Peso Altura e IMC",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: CoresPrincipais.corTema,
      ),
      body: Column(
        children: [
          Column( 
            children: [
              const Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade400,
                  alignment: Alignment.center,
                  child: const Text("Peso", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade400,
                  alignment: Alignment.center,
                  child: const Text("Altura", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade400,
                  alignment: Alignment.center,
                  child: const Text("IMC", style: TextStyle(color: Colors.white, fontSize: 18)),
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
                  child: const Text("100", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: CoresPrincipais.corTema,
                  alignment: Alignment.center,
                  child: const Text("1,76", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("32.3\nObesidade", style: TextStyle(color: CoresPrincipais.corTema, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),
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