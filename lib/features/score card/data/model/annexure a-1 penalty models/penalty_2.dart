class Penalty2 {
  String penaltyID = 'penalty_2';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "Penalty of Rs. 500/-per machine/gang shall be imposed for not deploying/non-working machine as per resource specification.";

  Penalty2({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty2 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
