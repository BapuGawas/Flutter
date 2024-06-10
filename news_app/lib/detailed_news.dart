import 'package:flutter/material.dart';

class DetailedNews extends StatefulWidget {
  final List newsList;
  final newsIndex;

  const DetailedNews({super.key,required this.newsList, required this.newsIndex});

  @override
  State<DetailedNews> createState() => _DetailedNewsState();
}

class _DetailedNewsState extends State<DetailedNews> {
  get newsList => newsList;
  get newsIndex => newsIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Letest News",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            newsList[newsIndex]['title'],
            style: const TextStyle(
              fontWeight: FontWeight.w700
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
        ],
      ),
    );
  }
}