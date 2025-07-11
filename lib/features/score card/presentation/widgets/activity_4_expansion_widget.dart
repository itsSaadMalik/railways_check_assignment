import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/station_actv_dropdown_widget.dart';

class Activity4ExpansionWidget extends ConsumerWidget {
  const Activity4ExpansionWidget({
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
        .activity4
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
              Text(coachCurrentData!.toString()),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData,
                dropdownText: 'Rating',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity4(
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
