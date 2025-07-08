class CoachRatingModel {
  final String coachID;
  final int coachNumber;
  final double coachRating;

  CoachRatingModel({
    required this.coachID,
    required this.coachNumber,
    required this.coachRating,
  });
  @override
  bool operator ==(covariant CoachRatingModel other) =>
      coachID == other.coachID;

  @override
  int get hashCode => coachID.hashCode;
}
