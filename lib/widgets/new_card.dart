import 'package:flutter/material.dart';
import 'package:nowora/models/article_model.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            articleModel.image ??
                'https://www.charleston-hub.com/wp-content/uploads/2021/01/news-pixabay-bW.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          articleModel.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          articleModel.subTitle ?? '',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
