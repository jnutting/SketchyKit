import UIKit

let sketchyTextFieldFont = UIFont(name: "Noteworthy-Bold", size: 14)!
let sketchyButtonFont = UIFont(name: "Noteworthy-Bold", size: 15)!
let sketchyLabelFont = UIFont(name: "Noteworthy-Bold", size: 17)!
let sketchyNavigationBarTitleFont = UIFont(name: "Noteworthy-Bold", size: 17)!
let sketchyTextColor = UIColor.darkGrayColor()
let sketchyDisabledTextColor = UIColor.lightGrayColor()
let sketchyBorderColor = UIColor.darkGrayColor()
let sketchyInnerCrossColor = UIColor.lightGrayColor()
let sketchyBackgroundColor = UIColor.whiteColor()
let sketchyLightBackgroundColor = UIColor(white: 0.9, alpha: 1.0)
let sketchyAlternateBackgroundColor = UIColor.lightGrayColor()
let sketchyBorderWidth = CGFloat(2.0)
let sketchyRoundedCornerRadius = CGFloat(4.0)

func sketchyImage(size: CGSize, scale: CGFloat) -> UIImage {
  UIGraphicsBeginImageContextWithOptions(size, true, scale)
  defer { UIGraphicsEndImageContext() }

  let context = UIGraphicsGetCurrentContext()
  let rect = CGRect(origin: CGPointZero, size: size)
  CGContextSetFillColorWithColor(context, sketchyBackgroundColor.CGColor)
  CGContextFillRect(context, rect)
  CGContextBeginPath(context)
  CGContextMoveToPoint(context, 0, 0)
  CGContextAddLineToPoint(context, size.width, size.height)
  CGContextMoveToPoint(context, size.width, 0)
  CGContextAddLineToPoint(context, 0, size.height)
  CGContextSetStrokeColorWithColor(context, sketchyInnerCrossColor.CGColor)
  CGContextStrokePath(context)
  CGContextSetStrokeColorWithColor(context, sketchyBorderColor.CGColor)
  CGContextStrokeRectWithWidth(context, rect, sketchyBorderWidth)


  let image = UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
  return image
}