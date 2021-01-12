<%@ page 
	language="java" 
	contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,width=device-width,maximum-scale=1"> <!-- Focus Effect disable -->
    <meta name="description"
          content="CI/CD Sample">
    <meta name="author" content="changsuk.choi">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="icon" type="image/png" sizes="32x32" href="https://cdn01.bespinglobal.com/wp-content/uploads/2017/03/cropped-cropped-favicon-1-32x32.png">
    <link rel="icon" type="image/png" sizes="192x192" href="https://cdn01.bespinglobal.com/wp-content/uploads/2017/03/cropped-cropped-favicon-1-192x192.png">
	<title>BESPIN GLOBAL</title>
</head>

<body>
    <section class="signin-root">
        <form class="signin-plate" action="">
            <div class="signin-wrapper">
                <header class="header-wrapper">
                    <p>AMORE PACIFIC</p>
                    <p style="font-size:1.5rem;">BESPIN GLOBAL DevOS CI/CD</p>
                </header>
                <section class="body-wrapper">
                    <div>
                        <div>
                            <div class="board-button-move">
                                <button type="button" class="button-standard button-color" onclick="visitPage();">Go OPSNOW</button>
                            </div>                                         
                        </div>
                        <div class="label-login">
                            <div>
                                <span class="message-login">Tomcat application deployment have been completed</span>
                            </div>                        
                        </div>
                    </div> 
                </section>
			    <footer class="footer-root">
			        <div class="footer-wrapper-outer">
			            <div class="footer-wrapper-inner">
			                <div class="footer-copyright">
			                    <span>&copy; 2020 Bespinglobal. All rights reserved.</span>
			                </div>
			            </div>
			        </div>  
			    </footer>                
            </div>
        </form>
    </section> 
    <!-- JavaScript: Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
	    function visitPage(){
	        window.location='https://www.opsnow.com/';
	    }
    </script>    
</body>
</html>