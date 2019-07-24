# PowerApps Responsive Design Notes

- Created: Sat May 18 06:55:32 PDT 2019

## Introduction

Responsive design is now possible in PowerApps. By using a reference to device height and width when rendering on-screen elements, PowerApps designers can fit their app to any canvas. Controls will be placed and sized using relative formulas instead of static values.

### Definitions

There are 8 properties to keep in mind when building responsive PowerApps.

### Considerations

- Once dynamic formulas are created for a controls `X`, `Y`, `Height` and `Width` properties, DO NOT DRAG IT AROUND THE SCREEN.
    - If you do, your dynamic formulas will be overwritten with static values

#### Screen-related

- `Design.Height`
- `Design.Width`
    - Derived from the dimensions specified in `Screen size + orientation` of `File / App Settings`

- `App.Height`
- `App.Width`
- Correspond to the dimensions of the device or browser window.
    - If the user resizes the browser window (or rotates the device if you've turned off Lock orientation), the values of these properties change dynamically.

#### Special

- `Parent.Height`
- `Parent.Width`
    - Defines a **container** height and width.
        - Containers can be:
            -Screens
            - Gallery controls
            - Enhanced Groups
            - Componenets

#### Control-related

- `X`
- `Y`
- `Height`
- `Width`

### Instructions

1. Disable `Scale to fit` in `File / Advanced Settings`
2. Place the top "framing element" in your app using the responsive properties lined out above.
    - Example: 
        - 

### Resources

- [Microsoft Responsive Blog Post](https://powerapps.microsoft.com/en-us/blog/craft-app-height-and-width-expressions-to-create-responsive-canvas-apps/)
- [Microsoft Docs: Responsive Apps](https://web.powerapps.com/environments/Default-ad901d52-3ec1-472f-bf86-b1866118a7a6/apps/2418c8ce-01e1-4068-8960-a55e9a2db49d/share)
- [YouTube: Hiro Responsive Video](https://www.youtube.com/watch?v=VDmVw7IEFP8)