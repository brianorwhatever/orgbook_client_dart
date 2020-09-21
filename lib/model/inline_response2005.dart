part of orgbookapi.api;

class InlineResponse2005 {
  
  int total;
  
  int pageSize;
  
  int page;
  
  int firstIndex;
  
  int lastIndex;
  
  String next;
  
  String previous;
  
  List<CredentialSearch> results = const [];

  InlineResponse2005({
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
    return 'InlineResponse2005[total=$total, pageSize=$pageSize, page=$page, firstIndex=$firstIndex, lastIndex=$lastIndex, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
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
      CredentialSearch.listFromJson(json['results']);
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

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2005>() : json.map((value) => InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineResponse2005>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2005.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2005-objects as value to a dart map
  static Map<String, List<InlineResponse2005>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineResponse2005>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineResponse2005.listFromJson(value);
      });
    }
    return map;
  }
}

