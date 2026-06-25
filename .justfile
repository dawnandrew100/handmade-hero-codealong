set shell := ["sh", "-c"]
set windows-shell := ["cmd.exe", "/c"]

ROOT_DIR := justfile_directory()

recipes:
    just -l

build input output="out":
    gcc -Wall -Wextra -o {{output}} -I ./{{input}} {{input}}/*.cpp -lstdc++

debug-build input output="out":
    gcc -Wall -Wextra -g -o {{output}} -I ./{{input}} {{input}}/*.cpp -lstdc++

machine-code input:
    gcc -S {{input}}/*.cpp

run input output="out": (build input output)
    {{output}}
