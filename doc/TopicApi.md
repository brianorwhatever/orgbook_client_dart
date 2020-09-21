# orgbookapi.api.TopicApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**topicCredentialListActiveCredentials**](TopicApi.md#topicCredentialListActiveCredentials) | **GET** /topic/{id}/credential/active | 
[**topicCredentialListHistoricalCredentials**](TopicApi.md#topicCredentialListHistoricalCredentials) | **GET** /topic/{id}/credential/historical | 
[**topicIdentRetrieveByTypeFormatted**](TopicApi.md#topicIdentRetrieveByTypeFormatted) | **GET** /topic/ident/{type}/{source_id}/formatted | 
[**topicList**](TopicApi.md#topicList) | **GET** /topic | 
[**topicListCredentialSets**](TopicApi.md#topicListCredentialSets) | **GET** /topic/{id}/credentialset | 
[**topicListCredentials**](TopicApi.md#topicListCredentials) | **GET** /topic/{id}/credential | 
[**topicRead**](TopicApi.md#topicRead) | **GET** /topic/{id} | 
[**topicRetrieveByType**](TopicApi.md#topicRetrieveByType) | **GET** /topic/ident/{type}/{source_id} | 
[**topicRetrieveFormatted**](TopicApi.md#topicRetrieveFormatted) | **GET** /topic/{id}/formatted | 


# **topicCredentialListActiveCredentials**
> List<ExpandedCredential> topicCredentialListActiveCredentials(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicCredentialListActiveCredentials(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicCredentialListActiveCredentials: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**List<ExpandedCredential>**](ExpandedCredential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicCredentialListHistoricalCredentials**
> List<ExpandedCredential> topicCredentialListHistoricalCredentials(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicCredentialListHistoricalCredentials(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicCredentialListHistoricalCredentials: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**List<ExpandedCredential>**](ExpandedCredential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicIdentRetrieveByTypeFormatted**
> CustomTopic topicIdentRetrieveByTypeFormatted(sourceId, type)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var sourceId = sourceId_example; // String | 
var type = type_example; // String | 

try { 
    var result = api_instance.topicIdentRetrieveByTypeFormatted(sourceId, type);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicIdentRetrieveByTypeFormatted: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceId** | **String**|  | 
 **type** | **String**|  | 

### Return type

[**CustomTopic**](CustomTopic.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicList**
> InlineResponse2007 topicList()



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();

try { 
    var result = api_instance.topicList();
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicListCredentialSets**
> List<ExpandedCredentialSet> topicListCredentialSets(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicListCredentialSets(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicListCredentialSets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**List<ExpandedCredentialSet>**](ExpandedCredentialSet.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicListCredentials**
> List<ExpandedCredential> topicListCredentials(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicListCredentials(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicListCredentials: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**List<ExpandedCredential>**](ExpandedCredential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRead**
> Topic topicRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicRead(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**Topic**](Topic.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRetrieveByType**
> Topic topicRetrieveByType(sourceId, type)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var sourceId = sourceId_example; // String | 
var type = type_example; // String | 

try { 
    var result = api_instance.topicRetrieveByType(sourceId, type);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicRetrieveByType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceId** | **String**|  | 
 **type** | **String**|  | 

### Return type

[**Topic**](Topic.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicRetrieveFormatted**
> Topic topicRetrieveFormatted(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = TopicApi();
var id = 56; // int | A unique integer value identifying this topic.

try { 
    var result = api_instance.topicRetrieveFormatted(id);
    print(result);
} catch (e) {
    print("Exception when calling TopicApi->topicRetrieveFormatted: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this topic. | 

### Return type

[**Topic**](Topic.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

