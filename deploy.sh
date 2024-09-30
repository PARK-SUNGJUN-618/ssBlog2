#!/bin/bash
# 해당 파일 수동 실행. 첫번째 파라미터가 커밋메시지.
# 권한부여 명령어.(최초 한번) - 윈도우는 필요없음.
# chmod 777 deploy.sh
# 실행
# 윈도우 bash ./deploy.sh "커밋 메시지"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

echo "=== Step1. build hugo"
# Build the project.
# hugo -t <your theme>
hugo -t PaperMod

echo "=== Step2. commit & push public directory"
# Go To Public folder, sub module commit
# shellcheck disable=SC2164
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding SSblog, `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin main

echo "=== Step3. commit & push blog directory"
# Come Back up to the Project Root
cd ..

# blog repository Commit & Push
git add .

msg="rebuilding SSblog, `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin main