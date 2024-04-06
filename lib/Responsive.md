# Responsive Layout Explained

---

The class `ResponsiveLayout` will take in seperate scaffolds and will return the individual layout based on the the width of the device, using the `LayoutBulder` constraints we are able to make break points 


--- 


`Lib > Responsive > responsive_layout.dart`
```
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  ResponsiveLayout(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    //? Here we are comparing the contraints to break points
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      }
      if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}

```

--- 

All the seperate scaffolds will follow a similar pattern:

`Expanded` at the root of the body to fill space

`AspectRatio` above the gridview builder, this allows the grid view to grow at a specified rate, for example aspect ratio 1:1 will make the grid view square, and apect ratio 4 will set a 4:1 ratio will elongate the gridview

**Desktop Exception**

The desktop scaffold has an extra expanded widget to allow for a second column to fill the extra width


