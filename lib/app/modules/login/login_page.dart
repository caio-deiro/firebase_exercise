import 'package:firebase_exercice/app/shared/components/app_button.dart';
import 'package:firebase_exercice/app/shared/components/app_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset('assets/images/firebase_logo.png'),
              SizedBox(height: 30),
              Form(
                  child: Column(
                children: [
                  AppTextfield(
                    controller: TextEditingController(),
                    label: Text('E-mail'),
                  ),
                  SizedBox(height: 15),
                  AppTextfield(
                    controller: TextEditingController(),
                    isPassword: true,
                    label: Text('Senha'),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: Text('Esqueceu a senha?')),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: AppButton(onPressed: () {}, text: 'Entrar'),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                      onPressed: () {},
                      child: Text('Novo por aqui? Cadastre-se!')),
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
