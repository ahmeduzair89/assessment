import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/controllers/dashboard_controller.dart';
import 'package:test/screens/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  DashBoardController con = Get.put<DashBoardController>(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() {
          if (con.currentIndex.value == 0) {
            return HomeScreen();
          }
          return Center(
            child: Text("Page: " + (con.currentIndex.value + 1).toString()),
          );
        }),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0196d6),
                Color(0xff09498C),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: [0.0, 0.8],
              tileMode: TileMode.clamp,
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            onTap: (index) {
              con.currentIndex.value = index;
            },
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.white),
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(
                      "assets/images/menu.png",
                    ),
                    size: 20.h),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(
                        "assets/images/group.png",
                      ),
                      size: 25.h),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_today_rounded,
                    size: 25.h,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30.h,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  size: 30.h,
                ),
                label: "",
              ),
            ],
          ),
        ));
  }
}
