# PROJECTS.md - 민호 프로젝트 라우팅

## 사용법 (텔레그램 한 채팅에서 주제 분리)

메시지 맨 앞에 아래 태그 중 하나를 붙여 보내기:

- [RTL] : RTL/CNN/FPGA 설계
- [ISP] : Camera ISP/C 디버깅
- [LIFE] : 일정/리마인더/생활

예시:
- [RTL] 오늘은 FSM 기본부터
- [ISP] C 디버깅 루틴 20분짜리 만들어줘
- [LIFE] 내일 오전 루틴 짜줘

## 마셜 동작 규칙

1. 태그 기준으로 문맥을 분리해서 답변
2. 각 주제는 별도 로그 파일에 기록
3. 태그가 없으면 직전 주제 문맥을 기본 사용

## 로그 파일

- memory/project-rtl.md
- memory/project-isp.md
- memory/project-life.md
