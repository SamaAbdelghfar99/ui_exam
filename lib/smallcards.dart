import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallCards extends StatelessWidget {
  const SmallCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),

          ),
          child: Text('Art',style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff2E2E5D),
          ),),
        )
      ],
    );
  }
}
