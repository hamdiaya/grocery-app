import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/design_size.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/custom_text_field.dart';

class AdressForm extends StatefulWidget {
  const AdressForm({super.key, required this.nameController, required this.countryController, required this.cityController, required this.phoneNumberController, required this.adressController, required this.formkey});
  final TextEditingController nameController;
  final TextEditingController countryController;
  final TextEditingController cityController;
  final TextEditingController phoneNumberController;
  final TextEditingController adressController;
final GlobalKey<FormState> formkey;

  @override
  State<AdressForm> createState() => _AdressFormState();
}
 bool rememberMe = false;
class _AdressFormState extends State<AdressForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key:widget.formkey ,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name', style: Styles.textStyle17),
              CustomTextField(
                  hint: 'name',
                  controller: widget.nameController,
                  validator: userNameValidator),
            ],
          ),
           const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Country', style: Styles.textStyle17),
                  CustomTextField(
                    hint: 'country',
                    controller: widget.countryController,
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
                  Text('City', style: Styles.textStyle17),
                  CustomTextField(
                    hint: 'city',
                    controller: widget.cityController,
                    validator: userNameValidator,
                    width: MediaQuery.of(context).size.width *
                        160 /
                        DesignSize.width,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Phone Number', style: Styles.textStyle17),
              CustomTextField(
                hint: 'phone number',
                controller: widget.phoneNumberController,
                validator: userNameValidator,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Adress', style: Styles.textStyle17),
              CustomTextField(
                hint: 'address',
                controller: widget.adressController,
                validator: userNameValidator,
              ),
            ],
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'save as primary adress',
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
