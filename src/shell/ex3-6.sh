#!/bin/bash

# 첫 번째 입력 인자를 폴더 이름으로 설정
DIR_NAME="$1"

# 입력한 폴더가 없으면 생성
if [ ! -d "$DIR_NAME" ]; then
    echo "$DIR_NAME 폴더가 없으므로 생성합니다."
    mkdir "$DIR_NAME"
else
    echo "$DIR_NAME 폴더가 이미 존재합니다."
fi

# 지정된 폴더 내에 5개의 텍스트 파일 생성
for i in {0..4}; do
    FILE_NAME="${DIR_NAME}/file${i}.txt"
    echo "파일 ${i}의 내용입니다." > "$FILE_NAME"
    echo "$FILE_NAME 파일을 생성했습니다."
done

# 생성된 파일들을 tar로 압축
TAR_FILE="${DIR_NAME}.tar"
tar -cvf "$TAR_FILE" -C "$DIR_NAME" ./*.txt
echo "${TAR_FILE} 파일을 생성했습니다."

# 새로운 폴더를 만들고 압축 파일을 해제
NEW_DIR="${DIR_NAME}/extracted_files"
mkdir -p "$NEW_DIR"
tar -xvf "$TAR_FILE" -C "$NEW_DIR"
echo "$NEW_DIR 폴더에 압축을 해제했습니다."
