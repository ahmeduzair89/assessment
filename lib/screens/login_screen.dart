import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:test/controllers/login_controller.dart';
import 'package:test/utils/routes.dart';
import 'package:test/widgets/password_textfield_widget.dart';
import 'package:test/widgets/prefix_textfield_widget.dart';
import 'package:test/widgets/suffix_textfield_widget.dart';
import 'package:column_scroll_view/column_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController _con = Get.put<LoginController>(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: _con,
        builder: (LoginController value) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(10.h),
              child: ColumnScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50.h),
                      alignment: Alignment.center,
                      height: 80.h,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Welcome back to",
                              style: Theme.of(context).textTheme.subtitle1),
                          TextSpan(
                            text: " Care Pro",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Join 1+ millions doctors  for free",
                      style: Theme.of(context).textTheme.subtitle2!,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextFieldWSuffix(
                      hint: "Enter an email address",
                      textController: value.emailController,
                      sufixIcon: _con.isEmailValid
                          ? Container(
                              padding: EdgeInsets.all(14.h),
                              child: Container(
                                padding: EdgeInsets.all(5.h),
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green.shade400,
                                ),
                                child: Icon(
                                  Icons.done,
                                  size: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Container(
                              width: 4,
                              height: 4,
                            ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Phone number",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextFieldWPrefix(
                      textAlign: TextAlign.right,
                      textController: value.phoneController,
                      hint: "Phone Number",
                      sufixIcon: Container(
                        // color: Colors.blue,
                        width: 140.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CountryPhoneCodePicker.withDefaultSelectedCountry(
                              defaultCountryCode: Country(
                                  name: 'India',
                                  countryCode: 'IN',
                                  phoneCode: '+91'),
                              flagBorderRadius: 5,
                              showPhoneCode: true,
                              actionIcon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20.sp,
                                color: Theme.of(context).colorScheme.primary,
                                // textDirection: TextDirection.ltr,
                              ),
                              flagHeight: 25.h,
                              flagWidth: 30.w,
                              style: const TextStyle(fontSize: 16),
                              searchBarHintText: 'Search by name',
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 20.h,
                              width: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                        // SizedBox(,)
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PasswordTextField(
                      textController: value.passwordController,
                      hint: "Password".tr,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "By clicking Sign Up you are agreeing to the".tr,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: " Terms of Use\n".tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          TextSpan(
                            text: "and".tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: " Privacy Policy".tr,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(PageRoutes.HOME_PAGE_ROUTE);
                      },
                      child: Container(
                        height: 60.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff0196d6),
                                Color(0xff09498C)
                                // Theme.of(context).colorScheme.primary,
                                // Theme.of(context).colorScheme.tertiary
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.5, 0.0),
                              stops: [0.0, 1],
                              tileMode: TileMode.clamp),
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.h),
                          ),
                        ),
                        child: Text(
                          "Sign up",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125.w,
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                        Text("Or Continue"),
                        Container(
                          width: 125.w,
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 8), // changes position of shadow
                              ),
                            ],
                            color: Color(0xff262A34),
                            borderRadius: BorderRadius.all(
                              Radius.circular(500),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25.w,
                                width: 25.w,
                                child:
                                    Image.asset("assets/images/apple_logo.png"),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Continue with",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60.h,
                          width: 60.w,
                          padding: EdgeInsets.all(16.h),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 8), // changes position of shadow
                              ),
                            ],
                            color: Color(0xffFF1400),
                            borderRadius: BorderRadius.all(
                              Radius.circular(500),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/google_logo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 60.h,
                          width: 60.w,
                          padding: EdgeInsets.all(16.h),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 8), // changes position of shadow
                              ),
                            ],
                            color: Color(0xff1877F2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(500),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/facebook_logo.png",
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 100.h)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
