import 'package:amazon_clone/utils/colors.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../constants/common_functions.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool inLogin = true;
  String currentCountryCode = '+91';
  TextEditingController mobileController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Image(
          image: const AssetImage('assets/images/amazon_logo.png'),
          height: height * 0.04,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: greyShade1,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                CommonFunction.blankspace(height * 0.02, 0),
                //SignIn(width, height, textTheme, context, mobileController),
                CreateAccount(
                    width, height, textTheme, context, mobileController),
                CommonFunction.blankspace(height * 0.05, 0),
                BottomAuthScreenWidget(
                    width: width, height: height, textTheme: textTheme)
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container CreateAccount(double width, double height, TextTheme textTheme,
      BuildContext context, TextEditingController mobileController) {
    return Container(
      width: width,
      decoration: BoxDecoration(border: Border.all(color: greyShade3)),
      child: Column(
        children: [
          Container(
            width: width,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.01),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          inLogin = true;
                        });
                      },
                      child: Container(
                        height: height * 0.03,
                        width: height * 0.03,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: grey),
                            color: white),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.circle,
                          size: height * 0.015,
                          color: inLogin ? secondaryColor : transparent,
                        ),
                      ),
                    ),
                    CommonFunction.blankspace(0, width * 0.02),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Create Account.  ",
                          style: textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "New to Amazon?", style: textTheme.bodyMedium)
                    ]))
                  ],
                ),
                CommonFunction.blankspace(height * 0.01, 0),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "First and Last Name",
                      hintStyle: textTheme.bodyLarge,
                      // hintStyle: textTheme.bodySmall,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: secondaryColor)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: grey))),
                ),
                CommonFunction.blankspace(height * 0.01, 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            onSelect: (val) {
                              setState(() {
                                currentCountryCode = '+${val.phoneCode}';
                              });
                            });
                      },
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            color: greyShade2,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          currentCountryCode,
                          style: textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: height * 0.06,
                        width: width * 0.64,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          cursorColor: black,
                          style: textTheme.bodyLarge,
                          controller: mobileController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Mobile number",
                              hintStyle: textTheme.bodyLarge,
                              // hintStyle: textTheme.bodySmall,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      const BorderSide(color: secondaryColor)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey))),
                        ))
                  ],
                ),
                CommonFunction.blankspace(height * 0.02, 0),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: amber,
                        minimumSize: Size(width * 0.88, height * 0.06)),
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: textTheme.bodyLarge,
                    )),
                CommonFunction.blankspace(height * 0.02, 0),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'By Continuing you agree to Amazon\'s',
                      style: textTheme.labelMedium),
                  TextSpan(
                      text: ' Conditions of use',
                      style: textTheme.labelMedium!.copyWith(color: blue)),
                  TextSpan(text: ' and ', style: textTheme.labelMedium),
                  TextSpan(
                      text: 'Privacy Notice',
                      style: textTheme.labelMedium!.copyWith(color: blue)),
                ]))
              ],
            ),
          ),
          CommonFunction.blankspace(height * 0.05, 0),
          Column(
            children: [
              Container(
                height: 1,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [white, grey, white])),
              )
            ],
          ),
          Container(
            height: height * 0.06,
            width: width,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: greyShade3),
                ),
                color: greyShade1),
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      inLogin = false;
                    });
                  },
                  child: Container(
                    height: height * 0.03,
                    width: height * 0.03,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: grey),
                        color: white),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.circle,
                      size: height * 0.015,
                      color: inLogin ? transparent : secondaryColor,
                    ),
                  ),
                ),
                CommonFunction.blankspace(0, width * 0.02),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Sign In ",
                      style: textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "Already a Customer?", style: textTheme.bodyMedium)
                ]))
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container SignIn(double width, double height, TextTheme textTheme,
      BuildContext context, TextEditingController mobileController) {
    return Container(
      width: width,
      decoration: BoxDecoration(border: Border.all(color: greyShade3)),
      child: Column(
        children: [
          Container(
            height: height * 0.06,
            width: width,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: greyShade3),
                ),
                color: greyShade1),
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      inLogin = false;
                    });
                  },
                  child: Container(
                    height: height * 0.03,
                    width: height * 0.03,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: grey),
                        color: white),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.circle,
                      size: height * 0.015,
                      color: inLogin ? transparent : secondaryColor,
                    ),
                  ),
                ),
                CommonFunction.blankspace(0, width * 0.02),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Create Account.  ",
                      style: textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(text: "New to Amazon?", style: textTheme.bodyMedium)
                ]))
              ],
            ),
          ),
          Container(
            width: width,
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.01),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          inLogin = true;
                        });
                      },
                      child: Container(
                        height: height * 0.03,
                        width: height * 0.03,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: grey),
                            color: white),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.circle,
                          size: height * 0.015,
                          color: inLogin ? secondaryColor : transparent,
                        ),
                      ),
                    ),
                    CommonFunction.blankspace(0, width * 0.02),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Sign in.  ",
                          style: textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "Already a Customer?",
                          style: textTheme.bodyMedium)
                    ]))
                  ],
                ),
                CommonFunction.blankspace(height * 0.01, 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            onSelect: (val) {
                              setState(() {
                                currentCountryCode = '+${val.phoneCode}';
                              });
                            });
                      },
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            color: greyShade2,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          currentCountryCode,
                          style: textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: height * 0.06,
                        width: width * 0.64,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          cursorColor: black,
                          style: textTheme.bodyLarge,
                          controller: mobileController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Mobile number",
                              hintStyle: textTheme.bodyLarge,
                              // hintStyle: textTheme.bodySmall,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      const BorderSide(color: secondaryColor)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: grey))),
                        ))
                  ],
                ),
                CommonFunction.blankspace(height * 0.02, 0),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: amber,
                        minimumSize: Size(width * 0.88, height * 0.06)),
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: textTheme.bodyLarge,
                    )),
                CommonFunction.blankspace(height * 0.02, 0),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'By Continuing you agree to Amazon\'s',
                      style: textTheme.labelMedium),
                  TextSpan(
                      text: ' Conditions of use',
                      style: textTheme.labelMedium!.copyWith(color: blue)),
                  TextSpan(text: ' and ', style: textTheme.labelMedium),
                  TextSpan(
                      text: 'Privacy Notice',
                      style: textTheme.labelMedium!.copyWith(color: blue)),
                ]))
              ],
            ),
          ),
          CommonFunction.blankspace(height * 0.05, 0),
          Column(
            children: [
              Container(
                height: 1,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [white, grey, white])),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BottomAuthScreenWidget extends StatelessWidget {
  const BottomAuthScreenWidget({
    super.key,
    required this.width,
    required this.height,
    required this.textTheme,
  });

  final double width;
  final double height;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [white, greyShade3, white])),
        ),
        CommonFunction.blankspace(height * 0.02, 0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Condition of Use",
              style: textTheme.bodyMedium!.copyWith(color: blue),
            ),
            Text(
              "Privacy Notice",
              style: textTheme.bodyMedium!.copyWith(color: blue),
            ),
            Text(
              "Help",
              style: textTheme.bodyMedium!.copyWith(color: blue),
            ),
          ],
        ),
        CommonFunction.blankspace(
          height * 0,
          01,
        ),
        Text(
          "@ 1996-2024 , Amazon.com, Inc. or it's affiliates",
          style: textTheme.labelMedium!.copyWith(color: grey),
        )
      ],
    );
  }
}
