# CS4065 - Assignment 2 Report

**Author:** Shahriar Kariman (Shawn)

## Introduction

This investigation aimes to evaluate the memorability and usability of key and gesture based interaction schemes to help me understand the cognitive load accosiated with learning and using short keys.

## Input Scheme Designs

The drawing software programmed for this investigation has 2 modes one where the user has to use the key boards to chose thier desired shape, color and drawing weight and in the other by holding the right mouse button and drawing a gesture acossiated with each action.

### Shortcut Keys

Here are the keys the users could press and what they do:

- Changing Color
  - Red $\rightarrow$ <kbd>C</kbd> + <kbd>1</kbd>
  - Green $\rightarrow$ <kbd>C</kbd> + <kbd>2</kbd>
  - Blue $\rightarrow$  <kbd>C</kbd> + <kbd>3</kbd>
  - Black $\rightarrow$  <kbd>C</kbd> + <kbd>0</kbd>
- Changing Line Wight
  - Thin $\rightarrow$ <kbd>W</kbd> + <kbd>1</kbd>
  - Medium $\rightarrow$ <kbd>W</kbd> + <kbd>2</kbd>
  - Thick $\rightarrow$ <kbd>W</kbd> + <kbd>3</kbd>
- Shapes
  - Rectangle $\rightarrow$ <kbd>R</kbd>
  - Oval $\rightarrow$ <kbd>O</kbd>
  - Lines
    - Straight Line $\rightarrow$ <kbd>L</kbd> + <kbd>1</kbd>
    - Freeform Line $\rightarrow$ <kbd>L</kbd> + <kbd>2</kbd>

#### Why these shortcut keys?

I tried to use association to help users remember the keys for example <kbd>C</kbd> as in color and <kbd>0</kbd> for black because in rgb balck is (0, 0, 0) and since in rgb red is (255, 0, 0), green is (0, 255, 0) and blue is (0, 0, 255) so I put them in the order the 255 apeared.

Similarly with the line weights I use <kbd>W</kbd> as in weight and 1 to 3 for the degree of thickness.

It goes the same with lines <kbd>L</kbd> for line and I made a number key in the order I instinctively chose to implement those shapes so first the straight line, then the free form.

And for the other 2 shapes I just took the first charcter of the shapes name hoping users would acosiate them better that way.

### Gestures

Users draw gestures by holding the right mouse button and dragging it. Here are the gestures the users could use and what they do:

- For *changing colors* users draw a **C** shape and that will cycle through the colors starting from black then red, green, blue and black again.
- For *changing the thickness of the lines* in the app users can draw a shape resembeling **^** or an **upside down V** and that will cycle through the premitted line weights from thin to medium and thin again.
- Changing Shapes
  - To change shape to *rectangle* users can draw a **square** moving thier mouse in a clock wise direction.
  -To change shape to *oval* users can draw a **circle** while moving their mouse in a clock wise motion.
  - To change the shape to straight line users can draw a slanted straight line resembeling a **backslash** character. ( \\ )
  - To change the shape to a freeform line users can draw a **squiggly line**. ( ~ )

#### Why these gestures?

I chose these gestures because:

1. They allowed users to recognize what they do due to their shape.
2. The gesture are either very simple like a **square** or a **circle** or resmble a character in the english language the users have probably used frequently like **C**, **~** or **\\**.
3. And I was hoping by allowing them to cycle through some fo the options I would reduce the number of gestures and the OneDollar library would be able to recognize them more accuratly.

## Evaluation Results

Here is a report on my findings.

### Shortcut Keys

When using the short keys all 5 users had an easier time with the shortcut keys one reported they had a hard time trying to remember what number goes with the <kbd>C</kbd> key to get their desired color and one other user mentioned the shape keys where too far apart on the Key board.

On avrage users used the backspace about 2 times each and overall they all reported that using the key input schema wasn't dificault.

### Gestures
