# CSS Font-Module-<span class="emp-h">Level 3</span>

---
이번 강의에서 다루는 Font-Module-Level-3는 비단 web page 뿐만 아니라 모든 디자인에서의 시각적 필수요소인 font를 다룬다. '웹디자인'에서 font는 웹페이지의 가장 중요한 요소인 '정보의 전달'이 주목적이지만, font를 잘 알고 활용하면 font 자체만으로도 웹페이지에 미적 요소를 표현할 수 있기 때문에 대학의 시각디자인학과(VC : Visual Communication 혹은 VD : Visual Design등으로 불림)의 수업에서 font가 매우 큰 비중(어떤 교수는 시각디자인에서의 font 비중을 90% 이상이라고도 주장한다.)을 차지하므로 Font module level 3를 CSS section에서 가장 먼저 다루는 것은 당연하다고 할 수 있다.

하지만 대개의 경우, 심지어 초보자의 경우도 자신이 font에 대해 스스로 잘 알고 있다고 생각하는 경우를 흔히 보는데, 이 것은 반은 맞고 반은 틀렸다. 왜냐하면 태어나 지금까지 책, TV, 웹페이지 등의 매체를 통해 수 많은 문자를 읽어왔으므로 최소한 남이 만든 문서(모든 매체의)를 읽는 것은 당연히 잘 알고 있다. 하지만 반대 경우인 웹페이지 제작을 해보지 않았다면 '제작자(Author) 입장에서의 font'에 대해서는 잘 모른다고 봐야 한다.

따라서 이 채널에서는 이번 Font-Module-Level-3 section과 뒤에 나올 Text-Module-Level-3를 통해 웹페이지에서 font 다루는 방법에 대해 논의할 것이다.

## Font property로 CSS를 출발하는 이유...

CSS property 중 font 관련 property를  처음 소개한다. 그 이유는 
- CSS 입문자의 관심을 가장 많이 끈다.
- Font관련 property들이 CSS에서는 가장 기본적이기도 하지만, 웹페이지를 꾸미는데 가장 큰 비중을 차지하는 중요한 property다.
- 축약형(Shorthand) propery를 사용할 때 반드시 <span class="emph">유의할 점</span>이 무엇인지 알 수 있는 대표적인 property가 font property이다.


<hr class="thin" />

## Font 관련 properties와 short hand(간편형) property에 관하여...



대부분의 CSS property들은 Longhand properties와 그 것들을 간략하게 사용할 수 있는 Shorthand property가 마련되어 있다. 그렇다고 모든 CSS module마다 shorthand property가 있는 것은 아니지만, 예를 들어 font와 관련해서는 다음과 같다.


### Long hand property

- <span class="emp-i">font-style</span> ::= normal | italic | oblique <span class="emp-i">&lt;angle(-90 to 90, default 14)>deg</span>
- <span class="emp-i">font-weight</span> ::= normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900
- <span class="emp-i">font-size</span> ::= &lt;absolute-size&gt; | &lt;relative-size&gt; |
          &lt;length-percentage&gt;
- <span class="emp-i">line-height</span> ::= normal <span class="emp-i">(대략 1.2)</span> | &lt;number> | &lt;length> | &lt;percentage>
- <span class="emp-i">font-family</span> ::= [ &lt;family-name&gt; | &lt;generic-family&gt; ]#
- <span class="emp-i">font-variant</span> ::= normal | none | [ &lt;common-lig-values&gt; ||
          &lt;discretionary-lig-values&gt; || &lt;historical-lig-values&gt; ||
          &lt;contextual-alt-values&gt; || [ small-caps | all-small-caps |
          petite-caps | all-petite-caps | unicase | titling-caps ] ||
          &lt;numeric-figure-values&gt; || &lt;numeric-spacing-values&gt; ||
          &lt;numeric-fraction-values&gt; || ordinal || slashed-zero ||
          &lt;east-asian-variant-values&gt; || &lt;east-asian-width-values&gt; ||
          ruby || [ sub | super ] ]
- <span class="emp-i lev3">font-stretch</span> ::= normal | ultra-condensed | extra-condensed | condensed |         semi-condensed | semi-expanded | expanded | extra-expanded | ultra-expanded

![img](img/weight-width-variations.png "Font weight width variations")          

<hr class="thin" />

### Short hand property

이 것들을 간편화한(Short handed)한 Shorthand property <span class="emp-i">font</span> property가 있다. 물론 

- <span class="emp-i">font</span> ::= [[ &lt;'<span class="emph">font</span>-style'> || &lt;<span class="emph">font</span>-variant-css21> || &lt;'<span class="emph">font</span>-weight'> || &lt;'<span class="emph">font</span>-stretch'> ]? &lt;'<span class="emph">font</span>-size'> [ / &lt;'line-height'> ]? &lt;'<span class="emph">font</span>-family'> ] | caption | icon | menu | message-box | small-caption | status-bar

<hr class="thin" />

## Longhand와 shorthand를 마구잡이로 썼을 때 생길 수 있는 일.

<code class="css">CSS file</code>
```css
p {
   font-style: italic;
   font-variant: small-caps;
   font-weight: 500;
   font-stretch: expanded;
   font-size: 16px;
   line-height: 2;
   font-family: sans-serif;
}
```
위의 code를 shorthand property인 '<span class="emp-i">font</span>'를 사용하여 표현하면 아래와 같다.

```css
p {
   font: italic small-caps 500 expanded 16px/2 sans-serif;
}
```

## 이 것 써도 돼? 사이트 - 'Can I Use' 사이트
이 채널 HTML section 초반부에 3편의 'HTML 5++ 예비지식'에서도 언급했지만 현재 UA(User Agent)에 따라 현재 HTML, CSS 등의 spec이 똑같이 반영되어있지 않다. CSS3의 경우도 마찬가지다. 예를 들어 font-stretch property의 경우는 FireFox에서만 일부 표현되고 나머지 브라우저에서는 작동하지 않는다. 

따라서 작동되지도 않는 property들은 써봐야 소용없으므로 당분간 고려할 필요는 없지만, 다만 그런 property들이 어떤 것인지 알아 둘 필요는 있다.

고맙게도 'https://caniuse.com/'(can i use) 이라는 사이트에서 그 여부를 알 수 있다. <span class="emp-i">font-variant</span>를 사용여부에 대해 알아보자. 감사하는 마음으로 이 사이트를 잘 이용하자.

