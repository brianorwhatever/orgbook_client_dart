part of orgbookapi.api;

class TopicRelationship {
  
  int id;
  
  int credential;
  
  int topic;
  
  int relatedTopic;

  TopicRelationship({
    this.id,
    this.credential,
    this.topic,
    this.relatedTopic,
  });

  @override
  String toString() {
    return 'TopicRelationship[id=$id, credential=$credential, topic=$topic, relatedTopic=$relatedTopic, ]';
  }

  TopicRelationship.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    credential = json['credential'];
    topic = json['topic'];
    relatedTopic = json['related_topic'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (credential != null)
      json['credential'] = credential;
    if (topic != null)
      json['topic'] = topic;
    if (relatedTopic != null)
      json['related_topic'] = relatedTopic;
    return json;
  }

  static List<TopicRelationship> listFromJson(List<dynamic> json) {
    return json == null ? List<TopicRelationship>() : json.map((value) => TopicRelationship.fromJson(value)).toList();
  }

  static Map<String, TopicRelationship> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TopicRelationship>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TopicRelationship.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TopicRelationship-objects as value to a dart map
  static Map<String, List<TopicRelationship>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TopicRelationship>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TopicRelationship.listFromJson(value);
      });
    }
    return map;
  }
}

