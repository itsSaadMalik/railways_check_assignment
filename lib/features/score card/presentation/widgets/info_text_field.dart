import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

class InfoTextField extends ConsumerWidget {
  const InfoTextField({
    super.key,
    required this.onChanged,
    required this.hintText,
  });
  final ValueChanged<String> onChanged;

  final String hintText;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hintText),
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: 'Enter $hintText',
              hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: const Color.fromARGB(255, 136, 136, 136),
                fontSize: 12.5,
              ),
              border: UnderlineInputBorder(borderSide: BorderSide(width: .2)),
              focusColor: Colors.black,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 75, 75, 75),
                  width: 2,
                ),
              ),
            ),
            validator: RequiredValidator(errorText: 'fill to proceed').call,
          ),
        ],
      ),
    );
  }
}
