import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/guide/guide.dart';
import 'package:smart_charge_station_app/screens/mainpage/main_page.dart';
import 'package:smart_charge_station_app/screens/stations/stations.dart';
import 'evc_bar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart EVC Net',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> body = const [
    MainPage(),
    Stations(),
    Guide(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EvcBar(),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ev_station), label: "Stations"),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline), label: "Guide"),
        ],
      ),
    );
  }
}














