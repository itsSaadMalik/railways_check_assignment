import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';
import 'package:railway_checks_assignment/core/utils/extensions/log_extension.dart';
import 'package:railway_checks_assignment/core/utils/extensions/toilet_number_string.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';

class Activity1DropdownWidget extends ConsumerWidget {
  const Activity1DropdownWidget({
    super.key,
    required this.coachIndex,
    required this.toiletNumber,
    required this.val,
  });
  List<int> get marks => [-1, 0, 1];
  final ToiletNumber toiletNumber;
  final int coachIndex;

  final int val;
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
            toiletNumber.name.toUpperCase(),

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

            items: marks
                .map((e) => DropdownMenuItem(value: e, child: Text('$e')))
                .toList(),
            value: val,
            onChanged: (value) {
              ref
                  .read(stationActivitiesProvider.notifier)
                  .updateActivity1(
                    coachID: '',
                    updatedValue: value ?? 2,
                    index: coachIndex,
                    toiletNumber: toiletNumber,
                  );
              ref
                  .read(stationActivitiesProvider)
                  .activity1
                  .elementAt(coachIndex)
                  ?.toilet1
                  ?.log();

              // val.log();
              // val = value ?? 4;
              // setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
