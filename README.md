# Setup & Boot

gitおよびNodeJSとbowerのインストールが終了していることが前提です。ターミナル／cmder環境下で

```bash
git clone https://github.com/59naga/berabou.me.git
cd berabou.me

npm install
npm start
# Server running at http://localhost:59798
```

とすることで、`http://localhost:59798`上に、開発環境を起動できます。

```bash
NODE_ENV=production npm start
# Server running at http://localhost:59798
```

とすることで、本番環境に近い、コンパイルを圧縮して、各`index`ファイルを公開します。
（初回起動時、ファイルの圧縮にCPUをかなり消費します。プロセスが強制終了して`pkgs.min.js`が生成されない場合は、`onefile -o pkgs.min.js -m`を手動で行う必要があるかもしれません。ファイルが`./pkgs.min.js`に存在する場合、圧縮処理は起動しません。）

## SEO

```bash
curl http://localhost:59798/\?_escaped_fragment_
# <body>
#   <!-- uiView:  --><main ui-view="" class="ng-scope">
#     <div class="index ng-scope">
#       <header>
#         <h1>berabou.me</h1>
#       </header>
# ...
```

[express-turnout](https://github.com/59naga/express-turnout)を使用して、angular.jsのレンダリング結果を返します。これには、`phantom.js2.0.0`を要します。

[日本語の解説記事を用意しています](http://qiita.com/59naga/items/04736575c4853feeaaf0)。

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/
