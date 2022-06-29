<%@ page import="java.util.Random" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!doctype html>

<html lang="UTF-8">
<style>
    #mainBox{ border: 2px solid black; width: 500px; height: 500px; margin-left: 40%; margin-top: 10%; }
    #title{height: 50px; text-align: center;}
    #textBox{padding-top:20px; padding-left: 35%; }
    #resultBox{width: 400px; border: 1px solid gray; height: 270px; margin-top: 50px; margin-left: 50px; text-align: center;}
    #lottoNum{width: 400px; height: 240px; margin-top: 50px;}
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
            <div id="title">
                <h1>자동 로또 번호 생성기</h1>
            </div>
            <div id="textBox">
                <input type="text" id="howMuch" style="width: 100px;" placeholder="1000이상 입력"></input>
                <button type="button" id="lottoBtn" >생성</button>
            </div>
            <div id="resultBox">
                <div id="lottoNum">
                    <div > </div>
                </div>
                arr[1][2]
            </div>
        </div>
    </div>



</body>
<script>
    $(document).ready(function (){
        $('#lottoBtn').click(function (){
            if($('#howMuch').val() == "")alert("값을 입력하세용");
            if($('#howMuch').val() != ""&&  $('#howMuch').val() <1000)alert("1000 이상 입력하시라고요ㅋㅋ");
            fn_showLotto();

        });
    });

    function fn_showLotto(){
        var count = parseInt($('#howMuch').val()/1000);
        document.getElementById("resultBox").innerText = count + " 회 가능";

        var arr = create2DArray(count, 6);
        var list = new Array();
        var str = "";
        var str1 = " ";

        for(var i = 0; i<count;i++){
            for(var j = 0; j<6;j++){
                arr[i][j] = Math.floor(Math.random() *45) +1;
                if(j>0 && arr[i][j] ==arr[i][j-1]) i--;
                list.push("(" + arr[i][j]+")");
            }


        }
        console.log(list);
    }

    function create2DArray(rows, columns) {
        var count = parseInt($('#howMuch').val()/1000);
        var arr = new Array(rows);
        for (var i = 0; i < count; i++) {
            arr[i] = new Array(6);
        }
        return arr;
    }

</script>
</html>
