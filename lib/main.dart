import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  final url = Uri.parse('https://text-translator2.p.rapidapi.com/translate');
  Map body = {
    'source_language': 'en',
    'target_language': 'bn',
    'text': 'my name is Dharamveer papa'
  };
  final response = await http.post(url,
      headers: {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': 'ad7624bfbbmsh94d7b7445b361a1p1e4fdbjsn0541872461f9',
        'X-RapidAPI-Host': 'text-translator2.p.rapidapi.com'
      },
      body: body);
  print(json.decode(response.body));
}


// const axios = require("axios");

// const encodedParams = new URLSearchParams();
// encodedParams.append("source_language", "en");
// encodedParams.append("target_language", "id");
// encodedParams.append("text", "What is your name?");

// const options = {
//   method: 'POST',
//   url: 'https://text-translator2.p.rapidapi.com/translate',
//   headers: {
//     'content-type': 'application/x-www-form-urlencoded',
//     'X-RapidAPI-Key': 'ad7624bfbbmsh94d7b7445b361a1p1e4fdbjsn0541872461f9',
//     'X-RapidAPI-Host': 'text-translator2.p.rapidapi.com'
//   },
//   data: encodedParams
// };

// axios.request(options).then(function (response) {
// 	console.log(response.data);
// }).catch(function (error) {
// 	console.error(error);
// });