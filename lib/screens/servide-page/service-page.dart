import 'package:e_mongolia/components/custom-app-bar/custom-app-bar.dart';
import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  static const routeName = 'ServicePage';
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(),
          Center(
            child: CircularProgressIndicator(
              color: blue,
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
