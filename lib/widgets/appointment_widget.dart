import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.h, left: 10.w, right: 10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(13.h)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(20.h),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(
                  5.h,
                ),
                child: Container(
                  height: 70.h,
                  width: 70.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/doctor.png",
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Accepted",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(3.h),
                            height: 15.h,
                            width: 15.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade400,
                            ),
                            child: Icon(
                              Icons.done,
                              size: 9.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.w,
                      ),
                      Text(
                        "Devin Shelton",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Text("Received at 12:00AM",
                          style: Theme.of(context).textTheme.subtitle2!),
                    ],
                  ),
                  Container(
                    height: 125.h,
                    alignment: Alignment.center,
                    width: 14.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13.h),
                        bottomRight: Radius.circular(13.h),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
