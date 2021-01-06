# stateless_textfield

A Stateless `TextField` having an `initialValue` parameter.  

# Motivation
I wanted to use `TextField` having an initialValue parameter but the widget does not have initialValue.  
I know that I can do similar using `TextEditingController` but there is a problem.  
If I forget to dispose `TextEditingController`, a memory leak occur.  This is very dangerous.  
That is why, I made `StatelessTextField`. It has `initialValue` parameter and you do not have to think about state.

# Usage

```dart
StatelessTextField(
  initialValue: "initialValue",
  onSubmitted: (String str) {},
  decoration: InputDecoration(hintText: "first message field"),
);
```

# Note
**This widget do not have a state.**  
Text on this widget will be reset when the widget rebuild.  
You should put state of this widget a parent widget or a global variable (like redux, provider, etc...) .
