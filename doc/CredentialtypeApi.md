# orgbookapi.api.CredentialtypeApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**credentialtypeFetchLanguage**](CredentialtypeApi.md#credentialtypeFetchLanguage) | **GET** /credentialtype/{id}/language | 
[**credentialtypeFetchLogo**](CredentialtypeApi.md#credentialtypeFetchLogo) | **GET** /credentialtype/{id}/logo | 
[**credentialtypeList**](CredentialtypeApi.md#credentialtypeList) | **GET** /credentialtype | 
[**credentialtypeRead**](CredentialtypeApi.md#credentialtypeRead) | **GET** /credentialtype/{id} | 


# **credentialtypeFetchLanguage**
> CredentialType credentialtypeFetchLanguage(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialtypeApi();
var id = 56; // int | A unique integer value identifying this credential type.

try { 
    var result = api_instance.credentialtypeFetchLanguage(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialtypeApi->credentialtypeFetchLanguage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential type. | 

### Return type

[**CredentialType**](CredentialType.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialtypeFetchLogo**
> CredentialType credentialtypeFetchLogo(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialtypeApi();
var id = 56; // int | A unique integer value identifying this credential type.

try { 
    var result = api_instance.credentialtypeFetchLogo(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialtypeApi->credentialtypeFetchLogo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential type. | 

### Return type

[**CredentialType**](CredentialType.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialtypeList**
> InlineResponse2001 credentialtypeList()



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialtypeApi();

try { 
    var result = api_instance.credentialtypeList();
    print(result);
} catch (e) {
    print("Exception when calling CredentialtypeApi->credentialtypeList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialtypeRead**
> CredentialType credentialtypeRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialtypeApi();
var id = 56; // int | A unique integer value identifying this credential type.

try { 
    var result = api_instance.credentialtypeRead(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialtypeApi->credentialtypeRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential type. | 

### Return type

[**CredentialType**](CredentialType.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

