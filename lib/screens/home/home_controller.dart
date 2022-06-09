import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/common/models/action_task_model.dart';
import 'package:flutter_application/common/models/action_abnormality_model.dart';
import 'package:flutter_application/common/services/db_service.dart';
import 'package:flutter_application/common/models/action_date_model.dart';
import 'home_model.dart';
import 'home_view.dart';
import 'package:flutter_application/common/models/user_model.dart';
import 'package:flutter_application/common/models/dog_model.dart';

const userName = "Alex";
const dogName = "dog1";
const email = "test@gmail.com";

class HomeImplmentation extends HomeController {
  final DatabaseService _databaseService;

  HomeImplmentation({
    required DatabaseService databaseService,
    HomeModel? model,
  })  : _databaseService = databaseService,
        super(
          model ??
              HomeModel(
                  currentScreen: HomeScreen.overview,
                  selectedActionType: ActionType.task,
                  currentActionId: "",
                  searchString: "",
                  title: "",
                  description: "",
                  users: [userName],
                  dogs: [dogName],
                  emotionalState: 0,
                  begin: Timestamp.now(),
                  end: Timestamp.now()
              ),
        );

  @override
  Future<List<UserModel>> loadUsersFromDB() async {
    await for (List<UserModel> users
        in _databaseService.getAllUsers(emailID: email)) {
      for (var user in users) {
        if (state.users.contains(user.name)) {
          user.selected = true;
        } else {
          user.selected = false;
        }
      }
      return users.toList();
    }
    return List.empty();
  }

  @override
  Future<List<DogModel>> loadDogsFromDB() async {
    await for (List<DogModel> dogs
        in _databaseService.getAllDogs(emailID: email)) {
      for (var dog in dogs) {
        if (state.dogs.contains(dog.name)) {
          dog.selected = true;
        } else {
          dog.selected = false;
        }
      }
      return dogs.toList();
    }
    return List.empty();
  }

  @override
  Future<List<ActionDateModel>> loadActionDatesFromDB() async {
    await for (List<ActionDateModel> actionDates
        in _databaseService.getAllActionDates(emailID: email)) {
      if (state.searchString != "") {
        actionDates = actionDates
            .where((action) => action.title
                .toLowerCase()
                .contains(state.searchString.toLowerCase()))
            .toList();
      }
      return actionDates
          .where((action) =>
              action.users.contains(userName) && action.dogs.contains(dogName))
          .toList();
    }
    return List.empty();
  }

  @override
  Future<List<ActionAbnormalityModel>> loadActionAbnormalitiesFromDB() async {
    await for (List<ActionAbnormalityModel> actionAbnormalities
        in _databaseService.getAllActionAbnormalities(emailID: email)) {
      if (state.searchString != "") {
        actionAbnormalities = actionAbnormalities
            .where((action) => action.title
                .toLowerCase()
                .contains(state.searchString.toLowerCase()))
            .toList();
      }
      return actionAbnormalities
          .where((action) => action.dog == dogName)
          .toList();
    }
    return List.empty();
  }

  @override
  Future<List<ActionTaskModel>> loadActionTasksFromDB() async {
    await for (List<ActionTaskModel> actionTasks
        in _databaseService.getAllActionTasks(emailID: email)) {
      if (state.searchString != "") {
        actionTasks = actionTasks
            .where((action) => action.title
                .toLowerCase()
                .contains(state.searchString.toLowerCase()))
            .toList();
      }
      return actionTasks
          .where((action) =>
              action.users.contains(userName) && action.dogs.contains(dogName))
          .toList();
    }
    return List.empty();
  }

  @override
  void changeSearchString(String searchString) {
    state = state.copyWith(searchString: searchString);
  }

  @override
  void switchHomeScreen(HomeScreen homeScreen) {
    state = state.copyWith(currentScreen: homeScreen);
  }

  @override
  void selectActionType(ActionType actionType) {
    state = state.copyWith(selectedActionType: actionType);
  }

  @override
  void addDog(String dog) {
    List<String> newDogs = [...state.dogs];
    newDogs.add(dog);
    state = state.copyWith(dogs: newDogs);
  }

  @override
  void addUser(String user) {
    List<String> newUsers = [...state.users];
    newUsers.add(user);
    state = state.copyWith(users: newUsers);
  }

  @override
  void changeBegin(Timestamp begin) {
    // TODO: implement changeBegin
  }

  @override
  void changeDescription(String description) {
    state = state.copyWith(description: description);
  }

  @override
  void changeEmotionalState(double emotionalState) {
    state = state.copyWith(emotionalState: emotionalState);
  }

  @override
  void changeEnd(Timestamp end) {
    // TODO: implement changeEnd
  }

  @override
  void changeTitle(String title) {
    state = state.copyWith(title: title);
  }

  @override
  void removeDog(String dog) {
    List<String> newDogs = [...state.dogs];
    newDogs.add(dog);
    state = state.copyWith(dogs: newDogs);
  }

  @override
  void removeUser(String user) {
    List<String> newUsers = [...state.users];
    newUsers.remove(user);
    state = state.copyWith(users: newUsers);
  }

  @override
  Future createAction() async {
    switch (state.selectedActionType) {
      case ActionType.abnormality:
        return await _databaseService.insertActionAbnormaility(
            emailID: email,
            title: state.title,
            description: state.description,
            dog: dogName,
            emotionalState: state.emotionalState.round());
    }
    return null;
  }

  @override
  void resetActionData() {
    state = state.copyWith(
      title: "",
      description: "",
      users: [userName],
      dogs: [dogName],
      emotionalState: 0,
      begin: Timestamp.now(),
      end: Timestamp.now()
    );
  }
}
