import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/activity_3_score_field_enum.dart';
import 'package:railway_checks_assignment/core/utils/extensions/field%20names/coach_activity_3_string.dart';

class CoachActivity3Model {
  final String b1;
  final String b2;
  final String d1;
  final String d2;
  final String coachNumber;
  final String coachId;

  CoachActivity3Model({
    required this.b1,
    required this.b2,
    required this.d1,
    required this.d2,
    required this.coachNumber,
    required this.coachId,
  });
  CoachActivity3Model copyWith({
    String? b1,
    String? b2,
    String? d1,
    String? d2,
  }) => CoachActivity3Model(
    b1: b1 ?? this.b1,
    b2: b2 ?? this.b2,
    d1: d1 ?? this.d1,
    d2: d2 ?? this.d2,
    coachNumber: coachNumber,
    coachId: coachId,
  );

  factory CoachActivity3Model.fromMap(Map<String, dynamic> data) =>
      CoachActivity3Model(
        b1: data[Activity3ScoreFields.b1.fieldname] ?? 0,
        b2: data[Activity3ScoreFields.b2.fieldname] ?? 0,
        d1: data[Activity3ScoreFields.d1.fieldname] ?? 0,
        d2: data[Activity3ScoreFields.d2.fieldname] ?? 0,
        coachNumber: data['coachNumber'] ?? 'no-coach-no.',
        coachId: data['coachId'] ?? 'no-coach-id',
      );
  Map<String, dynamic> toMap() => {
    Activity3ScoreFields.b1.fieldname: b1,
    Activity3ScoreFields.b2.fieldname: b2,
    Activity3ScoreFields.d1.fieldname: d1,
    Activity3ScoreFields.d2.fieldname: d2,
    'coachNumber': coachNumber,
    'coachId': coachId,
  };
}
