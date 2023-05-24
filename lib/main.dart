import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krowd_invesment_footer/pages/notifications.dart';
import 'package:krowd_invesment_footer/pages/home.dart';
import 'package:krowd_invesment_footer/pages/invest.dart';
import 'package:krowd_invesment_footer/pages/person.dart';
import 'package:krowd_invesment_footer/pages/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Krowd Investment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  static const IconData bitcoin = IconData(0xf8b2,
      fontFamily: CupertinoIcons.iconFont,
      fontPackage: CupertinoIcons.iconFontPackage);

  static const IconData menu = IconData(0xe3dc, fontFamily: 'MaterialIcons');
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 2;

  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.notifications,
      size: 30,
    ),
    Icon(
      MyHomePage.bitcoin,
      size: 30,
    ),
    Icon(
      Icons.wallet,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
      ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(
          color: Colors.blue,
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
        widget = const Notifications();
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
