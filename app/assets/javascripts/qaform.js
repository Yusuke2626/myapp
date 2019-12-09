//
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
//         $d('#new_qaform').on('submit',function(e){
//           e.preventDefault();
//           console.log('hello');
//           var formData = new FormData(this);
//           // var input = $d('.qa_textbox').val();
//           var href = window.location.href +'/qaforms'
//           console.log(this);
//           $d.ajax({
//             url:href,
//             type: 'POST',
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
//             $d('.qa_textbox').val('');
//           })
//         });
//
// });
