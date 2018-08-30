# rails_sample


brewを入れる


```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew update
brew install rbenv ruby-build
```

パスを通す

```:.bashrc
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"
```

```
source ~/.bashrc
```

```
rbenv --version

rbenv install --list
rbenv install 2.5.1
rbenv versions
```


```
#2.5.1に切り替え
rbenv global 2.5.1
#適応
rbenv rehash

ruby -v
```


http://railsdoc.com/rails_base

https://railsguides.jp/getting_started.html#%E3%83%A2%E3%83%87%E3%83%AB%E3%82%92%E7%94%9F%E6%88%90%E3%81%99%E3%82%8B


Railsでクレカ決済付きECサイトを作ってみよう！
https://www.m3tech.blog/entry/2017/10/05/103507

brew    
https://brew.sh/index_ja
