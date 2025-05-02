import 'package:flutter/material.dart';
// import 'package:nowora/widgets/news_list_view.dart';
import 'package:nowora/widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  final dynamic categoryModel;

  const CategoryScreen(
      {super.key, required this.categoryModel, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${categoryModel.categoryName}',
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
