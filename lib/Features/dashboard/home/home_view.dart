import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/home/Views/add_money.dart';
import 'package:weverefy/Features/dashboard/home/widgets/pay_handle.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_for_goods.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_for_services.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/individual_for_goods.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_services/individual_for_services.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_image.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/viewModel/profile_viewModel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => locator<ProfileViewModel>(),
        disposeViewModel: false,
        onViewModelReady: (model) {
          WidgetsBinding.instance.addPostFrameCallback(
              (_) async => await model.getInfo(model.session.authToken));
        },
        builder: (_, model, __) {
          return BodyWidget(
            config: BodyConfig(
              backgroundColor: AppColors.greybg,
              childPadding: EdgeInsets.zero,
              automaticallyImplyLeading: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 15.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(
                        0.r,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: ImageView(
                                imageConfig: ImageConfig(
                                  imageURL: AppImage.image,
                                  imageType: ImageType.asset,
                                  height: 34.h,
                                  width: 34.w,
                                ),
                              ),
                            ),
                            const Gap(
                              width: 6,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                    config: TextViewConfig(
                                      text: "Hello, ${model.firstName}",
                                      color: AppColors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Gap(
                                    height: 6,
                                  ),
                                  model.accountType.contains('personal')
                                      ? TextView(
                                          config: TextViewConfig(
                                            text: "",
                                            color: AppColors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      : TextView(
                                          config: TextViewConfig(
                                            text: "Nelson Ventures Limited",
                                            color: AppColors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            ImageView(
                              imageConfig: ImageConfig(
                                imageURL: AppImage.notify,
                                imageType: ImageType.svg,
                                height: 26.h,
                                width: 26.w,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        ),
                        const Gap(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                      config: TextViewConfig(
                                    text: "Available Balance",
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                  )),
                                  const Gap(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      ImageView(
                                        imageConfig: ImageConfig(
                                          imageURL: AppImage.ngn,
                                          imageType: ImageType.svg,
                                        ),
                                      ),
                                      const Gap(
                                        width: 3.33,
                                      ),
                                      TextView(
                                          config: TextViewConfig(
                                        text: "500,000.00",
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.white,
                                      )),
                                      const Gap(width: 11.67),
                                      ImageView(
                                          imageConfig: ImageConfig(
                                        imageURL: AppImage.hide,
                                        imageType: ImageType.svg,
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Gap(
                              width: 56.33,
                            ),
                            Expanded(
                              flex: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                      config: TextViewConfig(
                                    text: "Recall Balance",
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                  )),
                                  const Gap(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      ImageView(
                                        imageConfig: ImageConfig(
                                          imageURL: AppImage.ngn,
                                          imageType: ImageType.svg,
                                        ),
                                      ),
                                      const Gap(
                                        width: 3.33,
                                      ),
                                      TextView(
                                        config: TextViewConfig(
                                          text: "50,000.00",
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextView(
                              config: TextViewConfig(
                            text: "A/C No",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          )),
                        ),
                        const Gap(
                          height: 5,
                        ),
                        Row(
                          children: [
                            TextView(
                                config: TextViewConfig(
                              text: "1234567890",
                              color: AppColors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            )),
                            const Gap(
                              width: 4,
                            ),
                            ImageView(
                              imageConfig: ImageConfig(
                                imageURL: AppImage.copy,
                                imageType: ImageType.svg,
                              ),
                            ),
                          ],
                        ),
                        const Gap(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 9.63.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      100.r,
                                    ),
                                    border: Border.all(
                                      width: 0.5.w,
                                      color: AppColors.white,
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextView(
                                        config: TextViewConfig(
                                      text: "Withdraw",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                      color: AppColors.white,
                                    )),
                                    const Gap(width: 4),
                                    ImageView(
                                        imageConfig: ImageConfig(
                                      imageURL: AppImage.export,
                                      imageType: ImageType.svg,
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(width: 8),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddMoney())),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      EdgeInsets.symmetric(vertical: 9.63.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        100.r,
                                      ),
                                      border: Border.all(
                                        width: 0.5.w,
                                        color: AppColors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextView(
                                          config: TextViewConfig(
                                        text: "Add Money",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.sp,
                                        color: AppColors.white,
                                      )),
                                      const Gap(width: 4),
                                      ImageView(
                                          imageConfig: ImageConfig(
                                        imageURL: AppImage.addCircle,
                                        imageType: ImageType.svg,
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextView(
                            config: TextViewConfig(
                          text: "Pay an Individual For",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        )),
                        const Gap(
                          height: 12,
                        ),
                        PayHandle(
                          tap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PayIndividualGoods()));
                          },
                          serviceName: 'Goods',
                          serviceType: 'Services',
                          taptwo: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PayIndividualService()));
                          },
                        ),
                        const Gap(
                          height: 30,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text: "Pay a Registered Company For",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        )),
                        const Gap(
                          height: 12,
                        ),
                        PayHandle(
                          tap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PayCompanyGoods()));
                          },
                          serviceName: 'Goods',
                          serviceType: 'Services',
                          taptwo: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PayCompanyService()));
                          },
                        ),
                        const Gap(
                          height: 30,
                        ),
                        TextView(
                            config: TextViewConfig(
                          text: "Verify",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        )),
                        const Gap(
                          height: 12,
                        ),
                        PayHandle(
                          tap: () {},
                          serviceName: 'Goods',
                          serviceType: 'A Property',
                          taptwo: () {},
                        ),
                        const Gap(
                          height: 12,
                        ),
                        PayHandle(
                          tap: () {},
                          serviceName: 'An Employee',
                          serviceType: 'A Business',
                          taptwo: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
