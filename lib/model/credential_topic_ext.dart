part of orgbookapi.api;

class CredentialTopicExt {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  String sourceId;
  
  String type;
  
  List<CredentialName> names = const [];
  
  CredentialName localName;
  
  CredentialName remoteName;
  
  List<CredentialAddress> addresses = const [];
  
  List<TopicAttribute> attributes = const [];

  CredentialTopicExt({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    this.sourceId,
    this.type,
    @required this.names,
    @required this.localName,
    @required this.remoteName,
    @required this.addresses,
    @required this.attributes,
  });

  @override
  String toString() {
    return 'CredentialTopicExt[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, sourceId=$sourceId, type=$type, names=$names, localName=$localName, remoteName=$remoteName, addresses=$addresses, attributes=$attributes, ]';
  }

  CredentialTopicExt.fromJson(Map<String, dynamic> json) {
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
    addresses = (json['addresses'] == null) ?
      null :
      CredentialAddress.listFromJson(json['addresses']);
    attributes = (json['attributes'] == null) ?
      null :
      TopicAttribute.listFromJson(json['attributes']);
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
    if (addresses != null)
      json['addresses'] = addresses;
    if (attributes != null)
      json['attributes'] = attributes;
    return json;
  }

  static List<CredentialTopicExt> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialTopicExt>() : json.map((value) => CredentialTopicExt.fromJson(value)).toList();
  }

  static Map<String, CredentialTopicExt> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialTopicExt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialTopicExt.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialTopicExt-objects as value to a dart map
  static Map<String, List<CredentialTopicExt>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialTopicExt>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialTopicExt.listFromJson(value);
      });
    }
    return map;
  }
}

