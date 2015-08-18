# UIButtonTitleShrinking

This demonstrates a possible bug with UIButtons when changing the title using

` [button setTitle:changedTitle forState:UIControlStateNormal] `

For more info on the problem see [Stackoverflow](http://stackoverflow.com/questions/32077774/uibutton-settitlelongertitle-forstate-contracting-title-string)

```

I am trying to set the title of a UIButton using
`[button setTitle:changedTitle forState:UIControlStateNormal]` The title is changing correctly but internally this appears to animated by UIButton and when changing from a long title to a short title there seems to be a layout pass on the `UIButton` label with an `intrinsicContentSize` based on the final string length but before the text in the `UIButton`'s label has been changed. The result is that I can see a momentary contraction of the long title in the `UIButton` before the short title is set. 
eg.

To start:

`LooooongTiiiiiiitle`

during the fading animation becomes for a fraction of a second:

`Lon...tle`

before landing at:

`Short`


I am not doing any other animations on the view and have been able to recreate this effect in a new project with nothing but a view with one UIButton.

Is this a UIKit bug or am I doing something wrong? 

```
