import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/activity1_dropdown_widget.dart';

class Activity2ExpansionWidget extends ConsumerWidget {
  const Activity2ExpansionWidget({
    super.key,
    required this.coachIndex,
    required this.coachName,
  });
  final int coachIndex;
  final String coachName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coachCurrentData = ref
        .watch(stationActivitiesProvider)
        .activity2
        .elementAt(coachIndex);

    return ExpansionTile(
      childrenPadding: EdgeInsets.only(top: 15, left: 10),
      title: Text(coachName),
      shape: RoundedRectangleBorder(),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 15,
            children: [
              // Text(coachCurrentData!.toilet1.toString()),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData,
                dropdownText: 'Rating',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity2(
                      // coachID: '',
                      updatedValue: value ?? 2,
                      index: coachIndex,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
