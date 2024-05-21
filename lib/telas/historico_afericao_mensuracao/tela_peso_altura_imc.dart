import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ye_gestao_de_saude/_core/my_colors.dart';

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
        backgroundColor: MyColors.colorTheme,
      ),
      body:ListView(children: [
      Column(
        children: [
          Column( 
            children: [
              const Divider(height: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40, 
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: const Text("Data: 16/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 20, ),textAlign: TextAlign.start,)
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                          alignment: Alignment.centerRight,
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: MyColors.colorTheme,
                          )),
                ],
              ),
              const Divider(height: 1),
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
                  child: const Text("100", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("1,76", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 3, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("32.3\nObesidade", style: TextStyle(color: MyColors.colorTheme, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),
          ],
          ),
        ],
      ),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey.shade200,
        splashColor: Colors.green.shade100,
        child: const Icon(Icons.add, color: MyColors.colorTheme),
      ),
    );
  }
}