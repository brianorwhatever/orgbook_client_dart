part of orgbookapi.api;

class CredentialType {
  
  int id;
  
  Issuer issuer;
  
  bool hasLogo;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  String description;
  
  String credentialDefId;
  
  DateTime lastIssueDate;
  
  String url;
  
  CredentialTypeSchema schema;

  CredentialType({
    this.id,
    @required this.issuer,
    this.hasLogo,
    this.createTimestamp,
    this.updateTimestamp,
    this.description,
    this.credentialDefId,
    this.lastIssueDate,
    this.url,
    this.schema,
  });

  @override
  String toString() {
    return 'CredentialType[id=$id, issuer=$issuer, hasLogo=$hasLogo, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, description=$description, credentialDefId=$credentialDefId, lastIssueDate=$lastIssueDate, url=$url, schema=$schema, ]';
  }

  CredentialType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    issuer = (json['issuer'] == null) ?
      null :
      Issuer.fromJson(json['issuer']);
    hasLogo = json['has_logo'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    description = json['description'];
    credentialDefId = json['credential_def_id'];
    lastIssueDate = (json['last_issue_date'] == null) ?
      null :
      DateTime.parse(json['last_issue_date']);
    url = json['url'];
    schema = (json['schema'] == null) ?
      null :
      CredentialTypeSchema.fromJson(json['schema']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (issuer != null)
      json['issuer'] = issuer;
    if (hasLogo != null)
      json['has_logo'] = hasLogo;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
      json['description'] = description;
      json['credential_def_id'] = credentialDefId;
      json['last_issue_date'] = lastIssueDate == null ? null : lastIssueDate.toUtc().toIso8601String();
      json['url'] = url;
    if (schema != null)
      json['schema'] = schema;
    return json;
  }

  static List<CredentialType> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialType>() : json.map((value) => CredentialType.fromJson(value)).toList();
  }

  static Map<String, CredentialType> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialType.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialType-objects as value to a dart map
  static Map<String, List<CredentialType>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialType>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialType.listFromJson(value);
      });
    }
    return map;
  }
}

