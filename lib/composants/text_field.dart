import 'package:flutter/material.dart';

class InputFormFieldWidget extends StatelessWidget {
  final bool isnumberInput;
  final bool isEmailInput;
  final String? hintText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final FocusNode? focusNode;
  final String? Function(String?)? checkInput;

  const InputFormFieldWidget({
    Key? key,
    required this.isnumberInput,
    required this.isEmailInput,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.focusNode,
    this.checkInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //validation
      // The validator receives the text that the user has entered.
      validator: checkInput,
      //
      obscureText: obscureText,
      onChanged: onChanged,
      focusNode: focusNode,
      keyboardType: isnumberInput
          ? TextInputType.phone
          : isEmailInput
              ? TextInputType.emailAddress
              : TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFFFBFB),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
             enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
        ),
           focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
        ),
       
      ),
      cursorColor: Color.fromARGB(255, 17, 66, 19),
    );
  }
}
