import 'package:flutter/material.dart';
import 'package:stuadvisors/message.dart';

import 'Git.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 400,
                color: Colors.blue,
                child: Image.asset(
                  'assets/stuAdvisors logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 430, // Adjust the bottom position for the icon
            left: 280,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFFD9D9D9),
              child: IconButton(
                icon: const Icon(Icons.visibility, color: Colors.black), // Change to your eye icon
                onPressed: () {
                  // Handle visibility icon press
                },
              ),
            ),
          ),
          Positioned(
            bottom: 430, // Adjust the bottom position for the icon
            right: 20,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFF35CEF8),
              child: IconButton(
                icon: const Icon(Icons.calculate, color: Colors.white), // Change to your numbers icon
                onPressed: () {
                  // Handle numbers icon press
                },
              ),
            ),
          ),
          Positioned(
            top: 410, // Adjust the top position for the name text
            left: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GitPage()),
                );
              },
              child: const Text(
                'Ariens Rob',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 300, // Adjust the bottom position for the buttons
            left: 60,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary:  const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    'UI/UX Designer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary:const Color(0xFF35CEF8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    'Development & IT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 250, // Adjust the bottom position for the buttons
            left: 60,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF35CEF8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    'Design & Creative',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary:   Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    'Packaging',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 150, // Adjust the bottom position for the circular buttons
            left: 110,
            child: Row(
              children: [
                CircleButton(
                  onPressed: () {
                    // Handle button press
                  },
                  color: const Color(0xFF35CEF8), // Choose your color
                  icon: Icons.favorite, // Choose your icon
                ),
                const SizedBox(width: 20),
                CircleButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MessagePage()),
                    );
                  },
                  color:const  Color(0xFFD9D9D9), // Choose your color
                  icon: Icons.message_sharp, // Choose your icon
                ),
                const SizedBox(width: 20),
                CircleButton(
                  onPressed: () {
                    // Handle button press
                  },
                  color:const  Color(0xFF005771), // Choose your color
                  icon: Icons.cancel, // Choose your icon
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFFFFFF),
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.black),
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message, color: Colors.black),
                onPressed: () {
                  // Handle message button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle, color: Colors.black),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle button press
        },
        tooltip: 'Add',
        backgroundColor: const Color(0xFF35CEF8),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final IconData icon;

  const CircleButton({
    required this.onPressed,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
