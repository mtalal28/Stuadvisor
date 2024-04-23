import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/stuAdvisors logo-white.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 165, top: 160),
                  child: const Text(
                    'Hey there!',
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: const Text(
                    'Enter your username and password to login or register below',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 0),
            Container(
              padding: const EdgeInsets.only(
                top: 75,
                right: 35,
                left: 35,
              ),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        // _password = value;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        // _password = value;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, 'third');
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  color: Colors.white,
                  textColor: Colors.blue[900],
                  child: const Text(
                    "LOGIN ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'forget');
                  },
                  child: const Text(
                    'Forgotten Password?',
                    style: TextStyle(
                      fontSize: 15,
                      height: -0.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'forget');
                  },
                  child: const Text(
                    'Or Create a New Account',
                    style: TextStyle(
                      fontSize: 15,
                      height: -0.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
