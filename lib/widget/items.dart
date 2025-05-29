import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/core/manager_color.dart';
import 'package:ecommerce/views/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsPage();
            },
          ),
        );
      },
      child: Stack(
        children: [
          SizedBox(
            height: 210.h,
            width: 170.w,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ManagerColor.colorItem,
              ),
              //
              child: Column(
                children: [
                  Image.asset(
                    'assets/34810b64-bd13-41d2-ab06-ea0a1ff22fe8-removebg-preview (1).png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      manageText.textFNItem,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //
                  Row(
                    children: [
                      SizedBox(width: 10.w,),
                      Container(
                        height: 20.h,
                        child: Text(
                          manageText.textSNItem,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Text(
                        manageText.textValidItem,
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: ManagerColor.colorValidItem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5.w,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 20, right: 15, child: Icon(Icons.favorite_border)),
        ],
      ),
    );
  }
}
