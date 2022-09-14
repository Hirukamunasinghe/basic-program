void main() {
  User userOne = User('Hiruka',17);
  print(userOne.username);
  userOne.login();

  User userTwo = User('James',18);
  print(userTwo.username);
  userTwo.login();
  
  SuperUser userThree = SuperUser('Yoru',20);
  print(userThree.username);
  userThree.login();
  userThree.publish();
}

// CREATING THE CLASS USER
class User{
  late String username;
  late int age;
  
  User(String username, int age){
    this.username = username;
    this.age = age;
  }
  
  void login(){
    print('user logged in');
  }
}

// SUPER CLASS - INHERITENCE 
class SuperUser extends User{
  SuperUser(String username, int age) : super(username,age);
  void publish(){
    print('publish updated');
  }
}