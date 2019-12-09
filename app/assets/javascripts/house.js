var $i = jQuery.noConflict();

$i(function(){
  $fileField = $i('#img_file1');

   $i($fileField).on('change',$fileField,function(e){
     file = e.target.files[0]
     reader = new FileReader();
     $preview = $i(".img_post1");
     
     reader.onload = (function(file){
       return function(e){
         $preview.empty();
         $preview.append($i('<img>').attr({
           src:e.target.result,
           width:"100%",
           class:"preview",
           title:file.name
         }));
       };
     })(file);
     reader.readAsDataURL(file);
   });

   $fileField2 = $i('#img_file2')

    $i($fileField2).on('change',$fileField2,function(e){
      file = e.target.files[0]
      reader = new FileReader();
      $preview = $i(".img_post2");

      // console.log($preview);

      reader.onload = (function(file){
        return function(e){
          $preview.empty();
          $preview.append($i('<img>').attr({
            src:e.target.result,
            width:"100%",
            class:"preview",
            title:file.name
          }));
        };
      })(file);
      reader.readAsDataURL(file);
    });

    $fileField3 = $i('#img_file3')

     $i($fileField3).on('change',$fileField3,function(e){
       file = e.target.files[0]
       reader = new FileReader();
       $preview = $i(".img_post3");

       // console.log($preview);

       reader.onload = (function(file){
         return function(e){
           $preview.empty();
           $preview.append($i('<img>').attr({
             src:e.target.result,
             width:"100%",
             class:"preview",
             title:file.name
           }));
         };
       })(file);
       reader.readAsDataURL(file);
     });

     $fileField4 = $i('#img_file4')

      $i($fileField4).on('change',$fileField4,function(e){
        file = e.target.files[0]
        reader = new FileReader();
        $preview = $i(".img_post4");

        // console.log($preview);

        reader.onload = (function(file){
          return function(e){
            $preview.empty();
            $preview.append($i('<img>').attr({
              src:e.target.result,
              width:"100%",
              class:"preview",
              title:file.name
            }));
          };
        })(file);
        reader.readAsDataURL(file);
      });

      $fileField5 = $i('#img_file5')

       $i($fileField5).on('change',$fileField5,function(e){
         file = e.target.files[0]
         reader = new FileReader();
         $preview = $i(".img_post5");

         // console.log($preview);

         reader.onload = (function(file){
           return function(e){
             $preview.empty();
             $preview.append($i('<img>').attr({
               src:e.target.result,
               width:"100%",
               class:"preview",
               title:file.name
             }));
           };
         })(file);
         reader.readAsDataURL(file);
       });

       $i("#house_addresses_attributes_0_address_building").change(function () {
       var str = "";
       str = $i("#house_addresses_attributes_0_prefecture_code").val();
       console.log(str);
       if(str=="北海道"){
         str = 0
         console.log(str);
       }else if(str=="青森県"){
         str = 1
       }else if(str=="岩手県"){
         str = 2
       }else if(str=="宮城県"){
         str = 3
       }else if(str=="秋田県"){
         str = 4
       }else if(str=="山形県"){
         str = 5
       }else if(str=="福島県"){
         str = 6
       }else if(str=="茨城県"){
         str = 7
       }else if(str=="栃木県"){
         str = 8
       }else if(str=="群馬県"){
         str = 9
       }else if(str=="埼玉県"){
         str = 10
       }else if(str=="千葉県"){
         str = 11
       }else if(str=="東京都"){
         str = 12
       }else if(str=="神奈川県"){
         str = 13
       }else if(str=="新潟県"){
         str = 14
       }else if(str=="富山県"){
         str = 15
       }else if(str=="石川県"){
         str = 16
       }else if(str=="福井県"){
         str = 17
       }else if(str=="山梨県"){
         str = 18
       }else if(str=="長野県"){
         str = 19
       }else if(str=="岐阜県"){
         str = 20
       }else if(str=="静岡県"){
         str = 21
       }else if(str=="愛知県"){
         str = 22
       }else if(str=="三重県"){
         str = 23
       }else if(str=="滋賀県"){
         str = 24
       }else if(str=="京都府"){
         str = 25
       }else if(str=="大阪府"){
         str = 26
       }else if(str=="兵庫県"){
         str = 27
       }else if(str=="奈良県"){
         str = 28
       }else if(str=="和歌山県"){
         str = 29
       }else if(str=="鳥取県"){
         str = 30
       }else if(str=="島根県"){
         str = 31
       }else if(str=="岡山県"){
         str = 32
       }else if(str=="広島県"){
         str = 33
       }else if(str=="山口県"){
         str = 34
       }else if(str=="徳島県"){
         str = 35
       }else if(str=="香川県"){
         str = 36
       }else if(str=="愛媛県"){
         str = 37
       }else if(str=="高知県"){
         str = 38
       }else if(str=="福岡県"){
         str = 39
       }else if(str=="佐賀県"){
         str = 40
       }else if(str=="長崎県"){
         str = 41
       }else if(str=="熊本県"){
         str = 42
       }else if(str=="大分県"){
         str = 43
       }else if(str=="宮崎県"){
         str = 44
       }else if(str=="鹿児島県"){
         str = 45
       }else if(str=="沖縄県"){
         str = 46
       }

       $i("#house_prefecture_id").val(str);
       });




});

//
//
// var $d = jQuery.noConflict();
// $d(function(){
//       function buildHTML(text){
//
//         if($d(text.user_id) == $d(text.house_user_id)){
//           var html =    `<div class="qa_name">
//                           <p>オーナー</p>
//                          </div>
//                          <div class="baloon_left">
//                            <p>${text.text}</p>
//                          </div>`
//           return html
//                        }else{
//           var html =    `<div class="qa_name_right">
//                            <p>${text.user_name}</p>
//                          </div>
//                          <div class="baloon_right">
//                            <p>${text.text}</p>
//                          </div>`
//           return html } }
//
//         $d('#new_comment').on('submit',function(e){
//           e.preventDefault();
//           console.log('hello');
//           var formData = new FormData(this);
//           // var input = $d('.qa_textbox').val();
//           var href = window.location.href +'/qaforms'
//           console.log(this);
//           $d.ajax({
//             url:href,
//             type: "POST",
//             data:formData,
//             dataType:'json',
//             processData:false,
//             concentType:false,
//             traditional: true
//           })
//           .done(function(data){
//             console.log(data);
//             var html = buildHTML(data);
//             console.log(html)
//             $d('.qabox').append(html);
//             // $d('.qa_textbox').val('');
//           })
//         });
//
// });
