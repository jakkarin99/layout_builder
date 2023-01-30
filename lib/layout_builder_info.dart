import 'package:flutter/material.dart';

class LayoutBuilderInfo extends StatelessWidget {
  const LayoutBuilderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return Center(
          child: Text(
            'The max width is $maxWidth pixels',
            style: const TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}
