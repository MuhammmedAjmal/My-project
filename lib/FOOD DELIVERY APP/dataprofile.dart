
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dataprofile extends StatefulWidget {
  const dataprofile({super.key});

  @override
  
  State<dataprofile> createState() => _dataprofileState();
}

class _dataprofileState extends State<dataprofile> {
  

  String name ="";
  String mobile ="";
  String email ="";

  

  Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
 final savedName = prefs.getString("name");

  print("Saved name = $savedName");
    setState(() {
      name = prefs.getString("name")??"";
      mobile = prefs.getString("mobile")??"";
      email = prefs.getString("email")??"";
    });
  }

  



  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  ImageProvider<Object>? get backgroundImage => null;

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery, // you can use ImageSource.camera also
      imageQuality: 80,
    );

    if (pickedFile!= null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }


 @override
  void initState() {
    super.initState();
    loadUserData();
  }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       backgroundColor: Colors.black,

      appBar: AppBar(backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              child: Image.asset('assets/images/unnamed.png', width: 150),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                Icons.more_horiz,
                color: const Color.fromARGB(255, 244, 243, 242),
                size: 30,
              ),
            ),]

      ),

      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 12,),
              ListTile(
                leading:CircleAvatar(backgroundColor: const Color.fromARGB(255, 241, 242, 244),radius: 30.r,
                backgroundImage: _selectedImage!= null? FileImage(_selectedImage!) : null,
         ),
                title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$name",style:  TextStyle(color: Colors.white,fontSize:16 ),),
                    Text("$mobile",style:  TextStyle(color: Colors.white,fontSize:12 ),),
                  ],
                ),
                trailing:IconButton(onPressed:_pickImage, icon: Icon(Icons.edit,color: const Color.fromARGB(
                                             255,
                                             52,
                                             249,
                                            17,
                                          ),),) ,
          
          
          
          
          
              )
          
          
          
          
          
              // Row(mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     CircleAvatar(backgroundColor: const Color.fromARGB(255, 241, 242, 244),radius: 25.r,),
              //     Column(
              //       children: [
              //         Text("Andrew Ainsley",style:  TextStyle(color: Colors.white,fontSize:16 )),
              //         Text(" 122365 86523",style:  TextStyle(color: Colors.white,fontSize: 13)),
              //       ],
              //     ),
              //     IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: const Color.fromARGB(
              //                               255,
              //                               52,
              //                               249,
              //                               17,
              //                             ),),),
              //   ],
              // ),
            ],
          ),
        ],
      ),



    );
  }
}