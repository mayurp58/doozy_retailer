import 'dart:convert';
import 'package:http/http.dart' as http;
class APIService
{
  String APIURL = "https://doozy.com/apiretailer/";
  Future<String> apicall(Map request,String endpoint)
  async {
    http.Client().close();
    Map personMap = request;
    APIURL = APIURL + endpoint;
    final response = await http.post(Uri.parse(APIURL), body: personMap);
    if (response.statusCode == 200 || response.statusCode == 400) {
      //print(response.body);
      //print("mp :" + json.decode(response.body));
      var jsondata = json.decode(response.body);
      return jsondata["str"];
    } else {
      http.Client().close();
      throw Exception('Failed to load data!');
    }
  }

  Future<String> apicall_getdata(String endpoint)
  async {
    APIURL = APIURL + endpoint;
    final response = await http.get(Uri.parse(APIURL));
    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsondata = json.decode(response.body);
      return jsondata["str"];
    }
    else
    {
      throw Exception('Failed to load data!');
    }
  }

}