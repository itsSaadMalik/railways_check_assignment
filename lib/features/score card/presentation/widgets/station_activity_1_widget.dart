import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/coach_number.dart';
import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';
import 'package:railway_checks_assignment/core/utils/extensions/coach_number_string.dart';
import 'package:railway_checks_assignment/core/utils/extensions/log_extension.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/activity_1_expansion_widget.dart';

class StationActivity1Widget extends ConsumerStatefulWidget {
  const StationActivity1Widget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StationActivity1WidgetState();
}

class _StationActivity1WidgetState
    extends ConsumerState<StationActivity1Widget> {
  // class StationActivity1Widget extends ConsumerWidget {
  //   StationActivity1Widget({super.key});
  final coaches = CoachNumber.values;
  List<int> marks = [-1, 0, 1];
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 35),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            '1. Toilet cleaning complete including pan with High Pressure Jet machine, cleaning wiping of wash basin, mirror & shelves, , Spraying of Air Freshener & Mosquito Repellant.',
          ),
          ListView.builder(
            itemCount: coaches.length,
            shrinkWrap: true,
            itemBuilder: (context, coachIndex) {
              final coachName = coaches.elementAt(coachIndex);

              return Activity1ExpansionWidget(
                coachIndex: coachIndex,
                coachName: coachName.name,
              );
            },
            physics: ClampingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
