import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Color blueColorShade = Colors.blue[900] ?? Colors.blue;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 380),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 25, top: 10),
                      child: Text(
                        'LET\'S GET \nSTARTED',
                        style: TextStyle(color: blueColorShade, fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Text(
                        'The best is yet to come...',
                        style: TextStyle(color: blueColorShade, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Centered the button
                  children: [
                    Container(
                      width: 300,
                      padding: const EdgeInsets.only(left: 100, top: 25),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, 'second');
                        },
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        color: blueColorShade,
                        textColor: Colors.white,
                        child: const Text(
                          "JOIN NOW",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 140,
        // Adjusted app bar height
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 30),
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/stuAdvisors logo.png'),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
