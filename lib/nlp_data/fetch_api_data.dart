import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List good_score=[],
    bad_score=[],
    service_score=[],
    ui_score=[],
    iot_score = [],
    solar_score=[],
    good_array=[],
    bad_array=[],
    neutral_array=[],
    services_array=[],
    ui_array=[],
    iot_array=[],
    solar_array=[],
    rating_score=[];

fetchdata() async {

  try{
    // print("hiiiiiiiiii");
    http.Response response = await http.get(Uri.parse("https://5000-vipinrohill-pythongitpo-u7ljlnkab9f.ws-us47.gitpod.io/"),
        headers: {"Accept" : "application/json",
        "Access-Control_Allow_Origin": "*"});
    var real_response = jsonDecode(response.body);
    print(response.statusCode);
    good_score = real_response['good_score'];
    bad_score = real_response['bad_score'];
    service_score = real_response['services_score'];
    ui_score = real_response['ui_score'];
    iot_score = real_response['iot_score'];
    solar_score = real_response['solar_score'];
    good_array = real_response['good_array'];
    bad_array = real_response['bad_array'];
    neutral_array = real_response['neutral_array'];
    services_array = real_response['services_array'];
    ui_array = real_response['ui_array'];
    iot_array = real_response['iot_array'];
    solar_array = real_response['solar_array'];
    rating_score = real_response['rating_array'];
  }
  catch (e){
    debugPrint(e.toString());
  }
}

/// calculate good bad neutral
// int good = 0, bad = 0, neutral = 0, good_total = 0, bad_total=0, neutral_total=0, total = good_score.length;
// List good_array = [], bad_array = [], neutral_array = [];
// int good_strength = 0, bad_strength = 0;
// void gbd_function(){
//   for(int i=0;i<good_score.length;i++){
//     if(good_score[i]>good_strength){
//       if(rating_score[i]>=3){
//         good=1;bad=0;neutral=0;
//       }
//       else if(rating_score[i]<3){
//         good=0;bad=0;neutral=1;
//       }
//     }
//     else if(bad_score[i] > bad_strength){
//       if(rating_score[i]<3){
//         good=0;bad=1;neutral=0;
//       }
//       else if(rating_score[i]>=3){
//         good=0;bad=0;neutral=1;
//       }
//     }
//     else if(rating_score[i]>=3){
//       good=1;bad=0;neutral=0;
//     }
//     else if(rating_score[i]<3){
//       good=0;bad=1;neutral=0;
//     }
//     else{
//       good=0;bad=0;neutral=0;
//     }
//     good_array.add(good);
//     bad_array.add(bad);
//     neutral_array.add(neutral);
//   }
//   for(int i=0;i<good_score.length;i++){
//     if(good_array[i]==1) good_total = good_total+1;
//   }
//   for(int i=0;i<good_score.length;i++){
//     if(bad_array[i]==1) bad_total = bad_total+1;
//   }
//   for(int i=0;i<good_score.length;i++){
//     if(neutral_array[i]==1) neutral_total = neutral_total+1;
//   }
//   print(good_total);
//   print(bad_total);
//   print(neutral_total);
// }