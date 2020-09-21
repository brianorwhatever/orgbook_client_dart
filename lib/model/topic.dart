part of orgbookapi.api;

class Topic {
  int id;

  DateTime createTimestamp;

  DateTime updateTimestamp;

  String sourceId;

  String type;

  List<int> relatedTo = const [];

  List<int> relatedFrom = const [];

  Topic({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    this.sourceId,
    this.type,
    this.relatedTo = const [],
    this.relatedFrom = const [],
  });

  @override
  String toString() {
    return 'Topic[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, sourceId=$sourceId, type=$type, relatedTo=$relatedTo, relatedFrom=$relatedFrom, ]';
  }

  Topic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null)
        ? null
        : DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null)
        ? null
        : DateTime.parse(json['update_timestamp']);
    sourceId = json['source_id'];
    type = json['type'];
    relatedTo = (json['related_to'] == null)
        ? null
        : (json['related_to'] as List).cast<int>();
    relatedFrom = (json['related_from'] == null)
        ? null
        : (json['related_from'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null) json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null
          ? null
          : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null
          ? null
          : updateTimestamp.toUtc().toIso8601String();
    if (sourceId != null) json['source_id'] = sourceId;
    if (type != null) json['type'] = type;
    if (relatedTo != null) json['related_to'] = relatedTo;
    if (relatedFrom != null) json['related_from'] = relatedFrom;
    return json;
  }

  static List<Topic> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Topic>()
        : json.map((value) => Topic.fromJson(value)).toList();
  }

  static Map<String, Topic> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Topic>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Topic.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Topic-objects as value to a dart map
  static Map<String, List<Topic>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Topic>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Topic.listFromJson(value);
      });
    }
    return map;
  }
}
