// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medicalty/controllers/informations/create_pharmacy_controller.dart';
import '../../../constatnt/color_app.dart';
import '../../../utils/information_image.dart';
import '../../widget/textfield_screen/my_app_bar.dart';
import '../../widget/textfield_screen/my_textfield_container.dart';
import '../../widget/textfield_screen/onboarding_button.dart';
import '../../widget/textfield_screen/onboarding_text_form_field.dart';
import '../../widget/textfield_screen/onboarding_text_widget.dart';
import 'adding_products_pharmacy.dart';

class CreatePharmacyPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatePharmacyController>(
      init: CreatePharmacyController(),
        builder: (controller) => MyTextFieldContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: 'Create Pharmacy',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 21.0, vertical: 31.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: ColorApp.greyColor2,
                      radius: 60,
                      child: SvgPicture.asset(
                        'assets/images/profile-edit.svg',
                        height: 130,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  OnBoardingTextFormField(
                    controller: controller.idPharmacyController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the ID ';
                      }
                      if (value.length > 25) {
                        return 'ID cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'ID  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: '#ID Pharmacy',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/path.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.namePharmacyController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Name Of Pharmacy ';
                      }
                      if (value.length > 25) {
                        return 'Name Of Pharmacy cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Name Of Pharmacy  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'name of the pharmacy',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/user.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.userNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the UserName ';
                      }
                      if (value.length > 25) {
                        return 'UserName cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'UserName  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: '@username',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/person_up.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.phoneNumberController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Phone ';
                      }
                      if (value.length > 25) {
                        return 'Phone cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Phone  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'phone number',
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/phone.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.phoneNumber2Controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Phone ';
                      }
                      if (value.length > 25) {
                        return 'Phone cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Phone  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'phone number 1',
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/phone.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (value!.length < 12) {
                        return 'Email must have at least 2 characters';
                      }
                      if (!value.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    labelText: 'E-mail',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.officalEmailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (value!.length < 12) {
                        return 'Email must have at least 2 characters';
                      }
                      if (!value.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    labelText: 'official e-mail',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.countryController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Country ';
                      }
                      if (value.length > 25) {
                        return 'Country cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Country  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Country',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/center_name.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.addressController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Address ';
                      }
                      if (value.length > 25) {
                        return 'Address cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Address  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Address',
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/location.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.address2Controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Address ';
                      }
                      if (value.length > 25) {
                        return 'Address cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Address  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Address 1',
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.stateController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the State Name ';
                      }
                      if (value.length > 25) {
                        return 'State Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'State Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'State name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/country.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.districtNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the District Name ';
                      }
                      if (value.length > 25) {
                        return 'District Name cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'District Name  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'District name',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/country.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.postalCodeController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Postal code ';
                      }
                      if (value.length > 25) {
                        return 'Postal code cannot be longer than 25 characters';
                      }
                      if (value.length < 2) {
                        return 'Postal code  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Postal code',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/postal.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextWidget(
                    text: 'Social media links for the cent',
                    fontWeight: FontWeight.w500,
                    color: ColorApp.primaryColor,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.websiteController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Website ';
                      }
                      if (value.length > 200) {
                        return 'Website cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Website  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Website',
                    keyboardType: TextInputType.url,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/url.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.facebookController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Facebook ';
                      }
                      if (value.length > 200) {
                        return 'Facebook cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Facebook  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Facebook',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/facebook.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.instagramController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Instagram ';
                      }
                      if (value.length > 200) {
                        return 'Instagram cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Instagram  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Instagram',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/instagram.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.twitterController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Twitter ';
                      }
                      if (value.length > 200) {
                        return 'Twitter cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Twitter  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Twitter',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/twitter.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.snapchatController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Snapchat ';
                      }
                      if (value.length > 200) {
                        return 'Snapchat cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Snapchat  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'Snapchat',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/snapchat.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  OnBoardingTextFormField(
                    controller: controller.youtubeController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Youtube ';
                      }
                      if (value.length > 20) {
                        return 'Youtube cannot be longer than 200 characters';
                      }
                      if (value.length < 2) {
                        return 'Youtube  must have at least 2 characters';
                      }
                      return null;
                    },
                    labelText: 'YouTube',
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    suffixIcon: Image.asset(
                      '$imagePath/youtube.png',
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 33.0),
                  OnBoardingButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        controller.formKey.currentState!.save();
                        Get.to(ProductsPharmacyPage());

                      }else{
                        showDialog(context: context, builder: (_) => AlertDialog(
                          title: Text('Please Enter all Fields'),
                        ));
                      }

                    },
                    text: 'SAVE',
                    size: 22,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
