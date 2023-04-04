<%@page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="common/basicHeader.jsp" />

<div class="row">

    <div class="col-md-3">
        <a class=" me-5" href="#"><img id="photoImage" class="me-1" alt="image pay nai" src="/resources/file/profile.jpeg" style="width: 25px; height: 25px;text-decoration:none "><b><span><%out.print(session.getAttribute("name")); %></span></b></a>
       <%-- <p>${message}</p>--%>
        <h6><a class="" href="" ><img src="/resources/file/watch.png" style="width: 30px; height: 30px; "> Watch</a></h6>
    </div>
    <div class="col-md-7">
        Post
    </div>
    <div class="col-md-2">
        right side
    </div>
</div>



<script>
    $.ajax({
        url: "/sginIn",
        type: "GET",
        dataType: "json",
        success: function(lMenus) {
            var $lmenuname = $("#lmenuname");
            $.each(lMenus, function(index, lMenu) {
                $("<a>", {
                    href: "#" + lMenu.name,
                    text: lMenu.name
                }).appendTo($lmenuname);
            });
        }
    });


</script>



<jsp:include page="common/basicFooter.jsp" />