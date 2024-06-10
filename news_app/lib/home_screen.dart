import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news_app/detailed_news.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {

  List newsList = [];

  void getNews()async{

    var url = Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=2ed598d6ef2146d89b445c7d5bbd80fb");
    var news = await get(url);

    var newsData = jsonDecode(news.body);
    newsList = newsData["articles"];
    setState(() {});

  }
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15
        ),
        child: ListView.separated(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                /*Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return DetailedNews(newsList: newsList, newsIndex: index);
                  },)
                );*/
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 253, 231, 203),
                  border: Border.all(
                    color: Colors.orangeAccent
                  )
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
              
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(newsList[index]["urlToImage"],fit: BoxFit.cover,),
                      ),
                    ),
              
                    const SizedBox(width: 10,),
              
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        
                            Text(
                              newsList[index]['title'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              ),
                            Text(
                              newsList[index]['description'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              ),
                            
                          ],
                        ),
                      ),
                    ),
              
                    const SizedBox(width: 10,),
              
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getNews,
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        child: const Icon(Icons.search)
      ),
    );
  }
}