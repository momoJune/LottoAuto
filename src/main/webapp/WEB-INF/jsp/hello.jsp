<%@ page import="java.util.Random" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!doctype html>

<html lang="UTF-8">
<style>
    #mainBox{ border: 2px solid black; width: 500px; height: 300px; margin-left: 40%; margin-top: 10%; }

</style>
<head>
    <script src="/webjars/jquery/dist/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로또</title>
</head>
<body>
    <div>
        <div id="mainBox">
            <input type="text" id="count" placeholder="얼마"/>
            <button type="button" id="lottoBtn" >생성</button>
        </div>
    </div>



</body>
<script>
        $('#lottoBtn').click(function (){
            var count = document.getElementById('count').value;
            var list = new Array()
            var myRandom = 0;
            var check;

            if(!(count>0&&count<11)){
                alert("1~10 사이의 숫자를 입력해 주세요.");
            }else{
                for(var c = 0; c < count; c++){
                    for(var i = 0; i < 6; i++){
                        myRandom = Math.floor(Math.random() * (45 - 1 + 1)) + 1;
                        if(myRandom<10)myRandom = "0" + myRandom;
                        check = checkDup(myRandom, list);
                        if(check>0){
                            i--;
                        }else{
                            list.push(myRandom);
                        }
                    }
                }
                alert(list);
            }
        });

        function checkDup(num, list) {
            var check = 0;
            if (list.length > 0) {
                for (var i = 0; i < list.length; i++) {
                    if (num == list[i]) check++;
                }
            }
            return check;
        }


</script>
</html>
