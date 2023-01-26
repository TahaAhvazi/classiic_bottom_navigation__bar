
# CLASSIC BOTTOM NAVIGATION BAR💫

By using this package, you will be able to easily create a beautiful bottom navigation bar in flutter and use it on diffrent Os, here is the documantation about how to use it💡

🟢داکیومنت فارسی در مورد نحوه استفاده از این پکیج در ادامه آمده است🟢


![MyVideo_1](https://user-images.githubusercontent.com/86960501/214843370-813e48ae-708d-4793-9270-9a69adb240cd.gif)

![vidtwo](https://user-images.githubusercontent.com/86960501/214843500-1259c718-b8c2-432b-8f9e-71e8972d3d99.gif)




## How to use⁉️

#### set a bottom navigation bar in Scaffold: ✅

```
Scaffold(
      bottomNavigationBar: ClassicButtomNavBar(
        items: const [
          ClassicBottomNavyBarItem(),
          ClassicBottomNavyBarItem(),
          ClassicBottomNavyBarItem(),
          ...
        ],
      ),
    );
```

The arguments needed for (ClassicButtomNavBar) 🟢

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `backgroundColor` | `Color` | **Optional**. color of container |


| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `selectedIndex`      | `int` | **Optional**. index of selected page |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `iconSize`      | `int` | **Optional**. size of icons in bottom nav bar |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `height`      | `double` | **Optional**. height of the classic bottom nav bar|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `width`      | `double` | **Optional**. width of the classic bottom nav bar : |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `borderRadius`      | `double` | **Optional**. the radius of corners of bottom nav bar|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `items`      | `List<ClassicBottomNavyBarItem>` | **required**. list of items in bottom nav bar |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `onItemSelected`      | `callbackFunction` | **required**. function when the selecting items|



#### Full example of this package💡

```
Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: myRoutes[_currentIndex],
      bottomNavigationBar: ClassicButtomNavBar(
        selectedIndex: _currentIndex,
        onItemSelected: (value) => setState(() {
          print("🛑$_currentIndex🛑");
          _currentIndex = value;
          print("🟢$_currentIndex🟢");
        }),
        items: const [
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.home),
            title: "H O M E",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.search),
            title: "S E A R C H",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.person),
            title: "P R O F I L E",
          ),
          ClassicBottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: "S E T T I N G S",
          ),
        ],
      ),
    );

```






## ⁉️نحوه استفاده 

#### ابتدا ویجت منو مورد نظر را در اسکافولد تعریف کنید: ✅

```
Scaffold(
      bottomNavigationBar: ClassicButtomNavBar(
        items: const [
          ClassicBottomNavyBarItem(),
          ClassicBottomNavyBarItem(),
          ClassicBottomNavyBarItem(),
          ...
        ],
      ),
    );
```

(ClassicButtomNavBar) پارامتر های اجباری و اختیاری موجود برای استفاده در کلاس  🟢

| پارامتر | نوع     | توضیحات                |
| :-------- | :------- | :------------------------- |
| `backgroundColor` | `Color` | **اختیاری**. رنگ پس زمینه منو  |


| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `selectedIndex`      | `int` | **اختیاری**. شمارنده صفحات انتخاب شده در منو |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `iconSize`      | `int` | **اختیاری**. سایز آیکون های استفاده شده در منو |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `height`      | `double` | **اختیاری**. تنظیم ارتفاع منو |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `width`      | `double` | **اختیاری**. تنظیم عرض منو  : |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `borderRadius`      | `double` | **اختیاری**. تنظیم میزان گرد بودن گوشه های منو|

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `items`      | `List<ClassicBottomNavyBarItem>` | **اجباری**. لیست آیتم های  منو مورد  |

| پارامتر | نوع     | توضیحات                       |
| :-------- | :------- | :-------------------------------- |
| `onItemSelected`      | `callbackFunction` | **اجباری**. تابع مورد نیاز هنگام انتخاب هر ایتم|







## Author👦

- [@Taha ahvazi ](https://github.com/TahaAhvazi)


## License

[MIT](https://choosealicense.com/licenses/mit/)
