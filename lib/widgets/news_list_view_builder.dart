import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nowora/models/article_model.dart';
import 'package:nowora/services/news_services.dart';
import 'package:nowora/widgets/error_message.dart';
import 'package:nowora/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: ErrorMessage()),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('No articles found')),
          );
        } else {
          final articles = snapshot.data!;
          return NewsListView(articles: articles);
        }
      },
    );
  }
}
