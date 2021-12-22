import 'package:reflexology/model/organ_db.dart';

final String organTable = 'organ';
final dbInstance = NotesDatabase.instance;

class OrgansFields {
  static final List<String> values = [
    /// Add all fields
    id,  title, comments
  ];

  static final String id = '_id';
  static final String title = 'title';
  static final String comments = 'comment';
}

class Organ {
  final int id;
  final String title;
  final String comment;

  Organ({this.id, this.title, this.comment});


  Organ copy({
    int id,
    String title,
    String comment
  }) =>
      Organ(
        id: id ?? this.id,
        title: title ?? this.title,
        comment: comment ?? this.comment
      );

  static Organ fromJson(Map<String, Object> json) => Organ(
        id: json[OrgansFields.id] as int,
        title: json[OrgansFields.title] as String,
        comment: json[OrgansFields.comments] as String,
      );

  Map<String, Object> toJson() => {
        OrgansFields.id: id,
        OrgansFields.title: title,
        OrgansFields.comments:comment
      };
}