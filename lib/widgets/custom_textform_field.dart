import 'package:flutter/material.dart';

class CustomTextformField extends StatefulWidget {
  const CustomTextformField({super.key});

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5), // White shadow color
            blurRadius: 8.0, // Softness of the shadow
            offset: Offset(2, 2), // Position of the shadow
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search astrologers, astomall products',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none, // Remove the border
          ),
        ),
      ),
    );
  }
}
