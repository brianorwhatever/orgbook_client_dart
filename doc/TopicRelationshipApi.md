# orgbookapi.api.TopicRelationshipApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**topicRelationshipList**](TopicRelationshipApi.md#topicRelationshipList) | **GET** /topic_relationship | 
[**topicRelationshipListRelatedFromRelations**](TopicRelationshipApi.md#topicRelationshipListRelatedFromRelations) | **GET** /topic_relationship/{id}/related_from_relations | 
[**topicRelationshipListRelatedToRelations**](TopicRelationshipApi.md#topicRelationshipListRelatedToRelations) | **GET** /topic_relationship/{id}/related_to_relations | 
[**topicRelationshipRead**](TopicRelationshipApi.md#topicRelationshipRead) | **GET** /topic_relationship/{id} | 


# **topicRelationshipList**
> InlineResponse2008 topicRelationshipList()



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicRelationshipApi();

try { 
    var result = api_instance.topicRelationshipList();
    print(result);
} catch (e) {
    print("Exception when calling TopicRelationshipApi->topicRelationshipList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRelationshipListRelatedFromRelations**
> TopicRelationship topicRelationshipListRelatedFromRelations(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicRelationshipApi();
var id = 56; // int | A unique integer value identifying this topic relationship.

try { 
    var result = api_instance.topicRelationshipListRelatedFromRelations(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicRelationshipApi->topicRelationshipListRelatedFromRelations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic relationship. | 

### Return type

[**TopicRelationship**](TopicRelationship.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRelationshipListRelatedToRelations**
> TopicRelationship topicRelationshipListRelatedToRelations(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicRelationshipApi();
var id = 56; // int | A unique integer value identifying this topic relationship.

try { 
    var result = api_instance.topicRelationshipListRelatedToRelations(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicRelationshipApi->topicRelationshipListRelatedToRelations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic relationship. | 

### Return type

[**TopicRelationship**](TopicRelationship.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRelationshipRead**
> TopicRelationship topicRelationshipRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicRelationshipApi();
var id = 56; // int | A unique integer value identifying this topic relationship.

try { 
    var result = api_instance.topicRelationshipRead(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicRelationshipApi->topicRelationshipRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic relationship. | 

### Return type

[**TopicRelationship**](TopicRelationship.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

