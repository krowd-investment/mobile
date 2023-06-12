import 'package:flutter/material.dart';

Widget buildThreePartItem(
        String imagePath, String text, Icon icon, double paddingLeft) =>
    Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          width: 15,
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        buildCatchEventIcon(icon, paddingLeft)
      ],
    );

Widget buildCatchEventIcon(Icon icon, double paddingLeft) => GestureDetector(
      onTap: () {},
      child: Container(
        height: 5,
        width: 40,
        margin: EdgeInsets.fromLTRB(paddingLeft, 0, 0, 12),
        child: icon,
      ),
    );
