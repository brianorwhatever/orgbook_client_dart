part of orgbookapi.api;

class CredentialNamedTopic {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  String sourceId;
  
  String type;
  
  List<CredentialName> names = const [];
  
  CredentialName localName;
  
  CredentialName remoteName;

  CredentialNamedTopic({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    this.sourceId,
    this.type,
    @required this.names,
    @required this.localName,
    @required this.remoteName,
  });

  @override
  String toString() {
    return 'CredentialNamedTopic[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, sourceId=$sourceId, type=$type, names=$names, localName=$localName, remoteName=$remoteName, ]';
  }

  CredentialNamedTopic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    sourceId = json['source_id'];
    type = json['type'];
    names = (json['names'] == null) ?
      null :
      CredentialName.listFromJson(json['names']);
    localName = (json['local_name'] == null) ?
      null :
      CredentialName.fromJson(json['local_name']);
    remoteName = (json['remote_name'] == null) ?
      null :
      CredentialName.fromJson(json['remote_name']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
    if (sourceId != null)
      json['source_id'] = sourceId;
    if (type != null)
      json['type'] = type;
    if (names != null)
      json['names'] = names;
    if (localName != null)
      json['local_name'] = localName;
    if (remoteName != null)
      json['remote_name'] = remoteName;
    return json;
  }

  static List<CredentialNamedTopic> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialNamedTopic>() : json.map((value) => CredentialNamedTopic.fromJson(value)).toList();
  }

  static Map<String, CredentialNamedTopic> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialNamedTopic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialNamedTopic.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialNamedTopic-objects as value to a dart map
  static Map<String, List<CredentialNamedTopic>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialNamedTopic>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialNamedTopic.listFromJson(value);
      });
    }
    return map;
  }
}

