<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>| Admin Home </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
    <script src="js/jquery.min.js"> </script>
    <!--/script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <style>
        .input-container {
            margin-bottom: 20px;
        }

        .add,
        .remove {
            margin-left: 10px;
        }
    </style>
    <script>
        $(document).ready(function() {
            $('#new_chq').on('click', '.add', add);
            $('#new_chq').on('click', '.remove', remove);

            function add(event) {
                event.preventDefault();
                var new_chq_no = parseInt($('#total_chq').val()) + 1;
                var new_input = "<div class='input-container'>";
                new_input += "<label>Hotel:</label>";
                new_input += "<input type='text' name='hotelName[]' style='height: 20px;' placeholder='Enter hotel name'>";
                new_input += "<label style='margin-left: 20px;'>Number of Rooms:</label>";
                new_input += "<input type='number' name='numRooms[]' style='height: 20px;' value='1' min='1'>";
                new_input += "<button class='add'>Add</button><button class='remove'>Remove</button></div>";

                $('#new_chq').append(new_input);

                $('#total_chq').val(new_chq_no);
            }

            function remove(event) {
                event.preventDefault();
                var last_chq_no = $('#total_chq').val();

                if (last_chq_no > 1) {
                    $(this).closest('.input-container').remove();
                    $('#total_chq').val(last_chq_no - 1);
                }
            }
        });
    </script>
</head>

<body>
<h1>Add Hotels</h1>
<form method="post" action="addrooms">
    <div id="new_chq">
        <div class="input-container">
            <label>Hotel:</label>
            <input type="text" name="hotelName[]" style="height: 20px;" placeholder="Enter hotel name">
            <label style="margin-left: 20px;">Number of Rooms:</label>
            <input type="number" name="numRooms[]" style="height: 20px;" value="1" min="1">
            <button class="add">Add</button>
            <button class="remove">Remove</button>
        </div>
    </div>
    <input type="hidden" value="1" id="total_chq">
    <button type="submit"> Submit </button>
</form>
</body>
</html>
