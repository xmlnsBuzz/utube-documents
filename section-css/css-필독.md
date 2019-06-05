# How to read CSS Spec Table

The World Wide Web Consortium uses a particular syntax to define the possible values that can be used for all CSS properties. You may have seen this syntax in action if you have ever looked at a CSS specification.

The World Wide Web Consortium uses a particular syntax to define the possible values that can be used for all CSS properties. You may have seen this syntax in action if you have ever looked at a CSS specification — as in the syntax for border-image-slice. Let’s take a look:

```js
<'border-­image-­slice'> = [<number> | <percentage>]{1,4} && fill?
```

This syntax can be hard to understand if you don’t know the various symbols and how they work. However, it is worth taking the time to learn. If you understand how the W3C defines property values, you will be able to understand any of the W3C’s CSS specifications.

Understanding The CSS Property Value Syntax

## Backus-Naur Form
We will start with a look at Backus-Naur Form, because this will help us understand the W3C’s property value syntax.

Our new book, in which Alla Kholmatova explores how to create effective and maintainable design systems to design great digital products. Meet Design Systems, with common traps, gotchas and the lessons Alla has learned over the years.

Table of contents →
Feature Panel
Backus–Naur Form (BNF) is a formal notation used to describe the syntax of computer languages. It is designed to be unambiguous, so that there is no disagreement or ambiguity as to how the language can be expressed.

Further Reading On SmashingMag:
An Introduction To PostCSS
Truly Fluid Typography With vh And vw Units
Creating Responsive Shapes With Clip-Path
A wide range of extensions and variants of the original Backus–Naur notation are used today, including Extended Backus–Naur Form (EBNF) and Augmented Backus–Naur Form (ABNF).

A BNF specification is a set of rules written in the following way:

```js
<symbol>  ::=  __expression__
```

On the left there is always a non-terminal symbol, followed by a ::= symbol, which means “may be replaced with.” On the right is the expression, which consists of one or more sequences of symbols that are used to derive the meaning of the symbol on the left.

BNF specifications basically say, “Whatever is on the left may be replaced with whatever is on the right.”

Non-Terminal And Terminal Symbols
Non-terminal symbols are symbols that can be replaced or broken down further. In BNF, non-terminal symbols appear between angled brackets, &lt; and >. In the example below, &lt;integer> and &lt;digit> are non-terminal symbols.

```js
<integer>  ::=  <digit> | <digit><integer>
```

A terminal symbol indicates that the value cannot be replaced or broken down further. In the example below, all of the digital values are terminal symbols.

```js
<digit>  ::=  0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
```

The CSS Property Value Syntax
While the W3C’s CSS property value syntax is based on the concept of BNF, it has some differences. Like BNF, it begins with a non-terminal symbol. Unlike BNF, it describes symbols used within the expression as “component values.”

In the example below, <line-width> is a non-terminal symbol, and <length>, thin, medium and thick are component values.

```js
<line-­width>  =  <length> | thin | medium | thick
```

Component Values
There are four types of component values: keywords, basic data types, property data types and non-property data types.

### KEYWORD VALUES
Keyword values appear without quotation marks or angle brackets. They are used as is, as property values. Because they cannot be replaced or broken down further, they are terminal. In the example below, thin, medium and thick are all keyword values. This means they can be used as is, as values in our CSS.


```js
<line-­width>  =  <length> | thin | medium | thick
```

### BASIC DATA TYPES

Out with the old, in with the bold.
It's not stock, it's Shutterstock.
EXPLORE NOW!
Basic data types define core values such as <length> and <color>. They are non-terminal because they can be replaced with actual length or color values. In the example below, the <color> symbol is a basic data type.

```js
<'background-color'>  =  <color>
```

This <color> value may be replaced in our CSS with an actual color value, using a keyword, an extended keyword, an RGB, RGBA, HSL or HSLA value, or the transparent keyword.

```js
.example { background-color: red; }
.example { background-color: honeydew; }
.example { background-color: rgb(50%,50%,50%); }
.example { background-color: rgba(100%,100%,100%,.5); }
.example { background-color: hsl(280,100%,50%); }
.example { background-color: hsla(280,100%,50%,0.5); }
.example { background-color: transparent; }
```

### PROPERTY DATA TYPES
A property data type is a non-terminal symbol that defines the property’s actual name. It is defined using the property’s name (complete with quotation marks) set between angled brackets (< … >). In the example below, the <‘border-width’> symbol is a property data type.

```js
<'border-­width'>  =  <line-­width>{1,4}
```

Property data types may appear directly in our CSS as properties. In the example below, the border-width property is used to define a 2-pixel border for the .example class.

```js
.example { border-width: 2px; }
```
### NON-PROPERTY DATA TYPES
A non-property data type is a non-terminal symbol that does not share the same name as a property. However, it defines aspects of one property or another. For example, <line-­width> is not a property, but it is a data type that defines the various <border> properties.

```js
<line-­width>  =  <length> | thin | medium | thick

<'border-­width'>  =  <line-­width>{1,4}
```
Cop
Component Value Combinators
Component values can be arranged into property value combinators using one of the following five methods.

1. ADJACENT VALUES
Component values that are written one after another means that all of these values must occur in the given order. In the example below, the syntax lists three different values: value1, value2 and value3. In the CSS rule, all three of these values must appear in the correct order for the property syntax to be valid.

```js
/* Component arrangement: all in given order */
<'property'> = value1 value2 value3

/* Example */
.example { property: value1 value2 value3; }
```

2. DOUBLE AMPERSAND
A double ampersand (&&) separating two or more values means that all of them must occur, in any order. In the example below, the syntax lists two values, separated by a double ampersand. The CSS rules show that both of these values must appear but may appear in any order.

```js
/* Component arrangement: all, in any order */
<'property'> = value1 && value2

/* Examples */
.example { property: value1 value2; }
.example { property: value2 value1; }
```

3. SINGLE PIPE
A single pipe (|) separating two or more values means that only one of them must occur. In the example below, the syntax lists three values, separated by single pipes. The following CSS rules show three possible options:

```js
/* Component arrangement: one of them must occur */
<'property'> = value1 | value2 | value3

/* Examples */
.example { property: value1; }
.example { property: value2; }
.example { property: value3; }
```
4. DOUBLE PIPE
A double pipe (||) separating two or more options means that one or more of them must occur, in any order. In the example below, the syntax lists three values, separated by double pipes. Numerous options are available when you’re writing CSS rules to match this syntax — you could use one, two or three values, in any order.

```js
/* Component arrangement: one or more in any order */
<'property'> = value1 || value2 || value3

/* Examples */
.example { property: value1; }
.example { property: value2; }
.example { property: value3; }
.example { property: value1 value2; }
.example { property: value1 value2 value3; }
...etc
```

5. BRACKETS
Brackets ([ ]) surrounding two or more alternatives means that the components inside are of a single grouping. In the example below, the syntax lists three values, but two of them appear inside brackets, so they are of a single group. Two options are available in the CSS rules: either value1 and value3 or value2 and value3.

```js
/* Component arrangement: a single grouping */
<'property'> = [ value1 | value2 ] value3

/* Examples */
.example { property: value1 value3; }
.example { property: value2 value3; }
```


Component Value Multipliers
Component values may also be multiplied using one of the following eight methods.

1. THE ? SYMBOL
A question mark (?) indicates that the preceding type, word or group is optional and occurs zero or one time. In the example below, the second value is placed inside brackets along with a comma. The question mark placed after this group means that value1 must occur, but we could also use value1 and value2, each separated by a comma.

```js
/* Component multiplier: zero or one time */
<'property'> = value1 [, value2 ]?

/* Examples */
.example { property: value1; }
.example { property: value1, value2; }
```

2. THE * SYMBOL
An asterisk (*) indicates that the preceding type, word or group occurs zero or more times. In the example below, the second value is placed inside brackets along with a comma. The asterisk placed after this group means that value1 must occur, but we could also use <value2> as many times as we want, with each instance separated by a comma.

```js
/* Component multiplier: zero or more times */
<'property'> = value1 [, <value2> ]*

/* Examples */
.example { property: value1; }
.example { property: value1, <value2>; }
.example { property: value1, <value2>, <value2>; }
.example { property: value1, <value2>, <value2>, <value2>; }
...etc
```


3. THE + SYMBOL
A plus (+) indicates that the preceding type, word or group occurs one or more times. In the example below, the plus symbol placed after the value means that the value may be used more than once — without the need for commas.

```js
/* Component multiplier: one or more times */
<'property'> = <value>+

/* Examples */
.example { property: <value>; }
.example { property: <value> <value>; }
.example { property: <value> <value> <value>; }
...etc
```
4. THE {A} SYMBOL
A single number in braces ({A}) indicates that the preceding type, word or group occurs A times. In the example below, two instances of the value must be present in order for the declaration to be valid.

```js
/* Component multiplier: occurs A times */
<'property'> = <value>{2}

/* Examples */
.example { property: <value> <value>; }
```
5. THE {A,B} SYMBOL
A comma-separated pair of numbers in braces ({A,B}) indicates that the preceding type, word or group occurs at least A and at most B times. In the example below, a minimum of one value and a maximum of three values may be used to define the property. None of these values would be separated with a comma.
```js
/* Component multiplier: at least A and at most B */
<'property'> = <value>{1,3}

/* Examples */
.example { property: <value>; }
.example { property: <value> <value>; }
.example { property: <value> <value> <value>; }
```


6. THE {A,} SYMBOL
The B may be omitted in {A,} to indicate that there must be at least A repetitions, with no upper limit on the number of repetitions. In the example below, a minimum of one value must be used, but any number of additional values may also be used. None of these values would be separated with a comma.

```js

/* Component multiplier: at least A, with no upper limit */
<'property'> = <value>{1,}

/* Examples */
.example { property: <value>; }
.example { property: <value> <value>; }
.example { property: <value> <value> <value>; }
...etc
```


7. THE # SYMBOL
A hash (#) indicates that the preceding type, word or group occurs one or more times, separated by commas. In the example below, one or more values may be used, each separated by a comma.

```js
/* Component multiplier: one or more, separated by commas */
<'property'> = <value>#

/* Examples */
.example { property: <value>; }
.example { property: <value>, <value>; }
.example { property: <value>, <value>, <value>; }
...etc
```

8. THE ! SYMBOL
An exclamation point ! after a group indicates that the group is required and must produce at least one value. In the example below, value1 is required, along with a value from the group comprising value2 and value3. There may be only two values in total; so, the options are value1 and value2 or value1 and value3.

```js
/* Component multiplier: required group, at least one value */
<'property'> = value1 [ value2 | value3 ]!

/* Examples */
.example { property: value1 value2; }
.example { property: value1 value3; }
```


The <'text-shadow'> Syntax: An Example
Let’s look at the <‘text-shadow’> property as an example. This is how the property is defined in the specification:

```js
<'text-shadow'> = none | [ <length>{2,3} && <color>? ]#
```

We can break down the various symbols:

The | indicates that we can use the keyword none or a group [].
The # multiplier means that we can use one or more of these groups, separated by commas.
Inside the group, the {2,3} indicates that we can use two or three length values.
The && indicates that we must include all values, but they can be included in any order.
Just to be tricky, the <color> value includes a ? multiplier, which means that it may occur zero or one time.
In plain language, this could be written as following:

Specify none or one or more comma-separated groups that contain two to three length values and an optional color value. The length values and optional color value may be written in any order.
This means we could write the text-shadow property in a wide range of different ways. For example, we could set the text-shadow value to be none:



```js
.example { text-shadow: none; }
```

We could write two length values only, which would mean that we would be setting the horizontal and vertical offset of the shadow, but that it would have no blur radius or color value.

Because no blur radius has been defined, the initial value of 0 would be used; so, the shadow would be hard-edged. With no color defined, the color of the text would be used for the color of the shadow.

```js
.example { text-shadow: 10px 10px; }
```

If we used three length values, we would be defining the blur radius as well as the horizontal and vertical offsets of the shadow.

```js
.example { text-shadow: 10px 10px 10px; }
```


We could include a color, and it could go before or after the two or three length values. In the examples below, the red value could be placed at either end of the set of values.

```js
.example { text-shadow: 10px 10px 10px red; }
.example { text-shadow: red 10px 10px 10px; }
```

Finally, we could include multiple text shadows, written as comma-separated groups. The shadow effects would be applied front to back: the first shadow on top and the others layered behind. The shadows cannot overlay the text itself. In the example below, the red shadow would sit on top of the lime shadow.

```js
.example {
    text-shadow:
        10px 10px red,
        -20px -20px 5px lime;
}
```

Conclusion
If you write CSS for a living, it is important to understand how to write valid CSS property values correctly. Once you understand how different values can be combined or multiplied, the CSS property value syntax becomes much easier to comprehend. It will then be easier to read the various specifications and to write valid CSS.

For further reading, check out the following websites:

“Value Definition Syntax” in “CSS Values and Units Module Level 3,” W3C
“CSS Reference,” Mozilla Developer Network
“How to Read W3C Specs,” J. David Eisenberg, A List Apart
Smashing Editorial (vf, al, il)


✎ Write for usContact usAbout us (Impressum)Privacy policyMembership loginDelivery timesAdvertise