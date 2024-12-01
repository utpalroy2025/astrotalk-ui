
import 'package:astrotalk/models/category.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> iconList = [
  {
    'icon': Icons.wallet_giftcard,
    'title': 'Wallet'
  },
  {
    'icon': Icons.account_circle,
    'title': 'Profile'
  },
  {
    'icon': Icons.contact_emergency_outlined,
    'title': 'Emergency'
  },
  {
    'icon': Icons.person,
    'title': 'Person'
  },
];


const availableCategories = [
  Category(
    id: 'c1',
    title: 'E-Pooja',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Reiki Heading',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Spell',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Vip E-Pooja',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'RelationShip',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Evil Eye Removal',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Cord Cutting',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Theta Healing',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Marriage',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Love',
    color: Colors.teal,
  ),
];
