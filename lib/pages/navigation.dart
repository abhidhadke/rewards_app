import 'package:flutter/material.dart';
import 'package:rewards/pages/profile.dart';
import 'package:rewards/pages/wallet.dart';
import 'package:rewards/pages/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  List pages = [
    Home(),
    Wallet(),
    Profile(),
  ];

  int currentIndex = 0;
  void onTap (int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bgimage.png'), fit: BoxFit.cover,)
        ),
        child: Scaffold(
          body: pages[currentIndex],
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            backgroundColor: Colors.black45.withOpacity(0.7),
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps_rounded)),
              BottomNavigationBarItem(label: 'Wallet', icon: Icon(Icons.account_balance_wallet_rounded)),
              BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
            ],
          ),
        )
      );

  }
}
