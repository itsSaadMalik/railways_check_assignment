class Penalty5 {
  String penaltyID = 'penalty_5';
  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "Penalty of Rs.1000/-shall be imposed per Occasion for dropping garbage, collected from the coaches during dry sweeping, on the railway track/maintenance line/platform.";

  Penalty5({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty5 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
