part of orgbookapi.api;

class CustomTopic {
  
  int id;
  
  DateTime createTimestamp;
  
  String sourceId;
  
  String type;
  
  String names;
  
  String addresses;
  
  String attributes;

  CustomTopic({
    this.id,
    this.createTimestamp,
    this.sourceId,
    this.type,
    this.names,
    this.addresses,
    this.attributes,
  });

  @override
  String toString() {
    return 'CustomTopic[id=$id, createTimestamp=$createTimestamp, sourceId=$sourceId, type=$type, names=$names, addresses=$addresses, attributes=$attributes, ]';
  }

  CustomTopic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    sourceId = json['source_id'];
    type = json['type'];
    names = json['names'];
    addresses = json['addresses'];
    attributes = json['attributes'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (sourceId != null)
      json['source_id'] = sourceId;
    if (type != null)
      json['type'] = type;
    if (names != null)
      json['names'] = names;
    if (addresses != null)
      json['addresses'] = addresses;
    if (attributes != null)
      json['attributes'] = attributes;
    return json;
  }

  static List<CustomTopic> listFromJson(List<dynamic> json) {
    return json == null ? List<CustomTopic>() : json.map((value) => CustomTopic.fromJson(value)).toList();
  }

  static Map<String, CustomTopic> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CustomTopic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CustomTopic.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CustomTopic-objects as value to a dart map
  static Map<String, List<CustomTopic>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CustomTopic>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CustomTopic.listFromJson(value);
      });
    }
    return map;
  }
}

