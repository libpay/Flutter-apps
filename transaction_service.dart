import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class TransactionService {
  // الحصول على قائمة المعاملات
  Future<List<Map<String, dynamic>>> getTransactions(String userId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على المعاملات
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return [
      {
        'id': 'tx001',
        'amount': 1000.0,
        'type': 'deposit',
        'date': '2025-04-17 10:30',
        'description': 'إيداع نقدي',
        'status': 'completed',
      },
      {
        'id': 'tx002',
        'amount': 500.0,
        'type': 'transfer',
        'date': '2025-04-16 15:45',
        'description': 'تحويل إلى محمد علي',
        'status': 'completed',
      },
      {
        'id': 'tx003',
        'amount': 200.0,
        'type': 'withdrawal',
        'date': '2025-04-15 09:20',
        'description': 'سحب من الصراف الآلي',
        'status': 'completed',
      },
      {
        'id': 'tx004',
        'amount': 300.0,
        'type': 'payment',
        'date': '2025-04-14 12:00',
        'description': 'دفع فاتورة الكهرباء',
        'status': 'completed',
      },
    ];
  }

  // إنشاء معاملة جديدة
  Future<Map<String, dynamic>> createTransaction(Map<String, dynamic> transactionData) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لإنشاء معاملة جديدة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا ونعيد بيانات المعاملة مع معرف جديد

    await Future.delayed(const Duration(seconds: 2)); // محاكاة تأخير الشبكة

    return {
      'id': 'tx${DateTime.now().millisecondsSinceEpoch}',
      ...transactionData,
      'date': DateTime.now().toString(),
      'status': 'completed',
    };
  }

  // الحصول على تفاصيل معاملة
  Future<Map<String, dynamic>> getTransactionDetails(String transactionId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على تفاصيل المعاملة
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return {
      'id': transactionId,
      'amount': 500.0,
      'type': 'transfer',
      'date': '2025-04-16 15:45',
      'description': 'تحويل إلى محمد علي',
      'status': 'completed',
      'sender': 'أحمد محمد',
      'recipient': 'محمد علي',
      'senderAccount': 'XXXX-XXXX-XXXX-1234',
      'recipientAccount': 'XXXX-XXXX-XXXX-5678',
      'fee': 5.0,
      'notes': 'دفعة شهرية',
    };
  }

  // إلغاء معاملة
  Future<bool> cancelTransaction(String transactionId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لإلغاء المعاملة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // الحصول على إحصائيات المعاملات
  Future<Map<String, dynamic>> getTransactionStats(String userId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على إحصائيات المعاملات
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return {
      'totalTransactions': 42,
      'totalAmount': 12500.0,
      'deposits': 5000.0,
      'withdrawals': 2000.0,
      'transfers': 4500.0,
      'payments': 1000.0,
    };
  }
}
