import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Sheets/BottomSheets.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/home/widgets/add_card.dart';
import 'package:weverefy/Features/dashboard/home/widgets/saved_card_holder.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';

class SavedCardView extends StatelessWidget {
  const SavedCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        showAppBar: true,
        backgroundColor: AppColors.greybg,
        automaticallyImplyLeading: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                  config: TextViewConfig(
                text: "Saved Cards",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              )),
              const Gap(
                height: 30,
              ),
              SavedCardHolder(
                cardNo: '****3473',
                expire: 'Expires 10/24',
                image: AppImage.gt,
                check: AppImage.checkbox,
                tap: () {},
              ),
              const Gap(
                height: 10,
              ),
              SavedCardHolder(
                cardNo: '****3473',
                expire: 'Expires 10/24',
                image: AppImage.uba,
                check: AppImage.uncheck,
                tap: () {},
              ),
              const Gap(
                height: 10,
              ),
              SavedCardHolder(
                cardNo: '****3473',
                expire: 'Expires 10/24',
                image: AppImage.wema,
                check: AppImage.uncheck,
                tap: () {},
              ),
              const Gap(
                height: 20,
              ),
              Center(
                child: TextView(
                  config: TextViewConfig(
                    onTap: () {
                      BottomSheets.showSheet(context,
                          child: const AddCardForm());
                    },
                    text: 'Add debit card',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Gap(
                height: 150,
              ),
              ButtonWidget(
                  config: ButtonConfig(
                text: "Proceed",
                onPressed: () {},
                height: 42,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                buttonColor: AppColors.primary,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
