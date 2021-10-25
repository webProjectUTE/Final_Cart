<!DOCTYPE html>
<html>
<head>
       <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Title and favicon icon-->
    <title>Cart</title>
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
<div class="container">
  <div class ="text-content">
    <h1 class="textaligncenter">Your cart</h1>

<table class="box centerbox marginbottom5">
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
<tbody class="height100">
  <tr>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type=text name="quantity" class ="width30 textaligncenter"
               value="<c:out value='${item.quantity}'/>" id="quantity">
        <span class="btn-color">
              <input type="submit" value="Update" class="btn-primary btn-test">
          </span>
      </form>
    </td>
    <td><c:out value='${item.product.description}'/></td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <span class="btn-color">
              <input type="submit" value="Remove Item" class="btn-primary btn-test">
          </span>
      </form>
    </td>
  </tr>
</c:forEach>
    </tbody>
</table>

<p class="textaligncenter"><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
  
      <div class="container textaligncenter">
        <form action="" method="post" class="pad_top">
          <input type="hidden" name="action" value="shop">
          <span class="btn-color">
              <input type="submit" value="Continue Shopping" class="btn-primary btn-test width155px">
          </span>   
        </form>
        
        <form action="" method="post">
          <input type="hidden" name="action" value="checkout">
          <span class="btn-color">
              <input type="submit" value="Checkout" class="btn-primary btn-test width155px">
          </span>
        </form>
       </div>
 </div>
 </div>
</body>
</html>