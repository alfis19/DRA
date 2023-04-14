import 'package:flutter/material.dart';

import '../views/absen_view.dart';
import '../views/bar_view.dart';
import '../views/dashboard_view.dart';
import '../views/profil_view.dart';
import '../views/matkul.dart';

// ignore: camel_case_types
class Home_ extends StatefulWidget {
  // ignore: non_constant_identifier_names
  // ignore: use_key_in_widget_constructors

  @override
  State<Home_> createState() => _Home_State();
}

// ignore: camel_case_types
class _Home_State extends State<Home_> {
  int _selectedPage = 0;
  List<Widget> _widgetOptions = <Widget>[
    DashboardView(),
    matkul(),
    AbsenView(),
    BarView(),
    ProfileView()
  ];

  void _onPageTapped(int Page) {
    setState(() {
      _selectedPage = Page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_sharp),
            label: 'Matkul',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Report',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Color(0xff3813A0),
        onTap: _onPageTapped,
      ),
    ));
  }
}
