#!/bin/bash

# 첫 번째 인자로 폴더 이름을 입력받습니다.
folder_name=$1

# 폴더 이름이 입력되었는지 확인합니다.
if [ -z "$folder_name" ]; then
    echo "폴더 이름을 입력하세요."
    exit 1
fi

# 폴더가 존재하지 않으면 생성합니다.
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi

# 폴더 안으로 이동합니다.
cd "$folder_name"

# 5개의 파일을 생성합니다.
touch file0.txt file1.txt file2.txt file3.txt file4.txt

# 각 파일에 대해 하위 폴더를 만들고, 해당 폴더에 파일의 심볼릭 링크를 생성합니다.
for i in {0..4}
do
    subfolder="file$i"
    file="file$i.txt"

    # 하위 폴더 생성
    mkdir "$subfolder"
    
    # 해당 폴더에 파일의 심볼릭 링크 생성
    ln -s "../$file" "$subfolder/$file"
done
