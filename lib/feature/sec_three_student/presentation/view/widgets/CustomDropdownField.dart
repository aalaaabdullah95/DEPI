import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';

class CustomDropdownField extends StatelessWidget {
  const CustomDropdownField({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerbackGroundforAll(
      width: 340,
      heigh: 140,
      padding: EdgeInsets.only(
        top: 10.13,
        left: 25,
        right: 17,
        bottom: 9,
      ),
      child: Content(),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDropdownRow(
          items: [
            DropdownMenuItem(
              value: "1",
              child: Text("Ministry"),
            ),
            DropdownMenuItem(
              value: "2",
              child: Text("Compony name"),
            ),
          ],
          tittle: 'To :',
        ),
        SizedBox(height: 16),
        CustomDropdownRow(
          items: [
            DropdownMenuItem(value: "1", child: Text("Complaint")),
            DropdownMenuItem(value: "1", child: Text("Suggestion")),
          ],
          tittle: 'Subject :',
        ),
      ],
    );
  }
}

class CustomDropdownRow extends StatelessWidget {
  final String tittle;
  final List<DropdownMenuItem<String>> items;

  const CustomDropdownRow({
    super.key,
    required this.tittle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            tittle,
            style: Styles.textstyle20Black,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffB4B4B4),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  )
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                      )
                    ]),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 1.0,
                      horizontal: 10.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: items,
                  onChanged: (value) {},
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
