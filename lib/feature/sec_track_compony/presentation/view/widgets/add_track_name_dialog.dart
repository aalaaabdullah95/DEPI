import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/Custom_alertDialog.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';

class AddTrackDialog extends StatelessWidget {
  final String tittle;
  final String tittleOfAppBar;
  const AddTrackDialog({
    super.key,
    required this.tittle,
    required this.tittleOfAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlertdialog(
      color: Color(0xffE9E9E9).withOpacity(.9),
      content: SizedBox(
        width: 350,
        height: 365,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 2,
            right: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              CustomButtonForALl(
                  prefixxicon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressedForprefix: () {},
                  tittle: tittleOfAppBar,
                  width: 320,
                  heigh: 60),
              const SizedBox(
                height: 50,
              ),
              Text(
                tittle,
                style: Styles.textstyle16.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ]),
                child: const TextField(
                  cursorColor: MyColors.textColor,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none),
                ),
              ),
              const Spacer(),
              const Center(
                child: CustomButtonForALl(
                  tittle: 'Save',
                  width: 150,
                  heigh: 45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
