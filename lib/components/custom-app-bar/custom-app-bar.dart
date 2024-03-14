import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      color: bgcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Image.asset('assets/mon.png'),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/filledsms.svg',
                  width: 28,
                  height: 28,
                  color: blue,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/filledbell.svg',
                  width: 25,
                  height: 25,
                  color: blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
