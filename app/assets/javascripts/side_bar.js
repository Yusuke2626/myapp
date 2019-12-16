$(function(){

////////エリア検索・・・・・・・・・・
  $(document).on('mouseenter','.new_house1 ',function(){
    console.log('aa')
    $('#house_prefecture_id').after(`<div class="select_list_box"><div class="select_list"><div class="pref_list" id="hokkaido">北海道</div><div class="pref_list" id="touhoku">東北</div><div class="pref_list" id="kantou">関東</div><div class="pref_list" id="tyubu">中部</div><div class="pref_list" id="kansai">関西</div><div class="pref_list" id="tyugoku">中国</div><div class="pref_list" id="shikoku">四国</div><div class="pref_list" id="kyusyu">九州、沖縄</div></div></div>`);

    $('#hokkaido').click(function(){
      $('#house_prefecture_id option:selected').val(0);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })

    $('#touhoku').click(function(){
      $('#house_prefecture_id option:selected').val(1);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#kantou').click(function(){
      $('#house_prefecture_id option:selected').val(7);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#tyubu').click(function(){
      $('#house_prefecture_id option:selected').val(14);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#kansai').click(function(){
      $('#house_prefecture_id option:selected').val(25);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#tyugoku').click(function(){
      $('#house_prefecture_id option:selected').val(32);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#shikoku').click(function(){
      $('#house_prefecture_id option:selected').val(35);
      var a =   $('#house_prefecture_id option:selected').val();
      console.log(a);
      $('.side_submit').click();
    })
    $('#kyusyu').click(function(){
      $('#house_prefecture_id option:selected').val(46);
      var a =   $('#house_prefecture_idoption:selected').val();
      console.log(a);
      $('.side_submit').click();
    })

    $('pref_list').click(function(){
      $('.side_submit').click();
    })

  });
  $(document).on('mouseleave','.new_house1, .edit_house',function(){
    console.log('bb')
    $('.select_list').remove();
  });


////////都道府県検索・・・・・・・・・・


$(document).on('mouseenter','.new_house2',function(){
  console.log('aa')
  $('.new_house_2').after(`
    <div class="select_box_search">
    <div class="select_box_search__1">
    <div class="select_list"><div class="pref_list2" id="0">北海道</div>
         <div class="pref_list2" id="1">青森県</div>
         <div class="pref_list2" id="2">岩手県</div>
         <div class="pref_list2" id="3">宮城県</div>
         <div class="pref_list2" id="4">秋田県</div>
         <div class="pref_list2" id="5">山形県</div>
         <div class="pref_list2" id="6">福島県</div>
         <div class="pref_list2" id="7">茨城県</div>
         <div class="pref_list2" id="8">栃木県</div>
         <div class="pref_list2" id="9">群馬県</div>
         <div class="pref_list2" id="10">埼玉県</div>
         <div class="pref_list2" id="11">千葉県</div>
         <div class="pref_list2" id="12">東京都</div>
         <div class="pref_list2" id="13">神奈川県</div>
         <div class="pref_list2" id="14">新潟県</div>
         <div class="pref_list2" id="15">富山県</div>
         <div class="pref_list2" id="16">石川県</div>
         <div class="pref_list2" id="17">福井県</div>
         <div class="pref_list2" id="18">山梨県</div>
         <div class="pref_list2" id="19">長野県</div>
         <div class="pref_list2" id="20">岐阜県</div>
         <div class="pref_list2" id="21">静岡県</div>
         <div class="pref_list2" id="22">愛知県</div></div></div>
         <div class="select_box_search__2"><div class="select_list">
         <div class="pref_list2" id="23">三重県</div>
         <div class="pref_list2" id="24">滋賀県</div>
         <div class="pref_list2" id="25">京都府</div>
         <div class="pref_list2" id="26">大阪府</div>
         <div class="pref_list2" id="27">兵庫県</div>
         <div class="pref_list2" id="28">奈良県</div>
         <div class="pref_list2" id="29">和歌山県</div>
         <div class="pref_list2" id="30">鳥取県</div>
         <div class="pref_list2" id="31">島根県</div>
         <div class="pref_list2" id="32">岡山県</div>
         <div class="pref_list2" id="33">広島県</div>
         <div class="pref_list2" id="34">山口県</div>
         <div class="pref_list2" id="35">徳島県</div>
         <div class="pref_list2" id="36">香川県</div>
         <div class="pref_list2" id="37">愛媛県</div>
         <div class="pref_list2" id="38">高知県</div>
         <div class="pref_list2" id="39">福岡県</div>
         <div class="pref_list2" id="40">佐賀県</div>
         <div class="pref_list2" id="41">長崎県</div>
         <div class="pref_list2" id="42">熊本県</div>
         <div class="pref_list2" id="43">大分県</div>
         <div class="pref_list2" id="44">宮崎県</div>
         <div class="pref_list2" id="45">鹿児島県</div>
         <div class="pref_list2" id="46">沖縄県</div></div></div></div>`);

         $('#0').click(function(){
         $('.new_house_2 option:selected').val(0);
         $('.side_submit2').click();
         })
       $('#1').click(function(){
         $('.new_house_2 option:selected').val(1);
         $('.side_submit2').click();
         })
       $('#2').click(function(){
         $('.new_house_2 option:selected').val(2);
         $('.side_submit2').click();
         })
       $('#3').click(function(){
         $('.new_house_2 option:selected').val(3);
         $('.side_submit2').click();
         })
       $('#4').click(function(){
         $('.new_house_2 option:selected').val(4);
         $('.side_submit2').click();
         })
       $('#5').click(function(){
         $('.new_house_2 option:selected').val(5);
         $('.side_submit2').click();
         })
       $('#6').click(function(){
         $('.new_house_2 option:selected').val(6);
         $('.side_submit2').click();
         })
       $('#7').click(function(){
         $('.new_house_2 option:selected').val(7);
         $('.side_submit2').click();
         })
       $('#8').click(function(){
         $('.new_house_2 option:selected').val(8);
         $('.side_submit2').click();
         })
       $('#9').click(function(){
         $('.new_house_2 option:selected').val(9);
         $('.side_submit2').click();
         })
       $('#10').click(function(){
         $('.new_house_2 option:selected').val(10);
         $('.side_submit2').click();
         })
       $('#11').click(function(){
         $('.new_house_2 option:selected').val(11);
         $('.side_submit2').click();
         })
       $('#12').click(function(){
         $('.new_house_2 option:selected').val(12);
         $('.side_submit2').click();
         })
       $('#13').click(function(){
         $('.new_house_2 option:selected').val(13);
         $('.side_submit2').click();
         })
       $('#14').click(function(){
         $('.new_house_2 option:selected').val(14);
         $('.side_submit2').click();
         })
       $('#15').click(function(){
         $('.new_house_2 option:selected').val(15);
         $('.side_submit2').click();
         })
       $('#16').click(function(){
         $('.new_house_2 option:selected').val(16);
         $('.side_submit2').click();
         })
       $('#17').click(function(){
         $('.new_house_2 option:selected').val(17);
         $('.side_submit2').click();
         })
       $('#18').click(function(){
         $('.new_house_2 option:selected').val(18);
         $('.side_submit2').click();
         })
       $('#19').click(function(){
         $('.new_house_2 option:selected').val(19);
         $('.side_submit2').click();
         })
       $('#20').click(function(){
         $('.new_house_2 option:selected').val(20);
         $('.side_submit2').click();
         })
       $('#21').click(function(){
         $('.new_house_2 option:selected').val(21);
         $('.side_submit2').click();
         })
       $('#22').click(function(){
         $('.new_house_2 option:selected').val(22);
         $('.side_submit2').click();
         })
       $('#23').click(function(){
         $('.new_house_2 option:selected').val(23);
         $('.side_submit2').click();
         })
       $('#24').click(function(){
         $('.new_house_2 option:selected').val(24);
         $('.side_submit2').click();
         })
       $('#25').click(function(){
         $('.new_house_2 option:selected').val(25);
         $('.side_submit2').click();
         })
       $('#26').click(function(){
         $('.new_house_2 option:selected').val(26);
         $('.side_submit2').click();
         })
       $('#27').click(function(){
         $('.new_house_2 option:selected').val(27);
         $('.side_submit2').click();
         })
       $('#28').click(function(){
         $('.new_house_2 option:selected').val(28);
         $('.side_submit2').click();
         })
       $('#29').click(function(){
         $('.new_house_2 option:selected').val(29);
         $('.side_submit2').click();
         })
       $('#30').click(function(){
         $('.new_house_2 option:selected').val(30);
         $('.side_submit2').click();
         })
       $('#31').click(function(){
         $('.new_house_2 option:selected').val(31);
         $('.side_submit2').click();
         })
       $('#32').click(function(){
         $('.new_house_2 option:selected').val(32);
         $('.side_submit2').click();
         })
       $('#33').click(function(){
         $('.new_house_2 option:selected').val(33);
         $('.side_submit2').click();
         })
       $('#34').click(function(){
         $('.new_house_2 option:selected').val(34);
         $('.side_submit2').click();
         })
       $('#35').click(function(){
         $('.new_house_2 option:selected').val(35);
         $('.side_submit2').click();
         })
       $('#36').click(function(){
         $('.new_house_2 option:selected').val(36);
         $('.side_submit2').click();
         })
       $('#37').click(function(){
         $('.new_house_2 option:selected').val(37);
         $('.side_submit2').click();
         })
       $('#38').click(function(){
         $('.new_house_2 option:selected').val(38);
         $('.side_submit2').click();
         })
       $('#39').click(function(){
         $('.new_house_2 option:selected').val(39);
         $('.side_submit2').click();
         })
       $('#40').click(function(){
         $('.new_house_2 option:selected').val(40);
         $('.side_submit2').click();
         })
       $('#41').click(function(){
         $('.new_house_2 option:selected').val(41);
         $('.side_submit2').click();
         })
       $('#42').click(function(){
         $('.new_house_2 option:selected').val(42);
         $('.side_submit2').click();
         })
       $('#43').click(function(){
         $('.new_house_2 option:selected').val(43);
         $('.side_submit2').click();
         })
       $('#44').click(function(){
         $('.new_house_2 option:selected').val(44);
         $('.side_submit2').click();
         })
       $('#45').click(function(){
         $('.new_house_2 option:selected').val(45);
         $('.side_submit2').click();
         })
       $('#46').click(function(){
         $('.new_house_2 option:selected').val(46);
         $('.side_submit2').click();
         })

  });
$(document).on('mouseleave','.new_house2, .edit_house',function(){
  console.log('bb')
  $('.select_box_search').remove();
});


})
