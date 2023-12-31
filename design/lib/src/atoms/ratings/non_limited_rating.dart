import 'package:flutter/material.dart';

class NonLimitedIconRating extends StatelessWidget {

  final int rating;
  final String icon;

  const NonLimitedIconRating({
    super.key,
    required this.rating,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _getIcon(1, rating),),
            Expanded(child: _getIcon(2, rating),),
            Expanded(child: _getIcon(3, rating),),
            Expanded(child: _getIcon(4, rating),),
            Expanded(child: _getIcon(5, rating),),
          ],
        ),
      ],
    );
  }

  Widget _getIcon(int milestone, int rating) {
    if (milestone <= rating.floor()) {
      return _getFullyFilledIcon();
    }  else {
      return const SizedBox.shrink();
    }
  }

  Widget _getFullyFilledIcon() {
    return Image.asset(icon,);
  }

}