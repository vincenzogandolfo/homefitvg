import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen/allenamento_screen.dart';
import 'screen/motivazione_screen.dart';
import 'screen/contatti_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Motivazione(),
    Allenamento(),
    Contatti(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
          backgroundColor: Colors.greenAccent,
          elevation: 16,
          title: const Text(
            'HomeFit VG',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart),
              label: 'Motivazione',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dumbbell),
              label: 'Allenamento',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidMessage),
              label: 'Contatti',
            ),
          ],
          iconSize: 16,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(size: 20),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: Colors.greenAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
