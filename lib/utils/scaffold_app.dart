import 'package:flutter/material.dart';

class ScaffoldApp extends StatefulWidget {
  final Widget? body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? hasSafeArea;
  final bool? resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const ScaffoldApp({
    Key? key,
    this.body,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.hasSafeArea,
    this.resizeToAvoidBottomInset,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }) : super(key: key);

  @override
  State<ScaffoldApp> createState() => _ScaffoldAppState();
}

class _ScaffoldAppState extends State<ScaffoldApp> {
  @override
  Widget build(context) {
    // print(widget.hasSafeArea);
    final _theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset ?? true,
        backgroundColor:
            widget.backgroundColor ?? _theme.scaffoldBackgroundColor,
        body: (widget.hasSafeArea ?? true)
            ? SafeArea(
                child: widget.body ?? Container(),
              )
            : widget.body ?? Container(),
        bottomNavigationBar: widget.bottomNavigationBar,
      ),
    );
  }
}
