import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/introhome1(03-1).dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/local.dart';
import 'package:mynewapp/picker.dart';

class profilfill extends StatefulWidget {
  const profilfill({super.key});

  @override
  State<profilfill> createState() => _profilfillState();
}

class _profilfillState extends State<profilfill> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 234, 230, 230),
          elevation: 0,
          title: Text(
            "Fill Your Profile",
            style: TextStyle(color: const Color.fromARGB(233, 237, 232, 232)),
          ),
        ),

        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001877.png",
                      ),
                      radius: 60.r,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Container(
                        height: 35.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: CupertinoColors.activeGreen,
                          borderRadius: BorderRadius.circular(12.r),
                        ),

                        child: IconButton(
                          onPressed: () async {
                            ImagePicker picked = ImagePicker();
                            var pick = await picked.pickImage(
                              source: ImageSource.gallery,
                            );
                            setState(() {
                              var image = File(pick!.path);
                            });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: const Color.fromARGB(255, 7, 12, 8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full name",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 37, 33),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nick name",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 37, 33),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Date of Birth",

                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 32, 37, 33),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profilfill()),
                        );
                      },
                      icon: Icon(Icons.date_range),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 37, 33),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter your name";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText: "+1 000 000 000",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 37, 33),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                width: 450.w,

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Gender",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 37, 33),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 450.w,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mainhome()),
                  );
                },
                child: Text("Continue", style: TextStyle(fontSize: 16.sp)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
