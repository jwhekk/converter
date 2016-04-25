Building an extendable converter in Ruby.

```
As a user
I want to be able to create an converter
So I can use it repeatedly.
```
To create an celsius fahrenheit converter in irb:
```
celsius2fahrenheit = Converter.new("celsius", "fahrenheit") { |celsius| celsius * 9 / 5 + 32 }
```
To make conversions:
```
celsius2fahrenheit(100)
```
The result should be 212