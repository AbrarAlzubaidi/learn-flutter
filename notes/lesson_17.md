# flutter project structure
## folders
- `web folder` to create a web project
- `windows folder` to create windows desktop apps
- `.idea folder` holds some configuration for andriod studio (dont delete this folder)
- `andriod folder` holds a complete andriod project, so when you run fluuter project its inject this folder to create an andriod version from your flutter project.
- `build folder` holds the result of your flutter app. (auto generated when you run the app)
- `ios folder` holds a complete ios project, so when you run fluuter project its inject this folder to create an ios version from your flutter project.
- `macos folder` holds a complete macos desktop project, so when you run fluuter project its inject this folder to create an macos version from your flutter project.
- `ios folder` holds a complete linux desktop project, so when you run fluuter project its inject this folder to create an linux version from your flutter project.
- `lib folder` is the important folder that holds your flutter app in it 
- `test folder` is the folder that you can write your tests to test the app.

## files
- `.gitignore` is a file for git tree to ignore what this file have (folders and files) to be pushed to github.
- `.metadata` is a file generated automatically to tracks properties of flutter project. (don touch this file)
- `analysis_options.yaml` is a file configures the analyzer, which statically analyzes Dart code to check for errors, warnings, and lints. (dont touch this file)
- `pubspec.lock` a file holds the packages and dependencies of flutter app, will be generated automatically of your `pubspe.yaml` file to show the dependencies and packages in another way (dont touch this file)
- `pubspec.yaml` a file to manage the dependencies of your flutter project
- `<flutter_app_name>.iml` is a file holdes the xml structure. (dont touch this file)

- if you change anything inside the `pubspec.yaml` file run this command in the terminal `flutter packages get` so flutter get the updates.
