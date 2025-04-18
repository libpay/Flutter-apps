import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String amount;
  final String transactionType;
  final String paymentType;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;
  final bool deposit;
  final bool transfer;
  final bool amazon;
  final bool payPal;

  const TransactionItem({
    Key? key,
    required this.amount,
    required this.transactionType,
    required this.paymentType,
    this.onPressed,
    this.margin,
    this.deposit = false,
    this.transfer = false,
    this.amazon = false,
    this.payPal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Ink(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // أيقونة المعاملة
                if (transfer)
                  _buildTransactionIcon('assets/payment/01.png'),
                if (amazon)
                  _buildTransactionIcon('assets/payment/02.png'),
                if (payPal)
                  _buildTransactionIcon('assets/payment/03.png'),
                
                // تفاصيل المعاملة
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      paymentType,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1D5DA2),
                      ),
                    ),
                    Text(
                      transactionType,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF868698),
                      ),
                    ),
                  ],
                ),
                
                // المبلغ
                const Spacer(),
                Text(
                  amount,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: deposit ? const Color(0xFF4CAF50) : const Color(0xFF1D5DA2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionIcon(String assetPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Image.asset(
        assetPath,
        width: 40,
        height: 40,
      ),
    );
  }
}
