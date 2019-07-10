# 권장하는 HTML5+의 의미론(semantics)적 구조 ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")
---

## HTML5+에서 가장 크게 바뀐 것.


## 권장하는 HTML5+ 문서구조





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

```html
<!DOCTYPE html>
<html>
<body>

<h2>Finding HTML Elements by Tag Name</h2>

<p>Hello World!</p>
<p>This example demonstrates the <b>getElementsByTagName</b> method.</p>

<p id="demo"></p>

<script>
var x = document.getElementsByTagName("p");
document.getElementById("demo").innerHTML = 
'The text in first paragraph (index 0) is: ' + x[0].innerHTML;
</script>

</body>
</html>
```

## 가장 '안' 권장하는 HTML5+ 문서구조

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

            </div>
        </div>
        <div id="nav">
            <div>

            </div>
        </div>
        <div id="section">
            <div>

            </div>
        </div>
        <div id="footer">
            <div>

            </div>
        </div>
    </body>

</html>

```