import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/activity_3_score_field_enum.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/station_actv_dropdown_widget.dart';

class Activity3ExpansionWidget extends ConsumerWidget {
  const Activity3ExpansionWidget({
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
        .activity3
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
              // Text(coachCurrentData!.b1.toString()),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData!.b1,
                dropdownText: 'B1',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity3(
                      updatedValue: value ?? 2,
                      index: coachIndex,
                      activity: Activity3ScoreFields.b1,
                    ),
              ),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData!.b2,
                dropdownText: 'B2',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity3(
                      updatedValue: value ?? 2,
                      index: coachIndex,
                      activity: Activity3ScoreFields.b2,
                    ),
              ),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData!.d1,
                dropdownText: 'D1',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity3(
                      updatedValue: value ?? 2,
                      index: coachIndex,
                      activity: Activity3ScoreFields.d1,
                    ),
              ),
              StationActivitiesDropdownWidget(
                coachIndex: coachIndex,
                // toiletNumber: ToiletNumber.t1,
                val: coachCurrentData!.d2,
                dropdownText: 'D2',
                onChanged: (value) => ref
                    .read(stationActivitiesProvider.notifier)
                    .updateActivity3(
                      updatedValue: value ?? 2,
                      index: coachIndex,
                      activity: Activity3ScoreFields.d2,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
