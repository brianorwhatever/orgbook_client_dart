part of orgbookapi.api;

class InlineResponse2003 {
  
  int total;
  
  int pageSize;
  
  int page;
  
  int firstIndex;
  
  int lastIndex;
  
  String next;
  
  String previous;
  
  List<Schema> results = const [];

  InlineResponse2003({
    this.total,
    this.pageSize,
    this.page,
    this.firstIndex,
    this.lastIndex,
    this.next,
    this.previous,
    @required this.results,
  });

  @override
  String toString() {
    return 'InlineResponse2003[total=$total, pageSize=$pageSize, page=$page, firstIndex=$firstIndex, lastIndex=$lastIndex, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    pageSize = json['page_size'];
    page = json['page'];
    firstIndex = json['first_index'];
    lastIndex = json['last_index'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      Schema.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (pageSize != null)
      json['page_size'] = pageSize;
    if (page != null)
      json['page'] = page;
    if (firstIndex != null)
      json['first_index'] = firstIndex;
    if (lastIndex != null)
      json['last_index'] = lastIndex;
      json['next'] = next;
      json['previous'] = previous;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2003>() : json.map((value) => InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineResponse2003>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2003.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2003-objects as value to a dart map
  static Map<String, List<InlineResponse2003>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineResponse2003>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineResponse2003.listFromJson(value);
      });
    }
    return map;
  }
}

