<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style>
	.input1{
            width : 400px;
            height : 50px;
            font-size: 20px;
             }
        .join_btn{
            background-color: #1f1919;
            color:#fff;
            font-size:30px;
            width: 200px;
            height: 50px;
             }
	</style>
</head>

<body>

	 <form action="JoinServiceCon.do">
        
        <table width="800px"  align="center" style="margin-top: 70px;">
            
            <tr height="150px">
                <td  align="center"><h1 id="title">ȸ������</h1></td>
            </tr>
            <tr height="80px">
                <td  align="center"><input type = "text" placeholder ="ID�� �Է����ּ���" class="input1" height="70px" name="id"></td>
            </tr>
            <tr height="80px">
                <td  align="center"><input type = "text" placeholder ="PW�� �Է����ּ���" class="input1" height="70px" name="pw"></td>
            </tr>
            <tr height="80px">
                <td  align="center"><input type = "text" placeholder ="NAME�� �Է����ּ���" class="input1" height="70px" name="name"></td>
            </tr>
            <tr height="80px">
                <td  align="center"><input type = "text" placeholder ="Tel�� �Է����ּ���" class="input1" height="70px" name="tel"></td>
            </tr>
            <tr height="80px">
                <td align="center"><input type = "text" placeholder ="Addr�� �Է����ּ���" class="input1" height="70px" name="addr"></td>
            </tr>
            <tr height="80px">
                <td align="center"><input type = "text" placeholder ="Email�� �Է����ּ���" class="input1" height="70px" name="email"></td>
            </tr>
            <tr height="130px"align="center">
                <td colspan ="2"><input type = "submit" value="Join" class = "join_btn"></td>
            </tr>
            
        </table>
    </form>
    
</body>
</html>