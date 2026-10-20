리딩런 연수실 전용

1. Supabase 프로젝트 생성 후 setup.sql 실행 (연수실과 도서실 SQL 모두 동일 프로젝트에서 실행 가능).
2. config.js에 Supabase URL과 publishable/anon 키 입력 (service_role 키 사용 금지).
3. GitHub의 새로운 reading-run-school 저장소에 training, library 폴더 그대로 업로드.
4. Settings > Pages에서 main / root 게시 설정.
5. 학생용: https://사용자명.github.io/reading-run-school/training/voice.html?lane=1 (2,3으로 변경)
6. 메인보드: https://사용자명.github.io/reading-run-school/training/board.html
7. 학생 노트북 3대에서 파일 업로드 및 마이크 권한 허용 후 교사용 시작 클릭.
8. 각 학생의 다음 연 버튼은 교사용 보드에서도 개별 조작 가능.

주의: 시연용 익명 쓰기 권한 설정이므로 URL을 공개 배포하거나 실제 개인정보를 저장하지 마세요. 교사용 인증/쓰기 권한 분리는 행사 전에 별도 구현해야 합니다. 브라우저 원격 마이크 자동 활성화는 제한될 수 있습니다.
