
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/profilefill(02-1).dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class numberenter extends StatefulWidget {
  const numberenter({super.key});

  @override
  State<numberenter> createState() => _numberenterState();
}

class _numberenterState extends State<numberenter> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  Future<void> saveUserdata() async{
    final prefs = await SharedPreferences.getInstance();
  print("Name controller = ${nameController.text}");
    await prefs.setString("name", nameController.text);
    await prefs.setString("mobile", numberController.text);
    await prefs.setString("email", emailController.text);

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(height: 70,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/unnamed.png', width: 140),
                  ),
                  Text(
                    "Create New Account",
                    style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(style: TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter number";
                        }
                        return null;
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Full  Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 23, 21, 21),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(style: TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter number";
                        }
                        return null;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 23, 21, 21),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 320.w,
                    child: TextFormField(style: TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter number";
                        }
                        return null;
                      },
                      controller: numberController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call),
                        hintText: "Enter your Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 23, 21, 21),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (v) {},
                          activeColor: const Color.fromARGB(255, 47, 239, 54),
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 320.w,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 74, 253, 83),
                        maximumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(30),
                        ),
                      ),
                      onPressed: () async { await saveUserdata(); 
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profilfill()),
                        );
                      },
                      child: Text("Sign up"),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 110,
                          endIndent: 10,
                          color: CupertinoColors.extraLightBackgroundGray,
                        ),
                      ),
                      Text(
                        "or continue with",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(child: Divider(endIndent: 110, indent: 10)),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: const Color.fromARGB(111, 45, 57, 56),
                          ),
                          child: Icon(Icons.facebook, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: const Color.fromARGB(111, 45, 57, 56),
                          ),
                          child: Icon(
                            Icons.g_mobiledata,
                            color: const Color.fromARGB(255, 33, 243, 65),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: const Color.fromARGB(111, 45, 57, 56),
                          ),
                          child: Icon(
                            Icons.apple,
                            color: const Color.fromARGB(255, 242, 245, 247),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account   ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Sign in ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 55, 241, 4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
