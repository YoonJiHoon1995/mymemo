[//]: # (# 1. 데이터 저장)

[//]: # (#  drift → SQL 기반 ORM &#40;쿼리, 관계형 구조, 검색&#41;)

[//]: # (#)

[//]: # (#)

[//]: # (#  2. 편집기능)

[//]: # (#)

[//]: # (#  flutter_quill → Rich Text &#40;볼드, 이탤릭, 리스트 등&#41;)

[//]: # (#)

[//]: # (#  markdown → Markdown 지원 &#40;읽기/쓰기 모드 분리&#41;)

[//]: # (#)

[//]: # (#  flutter_math_fork → 수학 수식 입력 가능)

[//]: # (#)

[//]: # (#  3. 첨부 기능)

[//]: # (#)

[//]: # (#  이미지 첨부: image_picker + photo_view &#40;줌 지원&#41;)

[//]: # (#)

[//]: # (#  파일 첨부: file_picker)

[//]: # (#)

[//]: # (#  PDF 미리보기: pdfx)

[//]: # (#)

[//]: # (#  4. 검색 & 분류)

[//]: # (#)

[//]: # (#  태그 관리: chips_input &#40;태그 UI&#41;)

[//]: # (#)

[//]: # (#  고급 검색: Drift full-text search / Isar filter)

[//]: # (#)

[//]: # (#  5. 보안)

[//]: # (#)

[//]: # (#  flutter_secure_storage → DB 암호 저장)

[//]: # (#)

[//]: # (#  local_auth → 생체인증 &#40;지문/페이스아이디&#41;)

[//]: # (#)

[//]: # (#  encrypt → 메모 본문 암호화 저장)

[//]: # (#)

[//]: # (#  6. UI/UX)

[//]: # (#)

[//]: # (#  BLoC: flutter_bloc)

[//]: # (#)

[//]: # (#  애니메이션: flutter_staggered_animations, rive)

[//]: # (#)

[//]: # (#  슬라이드 동작: flutter_slidable &#40;스와이프 삭제/고정&#41;)

[//]: # (#)

[//]: # (#  다크모드 & 컬러 테마: flex_color_scheme)

[//]: # (#)

[//]: # (#  다국어 지원: easy_localization)

[//]: # (#)

[//]: # (#  7. 백업/복원)

[//]: # (#)

[//]: # (#  로컬 JSON/CSV 내보내기: path_provider, share_plus)

특징
- 메모 본문은 Rich Text 지원
- 이미지 및 url 첨부 가능
- Drift DB에 태그 + 검색 기능 넣기
- 비밀번호, 지문인증, 및 face 잠금 화면 적용
- PDF 내보내기 기능 추가
- 다크모드 지원
- UI에 애니메이션 활용

메인 - title 모든 메모 (count)
    - Menu - 폴더 리스트, 폴더 관리, 휴지통, 기타 설정
    - body - 메모 리스트(클릭 시 메모이동, long 클릭 시 - 폴더 이동, 공유, 삭제), 정렬(제목, 만든 날짜 순, 수정 날짜 순), 탐색, 편집, 보기 방식(작은 격자, 중간격자, 큰격자, 목록)
    - floating - 메모 추가


폴더 관리 - title 폴더 관리
        - body 순서 변경 (클릭 시 - 이름 변경, 삭제, 폴더 색상 변경, long 클릭 시 - 일괄 삭제)
        - 하단 폴더 추가
        - 편집
        - 삭제 시 하위 삭제

휴지통 - title 휴지통
     - body 메모 리스트(클릭 시 메모이동, long 클릭 시 - 일관 선택하여 공유, 삭제)
     - 30일 후 자동 삭제 scheduler

메모 추가 - title 제목
       - body body
       - 제목 아래에  
       - 뒤로가기 시 저장 및 background 이동 시 저장
       - 글자 색 일괄 지정 x
       - 이미지 추가
       - url 추가 (메인 이미지 추가)


앤티티
메모 - id
    - 타이틀
    - 바디
    - create
    - updated
    - deleted
    - 배경 색 (nullable)
    - 폴더 id (nullable)
 
폴더 - id
    - 타이틀


lib/
├─ data/
│   ├─ models/ (Note, folder)
│   ├─ repository/ (NoteRepository: drift 사용)
├─ bloc/
│   ├─ note_bloc.dart
│   ├─ note_event.dart
│   ├─ note_state.dart
├─ ui/
│   ├─ screens/
│   │   ├─ note_list_screen.dart
│   │   ├─ note_add_screen.dart
│   │   ├─ settings_screen.dart
│   │   ├─ note_delete_screen.dart
│   │   └─ folder_screen.dart
│   ├─ widgets/
├─ utils/ (export helpers...)
    

