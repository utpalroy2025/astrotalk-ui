import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Astrologer John",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs-4elDckTI4gaOU85-j4lQKInBjrVn49V9DHWwpE4E9lUG8qSi_7fNo_qsiIakMkHCRo&usqp=CAU",
      "rating": 4.5,
      "details": "Specialist in Vedic Astrology.",
    },
    {
      "name": "Astrologer Jane",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs-4elDckTI4gaOU85-j4lQKInBjrVn49V9DHWwpE4E9lUG8qSi_7fNo_qsiIakMkHCRo&usqp=CAU",
      "rating": 4.8,
      "details": "Expert in Palmistry and Numerology.",
    },
    {
      "name": "Astrologer Alex",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs-4elDckTI4gaOU85-j4lQKInBjrVn49V9DHWwpE4E9lUG8qSi_7fNo_qsiIakMkHCRo&usqp=CAU",
      "rating": 4.2,
      "details": "Famous for Horoscope Readings.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat with Astrologer"),
        actions: [
          Icon(Icons.money),
          SizedBox(width: 10),
          Icon(Icons.messenger),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          // Horizontal Filters Row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.search),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(width: 5),
                      Text('Filter'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Carousel Slider
          SizedBox(
            height: 150,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: items.length, // Dynamically match the number of items
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        items[index]['image'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
              ),
            ),
          ),

          // List of Astrologers
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(item["image"]),
                      radius: 30,
                    ),
                    title: Text(
                      item["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(item["details"]),
                        SizedBox(height: 5),
                        Row(
                          children: List.generate(
                            5,
                                (starIndex) => Icon(
                              starIndex < item["rating"].toInt()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.verified),
                        SizedBox(height: 5),
                        Text(
                          "${item["rating"]}",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
