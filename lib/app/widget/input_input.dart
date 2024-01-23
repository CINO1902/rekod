import 'package:flutter/material.dart';

import 'package:rekod/core/app_colors.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.placeholder,
    this.label,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = true,
    this.suffix,
    this.onTap,
    this.prefix,
    this.fieldWidth = double.infinity,
    this.validationColor = RekodColors.grey,
    this.prefixSizedBoxWidth = 20,
    this.fieldColor = RekodColors.white,
    this.fieldHeight = 52,
    this.ontap,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool password;
  final bool isReadOnly;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final Function? onTap;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final String? label;
  final double prefixSizedBoxWidth;
  final Function(String)? onChanged;
  final Color fieldColor;
  final int? maxLines, maxLength;
  final Widget? suffix;
  final Widget? prefix;
  final Color validationColor;
  final double fieldHeight;
  final double fieldWidth;
  final Function()? ontap;

  @override
  // ignore: library_private_types_in_public_api
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool? isPassword;
  double fieldHeight = 52;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.fieldHeight,
      width: widget.fieldWidth,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.fieldColor,
        border: Border.all(
          color: widget.validationColor.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: <Widget>[
          widget.prefix ?? const SizedBox(),
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: widget.textInputType,
              focusNode: widget.fieldFocusNode,
              textInputAction: widget.textInputAction,
              onChanged: widget.onChanged,
              maxLines: widget.maxLines,
              onTap: widget.ontap,
              style: const TextStyle(
                  fontSize: 14,
                  // fontFamily: IklinFont.euclid,
                  // color: AfroReadsColors.grey,
                  color: RekodColors.background,
                  fontWeight: FontWeight.w400),

              onEditingComplete: () {
                if (widget.enterPressed != null) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  // ignore: avoid_dynamic_calls
                  widget.enterPressed!();
                }
              },
              // onFieldSub  mitted: (value) {
              //   if (widget.nextFocusNode != null) {
              //     widget.nextFocusNode.requestFocus();
              //   }
              // },
              obscureText: isPassword!,
              readOnly: widget.isReadOnly,
              // decoration:
              // InputDecoration.collapsed(hintText: widget.placeholder),
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(top: 10),
                hintText: widget.placeholder,
                border: InputBorder.none,

                hintStyle: const TextStyle(
                  fontSize: 14,
                  // fontFamily: IklinFont.euclid,
                  color: RekodColors.grey,
                  fontWeight: FontWeight.w400,
                ),
                // suffix:
              ),
            ),
          ),
          widget.suffix ??
              GestureDetector(
                onTap: () => setState(() {
                  isPassword = !isPassword!;
                }),
                child: widget.password
                    ? Container(
                        alignment: Alignment.center,
                        child: isPassword!
                            ? Icon(
                                Icons.visibility,
                                color: widget.validationColor.withOpacity(0.7),
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: widget.validationColor.withOpacity(0.7),
                              ),
                      )
                    : Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                      ),
              ),
        ],
      ),
    );
  }
}
