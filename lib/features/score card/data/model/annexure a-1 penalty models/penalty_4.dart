class Penalty4 {
  String penaltyID = 'penalty_4';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "Penalty of Rs. 2000/- per occasion if flooding of water inside coach (other than Toilet floor) is reported during cleaning activity.";

  Penalty4({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty4 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
