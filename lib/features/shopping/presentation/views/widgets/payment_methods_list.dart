import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/payment_method_card.dart';

class PaymentMethodsList extends StatelessWidget {
  const PaymentMethodsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PaymentMethodCard(
          imgUrl:'assets/paybal.svg' ,
          paymentMethod: 'Paypal',
        ),
         PaymentMethodCard(
          imgUrl:'assets/credit_card.svg' ,
          paymentMethod: 'Credit Card',
        ),
         PaymentMethodCard(
          imgUrl:'assets/apple.svg' ,
          paymentMethod: 'Apple Pay',
        ),
        
      ],
    );
  }
}

