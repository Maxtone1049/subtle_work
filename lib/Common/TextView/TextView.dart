import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weverefy/assets/app_fonts.dart';

import 'Models/TextViewConfig.dart';

class TextView extends StatelessWidget {
  final TextViewConfig config;

  const TextView({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: config.onTap,
      child: Text(
        config.text,
        style: config.textStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: config.color,
                shadows: config.shadows,
                decoration: config.decoration,
                decorationStyle: config.decorationStyle,
                decorationThickness: config.decorationThickness,
                fontWeight: config.fontWeight,
                fontSize: config.fontSize?.sp,
                fontStyle: config.fontStyle,
                fontFamily: AppFonts.aeonik,
                height: config.lineHeight,
                wordSpacing: config.wordSpacing,
                letterSpacing: config.letterSpacing),
        textAlign: config.textAlign,
        overflow: config.textOverflow,
        maxLines: config.maxLines,
      ),
    );
  }
}
