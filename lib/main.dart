import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTabs(),
    );
  }
}

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(color: Colors.teal.shade400),
    Container(color: Colors.red.shade400),
    Container(color: Colors.green.shade400),
    Container(color: Colors.blue.shade400),
    Container(color: Colors.yellow.shade400),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 0
                    ? 'vectors/home-bold.svg'
                    : 'vectors/home-outline.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 1
                    ? 'vectors/search-bold.svg'
                    : 'vectors/search-outline.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 2
                    ? 'vectors/add-square-bold.svg'
                    : 'vectors/add-square-outline.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 3
                    ? 'vectors/video-play-bold.svg'
                    : 'vectors/video-play-outline.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/profile.png')),
                      shape: BoxShape.circle),
                ),
                label: ''),
          ]),
    );
  }
}
