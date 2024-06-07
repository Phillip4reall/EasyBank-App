// ignore_for_file: use_super_parameters
import 'package:easybank/sreens/log_in.dart';
import 'package:easybank/widgets/button.dart';
import 'package:easybank/widgets/textfiled.dart';
import 'package:easybank/widgets/textfont.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  bool issecured = true;
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

  Widget toggle() {
    return IconButton(
      onPressed: () {
        setState(() {
          issecured = !issecured;
        });
      },
      icon: issecured
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
          'Sign up',
          style: textfont(Colors.lightBlue, 25, FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Register your Easybank account with ease",
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    secure: false,
                    icon: const Text(""),
                    controller: nameController,
                    hintText: 'Enter your name',
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomTextField(
                    secure: issecured,
                    icon: toggle(),
                    controller: confirmController,
                    hintText: 'Confirm password',
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
                              builder: (context) => const LoginPage()));
                    },
                    text: 'Sign Up',
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Already have an account LogIn",
                      style:
                          textfont(Colors.lightBlueAccent, 18, FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
