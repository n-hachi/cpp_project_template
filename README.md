[![Build Status](https://travis-ci.com/n-hachi/cpp_project_template.svg?branch=master)](https://travis-ci.com/n-hachi/cpp_project_template)

# cpp_project_template
---

cppプロジェクトで共通して必要と考えている機能を組み込むためのプロジェクト <br>
ubuntuで動作を確認している

## Prerequisites

下記ツールに依存する
- clang-format
- cmake
- git

先に示したツールのインストール方法
```bash
$ sudo apt-get install clang-format cmake git
```

## Build

インストールからビルドまでの手順を示す
```bash
$ git clone https://github.com/n-hachi/cpp_project_template.git
$ cd cpp_project_template
$ ./setup.sh
$ cmake build
$ cd build
$ cmake ..
```
