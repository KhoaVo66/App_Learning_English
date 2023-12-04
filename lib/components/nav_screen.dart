import 'package:app_learning/components/achievement_screen.dart';
import 'package:app_learning/components/learn_screen.dart';
import 'package:app_learning/components/profile_screen.dart';
import 'package:app_learning/components/search_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectIndex = 0;

  final _screens = [
    const LearnScreen(),
    const SearchScreen(),
    const AchievementScreen(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectIndex],
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                  height: 70,
                  child: bottomNavigationBar
              )
          )
        ],
      ),
    );
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectIndex,
      onTap: (i) => setState(() => _selectIndex = i),
      // selectedItemColor: const Color(0xff3DB2FF),
      // unselectedItemColor: const Color(0xff1C1C1E),
      unselectedIconTheme: const IconThemeData(color: Color(0xff1C1C1E)),
      selectedLabelStyle: const TextStyle(
        color: Color(0xff3DB2FF),
      ),
      unselectedLabelStyle: const TextStyle(
        color: Color(0xff1C1C1E),
        fontSize: 14
      ),
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/BookOpenText.png'),size: 40,),
            label: 'Learn'
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/Binoculars.png'),size: 40,),
            label: 'Search'
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/Trophy.png'),size: 40,),
            label: 'Achievement'
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/UserCircle.png'),size: 40,),
            label: 'Profile'
        ),
      ],
    );
  }
}

