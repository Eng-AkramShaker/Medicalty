// ignore_for_file: file_names, prefer_const_constructors, unused_import

import 'package:Medicalty/View/Pages/Physician/physicianPage.dart';
import 'package:Medicalty/View/Pages/hospital/hospitlPage.dart';
import 'package:Medicalty/View/Pages/medical_Center/medical_CenterPage.dart';
import 'package:Medicalty/View/Pages/pharmcy/pharmcyPage.dart';
import 'package:Medicalty/services/settingServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constatnt/color_app.dart';
import '../../../controllers/navigatorTabBarController.dart';
import '../profile/profile.dart';
import '../review/appSettingPage.dart';
import '../review/reviewsPage.dart';
import 'HomePage.dart';
import 'Favourite.dart';
import 'Speed_Dial.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final controller = Get.put(NavTabBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabBarController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
             myBox!.get('type') == 'center'? medical_CenterPage(): 
             myBox!.get('type') == 'pharmacy'? PharmcyPage(): 
             (myBox!.get('type') == 'Physiotherapy' || myBox!.get('type') == 'nurse' || myBox!.get('type') == 'doctor')? PhysicianPage(): 
             myBox!.get('type') == 'hospital'? HospitalPage(): HomePage(),
             
              
              AppSetting(),
              Speed_Dial(),
              Favourite(),
              Profile()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorApp.blackBlueColor2,
            iconSize: 35,
            fixedColor: ColorApp.Color_yellow_2,
            unselectedItemColor: ColorApp.whiteColor2,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: controller.changeTabIndex,
            items: [
              _bottomBarItem(Icons.home, ''),
              _bottomBarItem(Icons.settings, ''),
              _bottomBarItem(Icons.add, ''),
              _bottomBarItem(Icons.favorite_outline, ''),
              _bottomBarItem(Icons.person, ''),
            ],
          ),
        );
      },
    );
  }
}

_bottomBarItem(IconData icon, String lable) {
  return BottomNavigationBarItem(icon: Icon(icon), label: lable);
}
