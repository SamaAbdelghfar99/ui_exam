import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiexam/cards.dart';
import 'package:uiexam/nextcard.dart';
import 'package:uiexam/smallcards.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/Logo.png'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/Setting.png'),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Categories',style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text('See More',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4838D1),
                    ),))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TabBar(tabs: [
                Tab(child: Text('Art',style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2E2E5D),
                ),),),
                Tab(child: Text('Business',style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2E2E5D),
                ),),),
                Tab(child: Text('Comedy',style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2E2E5D),
                ),),),
                Tab(child: Text('Drama',style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff2E2E5D),
                ),),),

              ]),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('Recommended For You',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text('See More',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4838D1),
                    ),))
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  //padding: EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Cards(),
                  itemCount: 15,
                ),
              ),
              Row(
                children: [
                  Text('Best Seller',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text('See More',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4838D1),
                    ),))
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  //padding: EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Nextcard(),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Color(0xff4838D1),),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Color(0xff4838D1),),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.library_books,color: Color(0xff4838D1),),label: 'Library'),
        ]),
      
      ),
    );


  }
}
