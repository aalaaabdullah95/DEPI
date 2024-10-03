import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerbackGroundforAll(
      width: 340,
      heigh: 300,
      padding: EdgeInsets.only(
        top: 10.13,
        left: 25,
        right: 17,
        bottom: 9,
      ),
      child: ContentOfBody(),
    );
  }
}

class ContentOfBody extends StatelessWidget {
  const ContentOfBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'Body :',
          style: Styles.textstyle20Black,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          maxLines: 5,
          minLines: 1,
          expands: false,
          textAlignVertical: TextAlignVertical.top,
          cursorColor: MyColors.textColor,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(top: 200),
                child: Icon(
                  FontAwesomeIcons.link,
                  color: Colors.black,
                ),
              ),
            ),
            // contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            contentPadding: const EdgeInsets.symmetric(vertical: 100),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: outLineInputBorder(),
            border: outLineInputBorder(),
            focusedBorder: outLineInputBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        15,
      ),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
