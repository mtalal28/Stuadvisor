import 'package:flutter/material.dart';

import 'Designer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 50.0, 40.0, 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color(0xFF03B1E1),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Text(
                            'What you are\nlooking for? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xFF046C8C),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFFFFFFFF),
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // Four Small Clickable Boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClickableBox(
                    image: 'assets/stuAdvisors logo.png',
                    title: 'Designer',
                    text: '70K Designer',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DesignerPage()),
                      );
                    },
                    width: 150,
                    height: 220,
                  ),
                  ClickableBox(
                    image: 'assets/stuAdvisors logo.png',
                    title: 'Developer',
                    text: '100k Developer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 150,
                    height: 220,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClickableBox(
                    image: 'assets/stuAdvisors logo.png',
                    title: 'Teacher',
                    text: '70K Teacher',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 150,
                    height: 220,
                  ),
                  ClickableBox(
                    image: 'assets/stuAdvisors logo.png',
                    title: 'Engineer',
                    text: '100k Engineer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 150,
                    height: 220,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFFFFF),
        shape: const CircularNotchedRectangle(),
        child: Container(
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
                onPressed: (){
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
        backgroundColor:const Color(0xFF06AFDF),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ClickableBox extends StatefulWidget {
  final String image;
  final String title;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;

  const ClickableBox({super.key,
    required this.image,
    required this.title,
    required this.text,
    required this.onTap,
    required this.width,
    required this.height,
  });

  @override
  _ClickableBoxState createState() => _ClickableBoxState();
}

class _ClickableBoxState extends State<ClickableBox> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        widget.onTap();
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            if (isTapped)
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
          ],
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(widget.image),
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
