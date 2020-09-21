part of orgbookapi.api;

class Schema {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  String name;
  
  String version;
  
  String originDid;

  Schema({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    @required this.name,
    @required this.version,
    @required this.originDid,
  });

  @override
  String toString() {
    return 'Schema[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, name=$name, version=$version, originDid=$originDid, ]';
  }

  Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    name = json['name'];
    version = json['version'];
    originDid = json['origin_did'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (version != null)
      json['version'] = version;
    if (originDid != null)
      json['origin_did'] = originDid;
    return json;
  }

  static List<Schema> listFromJson(List<dynamic> json) {
    return json == null ? List<Schema>() : json.map((value) => Schema.fromJson(value)).toList();
  }

  static Map<String, Schema> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Schema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Schema.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Schema-objects as value to a dart map
  static Map<String, List<Schema>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Schema>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Schema.listFromJson(value);
      });
    }
    return map;
  }
}

