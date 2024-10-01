# Use the Golang image with Alpine for a lightweight build
FROM golang:1.20-alpine

# Install Hugo and Git
RUN apk add --no-cache hugo git

# Set the working directory
WORKDIR /app

# -------------------------------------------------
# 이미지 빌드 
# podman build -t ssblog2 .

# 컨테이너 실행
# podman run -it --name hugo-container -v c:/ssProject/ssBlog2:/app -p 1313:1313 ssblog2

# hugo 사이트 생성
# hugo new site . --force

# 깃 설정
# git init
# git config --global user.email "espoir618@gmail.com"
# git config --global user.name "Sungjun Park"
# git config --global --add safe.directory /app
# git branch -M main

# 테마 추가 (서브모듈)
# git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod

# 테마 추가 (직접)
# git clone https://github.com/adityatelange/hugo-PaperMod.git themes\PaperMod

# 글생성
# hugo new --kind post posts/your-post-title.md

# 휴고 서버 실행
# hugo server --bind 0.0.0.0 --baseURL http://localhost:1313/

# 빌드 할때
# git submodule update
# podman exec -it <컨테이너 ID> /bin/sh # 컨테이너 접속
# hugo
# exit # 컨테이너 접속 해제

# 빌드 후 gh-pages브랜치로 이동
# main브랜치에서 public 폴더를 ../public_backup으로 복사:
# Copy-Item -Recurse -Path public -Destination ../public_backup
# gh-pages브랜치에서 ../public_backup 폴더 내의 모든 파일을 현재 경로로 복사:
# Copy-Item -Recurse -Path ../public_backup/* -Destination .
# 로컬 ../public_backup 폴더를 삭제:
# Remove-Item -Recurse -Force ../public_backup


# ------------------
# 컨테이너 관련 명령어
# podman ps  # 현재 실행 중인 컨테이너 목록 확인
# podman ps -a  # 모든 컨테이너(중지된 포함) 목록 확인
# podman stop <컨테이너 ID>  # 실행 중인 컨테이너 중지
# podman rm <컨테이너 ID>  # 해당 컨테이너 삭제
# podman rm -a  # 모든 컨테이너 삭제
# podman exec -it <컨테이너 ID> /bin/sh # 컨테이너 접속

# 이미지 관련 명령어
# podman images  # 현재 보유 중인 이미지 목록 확인
# podman rmi <이미지 ID 또는 이미지 이름>  # 이미지 삭제
# podman rmi -a  # 모든 이미지 삭제


