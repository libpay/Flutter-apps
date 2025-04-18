import 'package:flutter/material.dart';

class ProfileCategoryItem extends StatefulWidget {
  final String? title;
  final Widget? icon;
  final Widget? rightElement;
  final bool toggleButton;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;

  const ProfileCategoryItem({
    Key? key,
    this.title,
    this.icon,
    this.rightElement,
    this.toggleButton = false,
    this.onPressed,
    this.margin,
  }) : super(key: key);

  @override
  State<ProfileCategoryItem> createState() => _ProfileCategoryItemState();
}

class _ProfileCategoryItemState extends State<ProfileCategoryItem> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      margin: widget.margin ?? const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF062664).withOpacity(0.02),
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // أيقونة وعنوان الفئة
                Row(
                  children: [
                    if (widget.icon != null) widget.icon!,
                    if (widget.title != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          widget.title!,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D5DA2),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
                
                // العنصر الأيمن (إن وجد)
                if (widget.rightElement != null) 
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: widget.rightElement!,
                    ),
                  ),
                
                // زر التبديل (إن وجد)
                if (widget.toggleButton)
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            toggle = !toggle;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 24,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: toggle ? const Color(0xFF4CAF50) : const Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: toggle ? Alignment.centerRight : Alignment.centerLeft,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
