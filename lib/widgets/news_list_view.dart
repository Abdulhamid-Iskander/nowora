import 'package:flutter/material.dart';
import 'package:nowora/models/article_model.dart';
import 'package:nowora/widgets/new_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: NewCard(articleModel: articles[index]),
          );
        },
      ),
    );
  }
}
