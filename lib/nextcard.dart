import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nextcard extends StatelessWidget {
  const Nextcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Color(0xffE4E7EC),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child:
        Row(
          children: [
            Image.asset('assets/images/Image Placeholder 2.png'),
            SizedBox(width: 10,),
            Text('Light Maga',style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),)
          ],
        ),
      ),
    );
  }
}
