import 'package:flutter/material.dart';
import 'package:whatsapp_chat_page/Views/chat_page.dart';

class MyChatNavBar extends StatefulWidget {
  const MyChatNavBar({super.key});

  @override
  State<MyChatNavBar> createState() => _MyChatNavBarState();
}

class _MyChatNavBarState extends State<MyChatNavBar> {
  int selected_index = 0;
  final List<Widget> widgetOptions = const [
    MyChatPage(),
    MyChatPage(),
    MyChatPage(),
    MyChatPage(),
  ];
  void _onItemTapped(int index) {
    setState(
      () {
        selected_index = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selected_index),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.deepPurple.shade100,
        selectedItemColor: Colors.lightGreenAccent.shade700,
        items: const [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.message_sharp,),
            label: "Chats",
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_sharp),
            label: "Updates",
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: "Communities",
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "Calls",
            backgroundColor: Colors.black87,
          ),
        ],
        currentIndex: selected_index,
        onTap: _onItemTapped,
      ),
    );
  }
}
