import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nepaldetials/controller/controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var district = Get.find<DistrictController>();
    var district = Get.find<DistrictController>();
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.lightBlue,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      accountName: Text("Tara"),
                      accountEmail: Text("tarapradhan90bullet@gmail.com",),
                      currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/05/31/13/45/working-791849__480.jpg")),
                    )),
                ListTile(
                    leading: Icon(
                      CupertinoIcons.exclamationmark_circle,
                      color: Colors.white,
                    ),
                    title: Text(
                      "logout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Nepal District"),
        ),
        body: Obx(() {
          if (district.isLoading.value == true) {
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Nedpal District List"),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: district.district.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(district.district[index].titleNe),
                        );
                      })
                ],
              ),
            );
          }
        }));
  }
}
