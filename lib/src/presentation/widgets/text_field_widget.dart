import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormTextLabel extends StatelessWidget {
  const FormTextLabel({
    Key? key,
    required this.label,
    this.labelColor,
    this.mandatory = false,
  }) : super(key: key);

  final String label;
  final Color? labelColor;
  final bool mandatory;

  @override
  Widget build(BuildContext context) {
    if (mandatory) {
      return Text.rich(
        TextSpan(
          text: label,
          children: const [
            TextSpan(text: '*', style: TextStyle(color: Colors.red)),
          ],
        ),
        style: TextStyle(
          fontSize: 12.sp,
          color: labelColor ?? Theme.of(context).primaryColor,
        ),
      );
    }

    return Text(
      label,
      style: TextStyle(
        fontSize: 12.sp,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}

class FormzTextField extends StatelessWidget {
  const FormzTextField({
    Key? key,
    this.hintText,
    this.leading,
    this.leadingText,
    this.trailing,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.autofocus = false,
    this.textEditingController,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.errorText,
    this.style,
    this.maxLines = 1,
    this.minLines,
    this.inputFormatters,
    this.maxLength,
    this.errorMaxLines,
    this.textAlign = TextAlign.start,
    this.contentPadding,
  }) : super(key: key);

  final String? hintText;
  final String? errorText;
  final Widget? leading;
  final String? leadingText;
  final Widget? trailing;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final TextStyle? style;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? errorMaxLines;
  final TextAlign textAlign;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      readOnly: readOnly,
      enabled: enabled,
      autofocus: autofocus,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Theme.of(context).errorColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Theme.of(context).primaryColorDark),
        ),
        // constraints: const BoxConstraints(maxHeight: 48),
        contentPadding:
            contentPadding ?? const EdgeInsets.fromLTRB(12, 8, 12, 8),
        fillColor:
            !enabled ? ThemeColors.green.shade50 : ThemeColors.backgroundField,
        filled: true,
        prefixIcon: leading,
        prefixText: leadingText,
        suffixIcon: trailing,
        hintText: hintText,
        hintStyle: const TextStyle(color: ThemeColors.greyCaption),
        errorText: errorText,
        errorMaxLines: errorMaxLines,
        errorStyle: errorText != null && errorText!.isEmpty
            ? const TextStyle(fontSize: 0, height: 0)
            : null,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      style: style ?? TextStyle(fontSize: 15.sp),
      maxLines: maxLines,
      minLines: minLines,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      buildCounter: maxLength == null
          ? null
          : (
              BuildContext context, {
              required int currentLength,
              required bool isFocused,
              int? maxLength,
            }) =>
              const SizedBox.shrink(),
      textAlign: textAlign,
    );
  }
}

class SearchFieldBar extends StatelessWidget {
  const SearchFieldBar({
    Key? key,
    required this.hintText,
    this.autoFocus = false,
    this.readOnly = false,
    this.controller,
    this.onSubmitted,
    this.onChanged,
    this.onTap,
    this.trailing,
    this.fillColor = Colors.white,
  }) : super(key: key);

  final String hintText;
  final bool autoFocus;
  final bool readOnly;
  final Color fillColor;
  final TextEditingController? controller;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ThemeColors.grey5.withOpacity(0.75),
            blurRadius: 6,
            offset: Offset.zero,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: TextField(
        controller: controller,
        autofocus: autoFocus,
        readOnly: readOnly,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide.none,
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 48),
          hintText: hintText,
          hintStyle: const TextStyle(height: 1.5, color: ThemeColors.grey4),
          suffixIcon: trailing ??
              Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: const Icon(
                  Icons.search,
                  size: 18,
                  color: Colors.white,
                ),
              ),
          suffixIconConstraints:
              const BoxConstraints(minWidth: 40, minHeight: 40),
          filled: true,
          fillColor: fillColor,
          isCollapsed: true,
          contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
