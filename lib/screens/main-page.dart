import 'package:e_mongolia/screens/add-page/add-page.dart';
import 'package:e_mongolia/screens/home-page/home-page.dart';
import 'package:e_mongolia/screens/profile-page/profile.dart';
import 'package:e_mongolia/screens/servide-page/service-page.dart';
import 'package:e_mongolia/screens/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'MainPage';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  bool isView = false;
  int currentIndex = 0;
  bool isDarkMode = false;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    setState(() {
      currentIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code),
        backgroundColor: blue,
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          HomePage(),
          ServicePage(),
          AddPage(),
          ProfilePage(),
        ],
      ),
      backgroundColor: bgcolor,
      bottomNavigationBar: Container(
        color: white,
        child: TabBar(
          splashBorderRadius: BorderRadius.circular(20),
          overlayColor:
              MaterialStateColor.resolveWith((states) => backgroundColor),
          controller: tabController,
          labelColor: blue,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: greyDark,
          labelPadding: EdgeInsets.only(
            top: 5,
          ),
          indicator: TopIndicator(),
          tabs: <Widget>[
            Tab(
                icon: SvgPicture.asset(
                  "assets/home.svg",
                  height: 24,
                  width: 24,
                  color: currentIndex == 0 ? blue : greyDark,
                ),
                text: 'Нүүр'),
            Tab(
                icon: SvgPicture.asset(
                  "assets/document.svg",
                  height: 24,
                  width: 24,
                  color: currentIndex == 1 ? blue : greyDark,
                ),
                text: 'Үйлчилгээ'),
            Tab(
                icon: SvgPicture.asset(
                  "assets/screen.svg",
                  height: 24,
                  width: 24,
                  color: currentIndex == 2 ? blue : greyDark,
                ),
                text: 'Нэмэлт'),
            Tab(
                icon: SvgPicture.asset(
                  "assets/account.svg",
                  height: 24,
                  width: 24,
                  color: currentIndex == 3 ? blue : greyDark,
                ),
                text: 'Профайл'),
          ],
        ),
      ),
    );
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = blue
      ..strokeWidth = 4
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}
