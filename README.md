<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [ARO v3 Javaアプリ開発者向けハンズオン](#aro-v3-java%E3%82%A2%E3%83%97%E3%83%AA%E9%96%8B%E7%99%BA%E8%80%85%E5%90%91%E3%81%91%E3%83%8F%E3%83%B3%E3%82%BA%E3%82%AA%E3%83%B3)
  - [前提条件](#%E5%89%8D%E6%8F%90%E6%9D%A1%E4%BB%B6)
    - [Red Hat CodeReady WorkspacesのAROへのデプロイ](#red-hat-codeready-workspaces%E3%81%AEaro%E3%81%B8%E3%81%AE%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4)
  - [ハンズオン実施](#%E3%83%8F%E3%83%B3%E3%82%BA%E3%82%AA%E3%83%B3%E5%AE%9F%E6%96%BD)
  - [Red Hat Application Migration Toolkit (RHAMT) によるJavaアプリ移行時の分析 (オプション)](#red-hat-application-migration-toolkit-rhamt-%E3%81%AB%E3%82%88%E3%82%8Bjava%E3%82%A2%E3%83%97%E3%83%AA%E7%A7%BB%E8%A1%8C%E6%99%82%E3%81%AE%E5%88%86%E6%9E%90-%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# ARO v3 Javaアプリ開発者向けハンズオン

このコンテンツは、Red Hatが提供している[OpenShiftのハンズオンコンテンツの一部](https://github.com/RedHat-Middleware-Workshops/cloud-native-workshop-v2m1-guides)をベースにしています。他にも[様々なコンテンツ](https://github.com/RedHat-Middleware-Workshops)を提供していますので、興味がありましたらご参照ください。

## 前提条件
- bashなどでシェルスクリプトを実行できること
- OpenShiftのCLIツールである[ocコマンド](https://mirror.openshift.com/pub/openshift-v3/clients/3.11.154/)([Linux](https://mirror.openshift.com/pub/openshift-v3/clients/3.11.154/linux/)/[macOS](https://mirror.openshift.com/pub/openshift-v3/clients/3.11.154/macosx/)/[Windows](https://mirror.openshift.com/pub/openshift-v3/clients/3.11.154/windows/))をダウンロードして、実行できること
  - `/bin`などにPATHを通して、`./oc`や`./oc.exe`ではなく`oc`コマンドが実行できること
- [ラーニングポータルサイト](https://learn.openshift.com/)の下記コースで紹介しているOpenShiftの基礎知識を習得していること (コース受講にアカウント作成は不要です)
  - [Foundations of OpenShift](https://learn.openshift.com/introduction/)
  - [Subsystems, Components, and Internals](https://learn.openshift.com/subsystems/)
- Google Chrome を利用できること (オプション)
  - ハンズオンコンテンツは英語ですが、Google Chromeの右クリックメニューの`日本語に翻訳`から日本語化可能
  - バージョン`79.0.3945.130`で動作確認をしていますが、他のWebブラウザでも実行可能
- ARO環境にログインできること (ハンズオン当日にご紹介)
- Red Hat Codeready WorkspacesがARO上にデプロイされていること (ハンズオン当日にご紹介)

### Red Hat CodeReady WorkspacesのAROへのデプロイ
開発ツールとして利用する[Red Hat CodeReady Workspaces](https://developers.redhat.com/products/codeready-workspaces/overview)をARO上にデプロイします。Red Hat CodeReady WorkspacesはEclipse CheをベースにしたクラウドIDE(IntelliJ IDEA、VSCode、Eclipse IDEに類似)であり、本ハンズオンでは、ここからコードを記述、テスト、デプロイします。

Red Hat CodeReady Workspacesのインストール用プログラムを、[Red Hat Developer](https://developers.redhat.com/)からダウンロードします。Red Hat Developerは開発者向けに様々なRed Hatのリソースを提供しているサイトです。こちらに登録してRed Hat Developer Suiteサブスクリプションを取得することで、RHEL, OpenShift, JBoss EAPを始めとした各種ミドルウェア製品をダウンロードできるようになります。**1ユーザ(共用不可)、1台のみ、ソフトウェア開発用途のみ**、と用途は限定されますが、その代わり1年間有効のサブスクリプションとなっていて有効期限が切れたら再度更新することもできます。Red Hat Codeready Workspacesのダウンロードサイトは下記です。

https://developers.redhat.com/products/codeready-workspaces/download



Red Hat CodeReady Workspacesの最新版は2.0までリリースしていますが、本ハンズオンでは、1.0.2 をダウンロードしてください。ダウンロード後にインストーラを解凍して下記を実行します。このコマンドで、ARO上に`<YOUR_CODEREADY_PROJECT_NAME>`プロジェクトが自動的に作成され、その中にRed Hat CodeReady Workspacesのコンテナアプリがデプロイされます。なおプロジェクト名は、アカウント名を先頭や末尾につけるなどして、一意になるようにしてください。また、`./deploy.sh`実行時には、`./oc`ではなく`oc`コマンドが自動的に呼び出されるので、`/bin`などにPATHを通すのを忘れないようにしてください。

```
$ oc login https://<URL_of_ARO> --token=<token_of_your_ARO>
$ tar xvf codeready-workspaces-1.0.2.GA-operator-installer.tar.gz
$ cd codeready-workspaces-operator-installer
$ ./deploy.sh --deploy \
  --operator-image=registry.redhat.io/codeready-workspaces/server-operator:1.0 \
  --server-image=registry.redhat.io/codeready-workspaces/server-rhel8:1.2 \
  -p=<YOUR_CODEREADY_PROJECT_NAME>
```

## ハンズオン実施

CodeReady Workspacesのデプロイが完了したら、`username: admin, password: admin`でログインします。AROのWebコンソールの`http://codeready-XXX.apps.YYYY.eastus.azmosa.io`からログインします。

<img src="https://github.com/h-kojima/aro-handson/blob/master/images/aro-overview.png" width="100%" height="100%">

ログイン後は、作業スペースとなるWorkspaceを作成します。`Spring Boot`スタックを選択して、`Create and Proceed Editing`をクリックします。

<img src="https://github.com/h-kojima/openshift/blob/master/arohandson/images/crw-create.png" width="100%" height="100%">

`Config`のJSONファイルを編集します。既存の内容を全て削除して、下記URLのJSONファイルの内容に置換してください。このJSONファイルではWorkspaceの名前を`wksp-XXXX`としていますが、ユーザ名を利用するなど適宜変更してください。その後、右上の`RUN`を実行します。

https://github.com/h-kojima/aro-handson/blob/master/workspace-config.json

<img src="https://github.com/h-kojima/aro-handson/blob/master/images/wksp-name.png" width="100%" height="100%">

5~10分程待つと、Workspaceが作成されて下記のような画面が表示されます。

<img src="https://github.com/h-kojima/openshift/blob/master/arohandson/images/workspaces-init.png" width="100%" height="100%">

GitHubからプロジェクトをインポートして開発を進めます。`Import Project...`をクリックして、次の項目を指定して`Import`をクリックします。

- Version Control System: GITHUB
- URL: https://github.com/h-kojima/cloud-native-workshop-v2m1-labs
- Import recursively (for multi-module projects)　にチェックを入れます
- Name: cloud-native-workshop-v2m1-labs

プロジェクトタイプは`Blank`を選択して、`Save`をクリックします。プロジェクトのインポートが完了したら、下記のようなMavenアイコンが表示されているか確認します。Mavenアイコンが表示されていない場合は、それぞれのプロジェクトを右クリックして、`Convert to Project`を選択し、`Maven`を選択して`Save`をクリックします。

<img src="https://github.com/h-kojima/aro-handson/blob/master/images/maven-icon.dms.png" width="50%" height="50%">
<img src="https://github.com/h-kojima/aro-handson/blob/master/images/codeready-workspace-convert.dms.png" width="50%" height="50%">
<img src="https://github.com/h-kojima/aro-handson/blob/master/images/codeready-workspace-maven.png" width="50%" height="50%">

これより先は、下記コンテンツの「**13. Add an OpenShift profile**」から、順番に実行していってください。それより上段のコンテンツは、本ハンズオンでは省略します。このコンテンツではログインユーザとして`userXX`を指定していますが、本ハンズオンで利用するアカウント名に変更して読み替えてください。また、プロジェクトは何も作られていない状態ですので、`oc new-project`などで適宜作成する必要があります。

また、下記コンテンツはOpenShift v4版スクリーンショットになりますが、AROは現在OpenShift v3ベースなので、Webインタフェースの表示が異なります。リソースメニューの表示場所も若干異なりますので、ご注意ください。

**注意点**

**CodeReady WorkspacesのTerminalでは`oc`コマンドを最初から実行できるようになっていますが、本ハンズオンではCodeReady WorkspacesのWorkspaceのTerminalでもARO環境へのログインをする必要がありますので、ご注意ください。**


https://bit.ly/36lLEAe

## Red Hat Application Migration Toolkit (RHAMT) によるJavaアプリ移行時の分析 (オプション)
RHAMTはアプリケーションを分析し、JavaのコードやJSP、XMLなどで、修正を必要とするところをHTML形式でレポートします。Red Hatがサポートを提供しているソフトウェアではありませんが、無償で利用することができます。対応している移行パスは、Oracle JDKからOpen JDK、JBoss EAPのアップグレード、WebLogic/WebSphereからJBoss EAPといったものがあります。RHAMTのレポートを参照すると、CodeReady WorkspaceやVisual Studio Codeなどでの効率的なJavaアプリケーションの開発ができるようになります。

https://access.redhat.com/documentation/en-us/red_hat_application_migration_toolkit/4.3/html-single/getting_started_guide/index#supported_configurations

RHAMTもRed Hat Developerで提供しています。利用するには、下記からRHAMTをダウンロードします。

https://developers.redhat.com/products/rhamt/download

RHAMTを簡単に試してみたい場合は、上記から`Web Console`版をダウンロードして、ローカルマシンかOpenShift上のコンテナアプリケーションとして実行します。ただし、OpenShift上にデプロイする場合は、デプロイスクリプトの実行プラットフォームがLinuxとmacOSのみ対応となっており、Windowsでは実行できませんのでご注意ください。ローカルマシンで実行するときは、下記のガイドに沿ってください。

https://access.redhat.com/documentation/en-us/red_hat_application_migration_toolkit/4.3/html-single/web_console_guide/index#zip_install

OpenShift上にデプロイするときは、下記のガイドに沿ってください。OpenShiftのプロジェクトにインポートするJSONファイルは、`<RHAMTのzipファイルを解凍したディレクトリ>/openshift/templates/template-empty-dir-executor.json`を指定します。

https://access.redhat.com/documentation/en-us/red_hat_application_migration_toolkit/4.3/html-single/web_console_guide/index#openshift_install

デフォルトのユーザ認証は、`rhamt/password`です。ログインできたら、下記のガイドに沿ってJavaアプリケーションを分析してみましょう。本ハンズオン用に、WebLogicからJBoss EAPへの移行シナリオを想定した2種類のWARファイルを用意しました。

- [WebLogic用のコードが組み込まれているWARファイル](https://github.com/h-kojima/aro-handson/blob/master/rhamt/monolith.war)
- [このコードをJBoss EAP用に修正したWARファイル](https://github.com/h-kojima/aro-handson/blob/master/rhamt/monolith-fixed.war)

https://access.redhat.com/documentation/en-us/red_hat_application_migration_toolkit/4.3/html-single/web_console_guide/index#using_web_console_analyze_apps

これらのWARファイルを利用して、RHAMT上でどのようなHTMLレポートが表示されるか確認してみてください。表示されるHTMLレポートの内容については、下記コンテンツの「**Lab1 - Decide which Application Server to use in OpenShift**」を参考にできます。

https://bit.ly/36lLEAe

