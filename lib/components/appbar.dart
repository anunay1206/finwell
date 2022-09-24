import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: null,
                icon: SvgPicture.asset("assets/icons/analytics-icon.svg"),
              ),
              IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset("assets/icons/search-icon.svg")
              ),
              IconButton(
                  onPressed: null,
                  icon: SvgPicture.asset("assets/icons/more-icon.svg")
              ),
            ],
          )
        ],
      ),
    );
  }
}
