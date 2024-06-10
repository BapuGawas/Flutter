import 'package:flutter/material.dart';

class Assignment10_7 extends StatelessWidget{
  const Assignment10_7({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2Web",
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Image.network(
                    "https://i.pinimg.com/236x/c6/94/38/c69438c3234049d667a8c7f00c2aad3f.jpg",
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ2sN4MNvK4D0JbzkD0vViNXRMKgf7nb5yQA&usqp=CAU",
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ7hxBcyv7KtB-qh6gfjnCa_FoZoYAc-5tEQ&usqp=CAU",
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.network(
                    "https://i.pinimg.com/736x/be/33/76/be3376b0f835a1766cb7a95003ea4a7d.jpg",
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.network(
                    "https://www.iucn.org/sites/default/files/styles/what_we_do_large/public/images-themes/nbs-coast-2253105.jpg.webp?itok=oZwYWByd",
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}