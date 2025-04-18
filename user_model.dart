import 'package:flutter/material.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final double balance;
  final List<Map<String, dynamic>> cards;
  final List<Map<String, dynamic>> transactions;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.balance,
    required this.cards,
    required this.transactions,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      balance: json['balance'].toDouble(),
      cards: List<Map<String, dynamic>>.from(json['cards'] ?? []),
      transactions: List<Map<String, dynamic>>.from(json['transactions'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'balance': balance,
      'cards': cards,
      'transactions': transactions,
    };
  }
}
