/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_ch_3_gen_q1_2_dart_class_with_null_safety_base.dart';

// TODO: Export any libraries intended for clients of this package.

/*
Practice Question 2: Dart Class with Null Safety
Task Description:
Create a Dart class named UserProfile with properties name (String), age (nullable int), 
and favoriteColor (String with a default value of ‘blue’). Implement a method 
profileSummary that returns a string summarizing the user’s profile. Ensure 
null safety is appropriately handled.

*/
// এটি একটি Dart ক্লাস শুরু করে। এটি ইউজার প্রোফাইলের data store  
//করতে ব্যবহৃত হয়।
class UserProfile {
  String name;
  int? age;
  String favoriteColor;
  /*
name: এটি string টাইপের ফিল্ড, ইউজারের নাম store করে।
age: এটি nullable integer টাইপের ফিল্ড, ইউজারের বয়স store করে। 
এটি অপশনাল, অর্থাৎ এর মান হতে পারে null।
favoriteColor: এটি string  টাইপের ফিল্ড, ইউজারের প্রিয় রঙ store করে। 
এটির ডিফল্ট ভ্যালু হলো 'blue'।
  */

  UserProfile({required this.name, this.age , this.favoriteColor = 'blue'});
  /*
এটি কন্সট্রাক্টর, যা ক্লাস ইন্সট্যান্স তৈরির সময় সেট করতে হয়।
name ফিল্ডটি অবশ্যই provide করতে হবে, কারণ এটি required type এর।
age এবং favoriteColor ফিল্ডগুলি অপশনাল, অর্থাৎ  value দিলেও হবে না দিলেও
হবে।
  */

  String profileSummary() => 'Name: $name, Age: ${age ?? 'not specified'}, Favorite Color: $favoriteColor' ;
  /*
এটি একটি মেথড, যা ইউজার প্রোফাইলের summary তৈরি করে।
name, age, এবং favoriteColor ফিল্ডগুলির মান ব্যবহার করে একটি 
স্ট্রিং তৈরি করে এবং তাকে রিটার্ন করে।
যদি age ফিল্ড এর মান null হয়, তাহলে 'not specified' লেখা হয়।
  */

  //  String profileSummary() {
  //   String ageInfo = age != null ? 'Age: $age' : 'Age: N/A';
  //   return 'Name: $name, $ageInfo, Favorite Color: $favoriteColor';
  //}

}

/*
String profileSummary() {
    String ageInfo;
    if (age != null) {
      ageInfo = 'Age: $age';
    } else {
      ageInfo = 'Age: N/A';
    }

    return 'Name: $name, $ageInfo, Favorite Color: $favoriteColor';
  }
}

*/