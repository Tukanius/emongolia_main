import 'package:e_mongolia/components/custom-app-bar/custom-app-bar.dart';
import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  static const routeName = 'AddPage';
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
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
