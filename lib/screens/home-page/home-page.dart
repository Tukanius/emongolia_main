import 'package:e_mongolia/components/custom-app-bar/custom-app-bar.dart';
import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:e_mongolia/screens/widgets/form_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomAppBar(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(
                children: [
                  FormTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      color: black,
                    ),
                    textColor: Theme.of(context).iconTheme.color,
                    color: white,
                    showCounter: false,
                    maxLenght: 8,
                    inputType: TextInputType.phone,
                    name: 'phone',
                    hintText: "Үйлчилгээ хайх",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Image.asset('assets/1.png'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Хувийн мэдээлэл',
                                  style: TextStyle(
                                      color: qwe, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    child: Image.asset('assets/2.png'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  'Төрд байгаа миний мэдээлэл',
                                  style: TextStyle(
                                      color: qwe, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Image.asset('assets/3.png'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      'Лавлагаа',
                                      style: TextStyle(
                                          color: qwe,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    child: Image.asset('assets/4.png'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 15, left: 15, right: 10),
                                child: Text(
                                  'Бичиг баримт захиалах',
                                  style: TextStyle(
                                      color: qwe, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Image.asset('assets/5.png'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  'Миний авсан үйлчилгээ',
                                  style: TextStyle(
                                      color: qwe, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white,
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    width: 50,
                                    height: 50,
                                    child: Image.asset('assets/6.png'),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  'Бүх үйлчилгээ',
                                  style: TextStyle(
                                      color: qwe, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Онцлох үйлчилгээ',
                        style: TextStyle(
                          color: qwe,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Бүгд >',
                        style: TextStyle(
                          color: blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          child: Center(
                              child: CircularProgressIndicator(
                            color: blue,
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
