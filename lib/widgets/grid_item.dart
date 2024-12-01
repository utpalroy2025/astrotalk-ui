import 'package:flutter/material.dart';
import '../models/category.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      splashColor: widget.category.color.withOpacity(0.5),
      // Adds splash effect
      borderRadius: BorderRadius.circular(15),
      // Matches container border radius
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              widget.category.color.withOpacity(0.55),
              widget.category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            widget.category.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
