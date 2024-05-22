import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ye_gestao_de_saude/_core/my_colors.dart';
import 'forgot_password_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();

  bool isEntrando = true;
  bool _obscureText = true;
  IconData? _iconPassword = Icons.visibility;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorTheme,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/logo_principal.png',
                    height: 220,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      (isEntrando)
                          ? "Bem vindo ao seu app de Gestão de Saúde!"
                          : "Realize seu cadastro e comece a fazer sua auto gestão de saúde",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "E-mail"),
                    validator: (value) {
                      if (value == null || value == "") {
                        return "O valor de e-mail deve ser preenchido";
                      }
                      if (!value.contains("@") ||
                          !value.contains(".") ||
                          value.length < 4) {
                        return "O valor do e-mail deve ser válido";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _senhaController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        labelText: "Senha",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                              _iconPassword = _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off;
                            });
                          },
                          icon: Icon(_iconPassword),
                        )),
                    validator: (value) {
                      if (value == null || value.length < 4) {
                        return "Insira uma senha válida.";
                      }
                      return null;
                    },
                  ),
                  Visibility(
                    visible: !isEntrando,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _confirmaController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Confirme a senha"),
                          validator: (value) {
                            if (value == null || value.length < 4) {
                              return "Insira uma confirmação de senha válida.";
                            }
                            if (value != _senhaController.text) {
                              return "As senhas devem ser iguais.";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _nomeController,
                          decoration: const InputDecoration(labelText: "Nome"),
                          validator: (value) {
                            if (value == null || value.length < 3) {
                              return "Insira um nome maior.";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  if (isEntrando)
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Colors.blue[200],
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      botaoEnviarClicado();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: MyColors.colorThemeDark,
                    ),
                    child: Text(
                      (isEntrando) ? "Entrar" : "Cadastrar",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isEntrando = !isEntrando;
                      });
                    },
                    child: Text(
                      (isEntrando)
                          ? "Não possui uma conta?\nCadastre-se."
                          : "Já possui uma conta?\nEntre",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  botaoEnviarClicado() {
    String email = _emailController.text;
    String senha = _senhaController.text;
    String nome = _nomeController.text;

    if (_formKey.currentState!.validate()) {
      if (isEntrando) {
        _entrarUsuario(email: email, senha: senha);
      } else {
        _criarUsuario(email: email, senha: senha, nome: nome);
      }
    }
  }

  _entrarUsuario({required String email, required String senha}) {
    print("Entrar usuário $email, $senha");
  }

  _criarUsuario(
      {required String email, required String senha, required String nome}) {
    print("Criar usuário $email, $senha, $nome");
  }
}
