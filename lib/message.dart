import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 39.0, left: 16.0, right: 16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 8.0),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("assets/stuAdvisors logo.png"), // Replace with user's image
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text(
                  'Ariens Rob',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Chat messages go here
          Expanded(
            child: ListView(
              children: [
                _buildMessage(
                  isReceived: false,
                  text: 'Hi! How are you?',
                  timestamp: '10:30 AM', // Replace with actual timestamp
                ),
                _buildMessage(
                  isReceived: true,
                  text: 'Hello there!',
                  timestamp: '10:35 AM',
                ),
                _buildMessage(
                  isReceived: false,
                  text: 'i am in trouble to create the Git Page of StuAdvisor application in flutter!',
                  timestamp: '10:40 AM',
                ),
                _buildMessage(
                  isReceived: true,
                  text: 'No Problem,\n I can create the page for you in 10 dollars.'
                      ' Please provide me the complete details.',
                  timestamp: '10:45 AM',
                ),
              ],
            ),
          ),
          // Input field for typing messages
          _buildMessageInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage({required bool isReceived, required String text, required String timestamp}) {
    return Column(
      children: [
        Align(
          alignment: isReceived ? Alignment.topLeft : Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: isReceived ? const Color(0xFFCCFACC) : const Color(0xFFFAF0E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 4.0),
                Text(
                  timestamp,
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }

  Widget _buildMessageInputField() {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Handle send button action
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MessagePage(),
    ),
  );
}
