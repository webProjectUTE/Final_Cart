<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!-- Button Require -->
<div class="positivebtn"> 
<button id="open">
  Require
</button>

<div class="modalbtn-container" id="modal_container">
  <div class="modalbtn">
    <h1 class="text-black">Cart</h1>
    <img src="images/9_2_cart.png">
    <button id="close">
      Close
    </button>
  </div>
</div>
  </div>
    <div class="row">
        <!--Side bar menu-->
        <ul class="col-3 sidebar-menu box">
            <li>
                <a href="https://nhatsang.tech/" class="sidebar-item">
                    <i class="fal fa-home sidebar-icon text-white"></i>
                    <span class="sidebar-text text-white">Home</span>
                    <span class="sidebar-status"></span>
                </a></li>
            <li><a href="https://nhatsang-survey.herokuapp.com/" class="sidebar-item">
                <i class="fab fa-java sidebar-icon text-white"></i>
                <span class="sidebar-text text-white">Survey</span>
            </a></li>
            <li><a href="https://nhatsang-download.herokuapp.com/" class="sidebar-item">
                <i class="fab fa-java sidebar-icon text-white"></i>
                <span class="sidebar-text text-white">Download</span>
            </a></li>
            <li><a href="#" class="sidebar-item sidebar-item--active">
                <i class="fab fa-java sidebar-icon text-white"></i>
                <span class="sidebar-text text-white">Cart</span>
            </a></li> 
            <li><a href="https://nhatsang-email.herokuapp.com/" class="sidebar-item">
                <i class="fab fa-java sidebar-icon text-white"></i>
                <span class="sidebar-text text-white">Email</span>
            </a></li>
            <li><a href="https://nhatsang-useradmin.herokuapp.com/" class="sidebar-item">
                <i class="fab fa-java sidebar-icon text-white"></i>
                <span class="sidebar-text text-white">userAdmin</span>
            </a></li> 
        </ul>

       <!--Main content-->
        <div class="container box"> 
          <h1 class="textaligncenter">CD list</h1>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <table>
              <tr>
                  <th>Description</th>
                  <th class="right">Price</th>
                  <th>&nbsp;</th>
              </tr>
             
            <c:forEach var="product" items="${products}">
             <tbody class="height100">  
              <tr>
                  <td><c:out value='${product.description}'/></td>
                  <td class="right">${product.priceCurrencyFormat}</td>
                  <td><form action="cart" method="post">
                          <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                          <span class="btn-color">
        						<input type="submit" value="Add To Cart" class="btn btn-primary btn-test">
    						</span>
                      </form></td>
              </tr>
              </tbody>
              </c:forEach>
              
          </table>
        </div>
    </div>
</div>

 <div class="container">
        <div class="h4 text-center text-white mb-4 title">% WORK COMPLETE</div>
        <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
          <div class="card-body box width100">
            <div class="row"> 
              <div class="col-md-6">
                <div class="progress-container progress-primary"><span class="progress-badge text-white">Nguyễn Hoàng Nhật</span>
                  <div class="progress">
                    <div class="progress-bar progress-bar-primary" data-aos="progress-full" data-aos-offset="10"
                      data-aos-duration="2000" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                      aria-valuemax="100" style="width: 100%;"></div><span class="progress-value text-white">100%</span>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="progress-container progress-primary"><span class="progress-badge text-white">Phan Thanh Sang</span>
                  <div class="progress">
                    <div class="progress-bar progress-bar-primary" data-aos="progress-full" data-aos-offset="10"
                      data-aos-duration="2000" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                      aria-valuemax="100" style="width: 100%;"></div><span class="progress-value text-white">100%</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
        
        

<!--Float button back to home-->
<a href="https://nhatsang.tech/#exercise" class="btn-float" rel="tooltip" title="Back to home page">
		<span class="background-float">
			<i class="fa fa-home icon-btn-float"></i> 
		</span>   			   
	</a>


<!--Footer-->
<footer class="footer">
    <div class="container text-center">
        <a class="cc-facebook btn btn-link" target="blank" href="http://facebook.com/"
           rel="tooltip" title="Follow me on Facebook">
            <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-github btn btn-link" target="blank" href="https://github.com/" rel="tooltip"
           title="Follow me on Github">
            <i class="fa fa-github fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-linkedin btn btn-link" target="blank" href="https://www.linkedin.com/"
           rel="tooltip" title="Connect me on LinkedIn">
            <i class="fa fa-linkedin fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-youtube btn btn-link" target="blank"
           href="https://www.youtube.com/" rel="tooltip"
           title="Subscribe me on Youtube">
            <i class="fa fa-youtube fa-2x " aria-hidden="true"></i>
        </a>
    </div>
    <div class="text-center text-muted">
        <p>
            &copy; 2021 Nguyễn Hoàng Nhật (19110031) - Phan Thanh Sang (19110276).<br>
            Web app hosting by <a class="credit" href="https://www.heroku.com/home">Heroku</a><br>
        </p>
    </div>
</footer>

<script>
    // UpperCase first character of each word in Input name
    ((document) => {
    	let $txtCustomerName = document.getElementById('customer-name');

        function capitalize_Words(str) { return str.replace(/\w\S*/g, function (txt) { return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase(); }); }
        function changeValue() { $txtCustomerName.value = capitalize_Words($txtCustomerName.value).replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '').replace(/ +(?= )/g, ''); }

        $txtCustomerName.addEventListener('keydown', changeValue, false);
        $txtCustomerName.addEventListener('keyup', changeValue, false);
        $txtCustomerName.addEventListener('keypress', changeValue, false);
    })(document);
</script>
	<script src="js/core/jquery.3.2.1.min.js"></script>
    <script src="js/core/popper.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>
    <script src="js/now-ui-kit.js?v=1.1.0"></script>
    <script src="js/aos.js"></script>
    <script src="scripts/main.js"></script>
</body>
</html>