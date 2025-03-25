<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Change password</title>
</head>
<body>
<form action="changeforgotpassword" method="post">
    <h1 style="text-align: center;">Set new password</h1> <br><br>
    <div style="margin-left: 530px; color: rgba(255, 0, 0, 0.581); background-color: lightgreen; width: 385px; max-width: 100%; border: 1px solid red; padding: 20px 40px;">
        <ul>
            <li>Password must contain at least ONE uppercase letter</li>
            <li>Password must contain at least ONE lowercase letter</li>
            <li>Password must contain at least ONE digit</li>
            <li>Password must contain at least ONE special character</li>
            <li>Password should not be longer than 16 characters</li>
            <li>Password should not be shorter than 8 characters</li>
        </ul>
    </div><br><br><br>
    <input style="width: 235px; height: 25px; font-size: 14pt; text-align: center; margin-left: 642px;" type="password" id="newPassword" name="newPassword" placeholder="Enter new password" required oninput="compareFields()"><br><br>
    <p id="alert" style="text-align: center; color: red;"></p><br><br>
    <input style="width: 235px; height: 25px; font-size: 14pt; text-align: center; margin-left: 642px;" type="password" id="confPassword" name="confPassword" placeholder="Confirm new password" required oninput="compareFields()"><br><br><br>
    <p style="text-align: center;" id="result"></p><br><br>
    <button style="font-size: 13pt; margin-left: 705px; height: 30px; width: 100px; text-align: center;" name="submit" type="submit" id="submitBtn" disabled> Submit </button>
    <script>
        function compareFields() {
            const nPass = document.getElementById('newPassword').value;
            const cPass = document.getElementById('confPassword').value;
            const alertMessage = document.getElementById('alert');
            const resultMessage = document.getElementById('result');

            // Reset alert and result messages
            alertMessage.innerText = '';
            resultMessage.innerText = '';

            // Password complexity requirements
            const hasUppercase = /[A-Z]/.test(nPass);
            const hasLowercase = /[a-z]/.test(nPass);
            const hasDigit = /\d/.test(nPass);
            const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(nPass);
            const isLengthValid = nPass.length >= 8 && nPass.length <= 16;

            // Check each condition
            if (nPass.length > 0) {
                if (!hasUppercase) {
                    alertMessage.innerText += 'Password must contain at least one uppercase letter.\n';
                }
                if (!hasLowercase) {
                    alertMessage.innerText += 'Password must contain at least one lowercase letter.\n';
                }
                if (!hasDigit) {
                    alertMessage.innerText += 'Password must contain at least one digit.\n';
                }
                if (!hasSpecialChar) {
                    alertMessage.innerText += 'Password must contain at least one special character.\n';
                }
                if (!isLengthValid) {
                    alertMessage.innerText += 'Password should be between 8 and 16 characters.\n';
                }
            }

            // Compare the values
            if (nPass === cPass && nPass.length > 0 && hasUppercase && hasLowercase && hasDigit && hasSpecialChar && isLengthValid) {
                resultMessage.innerText = 'Passwords match!';
                document.getElementById('submitBtn').disabled = false;
            } else {
                if (nPass.length !== 0 && cPass.length !== 0) {
                    resultMessage.innerText = 'Passwords do not match!';
                }
                document.getElementById('submitBtn').disabled = true;
            }
        }
    </script>
</form>
</body>
</html>
