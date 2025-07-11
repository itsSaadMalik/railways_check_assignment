import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/coach_number.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/activity_3_expansion_widget.dart';

class StationActivity3Widget extends ConsumerWidget {
  const StationActivity3Widget({super.key});

  final coaches = CoachNumber.values;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 35),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 15,
        children: [
          Text(
            '3. Vestibule area, Doorway area, area between two toilets and footsteps.',
          ),
          ExpansionTile(
            title: Text('Scorecard'),
            children: [
              ListView.builder(
                itemCount: coaches.length,
                shrinkWrap: true,
                itemBuilder: (context, coachIndex) {
                  final coachName = coaches.elementAt(coachIndex);

                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Activity3ExpansionWidget(
                      coachIndex: coachIndex,
                      coachName: coachName.name,
                    ),
                  );
                },
                physics: ClampingScrollPhysics(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
