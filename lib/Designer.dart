import 'package:flutter/material.dart';
import 'package:stuadvisors/Profile.dart';

class DesignerPage extends StatefulWidget {
  const DesignerPage({Key? key});

  @override
  State<DesignerPage> createState() => _DesignerPageState();
}

class _DesignerPageState extends State<DesignerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(1.0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      // Handle search button press
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(right: 190),
                child: const Text(
                  'All experts you need',
                  style: TextStyle(
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: ClickableTextItem(
                        text: 'All',
                        onTap: () {/* Handle Item 1 press */},
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    ClickableTextItem(
                      text: 'Animation',
                      onTap: () {/* Handle Item 2 press */},
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ClickableTextItem(
                      text: 'Branding',
                      onTap: () {/* Handle Item 3 press */},
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ClickableTextItem(
                      text: 'Illustration',
                      onTap: () {/* Handle Item 4 press */},
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward, color: Colors.black),
                      onPressed: () {
                        // Handle forward button press
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  ClickableBox(
                    image: 'assets/stuAdvisor logo.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()),
                      );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York',
                    onChatPressed: () {}, project: '',
                  ),
                  ClickableBox(
                    image: 'assets/stuAdvisor.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York', onChatPressed: () {  }, project: '',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClickableBox(
                    image: 'assets/stuAdvisor.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York', onChatPressed: () {  }, project: '',
                  ),
                  ClickableBox(
                    image: 'assets/stuAdvisor.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York', onChatPressed: () {  }, project: '',
                  ),

                ],

              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClickableBox(
                    image: 'assets/stuAdvisor.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York', onChatPressed: () {  }, project: '',
                  ),

                  ClickableBox(
                    image: 'assets/stuAdvisor.png',
                    title: 'Ariens Rob',
                    text: 'UI/UX Designer',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DesignerPage()),
                      // );
                    },
                    width: 180,
                    height: 200,
                    rating: 5.0,
                    projectCount: ':18',
                    payPerHour: ':25',
                    description: 'is simply dummy text of the printing and typesetting industry.',
                    location: 'New York', onChatPressed: () {  }, project: '',
                  ),

                ],

              ),

            ],
          ),
        ),
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
        backgroundColor: const Color(0xFF06AFDF),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ClickableTextItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final TextStyle textStyle;

  const ClickableTextItem({
    Key? key,
    required this.text,
    required this.onTap,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class ClickableBox extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final double rating;
  final String projectCount;
  final String payPerHour;
  final String description;
  final String location;
  final VoidCallback onTap;
  final VoidCallback onChatPressed;
  final double width;
  final double height;
  final String project;

  const ClickableBox({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
    required this.rating,
    required this.projectCount,
    required this.payPerHour,
    required this.description,
    required this.location,
    required this.onTap,
    required this.onChatPressed,
    required this.width,
    required this.height,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  // color: Colors.deepOrange,
                  child: Image.asset("assets/stuAdvisors logo.png",),
           ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, size: 16, color: Colors.yellow),
                            const SizedBox(width: 4),
                            Text(' $rating', style: TextStyle(fontSize: 12)),
                          ],
                        ),

                  ],
                ),



              ],

            ),

          ],


        ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Icon(Icons.work, size: 16),
                      const SizedBox(width: 0),
                      Text(' $projectCount', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.attach_money, size: 16),
                        const SizedBox(width: 0),
                        Text(' $payPerHour', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Description: $description',
                style: const TextStyle(
                  fontSize: 12,

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16),
                    SizedBox(width: 0),
                    Text(' $location', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: onChatPressed,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Set button color to green
                    ),
                    child: const Text('Chat'),
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
