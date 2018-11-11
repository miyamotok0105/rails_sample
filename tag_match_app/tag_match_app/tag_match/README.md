
# README


## モデル作る    

```
rails g model NayoseApi before_word:string after_word:string
rake db:migrate
```

データ追加


```ruby:seeds.rb
NayoseApi.create( id:"1", before_word:"カレー巡り", after_word:"カレー")

```

## コントローラを作る

```
rails g controller Api
```

api_controller.rbをいじった。

```ruby:api_controller.rb
class ApiController < ApplicationController
    def index
        @apis = NayoseApi.all
        render json: {staus: 200,data: @apis}
    end
end

```


```:routes.rb
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'api' => 'api#index'

end

```

publicにhtmlを作った。

```:index.html
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="sample.js"></script>
</head>

<div>
タグを入れてね
</div>

<div>
    <input id="input_tag" type="text" name="name" size="30" maxlength="20" >
    <input type="button" value="検索" onClick="call_nayose()">
</div>

<div id="out_tag">
    <!-- ここに名寄せの結果を返す -->
</div>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</html>

```


```js:sample.js

// alert("Hello");

function call_nayose() {
    // alert("Hello");
    var tag_element = document.getElementById("input_tag");
    console.log(tag_element.value);
    
      $.ajax({
        url: '/api',
        type: 'GET',
        dataType: 'json',
        async: true,
        // data: {data: data},
      }).done(function(data){
        console.log("done!");
        console.log(data.data[0].id);
        console.log(data.data[0].before_word);
        console.log(data.data[0].after_word);
        
        
        $('#out_tag').html(data.data[0].after_word);
        // setBookmarkMenu(data);
      }).fail(function(data){
        console.log("fail!");
        // $('#bookmarks').html('ブックマーク一覧が取得できませんでした');
      });

}

```


## データ入れる

```
rake db:seed

```

## 動かす

```
rails server
```

