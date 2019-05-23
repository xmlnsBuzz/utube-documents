# HTML 5 Specification 발췌본(Excerpts)

[원본파일 * ](https*//www.w3.org/TR/2012/WD-html-markup-20121025/spec.html)https*//www.w3.org/TR/2012/WD-html-markup-20121025/spec.html

## 
## Introduction
kramdown
* A Markdown-superset converter

Maruku
*     Another Markdown-superset converter
## Terminology
browsing context
*  An environment in which UAs present documents to users. A tab or window in a Web browser typically contains a browsing context, as does an iframe, or frame elements in a frameset.

case-insensitive match
*  An exact comparison of two strings, codepoint for codepoint, except that the characters in the range A-Z and the corresponding characters in the range a-z are considered to also match.

DOM tree
*  A representation of a document based on the W3C Document Object Model (DOM), as defined in the [DOM4] specification. UAs build representations of documents by parsing them and constructing DOM trees from them.

flow content
*  Flow content consists of flow elements intermixed with normal character data.

HTML producers
*  HTML authors (that is, people) and applications (such as editors and content management systems) that produce HTML content.

HTML consumers
*  HTML user agents; that is, applications (such as Web browsers) which consume HTML content.

must
*  The word must is used in this reference to mark document-conformance requirements that are normatively defined in the HTML5* A vocabulary and associated APIs for HTML and XHTML full specification. [HTML5].
This reference does not itself normatively define any requirements.

newline
*  Any of the following*
   * a U+000D CARRIAGE RETURN (CR) character
   * a U+000A LINE FEED (LF) character
   * a U+000D CARRIAGE RETURN (CR) followed by a U+000A LINE FEED (LF) character

phrasing content
*  Consists of phrasing elements intermixed with normal character data.

resolve a URL
*  To resolve a URL to an absolute URL, as defined in [HTML5].

space
*  Any of the following*
   * U+0020 SPACE
   * U+0009 CHARACTER TABULATION (tab)
   * U+000A LINE FEED (LF)
   * U+000C FORM FEED (FF)
   * U+000D CARRIAGE RETURN (CR)

top-level browsing context
*  As defined in [HTML5].

transparent
*  If the content model of a particular element foo is described as transparent, it means*
when element foo is a child of a parent element bar whose content model is allowed to contain flow elements, then the contents of element foo may also contain flow elements
when element foo is a child of a parent element baz whose content model restricts its child elements to only being phrasing elements, then any child elements of element foo are also restricted to only being phrasing elements

UA
*  An HTML user agent; that is, an application (such as a Web browser) which consumes HTML content.

## Documents
   * The HTML language and HTML and XML syntaxes
   * The HTML namespace and MIME types
   * Conformant documents
   * Case insensitivity in tag names and attribute names
## HTML syntax
* The doctype
* Character encoding declaration
* Elements
* Attributes
* Text and character data
* Character references
* Comments
* SVG and MathML elements in HTML documents
* CDATA sections in SVG and MathML contents
## HTML elements organized by function

### The root element
* html – root element

### Document metadata
* head – document metadata container
* title – document title
* base – base URL
* link – inter-document relationship metadata
* meta – metadata CHANGED
* style – style (presentation) information

### Scripting
* script – embedded script
* noscript – fallback content for script

### Sections
* body – document body
* section – section NEW
* nav – group of navigational links NEW
* article – article NEW
* aside – tangential content NEW
* h1 – heading
* h2 – heading
* h3 – heading
* h4 – heading
* h5 – heading
* h6 – heading
* hgroup – heading group NEW
* header – header NEW
* footer – footer NEW
* address – contact information

### Grouping content
* p – paragraph
* hr – thematic break CHANGED
* br – line break
* pre – preformatted text
* blockquote – block quotation
* ol – ordered list
* ul – unordered list
* li – list item
* dl – description list
* dt – term or name
* dd – description or value
* figure – figure with optional caption NEW
* figcaption – figure caption NEW
* div – generic flow container

### Text-level semantics
* a – hyperlink CHANGED
* em – emphatic stress
* strong – strong importance
* small – small print CHANGED
* s – struck text CHANGED
* cite – cited title of a work CHANGED
* q – quoted text
* dfn – defining instance
* abbr – abbreviation
* time – date and/or time NEW
* code – code fragment
* var – variable or placeholder text
* samp – (sample) output
* kbd – user input
* sub – subscript
* sup – superscript
* i – offset text conventionally styled in italic CHANGED
* b – offset text conventionally styled in bold CHANGED
* u – offset text conventionally styled with an underline CHANGED
* mark – marked (highlighted) text NEW
* ruby – ruby annotation NEW
* rt – ruby text NEW
* rp – ruby parenthesis NEW
* bdi – BiDi isolate NEW
* bdo – BiDi override
* span – generic span

### Edits
* ins – inserted text
* del – deleted text

### Embedded content
* img – image
* iframe – nested browsing context (inline frame)
* embed – integration point for plugins NEW
* object – generic external content
* param – initialization parameters for plugins
* video – video NEW
* audio – audio stream NEW
* source – media source NEW
* track – supplementary media track NEW
* canvas – canvas for dynamic graphics NEW
* map – image-map definition
* area – image-map hyperlink

### Tables
* table – table
* caption – table title
* colgroup – table column group
* col – table column
* tbody – table row group
* thead – table heading group
* tfoot – table footer row group
* tr – table row
* td – table cell
* th – table header cell

### Forms
* form – user-submittable form
* fieldset – set of related form controls
* legend – title or explanatory caption
* label – caption for a form control
* input – input control CHANGED
* button – button
* select – option-selection form control
* datalist – predefined options for other controls NEW
* optgroup – group of options
* option – option
* textarea – text input area
* keygen – key-pair generator/input control NEW
* output – result of a calculation in a form NEW
* progress – progress indicator NEW
* meter – scalar gauge NEW

### Interactive elements
* details – control for additional on-demand information NEW
* summary – summary, caption, or legend for a details control NEW
* command – command NEW
* menu – list of commands CHANGED

## HTML elements

##	 Common content models
* Flow elements
* Metadata elements
* Phrasing elements

##	 Global attributes
* Core attributes
* Event-handler attributes
* XML attributes

## Data types (common microsyntaxes)
### String
For the purposes of this document, a string is defined as any mixture of text and character references.

The Attributes section of this document describes additional restrictions on strings in attribute values — in particular, restrictions for the following cases:

* unquoted attribute values
* single-quoted attribute values
* double-quoted attribute values

### Set of comma-separated strings
Zero or more strings that are themselves each zero or more characters, each optionally with leading and/or trailing space characters, and each separated from the next by a single "," (comma) character. Each string itself must not begin or end with any space characters, and each string itself must not contain any "," (comma) characters.

### Token
A string that does not contain any space characters.

###Set of space-separated tokens
A space-separated set of zero or more token instances.

### Unordered set of unique space-separated tokens
A set of space-separated tokens in which none of the tokens are duplicated.

### Ordered set of unique space-separated tokens
A set of space-separated tokens in which none of the tokens are duplicated, but in which the order of the tokens is meaningful.

### Browsing-context name
Any string, with the following restrictions:
* must not start with a "_" character
* must be at least one character long

### Browsing-context name or keyword
Any string that is either of the following:
a browsing-context name
any case-insensitive match for one of the following literal strings: "_blank", "_self", "_parent", or "_top".
ID
Any string, with the following restrictions:
must be at least one character long
must not contain any space characters
Previous versions of HTML placed greater restrictions on the content of ID values (for example, they did not permit ID values to begin with a number).

ID reference
A valid ID reference to an element of type type is a string that exactly matches the value of the id attribute of an element of type type anywhere in the document.
List of ID references
An unordered set of unique space-separated tokens, each of which is an ID reference.
Name
Any string, with the following restrictions:
must be at least one character long
must not contain any space characters
Hash-name reference
A valid hash-name reference to an element of type type is a string that starts with a "#" character, followed by a string which exactly matches the value of the name attribute of an element of type type anywhere in the document.
Integer
One or more characters in the range 0—9, optionally prefixed with a "-" character.
Positive integer
Any non-negative integer, with the following restriction:
must be greater than zero
Non-negative integer
One or more characters in the range 0—9.
Floating-point number
A floating-point number consists of the following parts, in exactly the following order:
Optionally, the first character may be a "-" character.
One or more characters in the range "0—9".
Optionally, the following parts, in exactly the following order:
a "." character
one or more characters in the range "0—9"
Optionally, the following parts, in exactly the following order:
a "e" character or "E" character
optionally, a "-" character or "+" character
One or more characters in the range "0—9".
Positive floating-point number
A non-negative floating-point number, with the following restriction:
must be greater than zero
Non-negative floating-point number
A floating-point number, with the following restriction:
the first character may not be a "-" character
Date and time
A valid date-time as defined in [RFC 3339], with these additional qualifications:
the literal letters T and Z in the date/time syntax must always be uppercase
the date-fullyear production is instead defined as four or more digits representing a number greater than 0
Examples:

1990-12-31T23:59:60Z
1996-12-19T16:39:57-08:00
Date
A valid full-date as defined in [RFC 3339], with the additional qualification that the year component is four or more digits representing a number greater than 0.
Example:

1996-12-19
Time-datetime
Any one of the following:
a month
a date
a yearless date which must consist of the following parts in exactly the following order:
a valid date-month as defined in [RFC 3339]
The literal string "-".
a valid date-mday as defined in [RFC 3339]
Example:

11-12
a time
a local date and time
a valid time-offset as defined in [RFC 3339]
Examples:

Z
+0000
+00:00
-0800
-08:00
a date and time
a week
a valid date-fullyear as defined in [RFC 3339], with the additional qualification it must be four or more digits representing a number greater than 0
Examples:

2011
0001
a valid duration string as defined in the [HTML5] specification
Examples:

PT4H18M3S
4h 18m 3s
URL
A valid IRI reference as defined in [RFC 3987].
The empty string is a valid IRI reference, so the empty string is allowed anywhere this reference lists the “URL” datatype as being allowed.

Example:

http://example.org/hello
URL potentially surrounded by spaces
A URL, optionally with leading and/or trailing space characters.
The empty string is a valid URL, so the empty string is allowed anywhere this reference lists the “URL potentially surrounded by spaces” datatype as being allowed.

Non-empty URL potentially surrounded by spaces
A URL that is not the empty string, optionally with leading and/or trailing space characters.
Absolute URL potentially surrounded by spaces
A valid IRI as defined in [RFC 3987], optionally with leading and/or trailing space characters.
Examples:

/hello
#canvas
http://example.org/
Sizes
An unordered set of unique space-separated tokens, each of which must be one of the following:
the literal string "any"
two valid non-negative integers that do not have a leading "0" character and that are separated by a single "x" character.
MIME type
A string that identifies a valid MIME media type as defined in [RFC 2046].
Character encoding name
A case-insensitive match for any character set name for which the IANA [Character Sets] registry has a Name or Alias field labeled as “preferred MIME name”; or, if none of the Alias fields are so labeled, a case-insensitive match for a Name field in the registry.
Meta-charset string
The following parts, in exactly the following order:
The literal string "text/html;".
Optionally, one or more space characters.
The literal string "charset=".
One of the following:
For documents in the HTML syntax: A character encoding name.
For documents in the XML syntax: Any case-insensitive match for the string "UTF-8".
Refresh value
Any one of the following:
A non-negative integer.
The string consisting of the following parts, in exactly the following order:
A non-negative integer.
A ";" character.
One or more space characters.
A case-insensitive match for the string "url=".
A URL.
Default-style name
A string.
Media-query list
A valid media query list as defined in [Media Queries].
Language tag
A valid language tag as defined in [BCP 47].
List of key labels
An ordered set of unique space-separated tokens, each of which must be exactly one Unicode code point in length.
Dropzone value
An unordered set of unique space-separated tokens, each of which is a case-insensitive match for one of the following:

copy
Indicates that dropping an accepted item on the element will result in a copy of the dragged data.

move
Indicates that dropping an accepted item on the element will result in the dragged data being moved to the new location.

link
Indicates that dropping an accepted item on the element will result in a link to the original data.

Any string with three characters or more, beginning with the literal string "string:".
Indicates that Plain Unicode string items, of the type indicated by the part of of the keyword after the "string:" string, can be dropped on this element.

Any string with three characters or more, beginning with the literal string "file:".
Indicates that File items, of the type indicated by the part of of the keyword after the "file:" string, can be dropped on this element.

The value must not have more than one of the three tokens "copy", "move", or "link". If none are specified, the element represents a copy dropzone.

Zero
The literal string "0".
Functionbody
Any JavaScript code matching the FunctionBody production [ECMA 262].
Rectangle coordinates
A comma-separated list of four integers, in exactly the following order:
an integer representing the distance in CSS pixels from the left edge of the image to the left side of the rectangle
an integer representing the distance in CSS pixels from the top edge of the image to the top side of the rectangle
an integer, greater than the value of the first integer in this list, representing the distance in CSS pixels from the left edge of the image to the right side of the rectangle
an integer, greater than the value of the second integer in this list, representing the distance in CSS pixels from the top edge of the image to the bottom side of the rectangle
Circle coordinates
A comma-separated list of three numbers, in exactly the following order:
an integer representing the distance in CSS pixels from the left edge of the image to the center of the circle
an integer representing the distance in CSS pixels from the top edge of the image to the center of the circle
a non-negative integer, representing the radius of the circle, in CSS pixels
Polygon coordinates
A comma-separated list of at least six integers, with the total number of integers in the list being even (that is, six or eight or ten numbers, and so on). Each pair of integers represents a coordinate, in CSS pixels, given as the distances from, respectively, the left and the top of the image; all the coordinates together represent the points of the polygon, in order.
Sandbox “allow” keywords list
An unordered set of unique space-separated tokens, each of which is a case-insensitive match for one of the following literal strings:
"allow-forms"
"allow-scripts"
"allow-top-navigation"
"allow-same-origin"
Because an unordered set of unique space-separated tokens can contain zero tokens, this datatype also allows the following:

the empty string
any string consisting only of space characters
List of MIME types
A set of comma-separated strings, each of which is a valid MIME type, with no parameters.
List of character-encoding names
An ordered set of unique space-separated tokens, each of which must be a valid character encoding name that specifies an ASCII-compatible character encoding.
Pattern
A regular expression that must match the JavaScript Pattern production as specified in [ECMA 262].
Local date and time
The following parts, in exactly the following order:
A date.
The literal string "T".
A time.
Example:

1985-04-12T23:20:50.52
1996-12-19T16:39:57
Date
A valid full-date as defined in [RFC 3339], with the additional qualification that the year component is four or more digits representing a number greater than 0.
Example:

1996-12-19
Month
The following parts, in exactly the following order:
Four or more digits representing a number greater than 0.
The literal string "-".
Two digits, representing the month month, in the range 1 ≤ month, ≤ 12.
Example:

1996-12
Week
The following parts, in exactly the following order:
Four or more digits representing year year, where year > 0.
The literal string "-W".
Two digits, representing the week week, in the range 1 ≤ week ≤ maxweek, where maxweek is either 52 or 53, depending on the particular year.
Example:

1996-W16
Time
A valid partial-time as defined in [RFC 3339].
Examples:

23:20:50.52
17:39:57
E-mail address
Any string that matches the following [ABNF] production:
1*( atext / "." ) "@" ldh-str 1*( "." ldh-str )
…where atext is as defined in [RFC 5322], and ldh-str is as defined in [RFC 1034].

That is, any string which matches the following regular expression:

/^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
Examples:

foo-bar.baz@example.com
List of e-mail addresses
A set of comma-separated strings, each of which is a valid email address.
Simple color
A string exactly seven characters long, consisting of the following parts, in exactly the following order:
A "#" character.
Six characters in the range 0–9, a–f, and A–F.
Color keywords (for example, strings such as “red” or “green”) are not allowed.

String without line breaks
Any string that contains no line feed (U+000A, “LF”) or carriage return (U+000D, “CR”) characters.
Non-empty string
Any string that is not empty.

