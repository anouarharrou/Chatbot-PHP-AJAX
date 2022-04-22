
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css">
    <link rel="stylesheet" href="style.css">
    <title> Welcome | Chatbot </title>
    <link rel="icon" type="image/png" href="img/chatbot.png">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


</head>

<body>
    <!-- style=" background-image: url(img/Chatbot.jpg);background-repeat: no-repeat;background-size: cover;display: flex;height: 100vh;width: 100%;" -->
    <video autoplay muted loop id="myVideo">
        <source src="img/robot.mp4" autoplaytype="video/mp4">

    </video>
   
<section>

<button class="chat-btn text-white font-bold bg-purple-700 hover:bg-purple-800 py-2 px-4 rounded">

</button>

    <div class="chat-popup">
      
            <div class="badge">1</div>
            <div class="form">
                <div class="income-msg">
                    <img src="img/chatbot.png" class="avatar" alt="">
                    <div class="msg"> <p>Hello there, how can I help you?</p></div>
                </div>
            </div>

            <div class="input-area">
                <input id="data" type="text" placeholder="Type something here.." required>
                <button id="emoji-btn"> &#127773;</button>
                <button class="submit" id="send-btn"> <i class="material-icons"> send</i></button>
            </div>

    </div>
</section>

  
<script>
        $(document).ready(function() {
            $("#send-btn").on("click", function() {
                $value = $("#data").val();
                $msg = '<div class="msg"><p>' + $value +
                    '</p></div>';
                $(".form").append($msg);
                $("#data").val('');

                // start ajax code
                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text=' + $value,
                    success: function(result) {
                        $replay =
                            '<div class="income-msg"><img src="img/chatbot.png" class="avatar"><div class="msg"><p>' 
                            + result + '</p></div></div>';
                        $(".form").append($replay);
                        // when chat goes down the scroll bar automatically comes to the bottom
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@joeattardi/emoji-button@3.1.1/dist/index.min.js"></script>
    <script src="pop-up.js"></script>

</body>

</html>
