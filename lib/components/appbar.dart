import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class restaurantAppBar extends StatelessWidget {
  const restaurantAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      backgroundColor: Colors.white,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/concessionaires/tapinks.jpg",
          fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset("assets/icons/back.svg")),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            "assets/icons/share.svg",
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
