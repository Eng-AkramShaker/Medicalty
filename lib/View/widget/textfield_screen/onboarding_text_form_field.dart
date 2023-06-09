// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:Medicalty/controllers/informations/center_information_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingTextFormField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final Function validator;
  TextInputType? keyboardType;
  int? maxLines;
  String? labelText;
  Widget? suffixIcon;
  bool? obscureText;
  OnBoardingTextFormField({
    Key? key,
    String? text,
    int? fontSize,
    FontWeight? fontWeight,
    Color? color,
    required this.validator,
    this.keyboardType,
    this.maxLines,
    this.labelText,
    this.suffixIcon,
    this.obscureText, required TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      maxLines: maxLines,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        // hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        // contentPadding: EdgeInsets.all(15),
        //contentPadding: const EdgeInsets.from
        //(20.0, 20.0, 20.0, 5.0),
        // alignLabelWithHint: true,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xffC4C4C4),
        ),
        errorStyle:
            Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        //fillColor: Colors.grey.shade200,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          //borderSide: const BorderSide(color: Colors.white),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
      ),
    );
  }
}
