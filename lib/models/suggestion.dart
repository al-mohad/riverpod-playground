// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Suggestion {
  final String activity;
  final String type;
  Suggestion({
    required this.activity,
    required this.type,
  });

  Suggestion copyWith({
    String? activity,
    String? type,
  }) {
    return Suggestion(
      activity: activity ?? this.activity,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'type': type,
    };
  }

  factory Suggestion.fromMap(Map<String, dynamic> map) {
    return Suggestion(
      activity: map['activity'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Suggestion.fromJson(String source) =>
      Suggestion.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Suggestion(activity: $activity, type: $type)';

  @override
  bool operator ==(covariant Suggestion other) {
    if (identical(this, other)) return true;

    return other.activity == activity && other.type == type;
  }

  @override
  int get hashCode => activity.hashCode ^ type.hashCode;
}
