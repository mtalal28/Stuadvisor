import 'package:flutter/material.dart';

class GitPage extends StatefulWidget {
  const GitPage({super.key});

  @override
  State<GitPage> createState() => _GitPageState();
}

class _GitPageState extends State<GitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                            "assets/stuAdvisors logo.png"), // Replace with the actual image path
                      ),
                    ),
                    const SizedBox(width: 23.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ariens Rob',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Row(
                            children: [
                              Text(
                                'UI/UX Designer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Padding(
                                padding: EdgeInsets.only(left: 26),
                                child: Icon(
                                  Icons.attach_money,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 1.0),
                                child: Text(
                                  '18/hr',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle button press
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF35CEF8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35.0),
                                  ),
                                ),
                                child: const SizedBox(
                                  width: 100.0,
                                  child: Center(
                                    child: Text(
                                      'Available',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'New York',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Stars and Rating
                Container(
                  width: 160,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFA7037),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      SizedBox(width: 5),
                      Text(
                        '5.0',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // 100 Reviews
                const Text(
                  '(100 Reviews)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),
                ),

                // "Hire Me" button
                ElevatedButton(
                  onPressed: () {
                    // Handle Hire Me button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Hire Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                  ),
                ),

                // "Follow" button
                ElevatedButton(
                  onPressed: () {
                    // Handle Follow button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF35CEF8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: const Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 120,
                  height: 50,
                  onPressed: () {
                    // Navigator.pushNamed(context, 'path');
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xFF878787),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  textColor: Color(0xFF878787),
                  child: const Text(
                    "About",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  height: 50,
                  onPressed: () {
                    // Navigator.pushNamed(context, 'path');
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xFF878787),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  textColor: Color(0xFF878787),
                  child: const Text(
                    "Portfolio",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 120,
                  height: 50,
                  onPressed: () {
                    // Navigator.pushNamed(context, 'path');
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xFF005771),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: const Color(0xFF005771),
                  textColor: Colors.white,
                  child: const Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Overall Rating',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '4.5',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.amber,
                    size: 20.0,
                  ),
                ],
              ),
              Text(
                'Based on 20 reviews',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right:270),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'Excellent',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF878787),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Good',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF878787),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Average',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF878787),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Row(

                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                            "assets/stuAdvisors logo.png"), // Replace with the actual image path
                      ),
                    ),
                    const SizedBox(width: 23.0),
                    const Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ariens Rob',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                                size: 20.0,
                              ),

                            ],
                          ),

                        ],
                      ),


                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: const Column(
                    children: [
                      Text('is simply dummy text of the\n printing and typesetting industry.\n'
                          'is simply dummy text of the\n printing and typesetting industry.'
                          ,)
                    ],
                  ),
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
