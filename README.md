<a target='_blank' rel='nofollow' href='https://app.codesponsor.io/link/3P7HvFUC2L4B4rwAb64q6ma8/lukecrum/SimpleAlerts'>
  <img alt='Sponsor' width='888' height='68' src='https://app.codesponsor.io/embed/3P7HvFUC2L4B4rwAb64q6ma8/lukecrum/SimpleAlerts.svg' />
</a>
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
- `buttonWidth` - width of the button
- `buttonHeight` - height of the button
- `buttonAlignment` - where the button will be displayed (`"top", "center", or "bottom")

To add the newly-created alert to the view:
```Swift
newAlert.center = view.center //this will make it display in the center of the view
self.view.addSubview(newAlert)
```
