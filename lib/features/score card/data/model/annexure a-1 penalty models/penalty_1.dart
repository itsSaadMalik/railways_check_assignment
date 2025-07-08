class Penalty1 {
  String penaltyID = 'penalty_1';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "If on any day cleaning activities are not Carried out for reasons other than those attributed to force majeure, then penalty of Rs.1000/- per coach per activity shall be imposed. In such cases no separate penalty for shortage of man power shall be imposed.";

  Penalty1({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty1 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
