import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_1.dart';
import 'package:flutter_application_1/page_2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/customer_tile.dart';

class Page3 extends StatefulWidget{
  const Page3 ({super.key});


@override
State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3>{
  int selectedIndex = 2;
   Widget _topTab(String title, int index) {
  final bool isSelected = selectedIndex == index;

  final Color bgColor = isSelected
      ? const Color(0xFFF2C94C)
      : Colors.white;

  final Color textColor = isSelected
      ? Colors.black
      : Colors.black;
      return Expanded(
  child: InkWell(
    borderRadius: BorderRadius.circular(30),
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
      if(index == 0){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Page1()));
      }
      else if(index == 1){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Page2()));
      }
      else if(index == 2){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Page3()));
      }
    },
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
    ),
  ),
);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
            backgroundColor: Color.fromRGBO(90, 148, 236, 1),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(248, 248, 249, 1),
              ),
                      height: 48,
                      width: 368,
                      child: Row(
                children: [
                 _topTab("PawPrints", 0),
        _topTab("Services", 1),
        _topTab("Customers", 2),
                ],
              ),
                    )
          ),
          SizedBox(
height: 10
          ),
          SizedBox(
height: 50,
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [
      // Search bar
      Expanded(
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F9),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20,
                color: Color.fromRGBO(181, 181, 181, 1),
              ),
              SizedBox(width: 8),

              // TextField inside search bar
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(181, 181, 181, 1),
                    ),
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      SizedBox(width: 10),

      // Yellow circular button
      Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Color(0xFFF2C94C),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.tune,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),

      SizedBox(width: 10),

      // White circular button
      Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Color.fromRGBO(226, 225, 225, 1), width: 1),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
    ],
  ),
),
          ),
          SizedBox(height: 10),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: SizedBox(height: 14,
                width: double.infinity,

child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Container(
    width: 368,
    height: 520,
    decoration: BoxDecoration(
      color: Color(0xFFF8F8F9),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          CustomerTile(
              imagePath: "assets/images/girl.png",
            name: "Carlitta Pusso",
            breed1: "Lara",
            breed2: "Sheltie",
            gender: "Female",
            tag: "Guinea Pig",
            tagColor: Colors.white,
            tagBorderColor: Color(0xFFE79BB7),
            tagTextColor: Color(0xFFE79BB7),
          ),
          Divider(color: Color(0xFFE2E1E1), thickness: 1),

          CustomerTile(
            imagePath: "assets/images/girl.png",
            name: "Carlitta Pusso",
            breed1: "Lara",
            breed2: "Sheltie",
            gender: "Female",
            tag: "Dog",
            tagColor: Colors.white,
            tagBorderColor: Color(0xFFC7B299),
            tagTextColor: Color(0xFFC7B299),
          ),

          Divider(color: Color(0xFFE2E1E1), thickness: 1),

          CustomerTile(
            imagePath: "assets/images/girl.png",
            name: "Carlitta Pusso",
            breed1: "Lara",
            breed2: "Sheltie",
            gender: "Female",
            tag: "Hamster",
            tagColor: Colors.white,
            tagBorderColor: Color(0xFFD6B680),
            tagTextColor: Color(0xFFD6B680),
          ),

          Divider(color: Color(0xFFE2E1E1), thickness: 1),

          CustomerTile(
            imagePath: "assets/images/girl.png",
            name: "Carlitta Pusso",
            breed1: "Lara",
            breed2: "Sheltie",
            gender: "Female",
            tag: "Cat",
            tagColor: Colors.white,
            tagBorderColor: Color(0xFFBDBDBD),
            tagTextColor: Color(0xFFBDBDBD),
          ),
        ],
      ),
    ),
  ),
), 
          ),
      ),
      )]),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 2,
            )
          ]
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [ 
        BottomNavigationBarItem(                 
          icon: Icon(Icons.home, color: Color.fromRGBO(181, 181, 181, 1)), label: 'Home',),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Color.fromRGBO(181, 181, 181, 1)), label: 'Sitter',),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note, color: Color.fromRGBO(181, 181, 181, 1)), label: 'Agenda',),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart, color: Color.fromRGBO(181, 181, 181, 1)), label: 'Earning',),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Color.fromRGBO(181, 181, 181, 1)), label: 'Chats',),
        ],
        ),
      ),
      appBar: 
          AppBar(
            title: Text('Sitter',
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 1),
              )
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(90, 148, 236, 1),
            actions: [
  Padding(
    padding: const EdgeInsets.only(right: 12),
    child: InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 32,
        height: 31,
        decoration: BoxDecoration(
          color: Color(0xFFF2C94C),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/add.png",
          ),
        ),
      ),
    ),
  ),
],
          ),
      );
  }
}