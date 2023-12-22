import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_api/components/custome_button.dart';
import 'package:riverpod_api/components/custome_textfield.dart';
import 'package:riverpod_api/components/get_spacer.dart';
import 'package:riverpod_api/constant/color.dart';
import 'package:riverpod_api/screens/signup_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/uicomponenttwo.png"),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getVerticalSpace(height: 60.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create Account",
                              style: GoogleFonts.montserrat(
                                  fontSize: 35.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Please sign up  to continue",
                              style: GoogleFonts.montserrat(
                                fontSize: 18.sp,
                                color: greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    getVerticalSpace(height: 35.h),
                    // Image.asset("assets/images/loginimg.png",
                    //     width: 200, height: 350),
                    CustomTextField(
                        controller: nameController,
                        labelText: "Name",
                        prefixIcon: Icons.account_circle_outlined),
                    getVerticalSpace(height: 20.h),
                    CustomTextField(
                        controller: phoneController,
                        labelText: "Email",
                        prefixIcon: Icons.email),
                    getVerticalSpace(height: 20.h),
                    CustomTextField(
                        controller: emailController,
                        labelText: "Phone",
                        prefixIcon: Icons.phone),
                    getVerticalSpace(height: 20.h),
                    CustomTextField(
                      suffixIconOnPressed: () {},
                      controller: passwordController,
                      labelText: "Password",
                      obscureText: true,
                      suffixIcon: Icons.visibility,
                      prefixIcon: Icons.password_sharp,
                    ),

                    getVerticalSpace(height: 20.h),
                    CustomButton(
                      text: "Sign Up",
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return SignupPage();
                        //   },
                        // ));
                      },
                    ),
                    Text("Create a new account")
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
