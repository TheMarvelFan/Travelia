<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title> Confirmation </title>
</head>
<body>
<h1 style="text-align: center;"> An email has been sent to your ID with the confirmation code. Please type it below.</h1> <br><br><br><br><br><br><br><br>
<form action="confirmcode" method="post">
    <input style="font-size: 14pt; width: 206px; height: 40px; margin-left: 658px;" type="numeric" name="code" id="confirmationCode" placeholder="Enter confirmation code" oninput="validateCode()"> <br><br>
    <label style="font-size: 13pt; margin-left: 672px;"> For now, use 0000 as code</label><br><br>
    <button style="font-size: 14pt; width: 100px; height: 40px; margin-left: 710px;" type="submit" id="submitButton" disabled> Submit </button>

    <script>
        function validateCode() {
            const codeInput = document.getElementById('confirmationCode');
            const submitButton = document.getElementById('submitButton');

            submitButton.disabled = codeInput.value.length !== 4;
        }
    </script>
</form>
</body>
</html>
