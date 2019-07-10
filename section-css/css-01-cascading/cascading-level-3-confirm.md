# Cascaded value : 최종간택(揀擇)값
---

## 이 문서를 만든 목적

이 문서에서 다루려고 하는 cascaded value는 결코 쉬운 주제가 아니다. CSS 수업을 한다쳐도 중간단계 이후에나 논의해야 될 문제이다. 왜냐하면 이 내용을 알기 위해서는 최소한 selector, CSS property & value, .css file을 link element로 연결하는 방법등을 어느 정도 알아야 이해할 수 있기 때문이다.

그럼에도 불구하고 이 문서를 먼저 올리는 이유는 유튜브를 비롯하여 인터넷상에서 cascading 전 부분에 대해 한글로 자세히 다룬 데이터를 찾기 힘들고, 다루어도 일 부분만을 다루어 cascading에 대해 시종일관 문맥이 통하지 않기 때문에 각자가 그 단편들을 모아 개인적으로 정리해야 될 것으로 예상되고, 또 대개의 문서가 Cascading Level 2 또는 2.1, 2.2에 대한 내용이라 현재 사용하는 level 3에서 변경되거나 추가된 내용이 누락된 점을 다소라도 가능한 빨리 보완해야 혼동과 혼란을 줄일 수 있다고 판단하여 W3C Cascading Level 3 문서에서 발췌하여 일부는 의역하여 문서와 동영상을 만들었다. 특히 단어선정에 많은 시간 고심했다. 이 문서가 CSS를 알고자 하는 사람에게 약간이라도 도움이 될 수 있으면 좋겠다.

그리고 이 문서가 앞에 놓여 있다고 해서 나중에 볼 수 없는 것도 아니고, 모든 동영상이 그러하듯 나중에라도 cascading에 대해 알아야 될 필요가 생기는 시점이 된다면 그 때 얼마든지 다시 보면 될 것이다.


## 브라우저에 출력되는 CSS value는 어떤 것일까?

<span class="emph">출처(CSS Cascading and Inheritance Level 3) : https://www.w3.org/TR/css3-cascade/ 에서 발췌하여 가능한 내용이 원문에 벗어나지 않는 범위내에서 의역했다.</span>

HTML 문서를 coding 하다보면 대부분 CSS를 다루게 될 것이다. 이 때 HTML 문서의 어떤 element (예들 들어 h1, div, p 등등)에 자신이 원하는 CSS property와 value를 지정하다 보면, 같은 element에 지정한 같은 property 값이 중복되게 마련이다. 이 것은 매우 자연스러운 현상이며, W3C가 CSS를 설계하는 의도이며 기본원칙이다. 따라서 문서가 복잡해질수록 더 많은 CSS property와 value들의 중복지정은 필연적이라해도 과언이 아니다.

그런데 이 경우 중복지정된 값들 중에 어떤 값이 Cascaded value(최종간택값)가 되어 브라우저에 출력되느냐 하는 문제가 생길 수 밖에 없는데, 이 문제가 바로 이 번에 다룰 주제이다.

대개의 경우 HTML element에 결합시킨 CSS {property: value;}는 * 개(0 or More) 이다. ( <span class="emph">*</span> 기호는 W3C spec에서 사용하는 기호로써 <q>없거나 1개 이상</q>이라는 의미로 사용하는 기호다.) 그런데 중복지정된 property value들이 없거나 하나 이상일 경우일지라도 브라우저에 내장된 분석기(parser)는 이 값들 중에 반드시 어떤 값을 최종간택하여 브라우저에 rendering해야만 된다. 그렇다면 어떤 방법으로 최종값을 선택해야 할까. 예들 들어

```html
<section>
    <P id="para" class="graph">Lorem ipsum dolor sit amet.</P>
</section>
```
이렇게 위와 같은 code가 있고, p element의 글자색으로

```css
#para {color: red;}
.graph {color: blue;}
section p {color: green;}
section > p {color: orange;}
```
여러개의 값을 중복되게 지정했을 경우다. 네가지 모두 p element에 color property를 지정하고 있지만 <span class="emph">이 값들 모두를 적용시킬 수는 없다</span>. 따라서 결국 이 값들 중에서 하나만을 선택해야 된다. 아마도 이 부분에 있어서는 CSS에 대한 지식이 어느 정도 있는 사람이라면 구체도(specificity)가 가장 높은 ID selector <span class="emph2">#para</span>에 지정된 'red'가 cascaded value(winning value)로 최종간택값이 된다는 것을 알고있을 것이다.

거기까지 알고 있다면 아래와 같이 !important declaration(중요 선언)을 사용하여
```css
#para {color: red;}
.graph {color: blue;}
section p {color: green;}
section > p {color: orange !important;}
```
<q>section > p</q>로 지정하면 !important 선언이 모든 값을 누르고 cascaded value로 지정되기 때문에 <q>section > p</q>에 지정한 color값 'orange'가
최종간택값이 되는 것도 역시 알겠지만 cascaded value라는 것은 위의 예제에서 처럼 문서작성자가 만든 문서 하나만 가지고 따져질 수 있는 것이 아니다.

이 동영상에서는 cascaded value라는 것이 위의 예제에서 처럼 하나의 문서만이 주체가 되어 그 값이 결정되는 경우와, 나아가 CSS rule을 지정할 수 있는 여러개의 주체들이 만든 문서간의 우선순위나 중요도를 따져서 최종간택값(cascaded value)은 어떤 값이 되느냐에 대해 설명하려고 한다.

<hr class="thin" />

## Cascading (三揀擇)

Cascade(三揀擇)는 어떤 HTML element에 어떤 CSS property와 value가 CSS rule로 지정되었을 경우, 그 element에 지정된 CSS property에 대한 모든 값을 중요도나 우선도와 관계없이 무차별하게 모은 다음, 아래에서 설명하게 될 과정을 통해 우선순위가 가장 높은 단 하나의 간택값 만을 출력한다.

<hr class="thin2" />

### Importance and Origin : CSS rule이 선언된 문서의 출처(origin)와 !important 선언

#### !important 선언은 아래처럼
```css
section > p {color: orange !important;}
```
property value 뒤에 <q>!important</q>를 붙여서 중요도 선언을 하는 것이고

#### Origin(CSS rule의 출처)은 CSS rule을 지정한 주체가 누구냐 하는 것에 대한 문제다.

Cascading에서 다루는 origin은 3개 이다. 문서와 동영상에서는 원문의 영어단어 <q>Origin</q>이라는 단어로 통일하며, 이 단어는 <q>CSS rule을 지정한 문서의 출처</q> 또는 <q>CSS rule을 지정한 주체</q>라는 뜻으로 해석해도 무리가 없을 것이0다.



1. UA(User Agent) : 주로 브라우저를 말하며, <span class="emph">이 문서와 동영상에서는 오직 브라우저만</span>을 말한다. 브라우저에도 CSS rule이 적용되어 있다. 예컨데

```css
head, title, meta, link, style, script ... {
display: none;
}
```
과 같이 HTML 문서의 head를 비롯하여 head 속에 들어가는 element들은 {display: none;} 으로 지정되어 있다. 즉, 브라우저 창에는 보이지 않도록 chrome, safari, firefox 등의 브라우저들이 기본적으로 지정해 놓은 값들이다. 그런데 혹시나 해서 말해 두는데 아래와 같이 자신의 CSS rule을 통해

```css
head, title ... {
display: block;
}
```
로 지정한다고 해도 역시 보이지 않을 것이다. 브라우저라는 것이 원래 그렇게 설계되었기 때문이다. 뭐 기어코 보이게 하겠다면 방법이 없는 것은 아니겠지만 그 것에 대해서는 언급하지 않기로 한다.

2. Author(문서작성자) : HTML 문서를 만드는 사람.

3. User(사용자) : Author가 만든 문서를 브라우저를 통해 보는 사람.

만약 자신이 만든 문서를 자기 스스로 브라우저를 통해 본다면, 그 사람은 Author인 동시에 User다.

이렇게 !important와 위의 3가지 출처를 기준으로 아래와 같은 cascading 우선순위가 매겨지게 된다.

<hr class="thin" />

#### Origin과 Important를 동시에 고려한 우선순위

!important 선언 여부와 CSS rule이 어디로 부터 왔는지(출처)에 따라 아래와 같이 8개로 우선순위를 매길 수 있는데, 아래는 가장 높은 우선순위부터 가장 낮은 것 순으로 내림차순으로 정렬시켰고 주황색으로 표시한 3개는 CSS level 3에서 추가된 것이다. 또한 normal 선언이라는 것은 !important를 선언하지 않은 모든 CSS rule을 말한다.

1. <span class="emph">Transition 선언</span> [transition-level-1]
1. <span class="emph">UA의 !important 선언 (예: head의 display가 none으로 되어 있는 것)</span>
1. 사용자의 !important 선언
1. 문서 작성자의 !important 선언
1. <span class="emph">Animation 선언 </span> [animation-level-1]
1. 문서 작성자의 normal 선언
1. 사용자의 normal 선언
1. UA의 normal 선언

그런데 이 목록중에 3번 '사용자의 important 선언'과 7번 '사용자의 normal 선언' 부분이 이해하기 힘든 부분일 것이다. 예컨데 브라우저로 인터넷에 연결된 어떤 사이트의 문서를 본다고 치자. 그럴
경우(문서작성자와 사용자가 다를 경우) 사용자가 어떻게 important선언을 한다는 것인지 이해가 쉽지 않을 것이라는 말이다.

이 3번과 7번은 다른 말로 'User CSS'라고도 하는데, 이 것에 대해서는 이해를 돕기 위해 딱 한번만 설명하고 더 이상 다루지 않겠다. User CSS를 경험해 보고 싶다면 아래와 같이

```css
body {
background-color: goldenrod;
color: white !important;
}
```
라는 내용으로 'user.css'라는 이름을 붙여 기억할 수 있는 곳에 저장한다.

그리고 notorious한 Internet Explorer를 열고 아래의 순서로 찾아간다.

> Tools > Internet Options > Accessibility

![Internet Option(IE)](../img/ie-internet-options.png "IE Internet Options")

Accessibility 단추를 누르면 아래와 같은 박스가 나오는데, 그림과 같이 체크한 후 'Browse...' 단추를 눌러 위에서 저장한 'user.css'를 찾아 선택하고 'OK'하면

![Internet Option(IE)](../img/ie-Accessibility.png "IE Accessibility")

뭔가 '<span class="emph">색다른</span>' 느낌이 들 것이다.

결국 사용자의 CSS가 작성자의 CSS를 밀어낼 수 있다는 말이다. User CSS는 IE의 경우 초기버전부터 있었고 크롬은 확장을 설치하면 사용할 수 있다고 하며, 이외의 브라우저들은 각자 알아보기 바란다. 이처럼 사용자 마다 각각 다른 User CSS 이기 때문에 더 다루려 해도 할 수 없는 것이다.

<hr class="thin" />

### Specificity : 구체도(具體度)

내가 <q>Specificity(구체도)</q>라고 이름지은 것은 어떤 HTML element에 지정한 CSS selector가 <sapn class="emph">가장 明確하고 보다 細部적</sapn>일 수록 우선순위가 높다는 이유에서다. 

비유적으로 '옆집 김씨 부부'에게 아들 셋이 있는데 첫째 부터 셋째의 이름이 각각
1. 장남 : 일식이
2. 차남 : 이식이
3. 막내 : <span class="emph">삼식이</span>

라고 치자. 이 때 <span class="emph">삼식이</span>를 가리키는 방법은 여러가지다. 예컨데 앞에 붙이는'옆집 김씨 부부'는 생략하고

- 막내
- 셋째
- 일식이 둘째 동생
- 이식이 첫째 동생
- 장남도 차남도 아닌 아들
- 장남과 차남을 제외한 나머지 아들
- ...
- <span class="emph">삼식이</span>

이 중에서 <span class="emph">가장 명확</span>한 명칭은 앞에 나오는 상대적인 명칭이 아닌 위의 목록 끝에 있는 절대적 명칭 <span class="emph">삼식이</span> 이고, 이 것은

```css
#para {color: red;}
.graph {color: blue;}
```
위의 CSS rule에서 처럼 이곳 저곳 여러 class에 동시에 속할 수 있는 class selector .graph 보다, 오직 하나뿐인(one and only) id selector의 specificity가 가장 높아서 #para selector에 지정한 {color: red} 가 브라우저에 rendering되는 actual value로 간택되는 것과 같다. 또한 <span class="emph">보다 구체적</span>이라는 것은

```html
<section>
    <P>Lorem ipsum dolor sit amet.</P>
    <P>Lorem ipsum dolor sit amet.</P>
</section>
```
위의 HTML code 속의 2개의 <span class="anBra">p</span> element에 아래와 같이

```css
section p {color: blue;}
/* 문서내의 모든 'section의 자손'인 모든 p : specificity 002 */

p {color: green;}
/* 문서내의 모든 p : specificity 001 */
```
CSS rule을 적용했을 경우 2개 모두 {color: blue}가 actual value가 되는데, 그 이유는 위에 붙인 주석처럼 첫 번째 selector와 두 번째 selector를 비교해 보면<span class="anBra">p</span> element에 <span class="emph">모든 section의 자손</span>이라는 한 마디를 더 수식하고 있다는 이유 때문이다. 즉, HTML element <span class="emph">p</span>를 더 구체적이고 명확하게 가리키는 표현이기 때문에 간택된다는 뜻이다.  

아래의 code를 보면 이해가 보다 쉬울 것이다.

```html
<body>
    <section>
        <p>paragraph</p>
    </section>
    <div>
        <p>paragraph</p>
    </div>
        <p>paragraph</p>
</body>    
```
이 code에 나타나는 3개의 <span class="anBra">p</span>를 보자. 첫번째는 section의 자식이고, 두번째는 div의 자식, 3번째는 body의 자식이다. 따라서 첫 번째 p element를 가리킬 때 <span class="emph">모든 p 보다는 'section의 자식 p'</span>라는 표현이 더 구체적이고 더 명확한 것을 알 수 있다.


따라서 위의 위의 code에서는, 아래에서 설명할 '뒤에 나타나는 selector가 순서상 우선'이라는 cascading 규칙보다 '구체성이 높은 selector가 우선'이라는 규칙이 앞서므로 2개의 <span class="anBra">p</span>element 모두 {color: blue;} 가 적용된 것이다.

또한 위의 明確性과 具體性을 동시에 다루어야 할 경우 명확성과 구체성 두 가지를 모두 합쳐 specificity(구체도)가 높은 selector가 이기게 된다. 여기서 '이긴다'는 말은 '브라우저에 render될 actual value로 간택된다'는 말이고, specificity에 대해서는 뒤에 나오는 구체도 계산방법에서 자세히 설명한다.

<hr class="thin" />

### Order of Appearance : 나타나는 순서(先後관계)
만약 앞의 두 가지 '!important 선언과 Origin', 'Specificity'를 가지고도 우열을 가릴 수 없다면 그 때는 '나타나는 순서'에 의해 cascaded value가 결정된다.

```html
<header>
    <h1>Title</h1>
    <p>Paragraph</p>
</header>
```
위 code의 <span class="anBra
">p</span> element는 <span class="anBra
">header</span>를 부모로 둠과 동시에 <span class="anBra
">h1</span>을 형으로 둔 형제관계이다.
```css
header>p {color: red;}
/* Specificity 002 */

h1+p {color: green;}
/* Specificity 002 */
```

이 경우 나중에 나오는 CSS rule이 앞에 나오는 CSS rule을 'override'하여 h1+p에 지정한 {color: green;}이 cascaded value가 된다. 그러나 만약 위 code에서 순서가 바뀌어 header>p가 나중에 나온다면 반대로 된다. "주인공은 마지막에 나온다"는 말이 여기서도 통하나 보다.


## Calculating of selector's Specificity : Selector 구체도 계산법

출처(Calculating of selector's Specificity) : https://www.w3.org/TR/selectors-3/#specificity


Selector의 구체도는 아래와 같이 계산한다.

우선 a-b-c 의 3자리 숫자단위를 상정한다. 

- ID selector의 갯수를 세어 a 자리에 (= a)
- Class selectors, attributes selectors, and pseudo-classes의 갯수를 세어 b 자리에 (= b)
- Type selectors와  type selector에 결합된 pseudo-elements의 갯수를 세어 c 자리에 (= c)
- Universal selector(*)는 계산하지 않는다. 즉, 0개 이다.

Selector와 결합된 부정의사 클래스(:not)는 다른 class selector처럼 계산하지만 ':not' 자체는 의사 클래스로 계산하지 않는다.  

이렇게 a-b-c 를 결합하여 3자리 숫자를 만든 결과치가 클수록 specificity가 높다. 그런데 이 것은 Specificity 자체의 계산에서 높다는 의미일 뿐이고, 최종적으로 간택되는 값은 앞에서 언급한 Important, Origin, Order of appearance 등과 같이 따져봤을 때도 가장 높은 값이 간택되는 것이다.

Example
```html
*               /* a=0 b=0 c=0 -> specificity =   0 */
li              /* a=0 b=0 c=1 -> specificity =   1 */
ul li           /* a=0 b=0 c=2 -> specificity =   2 */
ul ol+li        /* a=0 b=0 c=3 -> specificity =   3 */
h1 + *[rel=up]  /* a=0 b=1 c=1 -> specificity =  11 */
ul ol li.red    /* a=0 b=1 c=3 -> specificity =  13 */
h1~p:hover      /* a=0 b=1 c=2 -> specificity =  12 */
li.red.level    /* a=0 b=2 c=1 -> specificity =  21 */
#x34y           /* a=1 b=0 c=0 -> specificity = 100 */
#s12:not(foo)   /* a=1 b=0 c=1 -> specificity = 101 */
```
위의 내용에서는 ID, CLASS, TYPE 3 종류 정도만 기억해 두자. 왜냐하면 세부적인 specificity까지 따져야 될 일은 많지 않기 때문이다. 하지만 그런 일이 생긴다면 이 페이지를 참고 하든지 W3C의  https://www.w3.org/TR/selectors-3/#specificity 부분을 참조하면 된다.













<!-- ## !important 선언 및 CSS rule의 Origin(출처)

선언 원점

선언 된 규칙의 출처는 그것이 어디서 왔는지를 나타냅니다. 규칙에는 세 가지 기원이 있습니다.

1. 사용자 에이전트 - 일반적으로 브라우저입니다. 브라우저에는 기본 스타일이있는 "사용자 에이전트 스타일 시트"가 있습니다. 예를 들어, 대부분의 브라우저에서 기본 스타일은 다음과 같습니다.
```css
head {
  display: none;
}
```

2. 웹문서 작성자 - 이것은 웹 사이트를 만드는 사람을 나타냅니다. 사용자 에이전트가 처리 한 HTML과 CSS를 작성하는 사람. 작성자가 작성한 스타일은 인라인 또는 외부 스타일 시트에 링크하여 포함됩니다.

```html
<p style=“color: red;">Lorem ipsum</p>
```

3. 사용자 - 웹 사이트를 사용하는 사람을 나타냅니다. 이 사람은 자신이 방문한 모든 웹 사이트에서 브라우저 내에서 사용할 수있는 자체 CSS를 포함 할 수 있습니다. 사용자 정의 스타일은 일반적으로 내게 필요한 옵션 문제와 관련이 있습니다 (예 :

```css
p { font-size: 18px; }
a { text-decoration: underline; }
```

4. Important 선언
CSS rule에 !important선언이 되었는지 또는 normal로 규정되었는지에 따라 우선순위가 결정된다. !important declaration이 될 때까지 모든 CSS rule은 정상으로 간주된다.

우선순위를 끌어 올리려면 !important 선언을 하면된다.

```css
element {
  property: value !important;
}
``` -->



<!-- ## Cascading(우선순위 결정) 
HTML element에 지정된 CSS property에 선언된 값들이 여러개일 경우 cascade는 이 값들을 무작위 순서로 모으고, 이 값들을 아래의 우선순위에 따라 정렬시켜서 단 하나의 값을 선택는데, 우선순위가 높은 것 부터 낮은 것의 순서로 나열했다.




 즉 , 동일한 중요도와 원산지를 지닌 여러 규칙 만이 특이성을 결정하는 단계로 넘어갈 것입니다. 규칙에 동일한 중요성과 원산지의 경쟁 규칙이 없으면 그 특이성은 고려되지 않습니다.

예를 들어,이 단락을보십시오.

<p class=“foo” id=“bar”>Lorem ipsum dolor sit amet.</p>
예 1. 이 생길 경우 !important사용자 스타일 시트에 정의 된 규칙은, 그것은 저자의 스타일 시트를 통해보다 구체적인 규칙을 우선합니다.

/* user defined stylesheet */
p { color: orange !important; } /* this will prevail */

/* author stylesheet */
p { color: red; }
.foo { color: green; }
#bar { color: blue; }
예 2.!important 작성자 스타일 시트에 규칙이 정의되어 있으면 두 스타일 시트에서 더 일반적인 규칙보다 우선합니다.

/* user defined stylesheet */
#bar { color: orange; }

/* author stylesheet */
p { color: red !important; } /* this will prevail */
.foo { color: green; }
#bar { color: blue; }
예 3. 충돌하는 두 가지 일반 규칙이있는 경우, 덜 구체적인 경우에도 작성자 스타일 시트의 규칙이 우선합니다.

/* user defined stylesheet */
#bar { color: orange; }

/* author stylesheet */
.foo { color: green; } /* this will prevail */
 

사용자 정의 스타일 시트는 특히 일반적이지 않기 때문에 저자는 더 적은 것에 대해 염려 할 필요가 있습니다. 그러나 사용자 에이전트 스타일 시트를 작성해야 할 경우 재정의 할 수있는 규칙을 작성하는 방법을 알고 있어야합니다. -->