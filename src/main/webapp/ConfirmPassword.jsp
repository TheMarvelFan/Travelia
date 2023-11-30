<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change password</title>
</head>
<body>
<form action="changeforgotpassword" method="post">
    <h3> Enter new password: </h3>
    <input type="password" id="newPassword" name="newPassword" placeholder="Enter new password" required oninput="compareFields()">
    <input type="password" id="confPassword" name="confPassword" placeholder="Confirm new password" required oninput="compareFields()">
    <button name="submit" type="submit" id="submitBtn" disabled> Submit </button>
    <p id="result"></p>
    <script>
        function compareFields() {
            // Get the values from the input fields
            var nPass = document.getElementById('newPassword').value;
            var cPass = document.getElementById('confPassword').value;

            // Compare the values
            if (nPass === cPass && nPass.length > 0) {
                document.getElementById('result').innerText = 'Passwords match!';
                document.getElementById('submitBtn').disabled = false;
            } else {
                document.getElementById('result').innerText = 'Passwords do not match!';
                document.getElementById('submitBtn').disabled = true;
            }
        }
    </script>
</form>
</body>
</html>