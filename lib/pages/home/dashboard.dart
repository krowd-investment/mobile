import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:krowd_invesment_footer/pages/history/history.dart';
import 'package:krowd_invesment_footer/pages/home/home.dart';
import 'package:krowd_invesment_footer/pages/investment/invest.dart';
import 'package:krowd_invesment_footer/pages/person/person.dart';
import 'package:krowd_invesment_footer/pages/wallet/wallet.dart';

import '../../config/const.dart';

// void main() {
//   runApp(const DashBoard());
// }

class DashBoard extends StatefulWidget {
  const DashBoard({super.key, String? email});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const MyHomePage(title: 'Krowd Investment'),
  //   );
  // }
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   static const IconData bitcoin = IconData(0xf8b2,
//       fontFamily: CupertinoIcons.iconFont,
//       fontPackage: CupertinoIcons.iconFontPackage);

//   static const IconData menu = IconData(0xe3dc, fontFamily: 'MaterialIcons');
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class _MyHomePageState extends State<DashBoard> {
  static const IconData bitcoin = IconData(0xf8b2,
      fontFamily: CupertinoIcons.iconFont,
      fontPackage: CupertinoIcons.iconFontPackage);

  int index = 2;
  final items = const [
    Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.notifications,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      bitcoin,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.wallet,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.person,
      color: Colors.white,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        padding: const EdgeInsets.all(16),
        currentIndex: index,
        backgroundColor: secondaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        height: 72,
        snakeViewColor: primaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              activeIcon: Icon(Iconsax.home),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              activeIcon: Icon(Icons.history),
              label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_bitcoin),
              activeIcon: Icon(Icons.currency_bitcoin),
              label: 'invest'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet),
              activeIcon: Icon(Iconsax.wallet),
              label: 'wallet'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_add),
              activeIcon: Icon(Iconsax.profile_add),
              label: 'user')
        ],
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
      ),
      body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Home();
        break;
      case 1:
        widget = const History();
        break;
      case 2:
        widget = const Invest();
        break;
      case 3:
        widget = const Wallet();
        break;
      case 4:
        widget = const Person();
        break;
      default:
        widget = const Home();
        break;
    }
    return widget;
  }
}
