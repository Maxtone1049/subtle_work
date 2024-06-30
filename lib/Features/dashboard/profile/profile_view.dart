import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/profile/widgets/profile_holder.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/viewModel/profile_viewModel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => locator<ProfileViewModel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return BodyWidget(
              config: BodyConfig(
                  fontWeight: FontWeight.w700,
                  showAppBar: true,
                  automaticallyImplyLeading: false,
                  appBarTitle: 'Profile',
                  centerTitle: false,
                  elevation: 0,
                  appbarBackgroundColor: AppColors.greybg,
                  backgroundColor: AppColors.greybg,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const Gap(
                          height: 30,
                        ),
                        Row(
                          children: [
                            ImageView(
                                imageConfig: ImageConfig(
                              imageURL: AppImage.prof,
                              imageType: ImageType.asset,
                              height: 70.h,
                              width: 70.w,
                            )),
                            const Gap(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextView(
                                    config: TextViewConfig(
                                  text: "${model.firstName} ${model.lastName}",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                                const Gap(
                                  height: 7,
                                ),
                                TextView(
                                    config: TextViewConfig(
                                  text: model.email,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                                const Gap(
                                  height: 7,
                                ),
                                ButtonWidget(
                                    config: ButtonConfig(
                                  text: "Edit Profile",
                                  onPressed: () {},
                                  width: 79.w,
                                  height: 21,
                                  buttonColor: AppColors.primary,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppColors.white,
                                )),
                              ],
                            ),
                          ],
                        ),
                        const Gap(
                          height: 50,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.usercirlceadd,
                            text: "Edit Your Profile Details"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.verify,
                            text: "Verification Status"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.notification,
                            text: "Notification Settings"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.securitysafe,
                            text: "Account Settings"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.customer,
                            text: "Customer Support"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.faq,
                            text: "Frequently Asked Questions"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.faq,
                            text: "About Recall and Release Payment"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.cardremove,
                            text: "Account Limit"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.like,
                            text: "Rate Us at Weverefy"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {},
                            image: AppImage.cardadd,
                            text: "Card options/ Add card details"),
                        const Gap(
                          height: 16,
                        ),
                        ProfileHolderWidget(
                            touch: () {
                              model.logout(context);
                            },
                            image: AppImage.logout,
                            text: "Log Out"),
                        const Gap(
                          height: 51,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageView(
                                imageConfig: ImageConfig(
                              imageURL: AppImage.delete,
                              imageType: ImageType.asset,
                            )),
                            const Gap(
                              width: 10,
                            ),
                            TextView(
                                config: TextViewConfig(
                              text: "Delete Account",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.error,
                            )),
                          ],
                        ),
                        const Gap(
                          height: 45,
                        ),
                      ],
                    ),
                  )));
        });
  }
}
