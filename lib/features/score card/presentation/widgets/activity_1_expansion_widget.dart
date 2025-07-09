import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/coach_number.dart';
import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/activity1_dropdown_widget.dart';

class Activity1ExpansionWidget extends ConsumerWidget {
  const Activity1ExpansionWidget({
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
        .activity1
        .elementAt(coachIndex);

    return ExpansionTile(
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
              Text(coachCurrentData!.toilet1.toString()),

              Activity1DropdownWidget(
                coachIndex: coachIndex,
                toiletNumber: ToiletNumber.t1,
                val: coachCurrentData!.toilet1,
              ),
              Activity1DropdownWidget(
                coachIndex: coachIndex,
                toiletNumber: ToiletNumber.t2,
                val: coachCurrentData!.toilet2,
              ),
              Activity1DropdownWidget(
                coachIndex: coachIndex,
                toiletNumber: ToiletNumber.t3,
                val: coachCurrentData!.toilet3,
              ),

              Activity1DropdownWidget(
                coachIndex: coachIndex,
                toiletNumber: ToiletNumber.t4,
                val: coachCurrentData!.toilet4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
