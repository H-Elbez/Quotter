# Flutter Create

![Flutter logo](img/Flutter.png)

## Quotter ( Quote + Flutter )
Flutter app that displays random motivational quotes with a nice design and the
picture ( if possible otherwise show a local image ) of the person who said it, with the possibility
to copy the quote to share it with all your friends. 

|   |   |   |   |   |
|---|---|---|---|---|
| ![S1](img/S1.jpg) | ![S1](img/S2.jpg) | ![S1](img/S3.jpg) | ![S1](img/S5.jpg) | ![S1](img/S6.jpg) |
| ![S1](img/S7.jpg) | ![S1](img/S8.jpg) | ![S1](img/S9.jpg) | ![S1](img/S10.jpg) | ![S1](img/S11.jpg) |
|   |   |   |   |   |


## Technical Part
The app is using two Api :

- Quotes Api ( [Forismatic](http://forismatic.com/en/) )
- Picture Api ( [MediaWiki](https://en.wikipedia.org/w/api.php) )

the used libraries in this app are :
- [Http](https://pub.dev/packages/http) 
- [Clipboard_manager](https://pub.dev/packages/clipboard_manager)
- [Toast](https://pub.dev/packages/toast)
- [Flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
- [Screenshot](https://pub.dev/packages/screenshot)
- [Share](https://pub.dev/packages/share)

[Playstore Link](https://play.google.com/store/apps/details?id=com.hammouda.Quotter).

## Note
- The app is rarely mistaking some names due to similarity or showing
other related picture to that person, the image is linked directly to
WikiMedia Api performance.
- All tests were conducted on Android only.

The app is developed by [Hammouda Elbez](https://www.linkedin.com/in/elbez-hammouda/)

Elbez.hammouda@gmail.com

# License
This repository is licensed under the [GNU GPL v3.0](LICENSE)
