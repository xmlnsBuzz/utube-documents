# Settings Sync - VSCode 사용자 설정s 저장 및 복구 ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")

--- 

<h2 class="special">카이사르의 설정은 카이사르에게, 유저의 설정은 유저에게...</h2>
<h3 class="special">
	Pay Caesar's settings  belongs to Caesar and User's settings belongs to Users
</h3>

VSCode extensions들 가운데 가장 먼저 설치해야 될 필수 extension 중 하나다. 이 확장팩은 사용자설정, 단축키설정, 설치된 확장, snippets 등을 github에 저장한다. 그리고 저장된 설정들은 VSCdoe가 설치된 어떤 OS에서라도 다운로드하여 설정을 유지할 수 있으므로 사용자가 축적해 놓은 설정을 다시 되풀이하는 번거로움을 간단히 해결해 준다.  

### User settings 파일 경로

> D:\Users\ &lt;사용자이름> \AppData\Roaming\Code\User

### VSCode Settings를 github(혹은 gitlab)에 클라우딩 하기

- [x] github 가입
- [x] settings sync(hronize) extension 설치
- [x] <code class="shift">Shift</code><code class="alt">Alt</code> + <code>U</code> : 최초 upload 일 경우 브라우저에 github 페이지 열리며 브라우저 창으로 focus 이동됨. 
- [x] git token 만들기
- [x] 만들어진 token을 VSCode 명령창에 붙이고, Upload

<hr class="thin">   

### 나머지 Settings Sync 명령들

- [x] Advanced Options
- [x] <code>F1</code> > <code>sync</code> > <code>Advanced Options</code> > <code>Edit extension Local settings</code> 선택하여 syncLocalSettings.json 파일 열기
- [x] <code class="shift">Shift</code><code class="alt">Alt</code> + <code>D</code> : 다른 컴퓨터에서 내 설정을 다운로드 받을 때