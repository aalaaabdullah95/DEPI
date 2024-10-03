import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class FromAndSubjectAndDate extends StatelessWidget {
  const FromAndSubjectAndDate({
    super.key,
    required this.from,
    required this.subject,
    required this.date,
  });
  final String from;
  final String subject;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'From: ',
              style: Styles.textstyle20Black.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              from,
              style: Styles.textstyle16,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Subject: ',
              style: Styles.textstyle20Black.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Text(
                subject,
                style: Styles.textstyle16,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            date,
            style: Styles.textstyle11,
          ),
        ),
      ],
    );
  }
}
