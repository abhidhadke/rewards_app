import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

enum _SelectedTab { home, favorite, search, person }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _selectedTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bgimage.png'), fit: BoxFit.cover,)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            onTap: _handleIndexChanged,

            items: [
          /// Home
          DotNavigationBarItem(
          icon: Icon(Icons.home),
          selectedColor: Colors.purple,
        ),

      /// Likes
      DotNavigationBarItem(
        icon: Icon(Icons.favorite),
        selectedColor: Colors.pink,
      ),

      /// Search
      DotNavigationBarItem(
        icon: Icon(Icons.search),
        selectedColor: Colors.orange,
      ),

      /// Profile
      DotNavigationBarItem(
        icon: Icon(Icons.person),
        selectedColor: Colors.teal,
      ),

      ],
          ),

          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 90.0,),
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Offer 1 here!!"),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Offer 2 here!!"),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Offer 3 here!!"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          minimumSize: Size(90, 50),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          )
                      ),
                      onPressed: () async {
                        await LaunchApp.openApp(
                            androidPackageName: 'com.google.android.apps.nbu.paisa.user',
                            openStore: true);
                      },
                      child: Text(
                          "Pay Now!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)
                      )
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Offer 4 here!!"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Offer 5 here!!"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Offer 6 here!!"),
                    ),
                  ),


                ],

              ),
            ),

          ),


        )


    );
  }
}
