import 'package:astrotalk/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';  // Ensure this is where iconList is defined

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Astrotalk"),
        actions: [
          // Wallet Icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wallet_giftcard),
          ),
          // Profile Icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle),
          ),
          // Contact Emergency Icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.contact_emergency_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextformField(), // Custom text form field
            SizedBox(height: 20), // Add spacing between the text field and list

            // ListView builder for icons
            SizedBox(
              height: 100, // Add a height to control the size of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: iconList.length, // Ensure iconList is defined
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          iconList[index]['icon'], // Access icon from list
                          size: 40,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          iconList[index]['title'], // Access title from list
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            SizedBox(height: 20), // Add spacing between the list and the image

            // Image at the bottom of the list
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              width: double.infinity, // Flexible width for responsiveness
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2bd66c98000543.5ed2390dd4b6f.jpg',
                  fit: BoxFit.cover, // Ensure the image fits within the container
                ),
              ),
            ),
            SizedBox(height: 14,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Live Astrologers', style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Text('View All', style: TextStyle(
                    color: Colors.grey
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
