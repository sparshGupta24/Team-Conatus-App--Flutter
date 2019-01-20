import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ConatusAuth {
  // Singleton instance of the class, means only one object will be used throughout the app

  static final ConatusAuth _authSingleton = new ConatusAuth._internal();

  ConatusAuth._internal();

  static ConatusAuth get instance => _authSingleton;

  Future get({@required url, data = ""}) {
    Map<String, String> options = {"params": data};
    return http.get(url, headers: options).catchError(_handleError);
  }

  Future post({@required url, body}) {
    Map<String,String> headers ={
      "content-type":"application/x-www-form-urlencoded"
    };

    return http.post(url,headers: headers, body: body).catchError(_handleError);
  }
  Future put({@required url, body}) {
    return http.post(url, body: body).catchError(_handleError);
  }

  _handleError(error) {
    print("Error aai hai");
    http.Response response = http.Response(error.toString(), 404);
    return response;
  }

}