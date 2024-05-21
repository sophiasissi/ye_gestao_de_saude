import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ye_gestao_de_saude/_core/my_colors.dart';

class TelaIMC extends StatelessWidget {
  const TelaIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children: [
      Column(
        children: [
          Column( 
            children: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40, 
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: const Text("Peso", style: TextStyle(color: MyColors.colorTheme, fontSize: 20, ),textAlign: TextAlign.start,)
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
            const Divider(height: 5,thickness: 5, color: MyColors.colorTheme,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("100", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),
            Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/08/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("98", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),


            
              
               Divider(height: 8, thickness: 8,color: Colors.grey.shade200,),
              const Divider(height: 1,thickness: 5, color: MyColors.colorTheme,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40, 
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: const Text("Altura", style: TextStyle(color: MyColors.colorTheme, fontSize: 20, ),textAlign: TextAlign.start,)
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
            const Divider(height: 5,thickness: 5, color: MyColors.colorTheme,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("1,76", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),
            Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/08/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("1,76", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),


              
               Divider(height: 8, thickness: 8,color: Colors.grey.shade200,),
              const Divider(height: 1,thickness: 5, color: MyColors.colorTheme,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40, 
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: const Text("IMC", style: TextStyle(color: MyColors.colorTheme, fontSize: 20, ),textAlign: TextAlign.start,)
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
            const Divider(height: 5,thickness: 5, color: MyColors.colorTheme,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/07/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("32.3 kg/m2\nObesidade", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
                ),
              ],
            ),
            Divider(height: 1,),
              Row( 
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const Text("12/08/2020", style: TextStyle(color: MyColors.colorTheme, fontSize: 18)),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2, 
                  color: MyColors.colorTheme,
                  alignment: Alignment.center,
                  child: const Text("31.6 kg/m2\nObesidade", style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
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