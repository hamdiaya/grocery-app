import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/design_size.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/custom_text_field.dart';

class PaymentForm extends StatefulWidget {
  const PaymentForm(
      {super.key,
      required this.nameController,
      required this.dateController,
      required this.cardNumberController,
      required this.cvvController,
      required this.formkey});
  final TextEditingController nameController;
  final TextEditingController dateController;

  final TextEditingController cardNumberController;
  final TextEditingController cvvController;
  final GlobalKey<FormState> formkey;

  @override
  State<PaymentForm> createState() => _AdressFormState();
}

bool rememberMe = false;

class _AdressFormState extends State<PaymentForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Owner', style: Styles.textStyle17),
              CustomTextField(
                  hint: 'name',
                  controller: widget.nameController,
                  validator: userNameValidator),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Number', style: Styles.textStyle17),
              CustomTextField(
                hint: 'card number',
                controller: widget.cardNumberController,
                validator: userNameValidator,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('EXP ', style: Styles.textStyle17),
                  CustomTextField(
                    hint: 'month/year',
                    controller: widget.dateController,
                    validator: userNameValidator,
                    width: MediaQuery.of(context).size.width *
                        160 /
                        DesignSize.width,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CVV', style: Styles.textStyle17),
                  CustomTextField(
                    hint: 'cvv',
                    controller: widget.cvvController,
                    validator: userNameValidator,
                    width: MediaQuery.of(context).size.width *
                        160 /
                        DesignSize.width,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'save card info ',
                style: Styles.textStyle13,
              ),
              Switch(
                activeColor: Colors.green,
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
