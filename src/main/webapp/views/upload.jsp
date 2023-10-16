<%--
  Created by IntelliJ IDEA.
  User: hoanganhvu
  Date: 13/10/2023
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<!-- Content here -->
<%--navbar--%>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://th.bing.com/th/id/OIP.nFn_mpOrmv-KNugzesNztwHaHa?w=176&h=180&c=7&r=0&o=5&dpr=2&pid=1.7" alt="Bootstrap" width="30" height="24">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Customer 1</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Customer 2
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Customer 3</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<%--End Nav--%>
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <h2>Khu vực sidebars</h2>
        </div>
        <div class="col-lg-6">
            <br>
<%--            <div class="mb-3">--%>
<%--                <label for="formGroupExampleInput" class="form-label">Example label</label>--%>
<%--                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label for="formGroupExampleInput2" class="form-label">Another label</label>--%>
<%--                <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder">--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label for="formGroupExampleInput3" class="form-label">Example label</label>--%>
<%--                <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Example input placeholder">--%>
<%--            </div>--%>
            <div class="mb-3" action="/upload" method="POST" enctype = "multipart/form-data">
                <label for="formFile" class="form-label"><b>CHO TAU CÁI ẢNH</b></label>
                <input name="photo" class="form-control" type="file" id="formFile">
                <br>
                <button type="button" class="btn btn-success">Upload</button>
            </div>

        </div>
    </div>
    <%--Form--%>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>