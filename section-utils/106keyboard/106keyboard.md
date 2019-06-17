#  한글 키보드 (103/106키) - 한/영 키 설정변경

---
## 103/106 Keyboard
우리가 사용하는 키보드의 경우, windows OS 설치시 keyboard type을 103/106 type으로 지정하지 않았고, 사용후 아무런 설정변경도 하지 않았다면 일반적으로 101 keyboard type으로 지정되어 있다.  

이 것을 확인하는 방법은 오른쪽 control key가 작동하는지 확인해 보면 된다. 예를 들어 브라우저 창이나 텍스트 편집기에서 어떤 글자들을 선택한 후 복사(ctrl + c)한 후 붙여넣기(ctrl + v)를 해서 작동되지 않는다면 101 key 일 가능성이 높다.  

오른쪽 control key를 사용할 수 있다는 것은 VSCode는 물론이고, AutoCAD, PhotoShop, 일러스트레이터 등 처럼 단축키를 사용하는 요즘 프로그램들의 추세로 볼 때, 커다란 차이가 생긴다.  

오른손에 마우스를 쥐고 왼손으로 단축키를 입력하여 작업할 때 마우스 쥔 오른손을 떼어 단축키 입력하는 것이 피곤하고 귀찮아, 주로 왼쪽 control key와 왼쪽의 alphabet 영역에 집중적으로 사용자단축키들을 몰아놓는 현상이 생기기 마련이다. 따라서 오른쪽 영역의 알파벳을 사용한 단축키 조합이 먼저 고갈된다.  

하지만 오른쪽 control key를 쓸 경우, 선택의 폭은 훨씬 넓어진다. 특히 뽀샵, 일러같은 그래픽 프로그램을 쓸 때는 더욱 편리할 것이다.

## 윈도우 10에서의 103/106key 전환 

윈도우 10에서 keyboard type을 전환하는 것은 매우 간단하다. 


## 윈도우 7에서의 keyboard type 전환

윈도우 7의 경우는 좀 복잡하기도 하고, 특히 컴퓨터 초보자의 경우 실수로 registry를 잘 못 건드릴 수 있으므로 주의를 요하며, 혹시 <span class="warn">참변을 당하더라도 나에게 책임을 묻지 않을 사람만 따라 하시기 바란다.</span>

## 변경전 준비사항

Registry key 변경 후 reboot 또는 sign out을 해야 되므로 작업하던 프로그램이 있다면 작업파일을 저장하고 종료시킨다.  

## Registry Key 위치

> [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters]

| Name | Type | Data |
--|--|--
LayerDriver KOR | REG_SZ | kbd103.dll
OverrideKeyboardIdentifier | REG_SZ | PCAT_103KEY
OverrideKeyboardSubtype | DWORD | 6
OverrideKeyboardType | DWORD | 8

- Registry key 변경후 Logout(Sign out)하거나 재부팅한다.


시아,웹표준,웹접근성,w3c,visual studio code,vscode,developer,sia,channel,fullstack,design,specification,web standard,html,html5,html5.2,css,css3,css4,markup,folder tree,tree size,clipboard manager,screen calipers,management,framework,web accessibility,w3c compliant,w3c standard documents conformance,node.js,git,git-scm,101 key,103/106 key