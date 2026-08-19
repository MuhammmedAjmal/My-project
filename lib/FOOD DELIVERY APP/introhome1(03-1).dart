import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/Notification.dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/Orders(tapbar).dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/message(tapbar).dart';
import 'package:mynewapp/FOOD%20DELIVERY%20APP/mycart.dart';

class mainhome extends StatefulWidget {
  const mainhome({super.key});

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 11.r,
            foregroundImage: NetworkImage(
              "https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001877.png",
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver to",
              style: TextStyle(color: Colors.white, fontSize: 15.sp),
            ),
            Row(
              children: [
                Text(
                  "Times Square",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: const Color.fromARGB(255, 7, 242, 15),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notification()),
                );
              },
              icon: Icon(Icons.notifications),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mycart()),
                );
              },
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
      ),
      // body:
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search here...",
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 49, 51, 47),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Special Offers",
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.5),
                child: Container(
                  height: 150.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 230, 49),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              "30%",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 45.sp,
                                color: CupertinoColors
                                    .secondarySystemGroupedBackground,
                              ),
                            ),
                          ),
                          Text(
                            "    DISCOUND ONLY\n   VALID FOR TODAY!                     ",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 180.h,
                        width: 140.w,
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/burger.png',
                          width: 100.w,
                          height: 200.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/burger.png',
                      width: 70.h,
                      height: 60.w,
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/burger.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Hambure...",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "Pizza",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "Noodles",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "Meat",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 40.h,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/pizza.png',
                      width: 70.w,
                      height: 60.h,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Vegeta..",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "Dessert",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "Drinks",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                  Text(
                    "More",
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Discound Guaranteed!",
                      style: GoogleFonts.urbanist(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child: Text(
                        "See All",
                        style: GoogleFonts.urbanist(
                          color: const Color.fromARGB(255, 14, 233, 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 205.h,
                width: 140.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: const Color.fromARGB(255, 52, 47, 46),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 130.h,
                        width: 130.w,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),

                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://therecipewell.com/wp-content/uploads/2025/04/Romaine-Salad-27.jpg",
                            ),
                          ),
                          color: const Color.fromARGB(255, 44, 41, 30),
                        ),
                      ),
                      Text(
                        "Mixed Salad Bond",
                        style: GoogleFonts.urbanist(
                          color: const Color.fromARGB(255, 243, 246, 243),
                        ),
                      ),
                      Text(
                        "1.5 km |* 4.8(1.2k)",
                        style: GoogleFonts.urbanist(
                          color: const Color.fromARGB(255, 243, 246, 243),
                          fontSize: 8.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹6.00",
                            style: GoogleFonts.urbanist(
                              color: const Color.fromARGB(255, 243, 246, 243),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 123),
                            child: Icon(Icons.favorite_outline),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //ALL,Hamburger,pizza,.......
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 40.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.r),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Hamburger",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Pizza",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.sp),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Noodles",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.sp),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Meat",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.sp),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Drinks",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.sp),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                          label: Text(
                            "Dessert",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: const Color.fromARGB(255, 10, 11, 9),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30.sp),
                          ),
                          side: BorderSide(color: Colors.green),
                          avatar: Icon(
                            Icons.fastfood_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 115.h,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 33, 35),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12.r),
                      child: Image.asset(
                        'assets/images/burger.png',
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Burger hut",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "1.2 km |*4.5(1.9k)",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: const Color.fromARGB(255, 52, 249, 17),
                              ),

                              Text(
                                "₹250",
                                style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 8.sp,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: const Color.fromARGB(255, 239, 11, 11),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 115.h,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 33, 35),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12.r),
                      child: Image.network(
                        "https://www.superhealthykids.com/wp-content/uploads/2021/10/best-veggie-pizza-featured-image-square-2.jpg",
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pizza Hut -Lumintu",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "800 m |*4.9(2.3k)",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: const Color.fromARGB(255, 52, 249, 17),
                              ),
                              Text(
                                "₹300",
                                style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 8.sp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: const Color.fromARGB(255, 239, 11, 11),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 115.h,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 33, 35),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12.r),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWjiGUvoTxQJYxl9FnhWEuD1pAT0PkrI_4ca2awGyu_w&s=10",
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vegetarian Noodles",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "1.7 km |*4.6(4.9k)",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: const Color.fromARGB(255, 52, 249, 17),
                              ),
                              Text(
                                "₹190",
                                style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 9.sp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: const Color.fromARGB(255, 239, 11, 11),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 115.h,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 33, 35),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12.r),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5tfrBlYxnPexSxvBmsXBEQ1ZVK6wEALYvIJKR8XHE_A&s=10",
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                      ),
                      // child: Image.asset(
                      //   'assets/images/burger.png',
                      //   width: 80,
                      //   height: 80,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fruit Salad-Kumpa",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "2.6 km |*4.5(1.9k)",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: const Color.fromARGB(255, 52, 249, 17),
                              ),
                              Text(
                                "₹250",
                                style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 8.sp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: const Color.fromARGB(255, 239, 11, 11),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1F222A),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedLabelStyle: TextStyle(color: Colors.amber),

        selectedItemColor: Colors.green,
        unselectedIconTheme: IconThemeData(
          color: const Color.fromARGB(255, 182, 179, 170),
        ),

        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mainhome()),
                );
              },
              icon: const Icon(Icons.home),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => orderstapbar()),
                );
              },
              icon: const Icon(Icons.document_scanner),
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              icon: const Icon(Icons.message),
            ),
            label: "Message",
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: "E-Wallet",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profie",
          ),
        ],
      ),
    );
  }
}
