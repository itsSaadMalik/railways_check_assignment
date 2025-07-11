import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationActivitiesDropdownWidget extends ConsumerWidget {
  const StationActivitiesDropdownWidget({
    super.key,
    required this.coachIndex,
    // required this.toiletNumber,
    required this.val,
    required this.onChanged,
    required this.dropdownText,
  });
  List<String> get ratings => ['x', '0', '1', '_'];
  // final ToiletNumber toiletNumber;
  final int coachIndex;
  final String dropdownText;

  final String val;
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            // toiletNumber.name.toUpperCase(),
            dropdownText,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          DropdownButton(
            iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
            elevation: 2,
            underline: Container(),
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(10),

            items: ratings
                .map(
                  (rating) =>
                      DropdownMenuItem(value: rating, child: Text(rating)),
                )
                .toList(),
            value: val,
            onChanged: onChanged,
            // (value) {
            //   onChanged;
            //   ref
            //       .read(stationActivitiesProvider)
            //       .activity1
            //       .elementAt(coachIndex)
            //       ?.toilet1
            //       .log();

            //   // val.log();
            //   // val = value ?? 4;
            //   // setState(() {});
            // },
          ),
        ],
      ),
    );
  }
}
