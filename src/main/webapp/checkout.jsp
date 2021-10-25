<!DOCTYPE html>
<html>
 <head>
       <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Title and favicon icon-->
    <title>Checkout</title>
    <link rel="icon" type="image/png" href="https://image.flaticon.com/icons/png/512/4896/4896203.png" />

    <!--Link Google Font-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">
    <!--Link Font Awesome-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossOrigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
   <!--Link Bootstrap -->
        <link href="styles/bootstrap.min.css" rel="stylesheet">
        <!--Link My style-->
        <link rel="stylesheet" href="styles/main.css">
    </head>

<body>
<div class = "box centerbox" >
    <h1>Checkout isn't finished yet</h1>
    <p>Click on the browser's Back button to continue.</p>
    <button onclick="goBack()" class="btn btn-primary btn-test">Go back <i class="fal fa-long-arrow-left"></i></button>
  </div>  
  
  <script>
    function goBack() {
        window.history.back();
    }
</script>
</body>
</html>