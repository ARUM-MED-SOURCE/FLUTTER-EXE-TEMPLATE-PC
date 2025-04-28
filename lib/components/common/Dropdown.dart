import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exe/constants/colors.dart';

// Constants
const _kDropdownWidth = 150.0;
const _kDropdownItemHeight = 38.0;
const _kDropdownItemPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
const _kDropdownBorderRadius = 4.0;
const _kDropdownElevation = 4.0;
const _kDropdownOffset = Offset(0, 40);
const _kIconSize = 20.0;
const _kTextFontSize = 14.0;
const _kMinDropdownWidth = 100.0;

class Dropdown<T> extends StatefulWidget {
  final T value;
  final List<T> items;
  final ValueChanged<T> onChanged;
  final String Function(T) itemBuilder;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double? elevation;
  final Offset? offset;
  final double? iconSize;
  final double? textFontSize;
  final double? minWidth;

  const Dropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.itemBuilder,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.elevation,
    this.offset,
    this.iconSize,
    this.textFontSize,
    this.minWidth,
  });

  @override
  State<Dropdown<T>> createState() => _DropdownState<T>();
}

class _DropdownState<T> extends State<Dropdown<T>> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isActive = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }

  void _handleFocusChange() {
    if (!_focusNode.hasFocus && _isActive) {
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    if (!mounted) return;
    _overlayEntry?.remove();
    _overlayEntry = null;
    if (mounted) {
      setState(() => _isActive = false);
    }
  }

  void _showOverlay() {
    _removeOverlay();
    if (!mounted) return;
    setState(() => _isActive = true);
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry() {
    final width = widget.width ?? _kDropdownWidth;
    final minWidth = widget.minWidth ?? _kMinDropdownWidth;
    final effectiveWidth = width > minWidth ? width : minWidth;

    return OverlayEntry(
      builder: (context) => _DropdownOverlay<T>(
        onDismiss: _removeOverlay,
        layerLink: _layerLink,
        items: widget.items,
        selectedValue: widget.value,
        itemBuilder: widget.itemBuilder,
        onItemSelected: (item) {
          widget.onChanged(item);
          _removeOverlay();
        },
        width: effectiveWidth,
        height: widget.height ?? _kDropdownItemHeight,
        padding: widget.padding ?? _kDropdownItemPadding,
        borderRadius: widget.borderRadius ?? _kDropdownBorderRadius,
        elevation: widget.elevation ?? _kDropdownElevation,
        offset: widget.offset ?? _kDropdownOffset,
        iconSize: widget.iconSize ?? _kIconSize,
        textFontSize: widget.textFontSize ?? _kTextFontSize,
        minWidth: minWidth,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.width ?? _kDropdownWidth;
    final minWidth = widget.minWidth ?? _kMinDropdownWidth;
    final effectiveWidth = width > minWidth ? width : minWidth;

    return CompositedTransformTarget(
      link: _layerLink,
      child: Focus(
        focusNode: _focusNode,
        child: InkWell(
          onTap: _showOverlay,
          child: Container(
            width: effectiveWidth,
            height: widget.height ?? _kDropdownItemHeight,
            padding: widget.padding ?? _kDropdownItemPadding,
            decoration: BoxDecoration(
              border: Border.all(
                color: _isActive ? AppColors.blue300 : AppColors.gray100,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? _kDropdownBorderRadius),
              color: _isActive ? AppColors.blue50 : AppColors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    widget.itemBuilder(widget.value),
                    style: TextStyle(
                      fontSize: widget.textFontSize ?? _kTextFontSize,
                      color: _isActive ? AppColors.blue300 : AppColors.gray300,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_drop_down,
                  size: widget.iconSize ?? _kIconSize,
                  color: _isActive ? AppColors.blue300 : AppColors.gray300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DropdownOverlay<T> extends StatelessWidget {
  final VoidCallback onDismiss;
  final LayerLink layerLink;
  final List<T> items;
  final T selectedValue;
  final String Function(T) itemBuilder;
  final ValueChanged<T> onItemSelected;
  final double width;
  final double height;
  final EdgeInsets padding;
  final double borderRadius;
  final double elevation;
  final Offset offset;
  final double iconSize;
  final double textFontSize;
  final double minWidth;

  const _DropdownOverlay({
    required this.onDismiss,
    required this.layerLink,
    required this.items,
    required this.selectedValue,
    required this.itemBuilder,
    required this.onItemSelected,
    required this.width,
    required this.height,
    required this.padding,
    required this.borderRadius,
    required this.elevation,
    required this.offset,
    required this.iconSize,
    required this.textFontSize,
    required this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: onDismiss,
            child: Container(color: Colors.transparent),
          ),
        ),
        Positioned(
          width: width,
          child: CompositedTransformFollower(
            link: layerLink,
            showWhenUnlinked: false,
            offset: offset,
            child: Material(
              elevation: elevation,
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: items.map((item) => _DropdownItem<T>(
                    item: item,
                    isSelected: item == selectedValue,
                    itemBuilder: itemBuilder,
                    onTap: () => onItemSelected(item),
                    height: height,
                    padding: padding,
                    borderRadius: borderRadius,
                    textFontSize: textFontSize,
                  )).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DropdownItem<T> extends StatelessWidget {
  final T item;
  final bool isSelected;
  final String Function(T) itemBuilder;
  final VoidCallback onTap;
  final double height;
  final EdgeInsets padding;
  final double borderRadius;
  final double textFontSize;

  const _DropdownItem({
    required this.item,
    required this.isSelected,
    required this.itemBuilder,
    required this.onTap,
    required this.height,
    required this.padding,
    required this.borderRadius,
    required this.textFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue50 : Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(
          itemBuilder(item),
          style: TextStyle(
            fontSize: textFontSize,
            color: isSelected ? AppColors.blue300 : AppColors.gray300,
          ),
        ),
      ),
    );
  }
} 