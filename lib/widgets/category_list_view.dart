import 'package:flutter/material.dart';
import 'package:nowora/models/category_model.dart';
import 'package:nowora/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      categoryImage: 'assets/images/sports.jpg',
      categoryName: 'sports',
    ),
    CategoryModel(
      categoryImage: 'assets/images/technology.jpg',
      categoryName: 'technology',
    ),
    CategoryModel(
      categoryImage: 'assets/images/health.jpg',
      categoryName: 'health',
    ),
    CategoryModel(
      categoryImage: 'assets/images/science.jpg',
      categoryName: 'science',
    ),
    CategoryModel(
      categoryImage: 'assets/images/business.jpg',
      categoryName: 'business',
    ),
    CategoryModel(
      categoryImage: 'assets/images/entertainment.jpg',
      categoryName: 'entertainment',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categoryModel: categoryList[index],
            );
          }),
    );
  }
}
