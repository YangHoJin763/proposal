#!/bin/bash

# 프로그램 시작 메시지 출력
echo "프로그램을 시작합니다."

# ls 명령어를 실행할 내부 함수 정의
function list_files {
    echo "함수 안으로 들어왔음."
    ls "$@"
    echo "함수 안에서 나감."
}

# 입력 인자를 내부 함수에 전달하여 실행
list_files "$@"

# 프로그램 종료 메시지 출력
echo "프로그램을 종료합니다."
