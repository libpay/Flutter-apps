import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/bank_card_model.dart';

class CardService {
  // الحصول على قائمة البطاقات
  Future<List<BankCard>> getCards(String userId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على البطاقات
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return [
      BankCard(
        id: 'card001',
        cardNumber: '4111 1111 1111 1111',
        cardHolderName: 'أحمد محمد',
        expiryDate: '12/25',
        cvv: '123',
        cardType: 'visa',
        isActive: true,
        balance: 3000.0,
      ),
      BankCard(
        id: 'card002',
        cardNumber: '5555 5555 5555 4444',
        cardHolderName: 'أحمد محمد',
        expiryDate: '10/26',
        cvv: '456',
        cardType: 'mastercard',
        isActive: true,
        balance: 2000.0,
      ),
    ];
  }

  // إضافة بطاقة جديدة
  Future<BankCard> addCard(String userId, Map<String, dynamic> cardData) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لإضافة بطاقة جديدة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا ونعيد بيانات البطاقة مع معرف جديد

    await Future.delayed(const Duration(seconds: 2)); // محاكاة تأخير الشبكة

    return BankCard(
      id: 'card${DateTime.now().millisecondsSinceEpoch}',
      cardNumber: cardData['cardNumber'],
      cardHolderName: cardData['cardHolderName'],
      expiryDate: cardData['expiryDate'],
      cvv: cardData['cvv'],
      cardType: cardData['cardType'],
      isActive: true,
      balance: 0.0,
    );
  }

  // الحصول على تفاصيل بطاقة
  Future<BankCard> getCardDetails(String cardId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على تفاصيل البطاقة
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return BankCard(
      id: cardId,
      cardNumber: '4111 1111 1111 1111',
      cardHolderName: 'أحمد محمد',
      expiryDate: '12/25',
      cvv: '123',
      cardType: 'visa',
      isActive: true,
      balance: 3000.0,
    );
  }

  // تحديث بيانات بطاقة
  Future<BankCard> updateCard(String cardId, Map<String, dynamic> cardData) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتحديث بيانات البطاقة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا ونعيد بيانات البطاقة المحدثة

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return BankCard(
      id: cardId,
      cardNumber: cardData['cardNumber'] ?? '4111 1111 1111 1111',
      cardHolderName: cardData['cardHolderName'] ?? 'أحمد محمد',
      expiryDate: cardData['expiryDate'] ?? '12/25',
      cvv: cardData['cvv'] ?? '123',
      cardType: cardData['cardType'] ?? 'visa',
      isActive: cardData['isActive'] ?? true,
      balance: cardData['balance'] ?? 3000.0,
    );
  }

  // تفعيل/تعطيل بطاقة
  Future<BankCard> toggleCardStatus(String cardId, bool isActive) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتفعيل/تعطيل البطاقة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا ونعيد بيانات البطاقة المحدثة

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return BankCard(
      id: cardId,
      cardNumber: '4111 1111 1111 1111',
      cardHolderName: 'أحمد محمد',
      expiryDate: '12/25',
      cvv: '123',
      cardType: 'visa',
      isActive: isActive,
      balance: 3000.0,
    );
  }

  // حذف بطاقة
  Future<bool> deleteCard(String cardId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لحذف البطاقة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // الحصول على قائمة البطاقات الافتراضية
  Future<List<BankCard>> getDefaultCards() async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على البطاقات الافتراضية
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return [
      BankCard(
        id: 'default001',
        cardNumber: '4111 1111 1111 1111',
        cardHolderName: 'بطاقة افتراضية',
        expiryDate: '12/30',
        cvv: '123',
        cardType: 'visa',
        isActive: true,
        balance: 0.0,
      ),
      BankCard(
        id: 'default002',
        cardNumber: '5555 5555 5555 4444',
        cardHolderName: 'بطاقة افتراضية',
        expiryDate: '12/30',
        cvv: '456',
        cardType: 'mastercard',
        isActive: true,
        balance: 0.0,
      ),
      BankCard(
        id: 'default003',
        cardNumber: '3782 822463 10005',
        cardHolderName: 'بطاقة افتراضية',
        expiryDate: '12/30',
        cvv: '789',
        cardType: 'amex',
        isActive: true,
        balance: 0.0,
      ),
    ];
  }
}
