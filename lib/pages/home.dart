import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff062424),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment(-1,0.2,),
                child: Image(
                image: AssetImage('assets/dhruv saini.jpeg'),
                height: 200,
                width: 200,
              ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Card(
                      margin: EdgeInsets.fromLTRB(5.0, 16.0, 5.0, 5),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text("Offers Coming Soon!!"),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(5.0, 16.0, 5.0, 5),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text("Offers Coming Soon!!"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 80, 200, 0),
                  child: Text("Offers Coming Soon!!"),
                ),
              ),
              const Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 80, 200, 0),
                  child: Text("Offers Coming Soon!!"),
                ),
              ),
              const Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 80, 200, 0),
                  child: Text("Offers Coming Soon!!"),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size(90, 50),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      )),
                  onPressed: () {
                    _showBottomOption();
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => _showBottomOption());
                  },
                  child: const Text("Pay Now!",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }

  _bottomSheetButton(
      {bool isClose = false,
      String? src,
      required String label,
      required Function()? onTap,
      required Color clr}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          height: 55,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              border: Border.all(color: clr, width: 2),
              borderRadius: BorderRadius.circular(20),
              color: clr),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isClose
                    ? const Icon(Icons.close_rounded)
                    : CircleAvatar(
                        backgroundImage: NetworkImage(src!),
                        radius: 20,
                      ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  label,
                ),
              ],
            ),
          )),
    );
  }

  _showBottomOption() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.only(top: 4),
        height: MediaQuery.of(context).size.height * 0.50,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 6,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400],
              ),
            ),
            const Spacer(),
            _bottomSheetButton(
                label: "Google Pay",
                onTap: () async {
                  await LaunchApp.openApp(
                      androidPackageName:
                          'com.google.android.apps.nbu.paisa.user',
                      openStore: false);
                },
                clr: Colors.blueAccent,
                src:
                    'https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk=w240-h480-rw'),
            _bottomSheetButton(
                label: "PayTM",
                onTap: () async {
                  await LaunchApp.openApp(
                      androidPackageName: 'net.one97.paytm', openStore: false);
                },
                clr: Colors.blueAccent,
                src:
                    'https://play-lh.googleusercontent.com/6_Qan3RBgpJUj0C2ct4l0rKKVdiJgF6vy0ctfWyQ7aN0lBjs78M-1cQUONQSVeo2jfs=s48-rw'),
            _bottomSheetButton(
                label: "Phone Pe",
                onTap: () async {
                  await LaunchApp.openApp(
                      androidPackageName: 'com.phonepe.app', openStore: false);
                },
                clr: Colors.blueAccent,
                src:
                    'https://play-lh.googleusercontent.com/6iyA2zVz5PyyMjK5SIxdUhrb7oh9cYVXJ93q6DZkmx07Er1o90PXYeo6mzL4VC2Gj9s=w240-h480-rw'),
            _bottomSheetButton(
                label: "BHIM App",
                onTap: () async {
                  await LaunchApp.openApp(
                      androidPackageName: 'in.org.npci.upiapp',
                      openStore: false);
                },
                clr: Colors.blueAccent,
                src:
                    'https://play-lh.googleusercontent.com/B5cNBA15IxjCT-8UTXEWgiPcGkJ1C07iHKwm2Hbs8xR3PnJvZ0swTag3abdC_Fj5OfnP=s48-rw'),
            _bottomSheetButton(
                label: "Amazon Pay",
                onTap: () async {
                  await LaunchApp.openApp(
                      androidPackageName: 'in.amazon.mShop.android.shopping',
                      openStore: false);
                },
                clr: Colors.blueAccent,
                src: 'https://cdn-icons-png.flaticon.com/512/5968/5968220.png'),
            /*_bottomSheetButton(
              label: "Close",
              onTap: () {
                debugPrint("Tapped here");
                Navigator.pop(context);
              },
              clr: Colors.redAccent,
              isClose: true,
            ),*/
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
