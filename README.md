# SimpleAlerts
A lightweight alert framework written in swift

# Installation:
- Simply add `AlertView.swift` into your Xcode project!
# Usage
To create a new alert:
```Swift
let newAlert = SimpleAlert(width: 200, height: 300, image: "image", text: "Alert!", textAlignment: "top", 
backgroundColor: UIColor.blue, imageWidth: 100, imageHeight: 100, buttonWidth: 200, buttonHeight: 50, buttonAlignment: "bottom")
```
- `width` - width of the alert
- `height` - height of the alert
- `image` - image displayed in the alert (use `""` if no image is used)
- `text` - static text to be displayed in the alert)
- `textAlignment` - where the text will be displayed in the alert (`"top", "center", or "bottom"`)
- `backgroundColor` - color of the alert's background (UIColor.xxxx)
- `imageWidth` - width of the image
- `imageHeight` - height of the image
- **NOTE: NON-SQUARE IMAGES WILL NOT ALIGN CORRECTLY**
- `buttonWidth` - width of the button
- `buttonHeight` - height of the button
- `buttonAlignment` - where the button will be displayed (`"top", "center", or "bottom")

To add the newly-created alert to the view:
```Swift
newAlert.center = view.center //this will make it display in the center of the view
self.view.addSubview(newAlert)
```
