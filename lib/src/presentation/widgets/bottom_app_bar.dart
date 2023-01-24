import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBarItem {
  CustomBottomAppBarItem({
    required this.icon,
    this.activeIcon,
    this.text,
    this.badge = 0,
  });

  final IconData icon;
  final IconData? activeIcon;
  final String? text;
  final int badge;
}

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({
    Key? key,
    required this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    required this.unselectedItemColor,
    required this.selectedItemColor,
    this.notchedShape,
    required this.onTap,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.centerLabelStyle,
  }) : super(key: key) {
    assert(items.length == 2 || items.length == 4);
  }

  final List<CustomBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color unselectedItemColor;
  final Color selectedItemColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTap;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final TextStyle? centerLabelStyle;

  @override
  State<StatefulWidget> createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTap(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      color: widget.backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            const SizedBox(height: 2),
            Text(
              widget.centerItemText ?? '',
              style: widget.centerLabelStyle ??
                  TextStyle(
                    color: widget.unselectedItemColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required CustomBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    final selected = _selectedIndex == index;
    final color =
        selected ? widget.selectedItemColor : widget.unselectedItemColor;
    final icon =
        selected && item.activeIcon != null ? item.activeIcon : item.icon;
    final style = selected
        ? (widget.selectedLabelStyle ?? const TextStyle())
        : (widget.unselectedLabelStyle ?? const TextStyle());

    final iconWidget = Icon(icon, color: color, size: widget.iconSize);

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                item.badge <= 0
                    ? iconWidget
                    : Badge(
                        position: BadgePosition.topEnd(end: -6),
                        badgeContent: Text(
                          '${item.badge}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        child: iconWidget,
                      ),
                if (item.text != null) ...{
                  const SizedBox(height: 2),
                  Text(
                    item.text!,
                    style: style.copyWith(color: color),
                  ),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
