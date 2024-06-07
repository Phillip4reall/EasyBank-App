import 'package:easybank/sreens/home_page.dart';
import 'package:easybank/widgets/button.dart';
import 'package:easybank/widgets/textfiled.dart';
import 'package:easybank/widgets/textfont.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool secured = true;

  Widget passtoggle() {
    return IconButton(
      onPressed: () {
        setState(() {
          secured = !secured;
        });
      },
      icon: secured
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.lightBlue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign In',
            style: textfont(Colors.lightBlue, 25, FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login into your Easybank account',
                style: textfont(Colors.lightBlue, 18, FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  secure: false,
                  icon: const Text(""),
                  controller: emailController,
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  secure: secured,
                  icon: passtoggle(),
                  controller: passwordController,
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: ButtomWidget(
                  color: Colors.lightBlue,
                  height: 50,
                  widht: double.infinity,
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  text: 'Sign In',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Don't have an account?Sign up",
                    style:
                        textfont(Colors.lightBlueAccent, 18, FontWeight.bold),
                  ))
            ],
          ),
        )));
  }
}
