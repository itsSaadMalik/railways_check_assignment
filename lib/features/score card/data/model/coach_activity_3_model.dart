import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/activity_3.dart';
import 'package:railway_checks_assignment/core/utils/extensions/field%20names/coach_activity_3_string.dart';

class CoachActivity3Model {
  final int b1;
  final int b2;
  final int d1;
  final int d2;
  final int coachNumber;
  final String coachId;

  CoachActivity3Model({
    required this.b1,
    required this.b2,
    required this.d1,
    required this.d2,
    required this.coachNumber,
    required this.coachId,
  });

  factory CoachActivity3Model.fromMap(Map<String, dynamic> data) =>
      CoachActivity3Model(
        b1: data[Activity3.b1.fieldname] ?? 0,
        b2: data[Activity3.b2.fieldname] ?? 0,
        d1: data[Activity3.d1.fieldname] ?? 0,
        d2: data[Activity3.d2.fieldname] ?? 0,
        coachNumber: data['coachNumber'] ?? 'no-coach-no.',
        coachId: data['coachId'] ?? 'no-coach-id',
      );
  Map<String, dynamic> toMap() => {
    Activity3.b1.fieldname: b1,
    Activity3.b2.fieldname: b2,
    Activity3.d1.fieldname: d1,
    Activity3.d2.fieldname: d2,
    'coachNumber': coachNumber,
    'coachId': coachId,
  };
}
