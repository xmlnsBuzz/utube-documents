# HTML5 Introduction

## Terminology 용어해설
* Markup
* case insensitive
* flow contents
* phrasing content
* must (브라우저에 따라 허용여부가 다를 수 있다.)
* new line
    * U + 000D CARRIAGE RETURN (CR) 문자
    * U + 000A LINE FEED (LF) 문자
    * U + 000D CARRIAGE RETURN (CR) 다음에 U + 000A LINE FEED (LF) 문자가 옵니다. 
* space 
    * U+0020 SPACE
    * U+0009 CHARACTER TABULATION (tab)
    * U+000A LINE FEED (LF)
    * U+000C FORM FEED (FF)
    * U+000D CARRIAGE RETURN (CR)
* UA (User Agent)

* ***viewport에 대한 설명<sup>추가</sup>

## HTML Syntax 문법
1. The doctype declaration
```html
<!DOCTYPE html>
```

2. Character encoding declaration(charset)  (문자 인코딩 선언)
    * encoding: 인간의 문자(가나다 abc 등)를 컴퓨터 문자(utf-8 ascii 등)로 변환
    * decoding: 컴퓨터 문자를 인간의 문자로 변환
```html
<meta charset="UTF-8" />
```
3. Elements  

4. Attributes 

5. Text and character data (일반 텍스트와 escape 문자)

6. Character references 문자 참조(escape)

7. Comments 주석



    
## HTML elements의 기능에 의한 분류
* https://www.w3.org/TR/2012/WD-html-markup-20121025/elements-by-function.html#elements-by-function

    

    ### The root element
    * html – root element

    ### Document metadata
    * head – document metadata container
    * title – document title
    * base – base URL
    * link – inter-document relationship metadata
    * meta – metadata <sup>Changed</sup>
    * style – style (presentation) information

    ### Scripting
    * script – embedded script
    * noscript – fallback content for script

    ### Sections
    * body – document body
    * section – section <sup>New</sup>
    * nav – group of navigational links <sup>New</sup>
    * article – article <sup>New</sup>
    * aside – tangential content <sup>New</sup>
    * h1 – heading
    * h2 – heading
    * h3 – heading
    * h4 – heading
    * h5 – heading
    * h6 – heading
    * hgroup – heading group <sup>New</sup>
    * header – header <sup>New</sup>
    * footer – footer <sup>New</sup>
    * address – contact information

    ### Grouping content
    * p – paragraph
    * hr – thematic break <sup>Changed</sup>
    * br – line break
    * pre – preformatted text
    * blockquote – block quotation
    * ol – ordered list
    * ul – unordered list
    * li – list item
    * dl – description list
    * dt – term or name
    * dd – description or value
    * figure – figure with optional caption <sup>New</sup>
    * figcaption – figure caption <sup>New</sup>
    * div – generic flow container

    ### Text-level semantics
    * a – hyperlink <sup>Changed</sup>
    * em – emphatic stress
    * strong – strong importance
    * small – small print <sup>Changed</sup>
    * s – struck text <sup>Changed</sup>
    * cite – cited title of a work <sup>Changed</sup>
    * q – quoted text
    * dfn – defining instance
    * abbr – abbreviation
    * time – date and/or time <sup>New</sup>
    * code – code fragment
    * var – variable or placeholder text
    * samp – (sample) output
    * kbd – user input
    * sub – subscript
    * sup – superscript
    * i – offset text conventionally styled in italic <sup>Changed</sup>
    * b – offset text conventionally styled in bold <sup>Changed</sup>
    * u – offset text conventionally styled with an underline <sup>Changed</sup>
    * mark – marked (highlighted) text <sup>New</sup>
    * ruby – ruby annotation <sup>New</sup>
    * rt – ruby text <sup>New</sup>
    * rp – ruby parenthesis <sup>New</sup>
    * bdi – BiDi isolate <sup>New</sup>
    * bdo – BiDi override
    * span – generic span

    ### Edits
    * ins – inserted text
    * del – deleted text
    ### Embedded content

    * img – image
    * iframe – nested browsing context (inline frame)
    * embed – integration point for plugins <sup>New</sup>
    * object – generic external content
    * param – initialization parameters for plugins
    * video – video <sup>New</sup>
    * audio – audio stream <sup>New</sup>
    * source – media source <sup>New</sup>
    * track – supplementary media track <sup>New</sup>
    * canvas – canvas for dynamic graphics <sup>New</sup>
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
    * input – input control <sup>Changed</sup>
    * button – button
    * select – option-selection form control
    * datalist – predefined options for other controls <sup>New</sup>
    * optgroup – group of options
    * option – option
    * textarea – text input area
    * keygen – key-pair generator/input control <sup>New</sup>
    * output – result of a calculation in a form <sup>New</sup>
    * progress – progress indicator <sup>New</sup>
    * meter – scalar gauge <sup>New</sup>

    ### Interactive elements
    * details – control for additional on-demand information <sup>New</sup>
    * summary – summary, caption, or legend for a details control <sup>New</sup>
    * command – command <sup>New</sup>
    * menu – list of commands <sup>Changed</sup>

#### HTML elements 

#### Common contents models 공통 컨텐츠 모델
* Flow elements
* Metadata elements
* Phrasing elements
-----
