import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String? title;
  final bool goBack;
  final bool logo;
  final bool search;
  final bool bag;
  final bool border;
  final bool fileIcon;
  final Color? goBackColor;
  final Color? titleColor;
  final TextStyle? titleStyle;
  final VoidCallback? onBackPressed;
  final VoidCallback? onFilePressed;
  final EdgeInsetsGeometry? margin;

  const CustomHeader({
    Key? key,
    this.title,
    this.goBack = false,
    this.logo = false,
    this.search = false,
    this.bag = false,
    this.border = false,
    this.fileIcon = false,
    this.goBackColor,
    this.titleColor,
    this.titleStyle,
    this.onBackPressed,
    this.onFilePressed,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      margin: margin,
      decoration: BoxDecoration(
        border: border
            ? const Border(
                bottom: BorderSide(
                  color: Color(0xFFEEEEEE),
                  width: 1,
                ),
              )
            : null,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // عنوان الصفحة
          if (title != null)
            Text(
              title!,
              style: titleStyle ??
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: titleColor ?? const Color(0xFF1D5DA2),
                  ),
              textAlign: TextAlign.center,
            ),

          // زر الرجوع
          if (goBack)
            Positioned(
              left: 0,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: goBackColor ?? const Color(0xFF1D5DA2),
                  size: 20,
                ),
                onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
              ),
            ),

          // حقل البحث
          if (search)
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: Icon(Icons.search, size: 20),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // أيقونة الملف
          if (fileIcon)
            Positioned(
              right: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.insert_drive_file_outlined,
                  color: Color(0xFF1D5DA2),
                ),
                onPressed: onFilePressed ?? () {},
              ),
            ),
        ],
      ),
    );
  }
}
