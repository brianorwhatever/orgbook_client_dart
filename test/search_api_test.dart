import 'package:orgbookapi/api.dart';
import 'package:test/test.dart';


/// tests for SearchApi
void main() {
  var instance = SearchApi();

  group('tests for SearchApi', () {
    // Return autocomplete results for a query string
    //
    //Future<InlineResponse2004> searchAutocompleteList({ String ordering, String q, String inactive, String latest, String revoked, String category }) async 
    test('test searchAutocompleteList', () async {
      // TODO
    });

    // Return autocomplete results for a query string
    //
    //Future<CredentialAutocomplete> searchAutocompleteRead(String id) async 
    test('test searchAutocompleteRead', () async {
      // TODO
    });

    // We want facet_counts from the less-restricted queryset
    //
    //Future<InlineResponse2005> searchCredentialFacets({ String ordering }) async 
    test('test searchCredentialFacets', () async {
      // TODO
    });

    // Provide credential search via Solr with both faceted (/facets) and unfaceted results
    //
    //Future<InlineResponse2005> searchCredentialList({ String ordering, String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async 
    test('test searchCredentialList', () async {
      // TODO
    });

    // Provide credential search via Solr with both faceted (/facets) and unfaceted results
    //
    //Future<CredentialSearch> searchCredentialRead(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async 
    test('test searchCredentialRead', () async {
      // TODO
    });

    // We want facet_counts from the less-restricted queryset
    //
    //Future<InlineResponse2006> searchCredentialTopicFacets({ String ordering }) async 
    test('test searchCredentialTopicFacets', () async {
      // TODO
    });

    //Future<InlineResponse2006> searchCredentialTopicList({ String ordering, String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async 
    test('test searchCredentialTopicList', () async {
      // TODO
    });

    //Future<CredentialTopicSearch> searchCredentialTopicRead(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async 
    test('test searchCredentialTopicRead', () async {
      // TODO
    });

  });
}
