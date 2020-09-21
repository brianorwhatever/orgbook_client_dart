part of orgbookapi.api;



class FeedbackApi {
  final ApiClient apiClient;

  FeedbackApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future feedbackCreateWithHttpInfo({ String fromName, String fromEmail, String comments }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/feedback".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (fromName != null) {
        hasFields = true;
        mp.fields['from_name'] = parameterToString(fromName);
      }
      if (fromEmail != null) {
        hasFields = true;
        mp.fields['from_email'] = parameterToString(fromEmail);
      }
      if (comments != null) {
        hasFields = true;
        mp.fields['comments'] = parameterToString(comments);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (fromName != null)
        formParams['from_name'] = parameterToString(fromName);
      if (fromEmail != null)
        formParams['from_email'] = parameterToString(fromEmail);
      if (comments != null)
        formParams['comments'] = parameterToString(comments);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String fromName :
  ///     Sender name
  ///String fromEmail :
  ///     Sender email address
  ///String comments :
  ///     Comments
  /// 
  Future feedbackCreate({ String fromName, String fromEmail, String comments }) async {
    Response response = await feedbackCreateWithHttpInfo( fromName: fromName, fromEmail: fromEmail, comments: comments );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
