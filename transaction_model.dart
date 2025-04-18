import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final double amount;
  final String type;
  final String date;
  final String description;
  final String status;
  final String? sender;
  final String? recipient;
  final String? senderAccount;
  final String? recipientAccount;
  final double? fee;
  final String? notes;

  Transaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.date,
    required this.description,
    required this.status,
    this.sender,
    this.recipient,
    this.senderAccount,
    this.recipientAccount,
    this.fee,
    this.notes,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      amount: json['amount'].toDouble(),
      type: json['type'],
      date: json['date'],
      description: json['description'],
      status: json['status'],
      sender: json['sender'],
      recipient: json['recipient'],
      senderAccount: json['senderAccount'],
      recipientAccount: json['recipientAccount'],
      fee: json['fee'] != null ? json['fee'].toDouble() : null,
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'type': type,
      'date': date,
      'description': description,
      'status': status,
      'sender': sender,
      'recipient': recipient,
      'senderAccount': senderAccount,
      'recipientAccount': recipientAccount,
      'fee': fee,
      'notes': notes,
    };
  }
}
