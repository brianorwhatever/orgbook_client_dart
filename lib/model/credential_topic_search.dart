part of orgbookapi.api;

class CredentialTopicSearch {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  DateTime effectiveDate;
  
  bool inactive;
  
  bool latest;
  
  bool revoked;
  
  DateTime revokedDate;
  
  String credentialId;
  
  CredentialSet credentialSet;
  
  CredentialType credentialType;
  
  List<CredentialAttribute> attributes = const [];
  
  List<CredentialName> names = const [];
  
  CredentialTopicExt topic;
  
  List<CredentialNamedTopic> relatedTopics = const [];

  CredentialTopicSearch({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    this.effectiveDate,
    this.inactive,
    this.latest,
    this.revoked,
    this.revokedDate,
    this.credentialId,
    @required this.credentialSet,
    @required this.credentialType,
    @required this.attributes,
    @required this.names,
    @required this.topic,
    @required this.relatedTopics,
  });

  @override
  String toString() {
    return 'CredentialTopicSearch[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, effectiveDate=$effectiveDate, inactive=$inactive, latest=$latest, revoked=$revoked, revokedDate=$revokedDate, credentialId=$credentialId, credentialSet=$credentialSet, credentialType=$credentialType, attributes=$attributes, names=$names, topic=$topic, relatedTopics=$relatedTopics, ]';
  }

  CredentialTopicSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
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
    credentialSet = (json['credential_set'] == null) ?
      null :
      CredentialSet.fromJson(json['credential_set']);
    credentialType = (json['credential_type'] == null) ?
      null :
      CredentialType.fromJson(json['credential_type']);
    attributes = (json['attributes'] == null) ?
      null :
      CredentialAttribute.listFromJson(json['attributes']);
    names = (json['names'] == null) ?
      null :
      CredentialName.listFromJson(json['names']);
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
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
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
    if (credentialSet != null)
      json['credential_set'] = credentialSet;
    if (credentialType != null)
      json['credential_type'] = credentialType;
    if (attributes != null)
      json['attributes'] = attributes;
    if (names != null)
      json['names'] = names;
    if (topic != null)
      json['topic'] = topic;
    if (relatedTopics != null)
      json['related_topics'] = relatedTopics;
    return json;
  }

  static List<CredentialTopicSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialTopicSearch>() : json.map((value) => CredentialTopicSearch.fromJson(value)).toList();
  }

  static Map<String, CredentialTopicSearch> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialTopicSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialTopicSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialTopicSearch-objects as value to a dart map
  static Map<String, List<CredentialTopicSearch>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialTopicSearch>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialTopicSearch.listFromJson(value);
      });
    }
    return map;
  }
}

