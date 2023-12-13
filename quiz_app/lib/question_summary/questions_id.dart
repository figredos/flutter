import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_summary/summary_item.dart';

class QuestionsId extends StatelessWidget {
  const QuestionsId({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: data['user_answer'] == data['correct_answer']
                      ? const Color.fromARGB(255, 153, 225, 251)
                      : const Color.fromARGB(255, 189, 153, 251),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${(data['question_index'] as int) + 1}',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 62, 2, 192),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SummaryItem(data: data),
            ],
          );
        },
      ).toList(),
    );
  }
}
