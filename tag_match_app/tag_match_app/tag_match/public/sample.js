
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
