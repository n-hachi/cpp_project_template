#!/usr/bin/env bash
# Reference is following URL
# https://qiita.com/janus_wel/items/cfc6914d6b7b8bf185b6
set -u

if git rev-parse --verify HEAD >/dev/null 2>&1
then
    against=HEAD
else
    # Initial commit: diff against an empty tree object
    against=$(git hash-object -t tree /dev/null)
fi

# Check whether clang-format is exist or not.
if !(type "clang-format" > /dev/null 2>&1); then
    cat << EOS
There is not clang-format.
Please install clang-format.
EOS
    exit 1
fi

sum=0
array=()
top_dir=$(git rev-parse --show-toplevel)
git_dir=$(git rev-parse --git-dir)
for file in $(git ls-files | grep -E '\.(c|cc|cpp|cxx|h|hpp|hxx)$'); do

    diff -q $file <(clang-format $file -style=file) 1>/dev/null 2>&1
    if [ $? -ne 0 ]; then
        #diff -u --color=auto $file <(clang-format $file)
        echo -e "\e[1m${file}\e[m"
        diff --color=always -u $file <(clang-format $file) | sed -e '1,2d'
        echo -e "\n"
        sum=$(($sum + 1))
        array=("${array[@]}" "$file")
    fi
done

if [ ${sum} -eq 0 ]; then
    exit 0
else
    echo -e "\e[1mPlease modify following files."
    for((i = 0; i < ${#array[@]}; i++)){
        echo "* ${array[i]}"
    }
    echo -ne "\e[m"
    exit 1
fi
