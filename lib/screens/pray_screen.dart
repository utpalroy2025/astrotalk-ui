import 'package:flutter/material.dart';
import 'package:astrotalk/data/dummy_data.dart';
import 'package:astrotalk/widgets/grid_item.dart';

class PrayScreen extends StatefulWidget {
  const PrayScreen({super.key});

  @override
  State<PrayScreen> createState() => _PrayScreenState();
}

class _PrayScreenState extends State<PrayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text("AstroRemedy"),
        actions: [
          IconButton(
            icon: const Icon(Icons.timelapse),
            onPressed: () {}, // Add functionality if required
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}, // Add functionality if required
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Featured Image
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2bd66c98000543.5ed2390dd4b6f.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 14),
            // Grid View
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true, // Prevent GridView from taking infinite space
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: availableCategories.length,
                itemBuilder: (ctx, index) {
                  final category = availableCategories[index];
                 // for(final category in availableCategories)
                  return GridItem(category: category);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
