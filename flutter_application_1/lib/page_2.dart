import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_1.dart';
import 'package:flutter_application_1/page_3.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget{
  const Page2 ({super.key});


@override
State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2>{
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
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
            backgroundColor: Color.fromRGBO(58, 104, 199, 1),
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
          SizedBox(height: 20),
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(children: [
                   Padding(
  padding: const EdgeInsets.only(top: 15, right: 16, left: 15, bottom: 15),
  child: Container(
    width: 351,
    height: 99.10,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(226, 225, 225, 1), width: 3),
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ✅ Yellow icon box
        Container(
          width: 65,
          height: 69.11,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 230, 81, 1),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/heartbeat.png',
              width: 42,
              height: 42,
              color: Colors.black,
            ),
          ),
        ),

        const SizedBox(width: 12), // ✅ space between icon & text

        // ✅ Text column
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // ✅ brings Day Care down
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Day Care",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                "Pet day care facility\nShort stays up to 12 hrs.",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(130, 130, 130, 1),
                ),
              ),
            ],
          ),
        ),

        //  Active button beside Day Care
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF22A06B),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Active",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  ),
),
                   Padding(
  padding: const EdgeInsets.only(top: 15, right: 16, left: 15, bottom: 15),
  child: Container(
    width: 351,
    height: 99.10,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(226, 225, 225, 1), width: 3),
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  Yellow icon box
        Container(
          width: 65,
          height: 69.11,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 230, 81, 1),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/heartbeat.png',
              width: 42,
              height: 42,
              color: Colors.black,
            ),
          ),
        ),

        const SizedBox(width: 12), //  space between icon & text

        //  Text column
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //  brings Day Care down
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Day Care",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                "Pet day care facility\nShort stays up to 12 hrs.",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(130, 130, 130, 1),
                ),
              ),
            ],
          ),
        ),

//  Inactive button beside Day Care
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFED0006),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Inactive",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  ),
),
                ],
              ),
            ),
        ),
        ]
        ),
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
            backgroundColor: Color.fromRGBO(58, 104, 199, 1),
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
          child: Icon(
            Icons.add,
            size: 18,
            color: Color.fromRGBO(0, 0, 0, 1),
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