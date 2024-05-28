class TournamentResponse {
  final int status;
  final String message;
  final TournamentData data;

  TournamentResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory TournamentResponse.fromJson(Map<String, dynamic> json) {
    return TournamentResponse(
      status: json['status'],
      message: json['message'],
      data: TournamentData.fromJson(json['data']),
    );
  }
}

class TournamentData {
  final int totalPeopleJoined;
  final List<String> joinedPeople;
  final String id;
  final String tournamentTitle;
  final String tournamentDescription;
  final DateTime date;
  final String venue;
  final int minPeopleCount;
  final int maxPeopleCount;
  final String tournamentImage;
  final bool courtBooked;
  final bool payBeforeJoin;
  final bool restrictBySkillLevel;
  final String playersType;
  final String gameType;
  final String createdBy;
  final String categoryId;
  final String activityType;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  TournamentData({
    required this.totalPeopleJoined,
    required this.joinedPeople,
    required this.id,
    required this.tournamentTitle,
    required this.tournamentDescription,
    required this.date,
    required this.venue,
    required this.minPeopleCount,
    required this.maxPeopleCount,
    required this.tournamentImage,
    required this.courtBooked,
    required this.payBeforeJoin,
    required this.restrictBySkillLevel,
    required this.playersType,
    required this.gameType,
    required this.createdBy,
    required this.categoryId,
    required this.activityType,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory TournamentData.fromJson(Map<String, dynamic> json) {
    return TournamentData(
      totalPeopleJoined: json['totalPeopleJoined'],
      joinedPeople: List<String>.from(json['joinedPeople']),
      id: json['_id'],
      tournamentTitle: json['tournament_title'],
      tournamentDescription: json['tournament_description'],
      date: DateTime.parse(json['date']),
      venue: json['venue'],
      minPeopleCount: json['min_people_count'],
      maxPeopleCount: json['max_people_count'],
      tournamentImage: json['tournament_image'],
      courtBooked: json['court_booked'],
      payBeforeJoin: json['pay_before_join'],
      restrictBySkillLevel: json['restrict_by_skill_level'],
      playersType: json['players_type'],
      gameType: json['game_type'],
      createdBy: json['createdBy'],
      categoryId: json['categoryId'],
      activityType: json['activity_type'],
      isActive: json['isActive'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      v: json['__v'],
    );
  }
}
