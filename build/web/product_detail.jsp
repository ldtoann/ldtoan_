<%-- 
    Document   : product_detail
    Created on : 18 thg 8, 2022, 22:01:28
    Author     : toanl
--%>

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
        <link rel="stylesheet" href="public/css/styleSanPham.css">
        <title>product_detail</title>
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="container">
            <section class="shadow-lg bg-body rounded">
                <form action="OrderServlet" method="post">
                    <input type="hidden" name="action" value="creat"/>
                    <input type="hidden" name="img" value="${product.img}"/>
                    <input type="hidden" name="id" value="${product.id}"/>
                    <input type="hidden" name="name" value="${product.name}"/>
                    <input type="hidden" name="price" value="${product.price}"/>
                    <div class="container">
                        <div class="row section">
                            <div class="col-lg-1 col-md-12 col-sm-12"></div>
                            <div class="col-lg-5 col-md-12 col-sm-12">
                                <div class="sp-wrap sp-non-touch" items="${productList}" var="product">
                                    <div class="sp-large">
                                        <a href="#">
                                            <img src="${product.img}" class="sp-current-big" alt="" width="400" height="400">
                                        </a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-5 col-md-12 col-sm-12">
                                <div class="woo_pr_detail">
                                    <h2 class="woo_pr_title">${product.name}</h2>
                                    <div class="woo_pr_short_desc">
                                        <p>${product.desc}</p>
                                        <a href="category.jsp" class="woo_pr_cats"></a>
                                    </div>
                                    <div class="woo_pr_price">
                                        <div class="woo_pr_offer_price">
                                            <h3>$ ${product.price}
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="left col-6 text-dark">
                                        <input type="number" name="quantity" class="input-group-lg text-center form-control-sm" step="1"
                                               min="0" value="1" title="sl" size="4" placeholder inputmode="numeric">
                                    </div>
                                    <div class="woo_btn_action">
                                        <hr>
                                        <div >
                                            <button class="btn btn-block btn-danger mb-2" type="submit"><a>TH??M V??O GI??? H??NG</a></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-12 col-sm-12"></div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-lg-12 col-md-12">                              
                            </div>
                        </div>
                    </div>
                </form>              
            </section>
        </div>
        <div class="container">
            <div class="moresp">
                <div class="anhsp text-center">
                    <h5>M?? T??? S???N PH???M</h5>
                </div>
                <div class="text-danger">
                    <h5>?????C ??I???M N???I B???T</5>
                </div>
                <div class="text-dark">
                    <p>
                        Hi???u n??ng v?????t tr???i - Chip Apple A15 Bionic m???nh m???, h??? tr??? m???ng 5G t???c ????? cao
                    </p>
                    <p>
                        Kh??ng gian hi???n th??? s???ng ?????ng - M??n h??nh 6.7" Super Retina XDR ????? s??ng cao, s???c n??t
                    </p>
                    <p>
                        Tr???i nghi???m ??i???n ???nh ?????nh cao - C???m 3 camera k??p 12MP, h??? tr??? ???n ?????nh h??nh ???nh quang h???c
                    </p>
                    <p>
                        T???i ??u ??i???n n??ng - Sa??c nhanh 20 W, ?????y 50% pin trong kho???ng 30 ph??t
                    </p>
                </div>
                <div class="text-danger">
                    <h5>????NH GI??</5>
                </div>
                <div class="text-dark">
                    <p>
                        iPhone 12 ra m????t ca??ch ????y ch??a l??u, thi?? nh????ng tin ??????n m????i nh????t v???? iPhone 13 Pro Max ??a?? khi????n bao ti??n ?????? c??ng ngh???? ngo??ng ch????. Cu??m camera ???????c n??ng c????p, m??u s???c m???i, ?????c bi???t l?? m??n h??nh 120Hz v???i ph???n notch ???????c l??m nh??? g???n h??n chi??nh
                        la?? nh????ng ??i????m la??m cho thu hu??t mo??i s???? chu?? y?? trong n??m nay.
                    </p>
                </div>
            </div>
            <br>
            <div class="moresp">
                <div class="row">
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/anhsppp4.jpg" alt="" width="600" height="320" />
                    </div>
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/anhsppp5.jpg" alt="" width="600" height="320" />
                    </div>
                </div>
            </div>
            <div class="text-dark">
                <p>
                    Thi????t k???? ca??nh ph????ng sang tro??ng, nhi???u ma??u s????c n????i b????t
                </p>
                <p>
                    M??n h??nh v???i tai nh??? nh??? h??n, t????c ?????? la??m t????i 120 Hz
                </p>
                <p>
                    Camera n??ng c????p, ch???p ???nh ch???t l?????ng, quay phim chuy??n nghi???p
                </p>
                <p>
                    Vi x???? ly?? n??ng c????p, dung l?????ng pin c???i thi???n
                </p>
                <p>
                    ki??ch c???? ma??n hi??nh 6.7 inch v????i t????m n????n Super Retina XDR OLED
                </p>
            </div>
            <div class="moresp">
                <div class="row">
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/maxresdefault.jpg" alt="" width="600" height="320" />
                    </div>
                    <div class="tonho col-6 text-center">
                        <img src="./public/anh1/gsmarena_000.jpg" alt="" width="600" height="320" />
                    </div>
                </div>
            </div>
            <div class="moresp">

            </div>
        </div>
        <div class="container shadow-lg p-3 mb-5 bg-body rounded">
            <div class="text-center">
                <h3>????NH GI?? KH??CH H??NG</h3>
            </div>
            <div class="mb-3">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
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