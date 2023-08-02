import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Vegetable beef stew", false],
      ["Fried potatoes and hamburger", false],
      ["Chicken noodle soup", false],
      ["Ham and bean soup", false],
      ["Irish stew", false],
      ["BLT", false],
      ["Sloppy Gerald", false],
      ["Mac n cheese with hot dogs & brats", false],
      ["Hot dogs/brats and pasta salad", false],
      ["Potato Soup (grilled chz & tomato soup for girls)", false],
      ["Chicken and rice soup", false],
      ["Tomato Soup and grilled cheese", false],
      ["Flatbreads and soup", false],
      ["Soup and Sandwiches", false],
      ["Soup and salad", false],
      ["Turkey", false],
      ["Turkey noodle soup", false],
      ["Chicken wraps (with fries and corn)", false],
      ["Pigs in a blanket, Mac n cheese", false],
      ["Spaghetti & meatballs w/ garlic bread", false],
      ["Chicken Parmesan", false],
      ["Fettuccine alfredo", false],
      ["Penne saute dish w/ dinner rolls", false],
      ["Enchiladas", false],
      ["Tacos with rice", false],
      ["Fajitas w/ taco rice", false],
      ["Taco Salad", false],
      ["Lasagna", false],
      ["Babecued chicken and mashed potatoes", false],
      ["Garlic lemon chicken and roasted potatoes", false],
      ["Little smokies, cheese and crackers", false],
      ["Steamed chicken, rice a roni, veggies", false],
      ["Grilled Chicken, corn on cob, deviled eggs", false],
      ["Chicken nuggies (fries and corn)", false],
      ["Chicken Sandwiches and curly fries", false],
      ["Grilled pork chops", false],
      ["Pork Tacos", false],
      ["Cubanos, chips", false],
      ["Grilled fish filet", false],
      ["Shish kabobs", false],
      ["Shrimp dish", false],
      ["Tortilla soup", false],
      ["Pork chops in gravy", false],
      ["Chicken in gravy, rice, corn", false],
      ["Breakfast for dinner w/bacon", false],
      ["Baked ham", false],
      ["Hamburger gravy ovcer toast/potatoes", false],
      ["Guiness pot pie", false],
      ["Hobo beef stew", false],
      ["Meatloaf", false],
      ["Meatball subs w/corn", false],
      ["Chicken and rice", false],
      ["Cheeseburgers, pasta salad", false],
      ["Bacon burgers, baked beans", false],
      ["Breakfast burritos", false],
      ["Bagel sandwiches", false],
      ["Burrito Bar", false],
      ["Hamburger helpers", false],
      ["Baked sloppy joe", false],
      ["Regular sloppy joe", false],
      ["Chicken casserole w/ dinner rolls", false],
      ["Roast and veggies", false],
      ["Roast only", false],
      ["Chili and cornbread", false],
      ["Butternut squash soup", false],
      ["Pizza-tombstone", false],
      ["Rotisserie chicken", false],
      ["Fried chicken (pizza rolls)", false],
      ["Chicken fried steak", false],
      ["Pulled pork sandwiches, corn", false],
      ["Sesame chicken, rice & sweet potatoes", false],
      ["Orange Chicken, basmati and corn", false],
      ["Beef & Broccoli Stir-Fry", false],
      ["Dumplings", false],
      ["Chicken salad bar (boiled eggs)", false],
      ["Steak nachos", false],
      ["Grilled steak, broccoli and carrots, fingerling potatoes", false],
      ["Honey glazed chicken w/sweet potatoes", false],
      ["Takeout/Restaraunt", false],
      ["Leftover night", false],
      ["Pizza roll night!", false],
      ["<3 Date Night <3", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
