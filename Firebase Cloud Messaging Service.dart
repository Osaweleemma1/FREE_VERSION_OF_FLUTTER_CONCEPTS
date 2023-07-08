///....BECAUSE THIS IS MY FIRST OPEN DOCUMENTATION, ALL CODES ARE MADE AVAILABLE FOR FREE


///NOTE: THE METHOD WE ARE USING TO SEND NOTIFICATION IS FIREBASE CLOUD MESSAGING HTTP V1 API
///note2: CREATE MOBILE MAIN.DART AND WEB.DART FILES apart from the real main.dart
///anytime you want to build for mobile, just copy the MOBILE MAIN.DART codes and put in the real main.dart file and then build
///same ideology for when you want to build for web

///BASIC CONCEPTS TO FIRST OF ALL KNOW

///-----------------------------------Code segment 1: Functions and Modular Programming------------------------------------------------------------
void main() {
  ///#################### FUNCTION WITH NO RETURN TYPE ###########################
  //Basic function with void key word (NO RETURN TYPE)
  void greet() {
    print('Hello, world!');
  }

  //by calling the greet() , Hello, world will be printed
  greet();

  ///########################## FUNCTION WITH RETURN TYPE ########################################
  // a and b here are normal parameters
  int addNumbers(int a, int b) {
    //this is the body of the function . it is returning the sum of the parameters, and the parameters are waiting for values or arguments
    //so that, the body has value to work with
    return a + b;
  }

  //NB: when the arguments 3 and 5 are passed to a and be respectively the body of the function addNumbers() goes to work,
  // adds the value received together and then holds the total. It is that total that is now saved in sum variable and then printed
  int sum = addNumbers(3,
      5); //3 and 5 here are arguments being passed to the parameters, a and b respectively
  print('Sum: $sum'); // printing the sum to console


  ///################## OPTIONAL PARAMETER ############################
  //When using Normal parameter, you have to pass the value/argument to the parameters according to how the parameters were declared in the function.
  //optional parameter means, the variable can either be assigned a value or not. if it is not assigned a value, it is then ignored.
  //It being ignored involves using conditional statement in the body of the function
  //optional parameter is initiated using curly braces []
  void printFullName(String firstName, [String? lastName]) {
    //firstName is a parameter and lastName is an optional parameter
    if (lastName != null) {
      //if the optional parameter variable is not null, then work with it along side the normal parameter
      print('Full Name: $firstName $lastName');
    } else {
      print(
          'Full Name: $firstName'); //but if it is null, work only with the normal parameter
    }
  }

  //For this, In passing argument/value to the function parameters, values were passed to both the normal parameter and optional parameter
  printFullName('John', 'Doe');

  //For this, In passing argument/value to the function parameters, value was passed to only the normal parameter
  //there for, the optional parameter will be ignore and the else statement body will run, printing only firstName
  printFullName('Jane');


  ///################## NAMED PARAMETER ############################
  //when using named parameters, you don't need to pass the value/argument to the parameters according to how you declared the parameters in the function
  //all you have to do, is type the variable name and the pass the value to it, e.g name: Emmanuel
  //named parameter is initiated using curly braces {}
  void printDetails({String? name, int? age}) {
    print('Name: $name');
    print('Age: $age');
  }

  printDetails(name: 'Alice', age: 25);

}

///-->>>>>>>>>>>>>>>>>>>>>Code segment 1: Functions and Modular Programming>>>>>>>>>>-----END-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>





///-------------------------Code segment 2: Object-Oriented Programming in DART------------------------------------------

//A class is like a warehouse containing the qualities/description of a thing
// you can create a dynamic class that does a specific task and all you would have to do there after is pass values to it
//so that the values are worked on by the body of the class...very similar to a function
class Person {

  //Variables declared inside the class , so that they can be worked with
  String name;
  int age;

  //This is a constructor used to receive values or arguments from another page to this class or page.
  // or to receive values/arguments from anywhere in your code to the class that has the constructor
  // this very related to real time app development
  //Imagine Person is a page and you need name and age from another page called Man to be transferred to this Person page
  //in that Man page, you will navigate to the Person page like this, Person(Emmanuel, 24)
  Person(this.name, this.age);

  //The function that works with the variables that is declared inside the class
  void introduceYourself() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

//main method
void mainPerson() {
  //this is creating an object of the class Person. the person viable is a special variable and it is the object
  //created so that the contents of the class Person can be accessed like this person.introduceYourself
  Person person = Person('John Doe', 30); //In this case, values are passed to the class using the constructor in the class
  person.introduceYourself(); //accessing a function inside the class, Person using the object of the class
}


///############################ Inheritance and polymorphism #######################################################

/*
Inheritance and polymorphism in data models
Just as Flutter uses core OOP principles to model the UI, you can use them to model your data.
Let's create a data construct to hold the content of a chat message and another that includes an image with the text:
 */

class Message {
  String text;

  Message({@required this.text});
}


class ImageMessage extends Message {
  String imageUrl;

  ImageMessage({@required String text, @required this.imageUrl}) :
        super(text: text);
}
//  there's a lot going on in this example.
// First we create a Message class to contain something like a chat message.
// A message is nothing without its text, so we make sure passing in the text is required,
// and we use a named parameter for extra clarity.
///---
// The ImageMessage class extends Message, which means it inherits the text property.
// Constructors in Dart are not inherited, so we give ImageMessage its own constructor,
// and it needs to accept two values labeled text and imageUrl. S
// since text is technically part of Message, not ImageMessage, we can't use automatic initialization for it,
// and we need to specify its type (String) so Dart doesn\'t accept just any type of value there.
///---
// Following the ImageMessage constructor's parameter list, we add a colon,
// after which Dart will expect an initializer list.
// This is a comma-delimited list of initializers for our objects,
// often used to initialize properties before any constructor body code runs,
// which is required with final properties.
// Here, we use the super keyword to call the constructor of the ImageMessage class's superclass, which is Message.
// The Message constructor will handle assigning the text argument to the text instance variable.

///-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-----END-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>






///--------------------------------- Code Segment 3 - converting functions to boolean true or false -----------------------------------------------

static bool isValidFcmToken(String fcmToken) {
// Add your validation logic here
// For example, check if the token is not null or empty and does not match the specified value
//return here, makes the function to return fcmToken != null and the likes, it is just like using these in ternary operator,
//e.g fcmToken != null && fcmToken.isNotEmpty  ? name = Emmanuel : name: unknown,
// only this time, you just made it more reusable with a function

return fcmToken != null && fcmToken.isNotEmpty &&
fcmToken != "U" &&
fcmToken != '00000RNSS42TB18KkvaiyT:APA91000000000A_jnOn1ZWDR8L1TkkDyxY85vS_4gkifFb000000iP9sE1zuL-5Q8fi8C_9yxcVt1NKmAbmsS6W8WDypO3MiXEn00000';

}

//Usage:
//if all the conditions in the BOOLEAN isValidFcmToken function matches, the the isValidFcmToken(fcmToken) will be seen as TRUE by the algorithm
//as such, fcmTokens.add(fcmToken) in the body of the if statement would run
//other wise, isValidFcmToken(fcmToken) will be seen as FALSE by the algorithm and the else statement would run
String fcmToken = userDoc['fcmToken']; //this stores each user's fcm token in the variable fcmToken
List<String> fcmTokens; //this receives fcmToken for each user


//THE fcmToken variable here is the one currently declared above and its value being passed to the function above with boolean return typ
//So, what the boolean function is working with, is the value of the fcmToken, it checks if it is null, empty and or has certain character or characters
if (isValidFcmToken(fcmToken)) {
fcmTokens.add(fcmToken);
}else{
print('nothing');
}


///-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-----END-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




///##-----------------------------------------ARRAYS AND MAPS -----------------------------------------------


//Certainly! Here's a summary of arrays and maps in Flutter/Dart:

/// 1. Arrays (Lists):
// - Arrays, also known as lists, are ordered collections of items in Dart/Flutter.
// - Lists are denoted using square brackets ([]).
// - Arrays can contain elements of any type, including other lists.
// - Elements in a list are ordered and accessed by their index, starting from 0.
// - Lists can be modified by adding, removing, or updating elements using various methods provided by the List class.
//
// Example:
List<int> numbers = [1, 2, 3, 4, 5];
List<String> names = ['John', 'Jane', 'Alice'];

print(numbers[0]);  // Output: 1
names.add('Bob');   // Add 'Bob' to the names list

///------
/// 2. Maps:
// - Maps are key-value pairs used to store and retrieve data in Dart/Flutter.
// - Maps are denoted using curly braces ({}) or the Map constructor.
// - Each key in the map is unique and associated with a corresponding value.
// - Keys and values can have different types.
// - Maps provide methods to add, remove, or update key-value pairs.

// Example:

Map<String, int> ages = { ///THIS IS String, int because the parameter is String and the value is int
'John': 30,
'Jane': 25,
'Alice': 35,
};

//ages variable carries lots of fields, to select just one field from the numerous fields, you have to use the bracket
//e.g ages['John'] . ages being the warehouse of fields and John being the field we need
print(ages['John']);    // Output: 30
ages['Bob'] = 40;       // Add a new key-value pair

///JSON REPRESENTATION ARE MAPS


//In summary, arrays (lists) are used to store an ordered collection of elements,
// while maps are used to store key-value pairs for efficient data retrieval.
// Both arrays and maps are fundamental data structures in Dart/Flutter
// and provide various methods and operations to manipulate and access their elements.



///>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>....ARRAYS AND MAPS>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
///
///
///


///===================== FIREBASE CLOUD MESSAGING ======================================================

///*******   For FCM notification, the first thing you need to do is IMPLEMENT SENDING OF NOTIFICATION *******
///   ##               [main.dart]                      ##
//------------------------------------------------------------------------------------------------------------------------------------
///                           PUT THIS CODE OUTSIDE OF THE main() FUNCTION
//-----------------------------------------------------------------------------------------------------------------------------------


String accessToken = ''; // Declare and initialize an accessToken with an empty string ''

///Create a class called FirebaseMessagingService to enable you send notification anywhere in your project using static functions
///and also initiate the receiving of notification
///
///------------------THE USE OF CLASSES-------------------------
class FirebaseMessagingService {
///save FirebaseMessaging.instance in a variable so that you don't need to always call FirebaseMessaging.instance
final FirebaseMessaging _fcm = FirebaseMessaging.instance;


///FIRST PART
///FIRST PART IN THE CLASS IS TO HANDLE INCOMING MESSAGES
//initialize Firebasemessaging permission
Future initialize() async {
await _fcm.requestPermission();

// Configure how to handle incoming messages
//FirebaseMessaging.onMessage.listen(myForegroundMessageHandler);
FirebaseMessaging.onMessageOpenedApp.listen(myBackgroundMessageHandler);
}

//configure onMessage and onLaunch functions
void configure(Function onMessage, Function onLaunch, Function onResume) {

//onMessage function parameter declared in the configure function
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
print("FirebaseMessagingService: onMessage $message");
if (onMessage != null) {
onMessage(message);
}
});

//onLaunch function parameter declared in the configure function
FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
print("FirebaseMessagingService: onLaunch $message");
if (onLaunch != null) {
onLaunch(message);
}
});

//To handle incoming background messages
FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler);
}


///SECOND PART
///SECOND PART IS TO SEND NOTIFICATION ANYWHERE IN THE PROJECT USING STATIC KEYWORD
///static keyword makes the code reusable anywhere in the project
///----------------------THE USE OF FUNCTIONS WITH PARAMETER AND HTTP POST REQUEST AND STATIC KEY WORD--------------------------------
//String userId, title and message are all normal parameters .
//so that the function can be used anywhere in the project with different values
///##SENDING FCM NOTIFICATION TO A USER
static Future<void> sendNotificationToUser(String userId, String title, String message) async {

//Authenticate api using accessToken
accessToken = await getAccessToken(); //saving getAccessToken returning data in variable for api authentication purposes

// Using DocumentSnapshot to save a particular user's document fields in a variable called userDoc
//DocumentSnapshot is to get user(s) fields from his or her document
DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(userId).get();

//and then we pick the particular field we need from all the fields gotten from that user's document using userDoc['fcmToken']
//where userDoc is the entire warehouse that contains all the fields and fcmToken is the particular field we need
//as such, we save the field inside a variable so that we can use it as we like
String fcmToken = userDoc['fcmToken'];

//next, we check if the fcmToken of the user is null, we do not want to send notification to a user with null fcmToken value
if (fcmToken != null) {

//after checking  the validity of the fcmToken, we then initiate the http.post request
//first, we access the api using an end point, and end point is like an address of a house
//if you do not know the address of the house, you can not use the  key of the house to enter into the house
await http.post(
//end point
Uri.parse('https://fcm.googleapis.com/v1/projects/upswitchtech/messages:send'),
//authentication is headers
headers: <String, String>{
'Content-Type': 'application/json',
'Authorization': 'Bearer $accessToken', //accessToken here is the returning value of getAccessToken we saved in the variable accessToken
},
//body is the payload to send to the api, it is the actual request we make to the api or server
//in http.post, you encode request
//but in http.get, you decode response
//payload can always be found in documentation of the company you are using their api
//a payload is always a a Json and therefore it is a map, you must encode it for http.post
body: jsonEncode(<String, dynamic>{ ///This is String, dynamic because the parameter is always String and the value could be anything, either a String or an int or a bool
'message': {
'token': fcmToken, //the user's fcmToken
'notification': {
'title': title,
'body': message,
},
'android': {
'notification': {
'click_action': 'FLUTTER_NOTIFICATION_CLICK',  //use FLUTTER_NOTIFICATION_CLICK for click action if you want users to be directed to the app when they click on notification
},
},
'apns': {
'payload': {
'aps': {
'category': 'NEW_MESSAGE_CATEGORY',
},
},
},
},
}),
);
} else {
print('User $userId has no FCM token');
}
}


///##SENDING FCM NOTIFICATION TO ALL USERS
static Future<void> sendNotificationToAllUsers(String title, String message) async {
//For sending fcm notification to all users you need to first of all get all users documents
//to do that, you do not use DocumentSnapshot, DocumentSnapshot is to get a user(s) document fields.
//You use QuerySnapshot
QuerySnapshot usersSnapshot = await FirebaseFirestore.instance.collection('users').get();

//because you will be sending fcm notification to all users, you would need to get each user's fcm token and then save it in a variable that is declared
//as a List, an array. it can be any name, but we will be using fcmTokens
List<String> fcmTokens = [];

//Now, you then use QueryDocumentSnapshot to save each user's document fields in a variable for example called userDoc
//and then you identify the particular field you need that is saved in userDoc and then save it in a variable
//In our case, the field we are interested in is fcmToken field of the user and we will be saving it in a variable
//called fcmToken using userDoc['fcnToken'], userDoc being the warehouse full of user's document fields and the 'fcmToken' being
//the field we are interested in.
//but where are we getting all documents that we would be extracting fields from?
//it will be coming from a the variable we saved all users documents in, called usersSnapshot, using QuerySnapshot
///in keyword here means, the warehouse we are iterating through is usersSnapshot and .docs means,the warehouse contains documents
/// and we are iterating through series of documents
for (QueryDocumentSnapshot userDoc in usersSnapshot.docs) {

String fcmToken = userDoc['fcmToken'];

//here, we check if the fcmToken of a user fulfills the required requirements in isValidFcmToken function
//If, yes, then go ahead to add the user's fcmToken to the group of fcmTokens
if (isValidFcmToken(fcmToken)) {
fcmTokens.add(fcmToken); //this is just a perfect example on how to add an object to an array list
}
}

//here, you have to check if the fcmTokens list variable you are using to hold each user's fcmToken so as to send massive notification is empty.
//if it is not empty then, then you can proceed to send notification to each fcmToken in the fcmTokens list variable.
//but to send notification to each fcmToken in the group of fcmTokens, you have to iterate through the fcmTokens list variable
//and then identify and save each user's fcmToken in another variable called fcmToken inside the for loop function.
//Inside the for loop function where you are now isolating each user's fcmToken from the fcmTokens list variable so that you can send notification
//to each user, initialize the getAccessToken() function to get the accessToken for each user.
if (fcmTokens.isNotEmpty) {

for (String fcmToken in fcmTokens) {
String accessToken = await getAccessToken();

//http.post request. Access the endpoint, Authenticate the api and then send the payload of notification.
await http.post(
Uri.parse('https://fcm.googleapis.com/v1/projects/upswitchtech/messages:send'),
headers: <String, String>{
'Content-Type': 'application/json',
'Authorization': 'Bearer $accessToken',
},
body: jsonEncode(<String, dynamic>{ //encode the body of the http.post
'message': {
'token': fcmToken, //this fcmToken variable is the fcToken in the for loop
'notification': {
'title': title,
'body': message,
},
'android': {
'notification': {
'click_action': 'FLUTTER_NOTIFICATION_CLICK',  //use FLUTTER_NOTIFICATION_CLICK for click action if you want users to be directed to the app when they click on notification
},
},
'apns': {
'payload': {
'aps': {
'category': 'NEW_MESSAGE_CATEGORY',
},
},
},
},
}),
);
}
} else {
print('No users have valid FCM tokens');
}
}

//using a bool function to employ conditionals. it makes your work neat
static bool isValidFcmToken(String fcmToken) {
// Add your validation logic here
// For example, check if the token is not null or empty and does not match the specified value
return fcmToken != null &&
fcmToken.isNotEmpty &&
fcmToken != "U" &&
fcmToken != '00000RNSS42TB18KkvaiyT:APA91bGPbx54ZOZJSNA_jnOn1ZWDR8L1TkkDyxY85vS_4gkifFb4cdlm5Ru5sKmozusmLI8hXuVZg7qr4VYFPErHiP9sE1zuL-5Q8fi8C_9yxcVt1NKmAbmsS6W8WDypO3MiXEn00000';

}


}



///getAccessToken() is used to initialize the getting of a user's accessToken
Future<String> getAccessToken() async {
//you have to first of all download your service account private key from firebase firestore
//Go to project settings and go to service account or something and scroll down and then click on GENERATE PRIVATE LINK.
//when you have done this, you need to write a code to save the credential details in a variable.
//but remember it is a json file, so you need to use .fromJson to save the details in available
final credentials = ServiceAccountCredentials.fromJson({
"type": "service_account",
"project_id": "upswitchtech",
"private_key_id": "9282617821",
"private_key": "-----BEGIN PRIVATE KEY-----\nMayhsgnHJ56261HBnbdanjXvsK\n-----END PRIVATE KEY-----\n",
"client_email": "firebase-adminsdk-ups@gmail.com.iam.gserviceaccount.com",
"client_id": "100000000000",
"auth_uri": "https://accounts.google.com/o/oauth2/auth",
"token_uri": "https://oauth2.googleapis.com/token",
"auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
"client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase@gmail.com.iam.gserviceaccount.com",
"universe_domain": "googleapis.com"
}
);

//here, you need to make a request to the google api end point to get your access token
final httpClient = await clientViaServiceAccount(credentials, ['https://www.googleapis.com/auth/firebase.messaging']);

//here you use your credentials to get your accessToken and then return the value so that the function itself carries the accessToken value
return httpClient.credentials.accessToken.data;
}



///THESE FUNCTIONS WILL BE CALLED AS ARGUMENTS TO PASS VALUE TO THE FirebaseMessaging.configure parameters
///inside the main() method later
void onMessage(RemoteMessage message) {
print("onMessage: $message");
// Handle the message when the app is in the foreground
}

void onLaunch(RemoteMessage message) {
print("onLaunch: $message");
// Handle the message when the app is launched from a terminated state
}

void onResume(RemoteMessage message) {
print("onResume: $message");
// Handle the message when the app is resumed from a paused state
}



///This is what was called inside FirebaseMessaging.onBackgroundMessage function
///and  FirebaseMessaging.onMessageOpenedApp.listen() function
///inside the FirebaseMessagingService class
Future<void> myBackgroundMessageHandler(RemoteMessage message) async {
print("myBackgroundMessageHandler: $message");
// Handle the message when the app is in the background
}



///Grant permission to Mobile device to show notification
bool permissionRequested = false; //create a variable and give it a false value

Future<void> requestPermissionAndHandleStatus(BuildContext context) async {
if (permissionRequested) {
// permission has already been requested, so don't request it again
return;
}

//but when the function is run, the permissionRequested should turn to true
permissionRequested = true;

//here you save FirebaseMessaging.instance in variable that you don't have to type it whenever you need it
//you simply call the variable you saved the FirebaseMessaging.instance in
final FirebaseMessaging messaging = FirebaseMessaging.instance;

//then you create an object of the class FirebaseMessaging and access the requestPermission function in it using NotificationSettings class
final NotificationSettings settings = await messaging.requestPermission(
alert: true,
announcement: true,
badge: true,
carPlay: true,
criticalAlert: true,
provisional: true,
sound: true,
);

//checking base on the object, settings to know what message to display to user
//settings.authorizationStatus is the staus of the permission and
//AuthorizationStatus is what the result of settings.authorizationStatus could be
if (settings.authorizationStatus == AuthorizationStatus.authorized) {
// Handle authorized status


_showSnackBar(context, 'Notification Is On');
} else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
// Handle provisional status
_showSnackBar(context, 'You have granted provisional permission to receive notifications');
} else {
// Handle denied or unknown status
_showSnackBar(context, 'You have denied permission(or unknown permission) to receive notifications');
}
}


///Snackbar reusable function
void _showSnackBar(BuildContext context, String message) {
//ScaffoldMessenger helps display dialog at the bottom or top sides of user's screen
ScaffoldMessenger.of(context).showSnackBar(
//SnackBar widget itself in use
SnackBar(
content: Text(message),
duration: Duration(seconds: 1),
),
);
}


///HANDLING SHOWING NOTIFICATION TO USERS
//Create an object of the class FlutterLocalNotification so that we can access the .show function
//that carries the necessary values we need to display the notification to a user
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

///This handles the incoming  notification IN BACKGROUND
Future<void> myBackgroundMessageHandler2(RemoteMessage message) async { //myBackgroundMessageHandler2 is for flutter local notification
if (message.data.isNotEmpty) {
// Handle data message
final dynamic data = message.data;
// ...
}

//RECEIVE NOTIFICATION IN BACKGROUND FROM HTTP.POST REQUEST
if (message.notification != null) {
// Handle notification message
final dynamic notification = message.notification!.body;
String? from = message.notification!.title;
// ...
await _showNotification(notification, from!);
}

}

///WEB incoming  notification MESSAGE HANDLER
///THIS IS FOR ONLY WEB
Future<void> myBackgroundMessageHandler3 (RemoteMessage message) async {
// print('Handling a background message: ${message.messageId}');
// print('Message data: ${message.data}');
print('Notification title: ${message.notification?.title}');
print('Notification body: ${message.notification?.body}');
}


///THIS HANDLES BOTH ANDROID AND IOS SHOWING OF NOTIFICATION
Future<void> _showNotification(String notificationBody, String from) async {

//FOR ANDROID - Create an object of the class AndroidNotificationDetails
const AndroidNotificationDetails androidPlatformChannelSpecifics =
AndroidNotificationDetails(
'your channel id',
'your channel name',
importance: Importance.max,
priority: Priority.high,
styleInformation: BigTextStyleInformation(''),
);

//declare a variable for all platforms
NotificationDetails? platformChannelSpecifics; // Make the variable nullable

//using Platform class to check for android device
if (Platform.isAndroid) {
//for android, we are saving android details inside the all platform variable so that we can use it for a conditional statement
//to display notification to users
platformChannelSpecifics = NotificationDetails(
android: androidPlatformChannelSpecifics,
);
//using Platform class to check for IOS or MacOS device
} else if (Platform.isIOS || Platform.isMacOS) {

//FOR IOS - Create an object of the class DarwinNotificationDetails
const DarwinNotificationDetails darwinPlatformChannelSpecifics =
DarwinNotificationDetails(
presentAlert: true,
presentBadge: true,
presentSound: true,
sound: 'sound.mp3',
badgeNumber: 1,
attachments: [
DarwinNotificationAttachment('attachment_identifier'),
],
subtitle: 'Notification subtitle',
threadIdentifier: 'thread_identifier',
categoryIdentifier: 'category_identifier',
interruptionLevel: InterruptionLevel.active,
);

//for IOS, we are saving android details inside the all platform variable so that we can use it for a conditional statement
//to display notification to users
platformChannelSpecifics = NotificationDetails(
iOS: darwinPlatformChannelSpecifics,
);
}

//So, if platform is android or ios, then display the notification to users
if (platformChannelSpecifics != null) {

//using the object we earlier created, flutterLocalNotificationsPlugin, to access the method show, to display notification to users
await flutterLocalNotificationsPlugin.show(
0, //this means only the last notification should be displayed base on a particular same context notification. For example notification from registration page
from, // notification title
notificationBody, // notification body
platformChannelSpecifics, //determination of what platform
payload: 'item x', //default payload I guess
);
}
}



//------------------------------------------------------------------------------------------------------------------------------------
///                           PUT THIS CODE INSIDE OF THE main() FUNCTION  - FOR MOBILE
//-----------------------------------------------------------------------------------------------------------------------------------

Future<void> main() async {
//this is to load firebase before our app starts since we make use of firebase in the app
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
//THIS CONNECTS THIS PROJECT TO FIREBASE USING FIREBASE CONFIG IN FIREBASE_OPTIONS.DART, FOR MOBILE AND WEB
options: DefaultFirebaseOptions
    .currentPlatform
);

///
/// 1. HANDLE BACKGROUND MESSAGE
/// 2. HAND;E FOREGROUND MESSAGE
/// 3. INITIALIZE FIREBASEMESSAGINGSERVICE CLASS
/// 4. CREATE AND OBJECT OF THE CLASS FIREBASEMESSAGING CLASS SO THAT WE CAN CONFIGURE INCOMING MESSAGES using onMessage, onLaunch and onResume functions as arguments
///5. Create an object of the class FlutterLocalNotificationsPlugin for the main() method using final
// Handle messages when the app is in the background
FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler2);


// Handle messages when the app is in the foreground
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//THIS CODE IS EXACTLY LIKE THE CODE IN myBackgroundMessageHandler2 function
if (message.notification != null) {
// Handle notification message
final dynamic notification = message.notification!.body;
String? from = message.notification!.title;
// ...
_showNotification(notification, from!);
}
});


//This initiates the FirebaseMessaging class for sending and receiving notification
await FirebaseMessagingService().initialize();

//Create an object of the class FirebaseMessagingService that we created ourselves
FirebaseMessagingService firebaseMessagingService = FirebaseMessagingService();
//and then use the object to access the function, configure we created inside the class
//so that we can pass the onMessage, onLaunch and onResume functions we crated outside main() Method as an argument
//to the configure function parameters inside the FirebaseMessagingService class
firebaseMessagingService.configure(onMessage, onLaunch, onResume);



// Create an object of the class FlutterLocalNotificationsPlugin for the main() method using final
//this is different from the one created outside of the main() method
//this one helps to to initialize the both android and ios initialization settings using the initialize method in FlutterLocalNotifications class
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();


///CREATE Initialization Settings for both android and ios,
/// Save the initialization settings for both platforms in one variable
/// and then initialize the initialization settings for both platforms using flutterLocalNotificationPlugin object to access the initialization method
/// in the FlutterLocalNotificationPlugin class
//Create initialization Settings for Android
const AndroidInitializationSettings initializationSettingsAndroid =
AndroidInitializationSettings('app_icon');

//Create initialization Settings for IOS
final DarwinInitializationSettings initializationSettingsIOS =
DarwinInitializationSettings(
requestAlertPermission: true,
requestBadgePermission: true,
requestSoundPermission: true,
);

// Save the initialization settings for both platforms in one variable
final InitializationSettings initializationSettings = InitializationSettings(
android: initializationSettingsAndroid,
iOS: initializationSettingsIOS,
);

// and then initialize the initialization settings for both platforms using flutterLocalNotificationPlugin object to access the initialization method
// in the FlutterLocalNotificationPlugin class
await flutterLocalNotificationsPlugin.initialize(initializationSettings);

runApp(MyApp()); //runApp is a command for the compiler to execute the root class of the app, in this case, MyApp
}





//------------------------------------------------------------------------------------------------------------------------------------
///                           PUT THIS CODE INSIDE OF THE main() FUNCTION  - FOR WEB
//-----------------------------------------------------------------------------------------------------------------------------------


Future<void> main() async {


WidgetsFlutterBinding.ensureInitialized(); //this is to load firebase before our app starts since we make use of firebase in the app
// await PaystackClient.initialize(publicKey);

await Firebase.initializeApp(
options: DefaultFirebaseOptions
    .currentPlatform //THIS CONNECTS THIS PROJECT TO FIREBASE USING FIREBASE CONFIG IN FIREBASE_OPTIONS.DART
);

// Request permission for web notifications using the FirebaseMessagingWeb package
//create an object of the class FirebaseMessagingWeb and then access the
//requestPermission method in the class
final FirebaseMessagingWeb messagingWeb = FirebaseMessagingWeb();
messagingWeb.requestPermission();



// Handle messages when the app is in the foreground
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
print('A new onMessage event was published!');
print('Message data: ${message.data}');
print('Notification title: ${message.notification?.title}');
print('Notification body: ${message.notification?.body}');
});

// Handle messages when the app is in the background
FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler3);

runApp(MyApp()); //runApp is a command for the compiler to execute the root class of the app, in this case, MyApp
}




//------------------------------------------------------------------------------------------------------------------------------------
///                           GETTING USER'S FCM TOKEN FOR MOBILE
//-----------------------------------------------------------------------------------------------------------------------------------

///IT IS THIS fcmToken that we retrieve in our send notification functions to send
///notification to a user or to all users

getFcmTokenAndUpdateFirebaseMobile() async {
final user = FirebaseAuth.instance.currentUser;

///CREATE AN OBJECT OF THE CLASS FirebaseMessaging
///and then use the object to access the getToken() method to get the user's device FCM TOKEN
///then, save the user's device fcm token in a variable and then save it in that user's firebase document
FirebaseMessaging messaging = FirebaseMessaging.instance;
deviceFcmToken = await messaging.getToken();
//print('FCM token: "$deviceFcmToken END" ');


//Saving the user's device fcm token in his or her firebase document field called fcmToken
FirebaseFirestore.instance
    .collection(Constants.USERS_COLLECTION)
    .doc(user?.uid)
    .update({Constants.FCM_TOKEN: deviceFcmToken});

}

///NOTE: PUT THIS FUNCTION IN STRATEGIC PLACES IN YOUR APP, NOT IN YOUR MAIN() METHOD PLEASE
///YOU CAN OUT IT ANYTIME A PARTICULAR BUTTON USERS ALWAYS CLICK IN PRESSED
///IF PEOPLE FUND WALLETS IN YOUR APP, YOU CAN PUT THE FUNCTION INSIDE THE DEPOSIT BUTTON FUNCTION
///SO, WHEN THEY CLICK ON THE DEPOSIT BUTTON, THEIR DEVICE FCM TOKEN WILL BE GOTTEN AND THEN SAVED TO THE USER'S FIREBASE DOCUMENT


//------------------------------------------------------------------------------------------------------------------------------------
///                           GETTING USER'S FCM TOKEN FOR WEB
//-----------------------------------------------------------------------------------------------------------------------------------

//As at the time of documenting this,s I have not found a way around getting web's device token
//So, to avoid errors in my platform I add to save a default random static fcm token in users using the web app - firebase document
//like this;

getFcmTokenAndUpdateFirebaseWeb() async {
///THE CODE IS PRETTY MUCH SELF EXPLAINED
///Save the static random fcmToken in a variable
///and then pass the variable to the user's firebase document field called fcmToken represented in a Constants class as static
String? deviceFcmToken = "00000RNSS42TB18KkvaiyT:APA91bGPbx54ZOZJSNA_jnOn1ZWDR8L1TkkDyxY85vS_4gkifFb4cdlm5Ru5sKmozusmLI8hXuVZg7qr4VYFPErHiP9sE1zuL-5Q8fi8C_9yxcVt1NKmAbmsS6W8WDypO3MiXEn00000";
//I do not think this does anything really - you can remove this
final user = FirebaseAuth.instance.currentUser;

//I do not think this does anything really - - you can remove this
if (user == null) return;

await  FirebaseFirestore.instance
    .collection(Constants.USERS_COLLECTION)
    .doc(user.uid)
    .update({Constants.FCM_TOKEN: deviceFcmToken});
}




///SIDE NOTE:
///YOU CAN CALL MOBILE AND WEB GETFCMTOKEN METHODS AT ONCE AND THE ALGORITHM WILL WORK BASE ON THE PLATFORM THE USER IS USING
///USING THE foundation package
///LIKE THIS;
if (kIsWeb) {
getFcmTokenAndUpdateFirebaseWeb();
}else{
getFcmTokenAndUpdateFirebaseMobile();

}


//------------------------------------------------------------------------------------------------------------------------------------
///                           SENDING NOTIFICATION TO USERS
//-----------------------------------------------------------------------------------------------------------------------------------

///TO A USER
//Access the sendNotificationToUser function using the FirebaseMessagingService class that was created in main.dart
//remember, we defined the function sendNotificationToUser as a static which is why we can now
//call the code anywhere in our code using the class it was defined in
await FirebaseMessagingService.sendNotificationToUser(
//pass the argument/value for userId
"${collectedUserId2}",
//pass the argument/value for title
"Private Message From Admin",

//pass the argument/value for the body message
"${announcement}"
);


//------------------------------------------------------------------------------------------------------------------------------------
///                           SENDING NOTIFICATION TO ALL USERS
//-----------------------------------------------------------------------------------------------------------------------------------

///TO ALL USERS
//Access the sendNotificationToAllUsers function using the FirebaseMessagingService class that was created in main.dart
//remember, we defined the function sendNotificationToAllUsers as a static which is why we can now
//call the code anywhere in our code using the class it was defined in
await FirebaseMessagingService.sendNotificationToAllUsers(

//pass the argument/value for title
'Announcement',

//pass the argument/value for the body message
'${announcement}',
);





//------------------------------------------------------------------------------------------------------------------------------------
///                           ADDITIONAL TUTORIAL - HTTP.GET
//-----------------------------------------------------------------------------------------------------------------------------------
///FOR HTTP.GET,
///YOU ACCESS THE END POINT AND THEN GET THE RESPONSE AND WORK WITH WHAT THE THE API RESPONSE WITH
//Save the end point in a url
var url = Uri.parse(
"https://upswitchtech.com");

//access the end point with http.get and then save the access response in a variable called response to later work with it
//http.get only carries url as parameter unlike http.post that has url, headers, body and possibly others
//recall, we saved the end point in a variable called url earlier
var response = await http
    .get(url); //THIS IS THE http.get that initiates the api call

//recall, for http.get, we decode and for http.post we encode
//so, save the decoded response in a variable called body
//this is like when you save all the fields in a user's document in a variable
//and when you want to make use of one of the fields, you use the variable you saved all the fields in,
// to access the particular field you need
//e.g userDoc['fcmToken']
var body = json.decode(response.body);

//access the status field in the json response with the body variable and then save the field value in a variable
var status = body['status']; //status here is the field name

//access the response field in the json response with the body variable and then save the field value in a variable
var apiResponse =
body['response']; //response here is the field name

//access the transaction_id field in the json response with the body variable and then save the field value in a variable
var apiTransactionID = body['transaction_id'];

//access the date field in the json response with the body variable and then save the field value in a variable
var apiDate = body['date'];

//access the body field in the json response with the body variable and then save the field value in a variable
var apiDescription = body[
'description']; //description here is the field name

//CHECK IF THE CONNECTION YOU MADE TO THE API END POINT WAS SUCCESSFUL.
//IF YES, PROCEED TO MAKING USE OF THE RESPONSE OF THE API TO WORK IN YOUR PROJECT
if (response.statusCode == 200) {

//IF the static field value stored in status variable is successful, run a certain block of code
if (status == "Successful" ) {

}

//otherwise, do something. maybe display failed message, depending on what has to be done by you
else{

}

}



///PACKAGES:
/*
import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_messaging_web/firebase_messaging_web.dart'; ///FOR WEB
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:permission_handler/permission_handler.dart'; ///FOR WEB

import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:http/http.dart' as http;

import '../firebase_options.dart';
*/