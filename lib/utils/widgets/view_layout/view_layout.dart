import 'package:flutter/material.dart';

class ViewLayout extends StatefulWidget {
  final Widget body;
  final Widget title;

  const ViewLayout({
    super.key,
    required this.body,
    required this.title,
  });

  @override
  State<ViewLayout> createState() => _ViewLayoutState();
}

class _ViewLayoutState extends State<ViewLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
      ),
      body: widget.body,
    );
  }
}
