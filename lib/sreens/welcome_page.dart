import 'package:easybank/sreens/log_in.dart';
import 'package:easybank/sreens/sign_up.dart';
import 'package:easybank/widgets/button.dart';
import 'package:easybank/widgets/welcome_pagecontroller.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  //final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: sized_box_for_whitespace
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.64,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.64,
                  decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                      )),
                  child:
                      const Padding(padding: EdgeInsets.only(), child: Pages()),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.9,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  child: Column(
                    children: [
                      const Text(
                        'Banking Made Easy',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 25,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Welcome to Easybank, bank with ease and experince flexible transaction.',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1,
                              wordSpacing: 2,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
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
                                    builder: (context) =>
                                        const SignupScreen()));
                          },
                          text: 'Open an account',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: ButtomWidget(
                          color: Colors.black,
                          height: 50,
                          widht: double.infinity,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          text: 'I have an account',
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
