import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static const String routeName = 'Shome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo2.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/images/bell-02.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'Hello, Sara Rose',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('       How are you feeling today ?',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/Frame 10.png'),
                    Text(
                      'Love',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset('assets/images/Frame 100.png'),
                    Text(
                      'Cool',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset('assets/images/Frame 8.png'),
                    Text(
                      'Happy',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Image.asset('assets/images/Frame 12.png'),
                    Text(
                      'Sad',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Feature',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff027A48),
                      ),
                    ))
              ],
            ),
            Spacer(),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/Frame 24.png',fit: BoxFit.fill,),

                    ),
                  ), options: CarouselOptions(),
            ),
            SmoothPageIndicator(
              controller: PageController(),
              count:  3,
              axisDirection: Axis.horizontal,
              effect:  WormEffect(
                  spacing:  8.0,
                  radius:  4.0,
                  dotWidth:  24.0,
                  dotHeight:  16.0,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  Colors.grey,
                  activeDotColor:  Colors.grey
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Exercise',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more >',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff027A48),
                      ),
                    ))
              ],
            ),
            Spacer(),
            Row(
              children: [
                Image.asset('assets/images/Frame 31.png',fit: BoxFit.cover,),
                Spacer(),
                Image.asset('assets/images/Frame 35.png'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Image.asset('assets/images/Frame 34.png'),
                Spacer(),
                Image.asset('assets/images/Frame 33.png'),
              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Color(0xff027A48),),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.apps,color: Color(0xff667085),),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.date_range,color: Color(0xff667085),),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,color: Color(0xff667085),),label: ''),
      ]),
    );
  }
}
