part of orgbookapi.api;

class CredentialExt {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime effectiveDate;
  
  bool inactive;
  
  bool latest;
  
  bool revoked;
  
  DateTime revokedDate;
  
  int credentialId;
  
  CredentialType credentialType;
  
  List<CredentialAddress> addresses = const [];
  
  List<CredentialAttribute> attributes = const [];
  
  List<CredentialName> names = const [];
  
  CredentialName localName;
  
  CredentialName remoteName;
  
  CredentialTopicExt topic;
  
  List<CredentialNamedTopic> relatedTopics = const [];

  CredentialExt({
    this.id,
    this.createTimestamp,
    this.effectiveDate,
    this.inactive,
    this.latest,
    this.revoked,
    this.revokedDate,
    this.credentialId,
    @required this.credentialType,
    @required this.addresses,
    @required this.attributes,
    @required this.names,
    @required this.localName,
    @required this.remoteName,
    @required this.topic,
    @required this.relatedTopics,
  });

  @override
  String toString() {
    return 'CredentialExt[id=$id, createTimestamp=$createTimestamp, effectiveDate=$effectiveDate, inactive=$inactive, latest=$latest, revoked=$revoked, revokedDate=$revokedDate, credentialId=$credentialId, credentialType=$credentialType, addresses=$addresses, attributes=$attributes, names=$names, localName=$localName, remoteName=$remoteName, topic=$topic, relatedTopics=$relatedTopics, ]';
  }

  CredentialExt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    effectiveDate = (json['effective_date'] == null) ?
      null :
      DateTime.parse(json['effective_date']);
    inactive = json['inactive'];
    latest = json['latest'];
    revoked = json['revoked'];
    revokedDate = (json['revoked_date'] == null) ?
      null :
      DateTime.parse(json['revoked_date']);
    credentialId = json['credential_id'];
    credentialType = (json['credential_type'] == null) ?
      null :
      CredentialType.fromJson(json['credential_type']);
    addresses = (json['addresses'] == null) ?
      null :
      CredentialAddress.listFromJson(json['addresses']);
    attributes = (json['attributes'] == null) ?
      null :
      CredentialAttribute.listFromJson(json['attributes']);
    names = (json['names'] == null) ?
      null :
      CredentialName.listFromJson(json['names']);
    localName = (json['local_name'] == null) ?
      null :
      CredentialName.fromJson(json['local_name']);
    remoteName = (json['remote_name'] == null) ?
      null :
      CredentialName.fromJson(json['remote_name']);
    topic = (json['topic'] == null) ?
      null :
      CredentialTopicExt.fromJson(json['topic']);
    relatedTopics = (json['related_topics'] == null) ?
      null :
      CredentialNamedTopic.listFromJson(json['related_topics']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (effectiveDate != null)
      json['effective_date'] = effectiveDate == null ? null : effectiveDate.toUtc().toIso8601String();
    if (inactive != null)
      json['inactive'] = inactive;
    if (latest != null)
      json['latest'] = latest;
    if (revoked != null)
      json['revoked'] = revoked;
    if (revokedDate != null)
      json['revoked_date'] = revokedDate == null ? null : revokedDate.toUtc().toIso8601String();
    if (credentialId != null)
      json['credential_id'] = credentialId;
    if (credentialType != null)
      json['credential_type'] = credentialType;
    if (addresses != null)
      json['addresses'] = addresses;
    if (attributes != null)
      json['attributes'] = attributes;
    if (names != null)
      json['names'] = names;
    if (localName != null)
      json['local_name'] = localName;
    if (remoteName != null)
      json['remote_name'] = remoteName;
    if (topic != null)
      json['topic'] = topic;
    if (relatedTopics != null)
      json['related_topics'] = relatedTopics;
    return json;
  }

  static List<CredentialExt> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialExt>() : json.map((value) => CredentialExt.fromJson(value)).toList();
  }

  static Map<String, CredentialExt> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialExt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialExt.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialExt-objects as value to a dart map
  static Map<String, List<CredentialExt>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialExt>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialExt.listFromJson(value);
      });
    }
    return map;
  }
}

