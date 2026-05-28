set shell := ["sh", "-c"]
set windows-shell := ["cmd.exe", "/c"]

ROOT_DIR := justfile_directory()

recipes:
    just -l

build input output="out":
    gcc -o {{output}} -I ./{{input}} {{input}}/*.cpp -lstdc++

debug-build input output="out":
    gcc -g -o {{output}} -I ./{{input}} {{input}}/*.cpp -lstdc++

run input output="out": (build input output)
    {{output}}
