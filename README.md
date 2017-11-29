# v2hero  [![Build Status](https://travis-ci.org/onplus/v2hero.svg?branch=ci)](https://travis-ci.org/onplus/v2hero)

1. 点击[![](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/onplus/heroku_go-getting-started)创建HerokuAPP，配置服务器参数(appname和uuid，类似账号密码)

   ![create new app heroku](https://user-images.githubusercontent.com/31188782/33353392-905c3abe-d4e8-11e7-812a-866f95875ef9.png)

2. Fork本项目，然后Gihub授权登录[TravisCI](https://travis-ci.org/profile)，选择fork的项目
   ![Travis](https://user-images.githubusercontent.com/31188782/33354036-c14d920a-d4eb-11e7-99b4-d7d8816bbef6.png)

3. 在项目的More options --> settings 设置Environment Variables：
   
   HEROKU_APPNAME，HEROKU_EMAIL和[HEROKU_APIKEY](https://dashboard.heroku.com/account)
   ![ENV](https://user-images.githubusercontent.com/31188782/33354723-2e10d2e6-d4ef-11e7-8d6c-70be5b5eee2a.png)

4. 环境变量配置完成后重新开始TraviCi Build
   ![Travis Restart](https://user-images.githubusercontent.com/31188782/33354474-13d66a40-d4ee-11e7-9016-3196a58df6c1.png)


5. 查看HerokuAPP并重启一次（More-->restart），从more-->view logs确认启动成功


6. 配置V2Ray本地参数
   https://www.v2ray.com/ui_client/
   https://toutyrater.github.io/basic/vmess.html#客户端配置



### 实现参考

https://github.com/wangyi2005/v2ray

https://hub.docker.com/r/v2ray/official/

Heroku
https://devcenter.heroku.com/articles/container-registry-and-runtime

Travis-CI
https://docs.travis-ci.com/user/docker/
