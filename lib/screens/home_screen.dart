import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/widgets/appointment_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              Container(
                width: Get.width * 0.86,
                alignment: Alignment.center,
                child: Text(
                  "Appointment Schedule",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Jan 05, 2021",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.grey),
          ),
          Container(
            height: Get.height * 0.745,
            width: Get.width,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return AppointmentWidget();
                }),
          )
        ],
      ),
    );
  }
}
