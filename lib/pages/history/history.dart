import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<StatefulWidget> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int selectedIndex = 0;

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

  List<Widget> getSelectedItems() {
    if (selectedIndex == 0) {
      return [
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Deposit from Temp wallet", "12/6/2023", "- 50000", false),
        buildItemsWallet(
            "Tranfer to MoMo wallet", "12/6/2023", "+ 300000", true),
        buildItemsWallet(
            "Tranfer to Service wallet", "12/6/2023", "+ 900000", true),
        buildItemsWallet(
            "Deposit from invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
      ];
    } else if (selectedIndex == 1) {
      return [
        buildItemsWallet(
            "Tranfer to MoMo wallet", "12/6/2023", "+ 300000", true),
        buildItemsWallet(
            "Tranfer to Service wallet", "12/6/2023", "+ 900000", true),
        buildItemsWallet(
            "Deposit from invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
      ];
    } else if (selectedIndex == 2) {
      return [
        buildItemsWallet(
            "Tranfer to Service wallet", "12/6/2023", "+ 900000", true),
        buildItemsWallet(
            "Deposit from invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
      ];
    } else {
      return [
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to MoMo wallet", "12/6/2023", "+ 300000", true),
        buildItemsWallet(
            "Tranfer to Service wallet", "12/6/2023", "+ 900000", true),
        buildItemsWallet(
            "Deposit from invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "- 100000", false),
        buildItemsWallet(
            "Tranfer to invesment wallet", "12/6/2023", "+ 100000", true),
      ];
    }
  }

  Widget buildItemsWallet(
          String textOne, String date, String textTwo, bool type) =>
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 15, 0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align date to the left
              children: [
                Text(
                  textOne,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  date,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Expanded(
              // Use Expanded widget to make textTwo take remaining space
              child: Align(
                alignment: Alignment.centerRight, // Align textTwo to the right
                child: Text(
                  textTwo,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: type ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buidHeadWallet(Icon icon, String textOne, String textTwo) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Transform.scale(
              scale: 2,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: icon,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                child: Text(
                  textOne,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Text(
                  textTwo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 26, 157),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 130),
          child: Text("My History"),
        ),
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
