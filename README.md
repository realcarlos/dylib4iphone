# dylib4mac

[![Zenn:posted](https://img.shields.io/static/v1?label=Zenn&message=posted&color=3ea8ff&logo=zenn)](https://zenn.dev/enchan1207/articles/c5420777bb6e30)

## Overview

動的リンクライブラリ `dylib` の作成方法に関するメモ書き.  
詳しくは [CのライブラリをmacOSアプリにリンクして呼び出す - Zenn](https://zenn.dev/enchan1207/articles/c5420777bb6e30) を参照してください。

## Usage

**NOTE**: ビルド時に `xcrun` を使用しているため、macOS以外では動作しません(たぶん)。

### 1. dylibのビルド

`create_library` ディレクトリに移動して `make` を実行すると、`build`ディレクトリ以下に

 - `main`: 実行ファイル
 - `libhelloworld.dylib`: 動的リンクライブラリ

が生成されます。

### 2. Xcodeプロジェクト

under construction...

## License

this repository is published under [MIT License](LICENSE).
