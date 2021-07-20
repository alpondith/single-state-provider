# single_state_provider

**IDEA : Single State Provider solution comparabele with proxyprovider**
Generally in my projects i always like to follow module based programming. I always try to keep modules independent and isolated from other modules except layout and token which are common for all modules. So i generally  use multiprovider where each module contains a porvider state to keep codes seperate. For this i had to use consumer2<> or consumer3<> while working with a module api calling.  In this cases proxy provider is a solution. However, the way i have to setup proxy provider looks odd to me. So i tried a bit different way which worked for me.  My approach may be wrong or might not be good practices. Just sharing my thoughts. 

**Solution**
Step 1 : Registering Single State Provider
```
runApp(
    ChangeNotifierProvider(
      create: (context) => SingleState(),
      child: MyApp(),
    ),
);
```
Step 2 : Adding modue states into  Single State Provider
```
class SingleState extends ChangeNotifier with AuthState, HomeState, PostState {}
```
Step 3 : Auth Module which is not dependent to others 
```
mixin AuthState implements ChangeNotifier {
  String _token = "top-secret-token ";
  String get token => _token;
}
```
Step 4 : Here both HomeState & PostState depends on AuthState for which i had to implement AuthState to get the properties of AuthState. I can also call AuthState methods from HomeState or PostState which is important. Suppose my access token has expired and i tried to fetch posts. in this case i will get unauthenticated error. so i have make the token null or some actions from here which is much handy. 
```
mixin HomeState implements ChangeNotifier, AuthState {
    // code
}

mixin PostState implements ChangeNotifier, AuthState {
   // code
}
```
Step 5 : Calling only one Consumer State from ui
```
Consumer<SingleState>(
  builder: (context, state, child){
      return Text("${state.token}");
  }
),
```
