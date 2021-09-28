import 'package:flutter/material.dart';
import 'package:lampa_test_task/res/app_data.dart';

class CustomAnimateIcon extends StatefulWidget {
  final IconData child;
  final void Function() onTap;
  final Color color;

  CustomAnimateIcon({
    required this.child,
    required this.onTap,
    required this.color,
  });

  @override
  _CustomAnimateIconState createState() => _CustomAnimateIconState();
}

class _CustomAnimateIconState extends State<CustomAnimateIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _sizeAnimation = Tween<double>(begin: 25.0, end: 28.0).animate(_controller);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36.0,
      child: Material(
        color: AppData.colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(360.0),
          onTap: () {
            _controller.forward();
            widget.onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Icon(widget.child, color: widget.color, size: _sizeAnimation.value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
