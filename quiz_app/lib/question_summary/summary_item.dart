import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            data['question'] as String,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            data['user_answer'] as String,
            style: const TextStyle(
                color: Color.fromARGB(255, 189, 153, 251), fontSize: 16),
          ),
          Text(
            data['correct_answer'] as String,
            style: const TextStyle(
                color: Color.fromARGB(255, 153, 225, 251), fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
