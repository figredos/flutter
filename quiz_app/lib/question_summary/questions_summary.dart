import 'package:flutter/material.dart';

import 'package:quiz_app/question_summary/questions_id.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: QuestionsId(summaryData: summaryData,)
      ),
    );
  }
}
