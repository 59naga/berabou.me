angular.element document
.ready ->
  angular.bootstrap document,[appName]

appName= 'berabou.me'
appDependencies= [
  'ui.router'
  'ngAnimate'
]
app= angular.module appName,appDependencies
app.config ($urlRouterProvider)->
  $urlRouterProvider.when '','/'

app.config ($stateProvider)->
  $stateProvider.state 'root',
    url: '/'
    templateUrl: 'rootTemplate'
    controller: ($scope,$window)->
      $scope.products= products

      $window.expressTurnoutRendered()

products= [
  {
    title: 'edgy.black'
    uri: 'http://edgy.black/'
    description: [
      'ドット絵の投稿／閲覧サイトです。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/10187062/8ce96de2-6790-11e5-9e77-a147c6f98077.png'
    repo: 'https://github.com/59naga/edgy.black'
  }

  {
    title: 'narou.berabou.me'
    uri: 'http://narou.berabou.me/'
    description: [
      '「小説家になろう」を縦書で閲覧できるWEBアプリです。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/10120736/be1b5182-6506-11e5-9b9e-32ac6a12f428.png'
    repo: 'https://github.com/59naga/narou.berabou.me'
  }

  {
    title: 'vpd.berabou.me'
    uri: 'http://vpd.berabou.me/'
    description: [
      'MikuMikuDanceのVMD/VPDのオンライン・ビューアーです。'
      '画面上にvmd/vpdファイルをドラッグ＆ドロップすることで、即次にプレビューすることが出来ます。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/10266467/685b3d5e-6a9f-11e5-815f-6be7bd3c5abd.png'
    repo: 'https://github.com/59naga/vpd.berabou.me'
  }

  {
    title: 'nicolive.berabou.me'
    uri: 'http://nicolive.berabou.me/'
    description: [
      '「ニコニコ生放送」のコメントを送信／閲覧できるWEBアプリです。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/10188459/84808fe6-679a-11e5-85df-536cd1abbdd1.png'
    repo: 'https://github.com/59naga/nicolive.berabou.me'
  }

  {
    title: 'nico.berabou.me'
    uri: 'http://nico.berabou.me/'
    description: [
      '「ニコニコ」の横断検索エンジンです。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/10427617/027974d2-7126-11e5-9871-4c1babbf2019.png'
    repo: 'https://github.com/59naga/nico.berabou.me'
  }

  {
    title: 'edgy-comment-viewer'
    uri: 'https://github.com/59naga/edgy-comment-viewer/releases'
    description: [
      '「ニコニコ生放送」のコメントを送信／閲覧できるElectronアプリです。'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/7334842/d06cf958-ebda-11e4-9d22-5f9420129523.png'
    repo: 'https://github.com/59naga/edgy-comment-viewer'
  }

  {
    title: 'npm.berabou.me'
    uri: 'http://npm.berabou.me'
    description: [
      'npmjsに公開したパッケージのダウンロード数の統計をユーザーごとに確認できるエゴサーチWEBサイトです。'
      'かなり重い'
    ]
    ss: 'https://cloud.githubusercontent.com/assets/1548478/8512570/eb630dac-2383-11e5-8f22-793cd626b08d.png'
    repo: 'https://github.com/59naga/npm.berabou.me'
  }
]
