part of orgbookapi.api;

class TopicAttribute {
  
  int id;
  
  String type;
  
  String format;
  
  String value;
  
  int credentialId;
  
  String credentialTypeId;

  TopicAttribute({
    this.id,
    this.type,
    this.format,
    this.value,
    this.credentialId,
    this.credentialTypeId,
  });

  @override
  String toString() {
    return 'TopicAttribute[id=$id, type=$type, format=$format, value=$value, credentialId=$credentialId, credentialTypeId=$credentialTypeId, ]';
  }

  TopicAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    format = json['format'];
    value = json['value'];
    credentialId = json['credential_id'];
    credentialTypeId = json['credential_type_id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (format != null)
      json['format'] = format;
    if (value != null)
      json['value'] = value;
    if (credentialId != null)
      json['credential_id'] = credentialId;
    if (credentialTypeId != null)
      json['credential_type_id'] = credentialTypeId;
    return json;
  }

  static List<TopicAttribute> listFromJson(List<dynamic> json) {
    return json == null ? List<TopicAttribute>() : json.map((value) => TopicAttribute.fromJson(value)).toList();
  }

  static Map<String, TopicAttribute> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TopicAttribute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TopicAttribute.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TopicAttribute-objects as value to a dart map
  static Map<String, List<TopicAttribute>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TopicAttribute>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TopicAttribute.listFromJson(value);
      });
    }
    return map;
  }
}

