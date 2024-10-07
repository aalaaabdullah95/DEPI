import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomTopicCard extends StatelessWidget {
  final String tittle;
  final String date;
  const CustomTopicCard({super.key, required this.tittle, required this.date});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff929493),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        width: 265,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  tittle,
                  style: Styles.textstyle20Black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: -23,
        right: -18,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cancel_outlined,
          ),
        ),
      ),
    ]);
  }
}
