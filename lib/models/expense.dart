import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { food, travel, leisure, work, health, other }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
  Category.health: Icons.health_and_safety,
  Category.other: Icons.more_horiz,
};

class Expense {
  // Constructor for the Expense class
  // It initializes the id, title, amount, and date properties.
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // build id dinamically with uuid

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return '${date.day}/${date.month}/${date.year}';
  }
}
