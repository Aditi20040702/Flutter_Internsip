import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_2.dart';
import 'package:flutter_application_1/page_3.dart';
import 'package:google_fonts/google_fonts.dart';


class Page1 extends StatefulWidget{
  const Page1 ({super.key});


@override
State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1>{
  int selectedIndex = 0;
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
Widget _timeChip(String text) {
  return Container(
    height: 31,
    width: 82,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(249, 249, 249, 1),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
            backgroundColor: Color.fromRGBO(58, 104, 199, 1),
      body: SafeArea(
        child: Column(
          children: [
                  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Container(
    height: 48,
    decoration: BoxDecoration(
      color: const Color(0xFFF8F8F9),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        _topTab("PawPrints", 0),
        _topTab("Services", 1),
        _topTab("Customers", 2),
      ],
    ),
  ),
                  ),
          SizedBox(height: 10),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    _timeChip("This Week"),
                    _timeChip("This Month"),
                    _timeChip("This Year"),
                    _timeChip("All Time"),
                   ]
              )
              ),
            SizedBox(height: 14),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Your Pet Sitting Performance',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Expanded(
                            child: Container(     
                            padding: const EdgeInsets.only(top: 19, left: 16),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 5,
                                )
                              ],
                              color: const Color(0xFFF8F8F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Views",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF2F80ED),
                                  ),
                                ),
                                Text(
                                  "999,000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 90, right: 10),
                                      child: Image.asset(
                                        'assets/images/visibility.png',
                                        width: 45,
                                        height: 45,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                              ],
                            ),
                                                    ),
                          ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Expanded(
                            child: Container(
                            padding: const EdgeInsets.only(top: 19, left: 16),
                            decoration: BoxDecoration(
                               boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 5,
                                )
                              ],
                              color: const Color(0xFFF8F8F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Likes",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(255, 53, 53, 1),
                                  ),
                                ),
                                Text(
                                  "999,000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 90, right: 10),
                                      child: Icon(
                                        CupertinoIcons.heart_fill,
                                        size: 45,
                                        color: Color.fromRGBO(255, 53, 53, 1),
                                      ),
                                    )
                              ],
                            ),
                                                    ),
                          ),
                      ),
                  ]),
                  SizedBox(height: 14),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              child: Container(
                              padding: const EdgeInsets.only(top: 19, left: 16),
                              decoration: BoxDecoration(
                                 boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 5,
                                )
                              ],
                                color: const Color(0xFFF8F8F9),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bookings",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(85, 145, 236, 1)
                                    ),
                                  ),
                                  Text(
                                    "999,000",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100, right: 10),
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 45,
                                          color: Color.fromRGBO(85, 145, 236, 1)
                                        ),
                                      )
                                ],
                              ),
                                                        ),
                            ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Expanded(
                            child: Container(
                            padding: const EdgeInsets.only(top: 19, left: 16),
                            decoration: BoxDecoration(
                               boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 5,
                                )
                              ],
                              color: const Color(0xFFF8F8F9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Earnings",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(8, 148, 114, 1)
                                  ),
                                ),
                                Text(
                                  "999,000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 90, right: 10),
                                      child: CircleAvatar(
                                        radius:20,
                                        backgroundColor: Color.fromRGBO(8, 148, 114, 1),
                                        child: Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    )
                              ],
                            ),
                                                    ),
                          ),
                      ),
                  ]),
                  SizedBox(height: 15),
                  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(186, 185, 185, 1),
        shape: BoxShape.circle,
      ),
    ),
    SizedBox(width: 6),
    Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(226, 225, 225, 1),
        shape: BoxShape.circle,
      ),
    ),
  ],
), 
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Overall Ratings',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 352,
                    height: 65.37,
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13),
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4.8",
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),  
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                          Icons.star,
                                    color: const Color(0xFF2F80ED),
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                                    color: const Color(0xFF2F80ED),
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                                    color: const Color(0xFF2F80ED),
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                                    color: const Color(0xFF2F80ED),
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                                    color: const Color(0xFF2F80ED),
                          size: 16,
                        ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 352,
                    height: 20,
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 243, 243, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13),
                      )
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color.fromRGBO(186, 185, 185, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        "Recent Reviews",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
  width: 349,
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: const Color(0xFFF3F3F3),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //Avatar circle
      Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
        ),
      ),

      const SizedBox(width: 12),

      //Right side content
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Avantika Agarwal",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "2 days ago",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            // Stars row
            Row(
              children: List.generate(
                5,
                (_) => const Icon(
                  Icons.star,
                  size: 14,
                  color: Color.fromRGBO(242, 158, 2, 1),
                ),
              ),
            ),

            const SizedBox(height: 6),

            //text
            Text(
              "Michael is amazing with pets! He took exceptional care of my two cats while I was away. He took exceptional care of my two cats while I was away.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(75, 85, 99, 1),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
)
          ]),
              ),
            ),
        ]
        )
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
            title: Text('Pet Sitter',
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(58, 104, 199, 1),
            actions: [
  Padding(
    padding: const EdgeInsets.only(right: 25),
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
            CupertinoIcons.add,
            size: 25,
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