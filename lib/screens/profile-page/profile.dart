import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = 'ProfilePage';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  onButtonPressed() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: 420,
          width: MediaQuery.of(context).size.width,
          color: bgcolor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Иргэний үнэмлэх',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: qwe,
                  ),
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Image.asset('assets/yumiid.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25), color: blue),
                      width: 200,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Дахин захиалах',
                          style: TextStyle(color: white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: white,
                          border: Border.all(
                            color: blue,
                          )),
                      width: 70,
                      height: 50,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/rotate.svg',
                          color: blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Хаах',
                    style: TextStyle(color: qwe, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: appbar,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/mon1.png'),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: SvgPicture.asset(
                          'assets/filledsms.svg',
                          width: 28,
                          height: 28,
                          color: white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: SvgPicture.asset(
                          'assets/filledbell.svg',
                          width: 25,
                          height: 25,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 120,
                  color: white,
                  child: Row(
                    children: [
                      Image.asset('assets/yumi1.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Өглөөний мэнд!',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'У. Юнчир',
                              style: TextStyle(
                                  color: qwe,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            '640123112442@e-mongolia.mn',
                            style: TextStyle(color: qwe),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Миний бичиг баримтууд',
                        style: TextStyle(
                          color: qwe,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        onButtonPressed();
                      },
                      child: Container(
                        height: 140,
                        child: Image.asset('assets/yumi2.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Хэрэгцээт үйлдэл',
                    style: TextStyle(
                      color: qwe,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/not.png'),
                      ),
                      Text('Нотариатын үйлчилгээ'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/nig.png'),
                      ),
                      Text('Нийгмийн даатгал'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/huh.png'),
                      ),
                      Text('Хүүхдийн мөнгөн тэтгэмж'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/eru.png'),
                      ),
                      Text('Эрүүл мэнд'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/unet.png'),
                      ),
                      Text('Үнэт цааснууд / хувьцаа'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: white),
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/zeel.png'),
                      ),
                      Text('Зээлийн мэдээлэл'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
