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
        <form>
            <div id="mainBox">
                <input type="text" id="count" placeholder="몇번"/>
                <button type="button" id="lottoBtn" >생성</button>
                <input type="reset" id="reset" value="초기화">
            </div>
        </form>
    </div>



</body>
<script>
        $('#lottoBtn').click(function (){
            var count = document.getElementById('count').value;
            var myRandom = 0;
            var check;
            var str = "";
            var games = 1;
            if(!(count>0&&count<11)){
                alert("1~10 사이의 숫자를 입력해 주세요.");
                $("#reset").trigger("click");
            }else{
                for(var c = 0; c < count; c++){
                    if(games<10)games = " "+games;
                    if(c != count) str += games + " : "
                    games++;

                    var list = new Array()
                    for(var i = 0; i < 6; i++){
                        myRandom = Math.floor(Math.random() * (45 - 1 + 1)) + 1;
                        if(myRandom<10)myRandom = "0" + myRandom;
                        check = checkDup(myRandom, list);
                        if(check>0){
                            i--;
                        }else{
                            list.push(myRandom);
                            str += "(" + list[i] + ")" + " ";
                        }
                    }
                    str += "\n";
                }
                alert(str);

            }
        });

        //중복 체크크
       function checkDup(num, lists) {
            var checkD = 0;
            if (lists.length > 0) {
                for (var i = 0; i < lists.length; i++) {
                    if (num == lists[i]) checkD++;
                }
            }
            return checkD;
        }


</script>
</html>
