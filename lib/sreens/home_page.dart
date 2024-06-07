import 'package:easybank/widgets/bottombar.dart';
import 'package:easybank/widgets/moneybutton.dart';
import 'package:easybank/widgets/textfont.dart';
import 'package:easybank/widgets/trasactionhistory.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          // ignore: prefer_const_constructors
          leading: CircleAvatar(
            foregroundColor: Colors.lightBlue,
            onBackgroundImageError: (exception, stackTrace) =>
                Text(exception.toString()),
            radius: 20,
            backgroundImage: const AssetImage("images/a.png"),
          ),
          title: Column(
            children: [
              Text(
                'Welcome',
                style: textfont(Colors.black12, 15, FontWeight.normal),
              ),
              Text(
                'Cameroon Howard',
                style: textfont(Colors.lightGreen, 18, FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        bottomNavigationBar: const BottomvigationBar(),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Balance',
                      style: textfont(Colors.white, 20, FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '#200,000:00',
                          style: textfont(Colors.white, 25, FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(text: 'Send'),
                        Button(text: 'Receive'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transaction History',
                    style: textfont(Colors.black, 18, FontWeight.normal),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                    label: Text(
                      '',
                      style: textfont(Colors.black, 20, FontWeight.normal),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              // history
              const Divider(),
              const Transaction(),
              const Divider(),

              //  const Divider(),
              const Transaction(),
              const Divider(),

              //  const Divider(),
              const Transaction(),
              const Divider(),
            ],
          ),
        )));
  }
}
