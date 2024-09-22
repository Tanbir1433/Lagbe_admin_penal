import 'package:flutter/material.dart';

import '../utility/constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Material(
            borderRadius: BorderRadius.circular(50),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/images/Tanbir.jpg",
              height: 38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text("Tanbir Hossain"),
          ),
        ],
      ),
    );
  }
}