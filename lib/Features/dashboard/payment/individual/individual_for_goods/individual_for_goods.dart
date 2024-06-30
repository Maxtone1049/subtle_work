import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/Common/Body/BodyWidget.dart';
import 'package:weverefy/Common/Body/Model/BodyConfig.dart';
import 'package:weverefy/Common/Button/ButtonWidget.dart';
import 'package:weverefy/Common/Button/Model/ButtonConfig.dart';
import 'package:weverefy/Common/Dropdown/DropDownTextField.dart';
import 'package:weverefy/Common/Dropdown/DropdownView.dart';
import 'package:weverefy/Common/Dropdown/Model/DropdownConfig.dart';
import 'package:weverefy/Common/EditField/EditFieldView.dart';
import 'package:weverefy/Common/EditField/Model/EditFieldConfig.dart';
import 'package:weverefy/Common/Gap.dart';
import 'package:weverefy/Common/Image/ImageView.dart';
import 'package:weverefy/Common/Image/Model/ImageConfig.dart';
import 'package:weverefy/Common/TextView/Models/TextViewConfig.dart';
import 'package:weverefy/Common/TextView/TextView.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/agreementone_view.dart';
import 'package:weverefy/assets/app_colors.dart';
import 'package:weverefy/assets/app_fonts.dart';

class PayIndividualGoods extends StatefulWidget {
  const PayIndividualGoods({super.key});

  @override
  State<PayIndividualGoods> createState() => _PayIndividualGoodsState();
}

class _PayIndividualGoodsState extends State<PayIndividualGoods> {
  String selectedCountry = 'assets/images/nig.png';
  var items = [
    'assets/images/ghana.png',
    'assets/images/nig.png',
  ];
  @override
  Widget build(BuildContext context) {
    return BodyWidget(
        config: BodyConfig(
            showAppBar: true,
            appbarBackgroundColor: AppColors.greybg,
            backgroundColor: AppColors.greybg,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                      config: TextViewConfig(
                    text: "Pay An Individual For Goods",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 20,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Describe the product(s)",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                    label: 'Enter the description of the products',
                    height: 40,
                    labelStyle: TextStyle(
                      fontFamily: AppFonts.aeonik,
                      fontSize: 10.sp,
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 5,
                    minLines: 4,
                    alignLabelWithHint: true,
                  )),
                  const Gap(
                    height: 16,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Product amount",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                    label: 'NGN',
                    height: 40,
                    labelStyle: TextStyle(
                      fontFamily: AppFonts.aeonik,
                      fontSize: 10.sp,
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                  const Gap(
                    height: 16,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Seller's address",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                    height: 40,
                    label: '10, ikoyi Lagos',
                    filledColor: AppColors.white,
                    labelStyle: TextStyle(
                      fontFamily: AppFonts.aeonik,
                      fontSize: 10.sp,
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                  const Gap(
                    height: 16,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Seller's phone number",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                    config: EditFieldConfig(
                      height: 40,
                      labelStyle: TextStyle(
                        fontFamily: AppFonts.aeonik,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkgrey,
                      ),
                      label: selectedCountry.contains('assets/images/nig.png')
                          ? '+234'
                          : '+233',
                      showMaxLengthCounter: true,
                      maxLength:
                          selectedCountry.contains('assets/images/nig.png')
                              ? 11
                              : 9,
                      prefixIconWidget: SizedBox(
                          width: 40.w,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                            ),
                            child: DropdownButton(
                              elevation: 0,
                              dropdownColor: AppColors.white,
                              underline: Container(),
                              value: selectedCountry,
                              icon: Icon(
                                CupertinoIcons.chevron_down,
                                size: 10.sp,
                                color: AppColors.black,
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedCountry = value!;
                                });
                              },
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: ImageView(
                                    imageConfig: ImageConfig(
                                      imageURL: items,
                                      imageType: ImageType.asset,
                                      height: 14.h,
                                      width: 14.w,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          )),
                    ),
                  ),
                  const Gap(
                    height: 16,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Duration for transaction",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DropDownView(
                          config: DropdownConfig(
                            label: 'select number',
                            labelStyle: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: AppFonts.aeonik,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            dropDownList: [
                              const DropDownValueModel(name: '1', value: '1'),
                              const DropDownValueModel(name: '2', value: '3'),
                              const DropDownValueModel(name: '3', value: '3'),
                              const DropDownValueModel(name: '4', value: '4'),
                            ],
                          ),
                        ),
                      ),
                      const Gap(
                        width: 9,
                      ),
                      Expanded(
                        child: DropDownView(
                          config: DropdownConfig(
                            label: 'select duration',
                            labelStyle: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: AppFonts.aeonik,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkgrey,
                            ),
                            dropDownList: [
                              const DropDownValueModel(
                                  name: 'Hr(s)', value: 'Hr(s)'),
                              const DropDownValueModel(
                                  name: 'Day(s)', value: 'Day(s)'),
                              const DropDownValueModel(
                                  name: 'Week(s)', value: 'Week(s)'),
                              const DropDownValueModel(
                                  name: 'Month(s)', value: 'Month(s)'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(
                    height: 16,
                  ),
                  TextView(
                      config: TextViewConfig(
                    text: "Seller's Account details",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                    label: 'Account Number',
                    labelStyle: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: AppFonts.aeonik,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkgrey,
                    ),
                  )),
                  const Gap(
                    height: 6,
                  ),
                  EditFormField(
                      config: EditFieldConfig(
                    label: 'Account name',
                    labelStyle: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: AppFonts.aeonik,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkgrey,
                    ),
                  )),
                  const Gap(
                    height: 6,
                  ),
                  DropDownView(
                    config: DropdownConfig(
                      maxLines: 4,
                      minLines: 3,
                      label: 'Bank Name',
                      labelStyle: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: AppFonts.aeonik,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkgrey,
                      ),
                      dropDownList: [
                        const DropDownValueModel(name: 'Hr(s)', value: 'Hr(s)'),
                        const DropDownValueModel(
                            name: 'Day(s)', value: 'Day(s)'),
                        const DropDownValueModel(
                            name: 'Week(s)', value: 'Week(s)'),
                        const DropDownValueModel(
                            name: 'Month(s)', value: 'Month(s)'),
                      ],
                    ),
                  ),
                  const Gap(
                    height: 50,
                  ),
                  ButtonWidget(
                    config: ButtonConfig(
                      text: "Proceed",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AgreementOneView()));
                      },
                      height: 42,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.white,
                      buttonColor: AppColors.primary,
                      radius: 10.r,
                    ),
                  ),
                  const Gap(
                    height: 13,
                  ),
                ],
              ),
            )));
  }
}
