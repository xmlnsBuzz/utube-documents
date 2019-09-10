# CSS 사용법 - Binding CSS with HTML
---

CSS 를 HTML문서에 결합하여 적용하는 방법에 대해 알아본다. HTML4.0 이전 버전에서는 문서 작성자들이 CSS를 적극적으로 사용하지 않았다. 왜냐하면 서양이나 일본보다 정보유입이 3~5년 늦는 우리나라의 경우 2000년대 초반까지도 인터넷상에 CSS에 관한 한글정보가 별로 없어서 CSS의 존재를 잘 모르기도 했거니와 알고 있어도 별 관심을 가지지 않았는데, 그 이유 중 으뜸은 <span class="anBra">font</span> element의 존재였다고 생각하는데, 정확히 말하면 font element의 color attribute 때문이었다 할 것이다. 대개 초보자가 가장 신기해 하는 것이 HTML 문서로 color를 표현하는 것인데, 그 중에서도 글자색을 바꾸는 것에 큰 매력을 느끼기 때문에..

```html
<h1 align="center">가운데 맞춤</h1>
...
<font color="red">아흐~ 신기해라...</font>
...
<tr bgcolor="gray"> ... </tr>
...
```
다음으로는 bgcolor attribute, align attribute 등을 꼽을 수 있는데, 이처럼 color, bgcolor, align 등의 편집기능이 HTML과 CSS에 병존했으므로 잘 알지도 못하는 CSS라는 새로운 언어를 구태여 새로 배워 쓰는 것에 주저했으리라 본다. 미지의 것을 배워야 된다는 것에 대한 걱정이랄까... 웬만한 서식(style)편집은 HTML 자체로 해결되었으니 말이다. 물론 이런 attribute들은 HTML5에서는 모조리 폐기(deprecated)되었다.

그러다 2006년 언저리에 FireFox가 한국에 상륙하며 한국에도 웹표준화 광풍이 한차례 휩쓸고 지나간 후에야 비로소 많은 사람들이 CSS에 대해 인식하게 되었고 관심을 가지고 시도하는 사람들이 늘어나게 되었는데 이번 시간에는 CSS를 HTML에 결합하는 방법에 대해 알아보자.

<hr class="thin">

CSS를 HTML에 결합하는 방법은 HTML file 입장에서 크게 3가지로 분류할 수 있다.

## 선언된 위치(Positions of declaration)에 의한 분류
- Internal Style Sheet
  - Inline
  - Embeded

- External Style Sheet
  - Linked

## CSS rule이 나타나는 순서(Order of Apperance)에 의한 분류

Inline Style을 제외하고 아래의 두가지 방법의 경우 CSS rule이 나타나는 순서에 의해 cascading의 우선적용대상이 된다.

- Embeded
- Linked


## Internal Style Sheet

Internal Style Sheet는 Inline, Embeded 방식 두가지 다 HTML 파일 속에 CSS property와 Value를 지정하는 방법인데, 해당 HTML 파일에서만 적용된다는 큰 단점이 있다. 따라서 W3C에서 권장하지 않는 방법이다. 간단한 test 목적으로 사용할 수는 있을 것이다.

### Inline type
Tag 속에 style attribute를 사용하여 CSS property와 value를 지정한다.
```html
<p style="color:red;">
  Contents
</p>
```
### Embeded type
html의 head section에 style element 속에 지정한다.

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Embeded Style Sheet</title>
  <meta charset="UTF-8" />
  <style>
    .para {
      color: green;
    }
  </style>
</head>

<body>
  <p class="para">
    Contents
  </p>
</body>

</html>
```
<hr class="thin" />

## External stylesheet

구태여 이 방식에서 단점을 말하라 한다면 외부에 CSS file을 따로 만들어 link해야 된다는 점인데, 이 방식은 작성된 CSS rule을 link하는 모든 HTML file에 CSS rule을 일괄적용할 수 있으므로 CSS rule 관리에 편리하고, 이 방법이 W3C에서 적극 권장하는 방법이다.

### Linked type

external.css
```css
.para {
  color: blue;
}
```

html file
```html
<html>

  <head>
    <title>Linked Style Sheet</title>
    <link rel="stylesheet" type="text/css" href="경로/external.css" />
  </head>

  <body>
    <p class="para">
      Contents
    </p>
  </body>

</html>
```

## CSS 사용방식에 의한 우선적용순위

앞에서 본 CSS 적용방식 세가지 중에서 어떤 방식이 적용순위가 높은지 알아보자.

예를 들어

external.css
```css
.para {color: blue;}
```

html file
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>CSS 사용방식에 의한 우선적용순위</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="external.css" />
    <style>
      .para {
        color: green;
      }
    </style>
  </head>
  <body>
    <p class="para" style="color: red;">Contents</p>
  </body>
</html>
```
### 결과

결과는 'Contents'의 글자색이 red가 된다. 

> <span class="red">Contents</span>

이 것은 CSS의 첫글자 <span class="emph">Cascading</span> rule에 의해 가장 가까운 inline style에 적용한 'color: red;'가 적용된다. 즉, 가장 높은 것 부터 낮은 것 까지 나열하면

1. Inline
2. Embeded
3. Linked

순이다. Cascading에 대해서는 따로 '매우' 자세히 설명하기로 한다.




