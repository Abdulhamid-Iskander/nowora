import 'package:flutter/material.dart';

class NewsListLoading extends StatelessWidget {
  const NewsListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
