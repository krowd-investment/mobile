import 'package:flutter/material.dart';

import '../../domain/repository/user_repo/user.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key, required this.user});
  final User user;
  @override
  State<StatefulWidget> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 26, 157),
        leading: const BackButton(),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text("My Profile"),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        child: Column(
          children: [
            Container(
              width: 370,
              height: 200,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 42, 244, 197),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  buildHeadProfile(10, "Personal Information", 180, "Edit"),
                  buildInformation(
                      const Icon(
                        Icons.abc,
                        color: Colors.white,
                        size: 24,
                      ),
                      10,
                      12,
                      6,
                      12,
                      "Full name: ",
                      6,
                      12,
                      widget.user.fullname),
                  buildInformation(
                      const Icon(
                        Icons.date_range_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      6,
                      12,
                      "Date of birth: ",
                      10,
                      12,
                      widget.user.birthDay.toString()),
                  buildInformation(
                      Icon(
                        widget.user.gender == "Male"
                            ? Icons.male
                            : Icons.female,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      6,
                      12,
                      "Gender: ",
                      10,
                      12,
                      widget.user.gender.toString()),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 12, 0, 0),
                        child: Icon(
                          Icons.house,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 12, 0, 0),
                        child: Text(
                          "Address: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                          child: Text(
                            widget.user.address.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 370,
              height: 100,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 42, 244, 197),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  buildHeadProfile(10, "My Contact", 240, "Edit"),
                  buildInformation(
                      const Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      8,
                      12,
                      "Email: ",
                      10,
                      12,
                      widget.user.email.toString()),
                  buildInformation(
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      8,
                      12,
                      "Phone number: ",
                      10,
                      12,
                      widget.user.phone.toString()),
                ],
              ),
            ),
            Container(
              width: 370,
              height: 100,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 42, 244, 197),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  buildHeadProfile(10, "Privacy", 265, "Edit"),
                  buildInformation(
                      const Icon(
                        Icons.block,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      8,
                      12,
                      "Block List",
                      0,
                      0,
                      ""),
                  buildInformation(
                      const Icon(
                        Icons.person_search_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                      10,
                      12,
                      8,
                      12,
                      "Friend List ",
                      0,
                      0,
                      ""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeadProfile(double topPadding, String textOne,
          double widthSizeBox, String textTwo) =>
      Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, topPadding, 0, 0),
            child: Text(
              textOne,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: widthSizeBox,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, topPadding, 5, 10),
            child: GestureDetector(
              onTap: () {},
              child: const SizedBox(
                height: 5,
                width: 5,
                child: Icon(
                  Icons.edit,
                  color: Colors.pink,
                  size: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              textTwo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );

  Widget buildInformation(
    Icon icon,
    double paddingLeftIcon,
    double paddingTopIcon,
    double paddingLeftTextOne,
    double paddingTopTextOne,
    String textOne,
    double paddingLeftTextTwo,
    double paddingTopTextTwo,
    String textTwo,
  ) =>
      Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(paddingLeftIcon, paddingTopIcon, 0, 0),
            child: icon,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingLeftTextOne, paddingTopTextOne, 0, 0),
            child: Text(
              textOne,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                paddingLeftTextTwo, paddingTopTextTwo, 0, 0),
            child: Text(
              textTwo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      );
}
