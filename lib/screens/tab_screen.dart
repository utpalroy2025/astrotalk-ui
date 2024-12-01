import 'package:astrotalk/screens/call_screen.dart';
import 'package:astrotalk/screens/chat_screen.dart';
import 'package:astrotalk/screens/home_screen.dart';
import 'package:astrotalk/screens/live_screen.dart';
import 'package:astrotalk/screens/pray_screen.dart';
import 'package:astrotalk/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;

  void _setScreen(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
     // Close the drawer when a screen is selected
  }

  final List<Widget> _pages = [
    HomeScreen(),
    ChatScreen() ,
    LiveScreen(),
    CallScreen(),
    PrayScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _setScreen,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.prayingHands),
            label: 'Pray',
          ),
        ],
      ),
    );
  }
}
