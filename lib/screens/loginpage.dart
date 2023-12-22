import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_api/components/custome_button.dart';
import 'package:riverpod_api/components/custome_textfield.dart';
import 'package:riverpod_api/components/get_spacer.dart';
import 'package:riverpod_api/constant/color.dart';
import 'package:riverpod_api/screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/uicomponent.png"),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.w,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              getVerticalSpace(height: 100.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          fontSize: 45.sp,
                        ),
                        // TextStyle(
                        //     fontSize: 45.sp,
                        //     fontWeight: FontWeight.bold,
                        //     fontFamily: 'Poppins'),
                      ),
                      Text(
                        "Please sign in  to continue",
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
                  controller: emailController,
                  labelText: "Email",
                  prefixIcon: Icons.email),
              getVerticalSpace(height: 20.h),
              CustomTextField(
                suffixIconOnPressed: () {},
                controller: passwordController,
                labelText: "Password",
                obscureText: true,
                suffixIcon: Icons.visibility,
                prefixIcon: Icons.password_sharp,
              ),
              getVerticalSpace(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Foregt password")],
              ),
              getVerticalSpace(height: 20.h),
              CustomButton(
                text: "Log In",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignupPage();
                    },
                  ));
                },
              ),
              Text("Create a new account")
            ]),
          ),
        ],
      ),
    );
  }
}
