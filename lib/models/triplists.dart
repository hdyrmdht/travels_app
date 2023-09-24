import 'package:flutter/cupertino.dart';

class TripModelList {
  // ignore: non_constant_identifier_names
  List<String> mountains_image = [
    "images/m1.jpeg",
    "images/m2.jpeg",
    "images/m3.jpeg",
    "images/m4.jpeg",
    "images/m5.jpeg",
  ];
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  List<String> beaches_image = [
    "images/b1.jpeg",
    "images/b2.jpeg",
    "images/b3.jpeg",
    "images/b4.jpeg",
    "images/b5.jpeg",
  ];
  List<String> desertes_image = [
    "images/d1.jpeg",
    "images/d2.jpeg",
    "images/d3.jpeg",
    "images/d4.jpeg",
    "images/d5.jpeg",
  ];
  List<String> lakes_image = [
    "images/l1.jpeg",
    "images/l2.jpeg",
    "images/l3.jpeg",
    "images/l4.jpeg",
    "images/l5.jpeg",
  ];
  List<String> oldbuilding_image = [
    "images/o1.jpeg",
    "images/o2.jpeg",
    "images/o3.jpeg",
    "images/o4.jpeg",
    "images/o5.jpeg",
  ];
  List<String> others_image = [
    "images/ot1.jpeg",
    "images/ot2.jpeg",
    "images/ot3.jpeg",
    "images/ot4.jpeg",
    "images/ot5.jpeg",
  ];
  // ignore: non_constant_identifier_names
  List<String> mountains_image_title = [
    "جبال الألب",
    "جبال الجنوب",
    "جبال مرتفعه",
    "جبال ايفرست",
    "جبال الشمال",
  ];
  List<String> beaches_image_title = [
    " شاطئ الأول",
    " الشاطىء الكبير",
    " شاطىء الصخور",
    " شاطىء الجزيره",
    " شاطىء ميامي",
  ];
  List<String> desertes_image_title = [
    "  الصحراء الكبرى",
    "  الصحراء الغربية",
    "  الصحراء الرملية",
    "  الصحراء الشرقيه",
    "  الصحراء البيضاء",
  ];
  List<String> lakes_image_title = [
    "   البحيرات الصغرى",
    "   البحيرة الكبرى",
    "   بحيره البجع",
    "   بحيرة الزمرد",
    "بحيرة قزوين ",
  ];
   List<String> oldbuilding_image_title = [
    "    معابد رومانيه",
 "    الاثار المصريه",
    "    المدينة الأولى",
    "    المدينةالثانية",
    "    المدينةالقديمة",
   
  ];
    List<String> others_image_title = [
    "     رياضةالتثلج",
    "    الاستمتاع ف المولات",
    "    ركوب الدراجات",
    " مشاهده المظلات",
    "الاستمتاع الهواء الطلق ",

  ];
  List<String>  activities= [
      "زيارة المواقع الأثرية",
      "جولة سياحية على الأقدام",
      "زيارة المراكز التجارية للتبضع",
      "تناول وجبة الغداء",
      "استمتاع المناظر الجملية"
    ];
    List<String>   program=[
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ];
   //List<String> mountains_image_id=[
// "m1",
// "m2",
//  "m3",
//  "m4",
//  "m5",
//   ];
//     List<String> beaches_image_id=[
// "b1",
// "b2",
//  "b3",
//  "b4",
//  "b5",
//   ];
//      List<String> oldbuilding_image_id=[
// "c1",
// "c2",
//  "c3",
//  "c4",
//  "c5",
//   ];
//      List<String> lakes_image_id=[
// "be1",
// "be2",
//  "be3",
//  "be4",
//  "be5",
//   ];
//      List<String> desertes_image_id=[
// "a1",
// "a2",
//  "a3",
//  "a4",
//  "a5",
//   ];
//     List<String> others_image_id=[
// "v1",
// "v2",
//  "v3",
//  "v4",
//  "v5",
//   ];
   
}

enum Season { winter, spring, summer, autumn }

enum TripType { Exploration, Recovery, Activities, Therapy }
