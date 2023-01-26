import 'package:classic_bottom_navigation_bar/classic_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int _currentIndex = 0;
List myRoutes = [
  const Center(
    child: Text(
      "PAGE 1",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  const Center(
    child: Text(
      "PAGE 2",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  const Center(
    child: Text(
      "PAGE 3",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  const Center(
    child: Text(
      "PAGE 4",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: myRoutes[_currentIndex],
      bottomNavigationBar: ClassicButtomNavBar(
        selectedIndex: _currentIndex,
        onItemSelected: (value) => setState(() {
          // ignore: avoid_print
          print("🛑$_currentIndex🛑");
          _currentIndex = value;
          // ignore: avoid_print
          print("🟢$_currentIndex🟢");
        }),
        items: const [
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.home),
            title: "H O M E",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.search),
            title: "S E A R C H",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.person),
            title: "P R O F I L E",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: "S E T T I N G S",
          ),
        ],
      ),
    );
  }
}
