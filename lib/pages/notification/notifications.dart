import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:krowd_invesment_footer/pages/notification/widgets/head_wallet_widet.dart';
import 'package:krowd_invesment_footer/pages/notification/widgets/items_wallet_widget.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int selectedIndex = 0;
  String? notificationTitle, notificationMsg, formattedSentTime;

//Init catch event send notify from firebase
  @override
  void initState() {
    super.initState();

    //Get message when app not running
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        final DateTime sentTime =
            DateTime.fromMillisecondsSinceEpoch(event.sentTime as int);

        setState(() {
          formattedSentTime = sentTime.toString();
          notificationTitle = "${event.notification!.title}";
          notificationMsg = "${event.notification!.body}";
        });
      }
    });

    //Get message while app is running
    FirebaseMessaging.onMessage.listen((event) {
      final DateTime sentTime =
          DateTime.fromMillisecondsSinceEpoch(event.sentTime as int);

      setState(() {
        formattedSentTime = sentTime.toString();
        notificationTitle = "${event.notification!.title}";
        notificationMsg = "${event.notification!.body}";
      });
    });

    //Get message while app is running but in background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      final DateTime sentTime =
          DateTime.fromMillisecondsSinceEpoch(event.sentTime as int);

      setState(() {
        formattedSentTime = sentTime.toString();
        notificationTitle = "${event.notification!.title}";
        notificationMsg = "${event.notification!.body}";
      });
    });
  }

  List<String> categories = [
    'Temp Wallet',
    'Invesment Wallet',
    'Service Wallet',
    'MoMo Wallet'
  ];
  Widget getHeadWiget() {
    if (selectedIndex == 0) {
      return buidHeadWallet(
          const Icon(
            Icons.wallet,
            color: Colors.black,
            size: 20,
          ),
          "Temp Wallet",
          "\$112,550.00");
    } else if (selectedIndex == 1) {
      return buidHeadWallet(
          const Icon(
            Icons.wallet_giftcard,
            color: Color.fromARGB(255, 177, 41, 41),
            size: 20,
          ),
          "Invesment Wallet",
          "\$112,550.00");
    } else if (selectedIndex == 2) {
      return buidHeadWallet(
          const Icon(
            Icons.wallet_membership,
            color: Color.fromARGB(255, 70, 219, 102),
            size: 20,
          ),
          "Service Wallet",
          "\$112,550.00");
    } else {
      return buidHeadWallet(
          const Icon(
            Icons.wallet_rounded,
            color: Color.fromARGB(255, 240, 39, 156),
            size: 20,
          ),
          "MoMo Wallet",
          "\$112,550.00");
    }
  }

  List<Widget> items = [
    buildItemsWallet(
        "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
    buildItemsWallet("Deposit from Temp wallet", "12/6/2023", "- 50000", false),
    buildItemsWallet("Tranfer to MoMo wallet", "12/6/2023", "+ 300000", true),
  ];

  List<Widget> getSelectedItems() {
    if (selectedIndex == 0) {
      if (notificationTitle != null &&
          notificationMsg != null &&
          formattedSentTime != null) {
        Widget newNotify = buildItemsWallet(
            notificationTitle!, formattedSentTime!, notificationMsg!, true);
        items.add(newNotify);
        return items;
      }
      return items;
    } else if (selectedIndex == 1) {
      if (notificationTitle != null &&
          notificationMsg != null &&
          formattedSentTime != null) {
        Widget newNotify = buildItemsWallet(
            notificationTitle!, formattedSentTime!, notificationMsg!, true);
        items.add(newNotify);
        return items;
      }
      return items;
    } else if (selectedIndex == 2) {
      if (notificationTitle != null &&
          notificationMsg != null &&
          formattedSentTime != null) {
        Widget newNotify = buildItemsWallet(
            notificationTitle!, formattedSentTime!, notificationMsg!, true);
        items.add(newNotify);
        return items;
      }
      return items;
    } else {
      if (notificationTitle != null &&
          notificationMsg != null &&
          formattedSentTime != null) {
        Widget newNotify = buildItemsWallet(
            notificationTitle!, formattedSentTime!, notificationMsg!, true);
        items.add(newNotify);
        return items;
      }
      return items;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    categories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: SizedBox(
                        width: 125,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            categories[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: index == selectedIndex
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 500,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  final item = getHeadWiget();
                  return item;
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 500,
              height: 255,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: getSelectedItems().length,
                  itemBuilder: (context, index) {
                    return getSelectedItems()[index];
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.black,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
