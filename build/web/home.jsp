<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="./public/font/fontawesome-free-6.1.2-web/fontawesome-free-6.1.2-web/css/all.min.css">
        <link rel="stylesheet" href="./public/css/styleHome.css">
        <title>home</title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="slice">
            <div class="row slice">
                <div class="col-4 text-center">
                    <a href="#"><img src="./public/anh1/dress08.png" alt="" width="99%" height="225"></a>
                    <a href="#"><img src="./public/anh1/dress09.webp" alt="" width="99%" height="225"></a>
                </div>
                <div class="col-8 slice">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="#"><img src="./public/anh1/dress02.png" alt="" width="100%" height="450"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress03.png" alt="" width="100%" height="450"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress04.png" alt="" width="100%" height="450"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress05.png" alt="" width="100%" height="450"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress06.png" alt="" width="100%" height="450"></a>
                            </div>
                            <div class="carousel-item ">
                                <a href="#"><img src="./public/anh1/dress07.png" alt="" width="100%" height="450"></a>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div>
                <h3>S???N PH???M <strong class="text-danger">N???I B???T</strong></h3>
            </div>
            <section class="content">
                <div class="layer">
                    <div class="row text-center">
                        <c:forEach items="${productList}" var="product">
                            <div class="col-3 shadow-lg">
                                <div class="item-thumb">
                                    <a href="ProductDetailServlet?productId=${product.id}" class="text-dark"><img src="${product.img}" alt="" width="230" height="230">
                                        </div>
                                        <div class="text-danger">
                                            <p><a href="ProductDetailServlet?productId=${product.id}" class="text-dark">${product.name}</a></p>
                                        </div>
                                        <p>$ ${product.price}</p>
                                        <a href="ProductDetailServlet?productId=${product.id}" class="btn">Chi Ti???t S???n Ph???m</a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
            </section>
        </div>
        <div class="container">
            <div>
                <h3>??U ????I THANH TO??N</h3>
            </div>
            <div class="row ">
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress2.png" alt="" width="100%" height="180"></a>
                </div>
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress2.webp" alt="" width="100%" height="180"></a>
                </div>
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress3.webp" alt="" width="100%" height="180"></a>
                </div>
            </div>
            <div>
                <h3>CHUY??N TRANG TH????NG HI???U</h3>
            </div>
            <div class="row ">
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress5.webp" alt="" width="100%" height="180"></a>
                </div>
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress6.webp" alt="" width="100%" height="180"></a>
                </div>
                <div class="col-4 shadow-lg p-3 mb-5 bg-body rounded">
                    <a href="#"><img src="./public/anh1/dress7.webp" alt="" width="100%" height="180"></a>
                </div>
            </div>
        </div>
        <div class="anhcuahang text-center">
            <div class="text-center">
                <h3>M???t s??? H??nh ???nh C???a H??ng</h3>
            </div>
            <a class="ach" href="#"><img src="./public/anh1/anhcuahang1.jpg" alt="" width="18%" height="180"></a>
            <a class="ach" href="#"><img src="./public/anh1/anhcuahang3.jpeg" alt="" width="18%" height="180"></a>
            <a class="ach" href="#"><img src="./public/anh1/anhcuahang4.jpg" alt="" width="18%" height="180"></a>
            <a class="ach" href="#"><img src="./public/anh1/anhcuahang5.jpg" alt="" width="18%" height="180"></a>
            <a class="ach" href="#"><img src="./public/anh1/anhcuahang6.jpg" alt="" width="18%" height="180"></a>
        </div>
        <div id="backtop">
            <i class="fa-solid fa-circle-arrow-up"></i>
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop()) {
                    $('#backtop').fadeIn();
                } else {
                    $('#backtop').fadeOut();
                }
            });
            $("#backtop").click(function () {
                $('html,  body').animate({
                    scrollTop: 0
                }, 100);
            });
        });
    </script>

</html>