import 'package:flutter/material.dart';
import 'package:nowora/models/category_model.dart';
import 'package:nowora/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryScreen(
              categoryModel: categoryModel,
              category: categoryModel.categoryName,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: SizedBox(
          height: 90,
          width: 150,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(categoryModel.categoryImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                categoryModel.categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
