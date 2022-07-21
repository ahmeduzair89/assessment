import 'package:get/get.dart';
import 'package:test/screens/dashboard.dart';
import 'package:test/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 786),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          getPages: [
            GetPage(
                name: PageRoutes.HOME_PAGE_ROUTE,
                page: () => DashboardScreen()),
            GetPage(
                name: PageRoutes.LOGIN_PAGE_ROUTE, page: () => LoginScreen())
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: Color(0xff00A1E1),
                secondary: Color(0xffE00065),
                tertiary: Color(0xff0C2A6E)),
            textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold),
              headline2: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
              headline4: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              headline5: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
              subtitle1: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
              subtitle2: TextStyle(
                color: Color(0xff656565),
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              bodyText1: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          title: 'Care Pro',
          initialRoute: PageRoutes.LOGIN_PAGE_ROUTE,
          // home: DashboardScreen(),
        );
      },
    );
  }
}
