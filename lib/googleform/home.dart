import 'package:flutter/material.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  //final TextEditingController nameController = TextEditingController();
  String gender = "Male";
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(Icons.menu),
        title: Text("Google form", style: TextStyle(color: Colors.black)),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter your name";
                }
                return null;
              },
              controller: nameController,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter email";
                }
                return null;
              },
              controller: emailController,
              decoration: InputDecoration(
                hintText: "email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter number";
                }
                return null;
              },
              controller: numberController,
              decoration: InputDecoration(
                hintText: "Phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter Address";
                }
                return null;
              },
              controller: addressController,
              decoration: InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "select your city";
                }
                return null;
              },
              controller: cityController,
              decoration: InputDecoration(
                hintText: "City",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),

            RadioListTile<String>(
              title: Text("Male"),
              groupValue: gender,
              value: "Male",
              onChanged: (value) => setState(() => gender = value!),
            ),
            RadioListTile<String>(
              title: Text("Female"),
              groupValue: gender,
              value: "Female",
              onChanged: (value) => setState(() => gender = value!),
            ),

            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Secondpage(
                          name: nameController.text,
                          gender: gender,

                          email: emailController.text,
                          number: numberController.text,
                          address: addressController.text,
                          city: cityController.text,
                        ),
                      ),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Secondpage extends StatefulWidget {
  final String name;

  final String email;
  final String number;
  final String address;
  final String city;

  final String gender;

  const Secondpage({
    super.key,
    required this.name,
    required this.gender,

    required this.email,
    required this.number,
    required this.address,
    required this.city,
  });

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Google form", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name:${widget.name}"),
            Text("Gender:${widget.gender}"),
            Text("Email:${widget.email}"),
            Text("Number:${widget.number}"),
            Text("Address:${widget.address}"),
            Text("City:${widget.city}"),
          ],
        ),
      ),
    );
  }
}
