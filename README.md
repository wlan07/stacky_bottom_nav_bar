




# Stacky_bottom_nav_bar
A fancy animated bottom navigation bar.

## Preview




| Default Light Mode | Default Dark Mode |
| --- | ----------- |
| <img src="https://user-images.githubusercontent.com/72628341/160502741-1bf0ceb0-b7a1-487c-b0a8-b7d896016fb1.gif"  /> |  <img src="https://user-images.githubusercontent.com/72628341/160502688-4ee84741-ad4e-49c2-8336-bec742aba038.gif"  />  |



> :warning: **IMPORTANT**: when adding this widget don’t force it with a specific size like wrapping it with sizedbox or whatever . you can use it in stack widget and put it on the top and consider getting the default height of this nav bar with `StackyBottomNavBar.defaultHeigh` as a padding to the widget below .


## **Getting Started**



Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  stacky_bottom_nav_bar: ^0.0.1
```

## ****Customization****



### StackyBottomNavBar

 `params` a `StackyBottomNavBarParams` class already come-in with the package that hold all of required and optional parametres.

### StackyBottomNavBarParams

`simpleNavBarItems` a list of `StackySimpleNavBarItem`'s , must be 2 length.

`animatedNavBarItems` a list of `StackyAnimatedNavBarItem`'s , must be 3 length.

`brightness` customize nav bar brightness.

`bgColor`  change nav bar background color.

`currentSelectedTabIndex` current selected tab item , Defaults to zero . must be 0 or 1.

### StackySimpleNavBarItem

`icon` simple nav bar item iconData

`onTap` nav bar iconData

`iconColor` use it to override unselected Icon Color (Optional).

`selectedIconColor` use it to override unselected Icon Color (Optional).

### StackyAnimatedNavBarItem

`icon` animated nav bar item iconData

`onTap` nav bar iconData

`iconColor` use it to override Icon Color (Optional).

`bgColor` use it to override Animated Nav Bar Item Background Color (Optional).

## BASIC USAGE EXAMPLE



```dart
StackyBottomNavBar(
          params: StackyBottomNavBarParams(
            animatedNavBarItems: [
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.videocam,
                onTap: () => log("videocam"),
              ),
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.camera,
                onTap: () => log("camera"),
              ),
              StackyAnimatedNavBarItem(
                icon: MyFlutterApp.picture,
                onTap: () => log("picture"),
              ),
            ],
            simpleNavBarItems: [
              StackySimpleNavBarItem(
                icon: MyFlutterApp.house,
                onTap: () => log("house"),
              ),
              StackySimpleNavBarItem(
                icon: MyFlutterApp.user,
                onTap: () => log("user"),
              )
            ],
            currentSelectedTabIndex: 0,
          ),
   ),
```
