# VSCode Interface

![VSCode interface](img/vscode-interface-by-me.png)

[그림출처:https://code.visualstudio.com/assets/docs/getstarted/userinterface/hero.png](https://code.visualstudio.com/assets/docs/getstarted/userinterface/hero.png)

## 각 부분의 명칭(name*)
* ### main menu

* ### activity bar
  1. 탐색기 
  1. 검색
  1. git (source code management)
  1. debug
  1. extensions
* ### side bar
  Activity bar에서 선택한 section에 해당하는 내용이 나온다.
* ### editor group
  VSCode의 편집창 부분. 필요에 따라 화면을 분할할 수 있다.
* ### panels
* ### status bar

## Welcome Screen
  1. Start
  1. Recent
  1. Help
  1. Customize
  1. Learn
  


## Screen zoom 

Vscode 화면 비율을 확대 축소 복귀 하는 기능이 있다. 이 기능은 editor group 뿐 아니라 메뉴 사이드바 등 모든 것이 같이 확대, 축소 된다. 포토샵이나 일러스트레이터

* Ctrl + '+' key
* Ctrl + '-' key
* Ctrl + '0'

## Korean Language Pack 

1. vscode 한글 메뉴
1. 설치후 reload시키는 것 

```html{.line-numbers}
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>VSCode 인터페이스 소개 - Introduction to VSCode Interface</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, minimum-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link rel="stylesheet" href="../../css/normal-documents.css" />
  <link rel="shortcut icon" type="image/ico" href="../../sia-logo.ico" />
  <link rel="shortcut icon" type="image/png" href="../../sia-logo.png" />
  <style>
    body {
      background-image: url('../../img/sia-opacity015.svg');
      background-position: 0 70px;
    }

    section {
      margin-left: 150px;
    }

    p {
      font-size: 18px;
    }

    h2 {
      background-color: rgb(129, 90, 6);
      border-radius: 5px;
      padding-left: 20px;
      margin-right: 80px;
      color: white;
      font-weight: normal;
    }

    summary {
      outline: none;
      font-size: 0.8em;
      cursor: pointer;
    }

    summary::-webkit-details-marker {
      display: none;
    }

    summary:after {
      /* background: #da291c;
    border-color: #da291c; */
      border-radius: 15px;
      content: "+";
      color: rgb(255, 0, 0);
      float: left;
      font-size: 1em;
      font-weight: bold;
      margin: -2px 10px 0 0;
      padding: 1px 0 3px 0;
      text-align: center;
      width: 30px;
    }

    details[open] summary:after {
      content: "-";
    }
  </style>
</head>

<body>
  <header>

  </header>
  <hr class="horizontal-hr" /> <br />
  <section>
    <div class="main-wrap">
      <img class="sia" src="../../img/sia-Logo-first.svg" />

      <h1> </h1>
      <h2>Korean Language Pack</h2>
      <details>
        <summary>Contents</summary>

        <ul>
          <li>vscode vscode 한글 메뉴</li>
          <li>설치후 vscode reload 시키는 것</li>
        </ul>
      </details>
  </section>
  <footer>
    <hr class="horizontal-hr" />
    <br /><br /><br /><br />
  </footer>
</body>

</html>
```