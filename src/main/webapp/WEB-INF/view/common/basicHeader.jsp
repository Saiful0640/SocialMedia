<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="/resources/css/profile.css" rel="stylesheet">
    <link href="/resources/css/basicHeader.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">


    <title>MyBookPlus</title>

    <style>

    </style>

</head>

<body class="p-3 m-0 border-0 bd-example" style="font-family: 'Roboto', sans-serif; ">


<div id="divM" class="container-fluid row">
    <div class="col-md-11">


        <p>mybook+</p>
    </div>
    <div class="col-md-1" style="align-content: flex-end">

        <i class="fas fa-window-minimize ms-5"></i>


        <i class="fas fa-window-maximize ms-3"></i>


        <i class="fas fa-times ms-3"></i>

    </div>
</div>


<nav id="navM" class="navbar navbar-expand-lg bg-light mb-3 navbar-fixed-top">
    <div class="container-fluid">

        <a class="navbar-brand" href="#"><img alt="image pay nai" src="/resources/file/m.PNG"></a>
        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success me-5" type="submit" id="search">Search</button>
        </form>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active mx-5" aria-current="page" href="/sginIn"><i class="fa fa-home fa-lg"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-5" href="#"><i class="fa-brands fa-youtube fa-lg"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-5" href="#"><i class="fa-solid fa-shop fa-lg"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-5" href="#"><i class="fa-solid fa-user-group fa-lg"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-5" href="#"><i class="fa fa-gamepad fa-lg" aria-hidden="true fa-lg"></i></a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link me-5" href="/coverpage"><img id="photoImage" class="me-1" alt="image pay nai"
                                                           src="/resources/file/profile.jpeg"
                                                           style="width: 25px; height: 25px"><span><%out.print(session.getAttribute("name")); %></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-brands fa-facebook-messenger"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa-solid fa-bell"></i></a>
                </li>
                <li class="nav-item dropdown" style="">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                    </a>
                    <ul class="dropdown-menu" style="left: -310px;width: 350px; padding: 10px">
                        <li class=" border-bottom border-3"><a class=" me-5 " href="/coverpage"><img id="photoImage" class="mx-1" alt="image pay nai"
                                                           src="/resources/file/profile.jpeg"
                                                           style="width: 50px; height: 50px;text-decoration:none; float: left "><div><b><%out.print(session.getAttribute("name")); %></b><br><span>See your Profile</span></div>
                        </a>

                        </li>
                        <li class="my-2">
                            <a class="dropdown-item" href="#">
                            <img src="/resources/file/setting&privacy.png" class="me-2 icon" style="height: 25px; width: 25px"> <b class="me-5">Setting & Privacy</b> <img src="/resources/file/arrowkey.png" class="ms-5" style="height: 20px; width: 20px">
                            </a></li>
                        <li>
                            <a class="dropdown-item" href="#">
                                <img src="/resources/file/helpandsupport.png" class="me-3 icon" style="height: 25px; width: 25px"><b class="me-5">Help & Support</b> <img src="/resources/file/arrowkey.png" class="ms-5" style="height: 20px; width: 20px">
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="/login">
                            <button class="btn btn-danger ">LogOut</button>
                        </a></li>
                    </ul>
                </li>






            </ul>
        </div>


    </div>
</nav>


