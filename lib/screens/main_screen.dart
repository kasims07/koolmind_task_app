import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koolmind_task_app/screens/home_screen.dart';
import 'package:koolmind_task_app/utils/globalveriable.dart';

class MainScreen extends StatefulWidget {
  static const routName = '/main';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTap(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Colors.green.shade700,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _page == 0 ? Icons.home : Icons.home_outlined,
              color: _page == 0 ? Colors.green.shade700 : Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _page == 1 ? Icons.person : Icons.person_outline,
              color: _page == 1 ? Colors.green.shade700 : Colors.grey,
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _page == 2 ? Icons.local_offer : Icons.local_offer_outlined,
              color: _page == 2 ? Colors.green.shade700 : Colors.grey,
            ),
            label: 'Offers',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _page == 3 ? Icons.category : Icons.category_outlined,
              color: _page == 3 ? Colors.green.shade700 : Colors.grey,
            ),
            label: 'More',
            backgroundColor: Colors.white,
          ),

        ],
        onTap: navigationTap,
      ),
    );
  }
}
