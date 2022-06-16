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
    rating_score=[],
/// table
    user_name_array=[],
    content_array=[],
    reply_content_array=[],
    review_created_version_array=[],
    review_id_array=[],
    user_image_array=[],
    thumbs_up_count_array=[],
    at_array=[],
    replied_at_array=[];

String latest_comment = 'abc';

fetchdata() async {

  try{
    // print("hiiiiiiiiii");
    http.Response response = await http.get(Uri.parse("https://5000-vipinrohill-pythongitpo-cfu0z1koulw.ws-us47.gitpod.io/"),
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
    latest_comment = real_response['latest_comment'];
    print(latest_comment);
    /// for review table
    user_name_array = real_response['user_name'];
    content_array = real_response['content_array'];
    reply_content_array = real_response['reply_content'];
    // review_created_version_array = real_response['review_created_version'];
    // review_id_array = real_response['review_id'];
    // user_image_array = real_response['user_image'];
    // thumbs_up_count_array = real_response['thumbs_up_count'];
    // at_array = real_response['at'];
    // replied_at_array = real_response['replied_at'];
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