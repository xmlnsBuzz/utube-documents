# Youtube 동영상 계획표

> 모든 동영상 강좌에는 수업목표(coding이든 설명이든)를 동영상 시작과 함께 제시하고 결과를 체크한다.


## HTML

-----

## W3C Specifications 

### HTML

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

* [Youtube 동영상 계획표](#youtube-동영상-계획표)
	* [HTML](#html)
	* [W3C Specifications](#w3c-specifications)
		* [HTML](#html-1)
			* [Introduction 소개](#introduction-소개)
			* [Terminology 용어해설](#terminology-용어해설)
			* [HTML Syntax 문법](#html-syntax-문법)
			* [HTML elements의 기능별 분류](#html-elements의-기능별-분류)
			* [HTML elements](#html-elements)
			* [Common contents models 공통 컨텐츠 모델](#common-contents-models-공통-컨텐츠-모델)
			* [Global attributes 전역 속성](#global-attributes-전역-속성)
		* [CSS](#css)
				* [CSS Syntax](#css-syntax)
	* [SCSS + CSS](#scss-css)
	* [VSCode Editing Techs](#vscode-editing-techs)
		* [Basic editing](#basic-editing)
		* [VSCode Basic editing](#vscode-basic-editing)
	* [VSCode Extensions](#vscode-extensions)
		* [Live Sass Compiler, Server, Preview dependancy(extension의 dependancy tab)에 대한 설명](#live-sass-compiler-server-preview-subdependancyextension의-dependancy-tab에-대한-설명sub)
		* [SASS Formatter](#sass-formatter)
	* [Utility Programs](#utility-programs)
		* [clcl](#clcl)
		* [Folder Marker](#folder-marker)
		* [Toby](#toby)
	* [Git](#git)

<!-- /code_chunk_output -->
---
#### Introduction 소개

#### Terminology 용어해설
viewport

#### HTML Syntax 문법

#### HTML elements의 기능별 분류
* https://www.w3.org/TR/2012/WD-html-markup-20121025/elements-by-function.html#elements-by-function

    ##### viewport

    ##### The root element
    * html – root element

    ##### Document metadata
    * head – document metadata container
    * title – document title
    * base – base URL
    * link – inter-document relationship metadata
    * meta – metadata <sup>Changed</sup>
    * style – style (presentation) information

    ##### Scripting
    * script – embedded script
    * noscript – fallback content for script

    ##### Sections
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

    ##### Grouping content
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

    ##### Text-level semantics
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

    ##### Edits
    * ins – inserted text
    * del – deleted text
    ##### Embedded content

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

    ##### Tables
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

    ##### Forms
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

    ##### Interactive elements
    * details – control for additional on-demand information <sup>New</sup>
    * summary – summary, caption, or legend for a details control <sup>New</sup>
    * command – command <sup>New</sup>
    * menu – list of commands <sup>Changed</sup>

#### HTML elements 

#### Common contents models 공통 컨텐츠 모델
* Flow elements
* Metadata elements
* Phrasing elements
#### Global attributes 전역 속성

### CSS

#### HTML 5 default CSS table

#### CSS Syntax
<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->


-----

## SCSS + CSS

-----

## VSCode Editing Techs
### Basic editing
1. Selection in Web Browser
    * 브라우저에서의 커저 focusing
    * 더블 & 트리플 클릭
    * Selecting 시작점 cursor focusing + Next selecting point click
1. Common Editor

### VSCode Basic editing
1. Expand & Shrink
    * Ctrl key, Shift key, Ctrl + Shift key

-----

## VSCode Extensions
### Live Sass Compiler, Server, Preview <sub>dependancy(extension의 dependancy tab)에 대한 설명</sub>
### SASS Formatter

document type declaration
document type definition
-----

## Utility Programs
### clcl
### Folder Marker

### Toby

-----

## Git

```css{.line-numbers}

@import "_cadvance_variables";

ul, ol {
    line-height: 1.7;

    li {
        font-size: 16px;
    } 
}
```

```javascript {.line-numbers}
function add(x, y) {
  return x + y
}
```

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

Emoji & Font-Awesome
This only works for markdown-it parser but not pandoc parser.
Enabled by default. You can disable it from the package settings.

:smile:
:fa-car:
Superscript
30^th^
Subscript
H~2~O
Footnotes
Content [^1]

[^1]: Hi! This is a footnote
Abbreviation

*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium
The HTML specification
is maintained by the W3C.
Mark
==marked==
