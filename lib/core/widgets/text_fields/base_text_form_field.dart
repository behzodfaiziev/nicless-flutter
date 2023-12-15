import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';

class BaseTextFormField extends StatelessWidget {
  const BaseTextFormField({
    required this.focusNode,
    this.scrollPadding = const EdgeInsets.all(20),
    this.textAlign = TextAlign.start,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.icon,
    this.suffixIconButton,
    this.maxLength,
    this.style,
    this.keyboardType,
    this.decoration,
    this.enabled = true,
    this.isUnderLine = true,
    this.obscureText = false,
    this.maxLines = 1,
    this.onFieldSubmitted,
    this.onTapOutside,
    this.keyboardAppearance,
    super.key,
  }) : assert(
            decoration != null &&
                (hintText == null || icon == null || suffixIconButton == null),
            'You can not use hintText, icon or '
            'suffixIconButton together with decoration');

  final FocusNode focusNode;
  final TextEditingController? controller;
  final TapRegionCallback? onTapOutside;
  final void Function(String value)? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final void Function(String)? onSubmitted;
  final EdgeInsets scrollPadding;
  final TextInputType? keyboardType;
  final Brightness? keyboardAppearance;
  final bool enabled;
  final bool isUnderLine;
  final bool obscureText;
  final String? hintText;
  final IconData? icon;
  final int? maxLength;
  final int? maxLines;
  final Widget? suffixIconButton;
  final TextStyle? style;
  final InputDecoration? decoration;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      style: style,
      textAlign: textAlign,
      obscureText: obscureText,
      autocorrect: false,
      enableSuggestions: false,
      cursorWidth: 1.6,
      cursorHeight: 20,
      cursorColor: context.theme.textSelectionTheme.cursorColor,
      scrollPadding: scrollPadding,
      keyboardAppearance: keyboardAppearance,
      onTapOutside: onTapOutside ??
          (event) {
            if (focusNode.hasFocus) {
              focusNode.unfocus();
            }
          },
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
            prefixIcon: icon != null
                ? Icon(icon, color: context.theme.iconTheme.color)
                : null,
            suffixIcon: suffixIconButton,
            errorStyle: TextStyle(color: Colors.red.withOpacity(0.75)),
            enabledBorder:
                isUnderLine ? const UnderlineInputBorder() : InputBorder.none,
            focusedBorder:
                isUnderLine ? const UnderlineInputBorder() : InputBorder.none,
          ),
    );
  }
}
