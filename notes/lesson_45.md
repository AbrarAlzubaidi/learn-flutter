# images in flutter

## Displaying Images from Assets

1. **Add Image to Assets Folder**:
   - Place your image in the `assets` folder of your project. For example, `assets/images/my_image.png`.

2. **Update `pubspec.yaml`**:
   - Add the path to the image in the `pubspec.yaml` file under the `assets` section.

```yaml
   flutter:
     assets:
       - assets/images/my_image.png
   ```

3. **Display the Image in Your Widget**:
   - Use the `Image.asset` widget to display the image.

```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         home: Scaffold(
           appBar: AppBar(
             title: Text('Display Image from Assets'),
           ),
           body: Center(
             child: Image.asset('assets/images/my_image.png'),
           ),
         ),
       );
     }
   }
   ```

## Displaying Images from URL

1. **Use the `Image.network` Widget**:
   - You can directly use the `Image.network` widget to display an image from a URL.

```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         home: Scaffold(
           appBar: AppBar(
             title: Text('Display Image from URL'),
           ),
           body: Center(
             child: Image.network('https://example.com/my_image.png'),
           ),
         ),
       );
     }
   }
   ```
