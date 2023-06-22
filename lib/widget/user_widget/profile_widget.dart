import 'package:flutter/material.dart';
import 'package:krowd_invesment_footer/pages/person/profile.dart';

import '../../modules/user/models/user.dart';

class ProfileWidget extends StatefulWidget {
  final User user;
  const ProfileWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = AssetImage(widget.user.avatar);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 70,
          height: 70,
          child: InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserProfileWidget(
                  user: widget.user,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: const Color.fromARGB(255, 29, 240, 247),
        all: 4,
        child: buildCircle(
          color: color,
          all: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserProfileWidget(
                    user: widget.user,
                  ),
                ),
              );
            },
            child: const SizedBox(
              height: 5,
              width: 5,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 7,
              ),
            ),
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
