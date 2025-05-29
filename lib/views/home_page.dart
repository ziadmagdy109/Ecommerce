import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/core/manager_color.dart';
import 'package:ecommerce/widget/AppbarHome.dart';
import 'package:ecommerce/widget/items.dart';
import 'package:ecommerce/widget/list_image_horiz.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ManagerColor.colorG,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: ManagerColor.colorG,
          title: Appbar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: 400,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: ManagerColor.colorSearch,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          manageText.textSearch,
                          style: TextStyle(fontSize: 23),
                        ),
                        Spacer(flex: 7),
                        Icon(
                          Icons.search,
                          size: 32,
                          color: ManagerColor.colorG,
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Text(
                      manageText.textOffers,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 6),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    ListImage(images: 'assets/416.jpg'),
                    SizedBox(width: 20),
                    ListImage(images: 'assets/416.jpg'),
                    SizedBox(width: 20),
                    ListImage(images: 'assets/416.jpg'),
                    SizedBox(width: 20),
                    ListImage(images: 'assets/416.jpg'),
                    SizedBox(width: 20),
                    ListImage(images: 'assets/416.jpg'),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Text(
                      manageText.textPopular,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 6),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Item(), Item()],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Item(), Item()],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Item(), Item()],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
