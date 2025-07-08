import 'package:railway_checks_assignment/features/score%20card/domain/entity/annexuer_a_2.dart';

class AnnexureA2Model extends AnnexuerA2Entity {
  AnnexureA2Model({
    required super.date,
    required super.trainNumber,
    required super.coachesRatings,
  });

  factory AnnexureA2Model.fromJson(Map<String, dynamic> data) =>
      AnnexureA2Model(
        date: data['date'],
        trainNumber: data['trainNumber'],
        coachesRatings: data['coachesRatings'],
      );
  Map<String, dynamic> toMap() => {
    'date': date,
    'trainNumber': trainNumber,
    'coachesRatings': coachesRatings,
  };
  @override
  bool operator ==(covariant AnnexureA2Model other) =>
      trainNumber == other.trainNumber;

  @override
  int get hashCode => trainNumber.hashCode;
}
