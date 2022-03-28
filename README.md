

# Stacky_bottom_nav_bar


A fancy animated bottom navigation bar.

## Preview




| Default Light Mode | Default Dark Mode |
| --- | ----------- |
| <img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/71821b66-81e0-4479-84cd-3faeae8d174c/stacky_white.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220328%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220328T222350Z&X-Amz-Expires=86400&X-Amz-Signature=99e83886bfafd31b21de3438e7e501e252dd67d40e45e8b55ecabfb0de11d148&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22stacky_white.gif%22&x-id=GetObject"  /> |  <img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9c9f33ee-e1f1-4df3-99f7-f9e0ad6343f6/My_Video.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220328%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220328T222507Z&X-Amz-Expires=86400&X-Amz-Signature=8ae99185df7eafd73071fcebaa0105193e10af0ef89b8fba49f9184501a08b89&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22My%2520Video.gif%22&x-id=GetObject"  />  |



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