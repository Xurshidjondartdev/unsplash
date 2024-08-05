enum ResponseStatus {
  success,
  failure,
  networkError,
}

final class ApiConstants {
  // baseUrl
  static const BASEURL = "api.unsplash.com";

  // version
  // static const version = '/api/v1';

  // apis
  static const apiGetAllImages = '/photos/';

  // headers
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  /// params

  static Map<String, String> paramsEmpty() => const <String, String>{};

  static Map<String, String> paramsGetAllImages({required int page}) => <String, String>{
        "client_id": "RuX2F578ypUZbf5DRWRiJdUGhDwP6vi9eLlnKgUzjwQ",
        "page": page.toString(),
        "per_page": "10",
      };

  /// body

  static Map<String, dynamic> bodyEmpty() => const <String, dynamic>{};
}
