
# Emmet 2.0 기초 <img src="../img/emmet-logo.png" alt="emmet logl" style="width:100px; float:right;position:relative; top:-40px;" />
---
참고 사이트 : https://emmet.io

## Emmet과 snippets을 사용하는 이유

Emmet이나 Snippets을 사용하는 이유는 많은 양의 code를 간단하고 손쉽게 입력할 목적으로 만든 것이다. Emmet은 과거 zen coding이라 불리웠다가 현재 emmet으로 부르고 있다.

### Emmet
Emmet은 VSCode 설치할 때 내장되어서 기본적으로 제공하는 abbreviations(약자)다. Emmet 약자는 HTML은 물론 CSS, SCSS, SASS, LESS 등 stylesheet관련 언어에서도 사용하기 때문에 예약된 약자의 수가 매우 많다. 하지만 걱정말기 바란다. 왜냐하면 충분히 예측가능하도록 만들었으며. 연관성있는 code들이 현재의 입력지점 근처에 추천검색창을 widget으로 보여주기 때문에 일일히 외워야 될 필요는 없다고 생각하다.

기본적으로는 설치된 emmet의 내용을 임의로 수정하기 힘들지만, 이 또한 custom emmet으로 customization할 수 있다. Emmet advanced 과정에서 다루기로 한다.

### Snippets
Snippets은 사용자가 직접 약자와 code fragment(흔히 '코드조각'이라 부르는)를 손수 만들어 두었다가 지정한 약자를 입력하고 <code>tab</code> 또는 <code>enter</code>를 눌러 해당 내용을 입력시키는 방법이다. 이 또한 Snippets section에서 다룬다.


## Emmet 실습

Emmet 2.0은 html, css, scss, less, js, xml, xsl 등에서는 몰론이고 php, asp,jsp 등의 서버언어 json, vue, react 등에도 확장하여 사용할 수 있는 emmet 약자(abbreviations) 및 코드조각(snippets)들이다.  

emmet은 자동으로 element (start tag, end tag, attbutes, attribute value, text content)를 만들어 주는 기능을 한다. HTML' 문서내에 <span class="anBra">a</span> element를 만드는 것을 예로 들면서 emmet coding의 본격적인 내용으로 들어가 본다.

- a<code>tab</code> : a를 입력하고 space없이 <code>tag</code> key를 친다.

```html
<a href="|">|</a>
```

위와 같이 
- 'href' attribte가 포함된 'a' element가 만들어졌으며
- 희미하게 보이지만 '|' (vertical bar)가 3개 보인다.
    - 첫번째 '|'는 href 속성값 입력 따옴표 속에서 깜빡이고, 나머지 2개는 짙은 회색으로 보인다.
    - 깜빡이는 '|'에 '#'을 입력한 다음 <code>tab</code> key를 친다.
    - Cursor가 <span class="anBra">a</span> tag 속에 하이퍼링크 글자를 입력하는 위치(edit point)으로 이동한다. 적당한 글자를 입력하고 <code>tab</code>을 친다.
    - Cursor가 end tag <span class="anBra">/a</span> 뒤로 빠져나오므로써 다른 coding을 진행하기 쉽게 해준다.


<hr class="thin">

<!-- ### 추천검색어(Suggestion) 사용 여부 설정

추천검색어 사용여부를 결정하는 setting

```json
    "editor.quickSuggestions": {
        "other": true, // false로 바꾸면 추천검색창이 안뜬다.
        "comments": false,
        "strings": false
    },
}
``` 

<hr class="thin">
-->
## div element 만들기

<span class="anBra">div</span>의 경우는 가장 많이 쓰는 element인 만큼 입력이 더 쉽다. 예를 들어 unique라는 id와 advance라는 class를 가진 div를 만들겠다면

- .advance#unique<code>tab</code> : #unique.advance 순서도 가능함

와 같이 입력하면

```html
<div class="advance" id="unique">|</div>
```
위와 같이 입력한 class, id 순으로 div 가 만들어 지며, cursor는 div start tag과 end tag 속에 들어가 있다.


<hr class="thin">

## Edit point

Edit point(입력지점)란 앞에서와 같이 tag이 만들어진 다음 <code>tab</code>을 쳤을 때 cursor가 jump하여 멈추는 곳이다. 만약 snippets을 사용하다가 <code>tab</code>을 더 눌러 입력할 지점을 지나쳤다면 <code class="shift">Shift</code> <code>tab</code>으로 역방향 이동도 가능하다. 하지만 <code>escape</code>를 치거나, 마우스나 화살표키 등으로 cursor를 임의로 이동시키면 edit point(s)는 사라지고, <code>tab</code> key는 여러칸을 띄우는 원래의 기능으로 바뀐다.

물론 이럴 때는 입력지점을 찾아주는 emmet 명령으로 입력지점을 찾을 수 있는데, 그것에 대해서는 emmet keyboard shortcuts 부분에서 다루겠다. 



<hr class="thin">

## Emmet Syntax

## <span class="emph">Emmet 약자 사이, 약자의 끝 글자와 <code>tab</code> 사이의 space는 허용 안된다.</span>


### Elements Operators : element's name
Element operator는 element이름을 입력하고 tab key를 눌러 element를 완성한다. Emmet의 경우 element의 전체이름을 입력하지 않고 약자를 사용하는데 예를 들어

- hdr<code>tab</code>

```html
<header class="ab"></header>
```
element 가 완성된다.



<blockquote class="note">Element 이름을 지정하지 않아도 emmet이 자동으로 div라 인식한다는 것은 그 동안 div element가 얼마나 광범위하게 쓰였는지를 확인시켜주는 방증이기도 하다. div를 남발하지 말자.</blockquote>

### Nesting : <span class="emph fsize24">></span>
Element들의 부모와 자식관계를 만들어 준다.

- p>span<code>tab</code>

```html
<p>
    <span></span>
</p>
```
### Sibling : <span class="emph fsize24">+</span>
Element들의 형제관계를 만들어 준다.

- div+p<code>tab</code>

```html
    <div></div>
    <p></p>
```

### Climb-up : <span class="emph fsize24">^</span>

^ 기호 하나 당 HTML tree 구조상에서 한 항렬씩 올라가 element를 만든다.

- div><span class="emph">p</span>>span^<span class="emph">blockquote+span</span><code>tab</code>

```html
<div>
    <p><span></span></p>
    <blockquote></blockquote>
    <span></span>
</div>
```

2개를 쓰면 두 항렬 올라간다.
- <span class="emph">div</span>>p>span^^<span class="emph">blockquote</span><code>tab</code>

```html
    <div>
        <p><span></span></p>
    </div>
    <blockquote></blockquote>
```
### Grouping : <span class="emph fsize24">( )</span>
많은 emmet 약어를 사용할 경우, 괄호로 Grouping하면 가독력을 높일 수 있다. 위의 climb-up이 어렵게 느껴진다면 grouping으로 대체시킬 수도 있다. 예를 들어 바로 위의

- div>p>span^^blockquote 

를 grouping한 아래의 code는

- (div>p>span)+blockquote

동일한 결과를 얻는다. 또 아래처럼 emmet 약어를 많이 사용해 머리가 복잡해 질 때



### Multiplication : <span class="emph fsize24">*</span>
같은 element를 여러개 만든다.

- div>p<span class="emph">*</span>3

```html
<div>
    <p></p>
    <p></p>
    <p></p>
</div>
```
### 괄호의 종류와 이름

<blockquote class="note">
    괄호를 부르는 이름은 영어로 저마다 다르다. <br>[square bracket, bracket], <br>
    {curly bracket, curly brace}  <br>
    &lt;angle bracket><br> 
    (round bracket, parenthesis)
</blockquote>


### Attribute Operators
Attirbute operator는 속성값을 생성하는 operator다. 
#### id token : <span class="emph fsize24">#</span>

- #idName

#### class token : <span class="emph fsize24">.</span> (period)

- .className

#### Custom attributes : <span class="emph fsize24">[ ]</span>

- a[title="google"]

### Item numbering : <span class="emph">&#x0024;, &#x0024;&#x0024;, &#x0024;&#x0024;&#x0024;</span> ...

- ul>li.item$*5

- ul>li.item$$$*5


### Changing numbering base and direction



#### Counter base value : <span class="emph fsize24">@</span>n

- ul>li.item$@3*5

#### Reverse counter direction : <span class="emph fsize24">@-</span>
- ul>li.item$@-*5

### Text : <span class="emph fsize24">{ }</span>

- a>{click}
- a{Click}+b{here}
- a{Click}>b{here}

### Trigger Suggest
<code class="ctrl">Ctrl</code> + <code>space</code>를 눌러 수동으로 작동시킬 수 있다.


<!-- ## 우선적으로 알아야 될 emmet, snippets 관련 settings



### editor.action.triggerSuggest (kb)
<code class="ctrl">Ctrl</code> + <code>space</code>를 눌러 수동으로 작동시킬 수 있다.

### emmet.showExpandedAbbreviation (st)

- always
- never
- inMarkupAndStylesheetFilesOnly



### editor.emmet.action.expandAbbreviation (kb: tab)

tab key를 눌러서 emmet 실행 

### editor.suggestOnTriggerCharacters 
제안창을 촉발시키는 문자(들)에서 제안창 사용여부 

### editor.suggestFontSize



### 

```json
{
  "key": "ctrl+space",
  "command": "editor.action.triggerSuggest",
  "when": "editorHasCompletionItemProvider && textInputFocus && !editorReadonly"
}
```


### editor.wordBasedSuggestions
현재 문서내에서 사용중인 단어를 제안창에 포함할 것인지 여부

### emmet.showSuggestionsAsSnippets true,

### editor.snippetSuggestions
- top
- bottom
- inline (default)
- none -->
