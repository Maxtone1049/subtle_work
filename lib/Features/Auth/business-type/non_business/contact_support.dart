import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/Sheets/BottomSheets.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/router/page_router.dart';

class ContactSupportView extends StatelessWidget {
  const ContactSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      config: BodyConfig(
        showAppBar: true,
        automaticallyImplyLeading: true,
        appbarBackgroundColor: AppColors.greybg,
        backgroundColor: AppColors.greybg,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(
                height: 10,
              ),
              TextView(
                config: TextViewConfig(
                  text:
                      "For assistance with registering your business,\nplease reach out to",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(
                height: 36,
              ),
              TextView(
                config: TextViewConfig(
                  text: "Contact",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(
                height: 7,
              ),
              GestureDetector(
                onTap: () {
                  BottomSheets.showSheet(
                    color: Colors.transparent,
                    context,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 14.w,
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 14.h),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.r),
                                topRight: Radius.circular(10.r),
                              ),
                            ),
                            child: TextView(
                              config: TextViewConfig(
                                text: "Call",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blueshade,
                              ),
                            ),
                          ),
                          const Gap(
                            height: 2,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 14.h),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: TextView(
                              config: TextViewConfig(
                                text: "Message",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blueshade,
                              ),
                            ),
                          ),
                          const Gap(
                            height: 15,
                          ),
                          ButtonWidget(
                            config: ButtonConfig(
                              text: "Cancel",
                              onPressed: () {
                                PageRouter.pop();
                              },
                              buttonColor: AppColors.white,
                              textColor: AppColors.blueshade,
                              height: 58,
                              radius: 10.r,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 10.44,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Wrap(children: [
                          ImageView(
                              imageConfig: ImageConfig(
                            imageURL: AppImage.nig,
                            imageType: ImageType.asset,
                          )),
                          const Gap(
                            width: 2.44,
                          ),
                          Icon(
                            CupertinoIcons.chevron_down,
                            size: 10.sp,
                            color: AppColors.black,
                          ),
                        ]),
                      ),
                      const Gap(width: 11.39),
                      Expanded(
                          flex: 1,
                          child: TextView(
                            config: TextViewConfig(
                              text: '09069739255',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                      Icon(
                        CupertinoIcons.chevron_right,
                        size: 14.sp,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageView(
                    imageConfig: ImageConfig(
                      imageURL: AppImage.line,
                      imageType: ImageType.asset,
                    ),
                  ),
                  TextView(
                    config: TextViewConfig(
                      text: 'OR',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ImageView(
                    imageConfig: ImageConfig(
                      imageURL: AppImage.line,
                      imageType: ImageType.asset,
                    ),
                  ),
                ],
              ),
              const Gap(height: 25),
              TextView(
                  config: TextViewConfig(
                text: 'Click the WhatsApp Link Below',
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              )),
              const Gap(
                height: 7,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 14.h,
                  horizontal: 10.44,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(
                    5.r,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: ImageView(
                          imageConfig: ImageConfig(
                        imageURL: AppImage.whatsapp,
                        imageType: ImageType.asset,
                      )),
                    ),
                    const Gap(width: 11.39),
                    Expanded(
                        flex: 1,
                        child: TextView(
                          config: TextViewConfig(
                            text: 'https://wa.me/message/RDDA4DEA7ENFD1',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    Icon(
                      CupertinoIcons.chevron_right,
                      size: 14.sp,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
