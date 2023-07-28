import 'package:firebase_auth/firebase_auth.dart';


class FireBaseAuth{

  FirebaseAuth auth = FirebaseAuth.instance;


Future<void>registration()async{

await auth.createUserWithEmailAndPassword(email: '', password: '');
}
}