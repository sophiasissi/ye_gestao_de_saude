import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis_auth/auth_io.dart';

class TelaHistoricoDeExames extends StatefulWidget {
  @override
  _TelaHistoricoDeExamesState createState() => _TelaHistoricoDeExamesState();
}

class _TelaHistoricoDeExamesState extends State<TelaHistoricoDeExames> {
  final List<Exame> exames = [
    Exame(
        nome: 'Exame de Sangue',
        data: '1 de maio de 2024',
        resultado: 'Normal'),
    Exame(
        nome: 'Ressonância Magnética',
        data: '20 de abril de 2024',
        resultado: 'Normal'),
    Exame(nome: 'Raio-X', data: '15 de março de 2024', resultado: 'Normal'),
    Exame(
        nome: 'Exame de Sangue', data: '1 de março de 2024', resultado: 'Alto'),
    Exame(
        nome: 'Ressonância Magnética',
        data: '10 de janeiro de 2024',
        resultado: 'Normal'),
  ];

  OpcaoAgrupamento _opcaoSelecionada = OpcaoAgrupamento.porExame;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Exames'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<OpcaoAgrupamento>(
              value: _opcaoSelecionada,
              onChanged: (value) {
                setState(() {
                  _opcaoSelecionada = value!;
                });
              },
              items: OpcaoAgrupamento.values.map((opcao) {
                return DropdownMenuItem<OpcaoAgrupamento>(
                  value: opcao,
                  child: Text(opcao == OpcaoAgrupamento.porExame
                      ? 'Agrupar por Exame'
                      : 'Agrupar por Data'),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: _construirListaExames(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _adicionarNovoExame();
        },
        tooltip: 'Adicionar Novo Exame',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _construirListaExames() {
    if (_opcaoSelecionada == OpcaoAgrupamento.porExame) {
      return ListView.builder(
        itemCount: exames.length,
        itemBuilder: (context, index) {
          final exame = exames[index];
          return ListTile(
            title: Text(exame.nome),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Data: ${exame.data}'),
                Text('Resultado: ${exame.resultado}'),
              ],
            ),
          );
        },
      );
    } else {
      final examesPorData = <String, List<Exame>>{};
      for (var exame in exames) {
        if (!examesPorData.containsKey(exame.data)) {
          examesPorData[exame.data] = [];
        }
        examesPorData[exame.data]!.add(exame);
      }

      return ListView.builder(
        itemCount: examesPorData.length,
        itemBuilder: (context, index) {
          final data = examesPorData.keys.toList()[index];
          final examesParaData = examesPorData[data]!;
          return ExpansionTile(
            title: Text(data),
            children: examesParaData.map((exame) {
              return ListTile(
                title: Text(exame.nome),
                subtitle: Text('Resultado: ${exame.resultado}'),
              );
            }).toList(),
          );
        },
      );
    }
  }

  Future<void> _adicionarNovoExame() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Adicionar Novo Exame'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
                await salvarNoDispositivo(exames);
              },
              child: Text('Salvar no Dispositivo'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
                await salvarNoDrive(exames);
              },
              child: Text('Salvar no Google Drive'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> salvarNoDispositivo(List<Exame> exames) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/exames.json');
    final jsonString =
        jsonEncode(exames.map((exame) => exame.toJson()).toList());
    await file.writeAsString(jsonString);
  }

  Future<void> salvarNoDrive(List<Exame> exames) async {
    final _credentials = ServiceAccountCredentials.fromJson({
      "private_key": "CHAVE_PRIVADA",
      "client_email": "EMAIL_DO_CLIENTE",
    });
    final client = await clientViaServiceAccount(
        _credentials, [drive.DriveApi.driveFileScope]);
    final apiDrive = drive.DriveApi(client);

    final file = drive.File();
    file.name = 'exames.json';
    final jsonString =
        jsonEncode(exames.map((exame) => exame.toJson()).toList());

    final stream = Stream.value(utf8.encode(jsonString));

    final media = drive.Media(stream, int.parse(jsonString.length.toString()));

    await apiDrive.files.create(file, uploadMedia: media);
  }
}

enum OpcaoAgrupamento {
  porExame,
  porData,
}

class Exame {
  final String nome;
  final String data;
  final String resultado;

  Exame({required this.nome, required this.data, required this.resultado});

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'data': data,
      'resultado': resultado,
    };
  }
}
