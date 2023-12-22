import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_api/constant/color.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  bool obscureText;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final VoidCallback? suffixIconOnPressed;

  CustomTextField({
    required this.labelText,
    required this.controller,
    this.suffixIconOnPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIconColor,
    this.suffixIconColor,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 2, left: 10, right: 10, bottom: 2),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    color: widget.prefixIconColor,
                  )
                : null,
            suffixIcon: widget.suffixIcon != null
                ? InkWell(
                    onTap: () {
                      setState(() {
                        widget.obscureText = !widget.obscureText;
                      });
                    },
                    child: Icon(
                      widget.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: widget.suffixIconColor,
                    ),
                  )
                : null,
            fillColor: whiteColor,
            border: InputBorder.none,
            hintStyle: GoogleFonts.montserrat(),
            hintText: widget.labelText,
          ),
        ),
      ),
    );
  }
}
