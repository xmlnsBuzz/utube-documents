# HTML5+의 구조적 변화와 의미론적 문서구조 ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")
---

## HTML5+에서 가장 크게 바뀐 것.

HTML5가 발표되고 W3C의 HTML5 Spec을 처음 보았을 때 많이 당황스러웠던 부분은 DOCTYPE 선언이었다. 

### HTML 4.01 의 DOCTYPE 선언


> &lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">


> &lt;!DOCTYPE RootElementName PUBLIC "Registration// Organization // Type Label  Version // Definition // Language " "외부 DTD file의 URL">

### HTML5의 DOCTYPE 선언

> &lt;!DOCTYPE html>


보는 것 처럼 HTML5가 되면서 뒷부분이 떨어져나가서 DOCTYPE이 너무 간단해졌다. 따라서 나는 HTML4의 복잡한 DOCTYPE이 "왜 떨어져 나갔을까"에 초점을 맞추게 되었는데, 그 이유는 이전 HTML문서에서는 HTML문서의 구조를 오직 DOCTYPE에 의존해서 설명했는데 HTML5처럼 DOCTYPE도 없이 과연 어떤 방법으로 구조를 설명하는 것인지 [<span class="emph">HTML5 Differences from HTML4</span>] https://www.w3.org/TR/html5-diff/ 문서를 본 후에야 이유를 알게 되었고 HTML5+에 대한 거의 대부분을 감지하게 되었다.


그리고 그 것을 감지하기 이전에 '어떤 것이 어떤 것과 결합되어 있다는 사실을 명시적으로 표시했었는데 그 것이 어느 순간 사라졌다'라는 단순한 사실 하나에서도 미루어 짐작할 수 있는 부분은 있는데 HTML 입장에서 몇가지 꼽아보면... 

- DTD를 더 이상 필요로 하지 않게 되었다.
- DTD를 쓰려고 해도 HTML5의 변화된 구조를 DTD로 설명할 수 없다.
- 그렇다면 이제부터 HTML5와 DTD 간의 연관성도 함께 사라졌다.


## DOCTYPE이란...

HTML5에서 겨우 DOCTYPE 하나 바뀐 것 뿐이지만, 이 작은 변화가 HTML 문서에서 의미하는 것이 무엇인지 알아보자. 

원래 DOCTYPE은 SGML(Standard Generalized Markup Language)과 그 자식뻘 정도 되는 XML에서 사용하던 것이지만, Tim Berners Lee가 처음 HTML을 고안했을 때 문서구조를 설명할 용도로 DTD를 채택해 HTML4.01과 xhtml1.0 등에서는 문서를 만드는데 여전히 사용되고 있다.

앞서 말한 것 처럼 DTD가 문서의 구조를 설명한다고 했는데, HTML5는 DTD와 단절하였으므로 HTML5 자체로써 HTML5 자신의 문서구조를 설명해야만 한다. 문서구조는 최상위 level인 'Content Model'에서 시작한다. 

## Content Model의 변화

우선 HTML5 이전 버전 HTML의 구조를 보면

### HTML4의 content Model

HTML4 content model은 단순하다.

- <span class="emph">Block</span> Level

- <span class="emph">Inline</span> Level

### HTML5의 content model은

- <span class="emph">Metadata</span> content, e.g. link, script.

- <span class="emph">Flow</span> content, e.g. span, div, text. 

- <span class="emph">Phrasing</span> content, e.g. span, img, text.

- <span class="emph">Sectioning</span> content, e.g. header, aside, section, footer.

- <span class="emph">Heading</span> content, e.g. h1.

- <span class="emph">Embedded</span> content, e.g. img, iframe, svg

- <span class="emph">Interactive</span> content, e.g. a, button, label. Interactive content is not allowed to be nested.


## Semantic한 구조가 지니는 장점

대개의 사람들이 'body'라는 tag을 읽을 때 어떻게 읽을까? 아마도 body를 한글자씩 b.o.d.y(비오디와이) 라고 읽지는 않을 것이다. '바디(영국사람은 보디)'로 읽게 된다. '바디'라고 읽었다는 것은 body가 지닌 원래의 뜻 '몸통'이라는 것 까지도 '인지'했다고 받아들여도 될 것이다. 물론 'p' 같은 경우는 HTML spec에서 'paragraph'의 머리글자라는 것을 알고서야 뜻까지 이해하겠지만...

이렇듯 tag 이름 자체가 의미를 가지고 스스로를 설명하기 때문에 뚜렷한 정체성을 가지게 된다. 이런 형태는 XML의 element들이 자기설명적(self describable)인 것과 매우 닮아있다.



### 가장 '안'권장하는 HTML5+ 문서구조

```html
<!DOCTYPE html>
<html lang="ko">
    
    <head>
        <title>HTML5+ Not Recommended Document Structure</title>
        <meta charset="UTF-8" />
    </head>

    <body>
        <h1>가장 권장하지'않는' 무의미한 HTML5+ 구조</h1>
        <div id="header">
            <div>
                ...
            </div>
        </div>
        <div id="nav">
            <div>
                ...
            </div>
        </div>
        <div id="section">
            <div>
                ...
            </div>
        </div>
        <div id="footer">
            <div>
                ...
            </div>
        </div>
    </body>

</html>

```

                
## 권장하는 HTML5+ 문서구조 중 일례


```html
<!DOCTYPE html>
<html lang="ko">
    
    <head>
        <title>HTML5+ Recommended Document Structure</title>
        <meta charset="UTF-8" />
    </head>

    <body>
        <h1>권장하는 HTML5+의 의미론(semantics)적 구조</h1>
        <header>
            <h2>Header</h2>
        </header>
        <nav>
            <h2>Navigation</h2>
        </nav>
        <section>
            <h2>
                Main Section
            </h2>
        </section>
        <footer>
            <address>
                Address
            </address>
        </footer>
    </body>

</html>
```

## HTML의 구조가 CSS, JavaScript의 구조에 미치는 영향

HTML의 구조를 단순화 시키면 CSS와 JavaScript에서 어떤 이득을 볼 수 있는지 알아보기 위해 아래의 DOM Tree 형성과정을 단순하게 표현한 그래프를 참조.

@import "../../section-fragment/markdown-frag/frag4css/domTree형성되는순서.md";