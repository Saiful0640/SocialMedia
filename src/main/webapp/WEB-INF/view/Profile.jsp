<%@page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="common/basicHeader.jsp" />

<div class="row" style="background-color:#eeeeee">

    <div class="col-xl-2 border-bottom border-3 " >
        <a class=" me-5" href="#"><img id="photoImage" class="me-1 my-3" alt="image pay nai" src="/resources/file/profile.jpeg" style="width: 25px; height: 25px;text-decoration:none "><b><span><%out.print(session.getAttribute("name")); %></span></b></a>
       <%-- <p>${message}</p>--%>
        <h6><a class="" href="" ><img src="/resources/file/watch.png" style="width: 30px; height: 30px; "> Watch</a></h6>
        <h6><a class="my-3" href="" ><img src="/resources/file/event.png" style="width: 30px; height: 30px; "> Event</a></h6>
        <h6><a class="" href="" ><img src="/resources/file/friend.png" style="width: 30px; height: 30px; "> Friend</a></h6>
        <h6><a class="my-3" href="" ><img src="/resources/file/memories.png" style="width: 30px; height: 30px; "> Memories</a></h6>
    </div>
    <div class="col-xl-7 ms-3 ">
        Post
    </div>
    <div class="col-xl-2 ms-3">
        right side
    </div>
</div>



<script>



</script>



<jsp:include page="common/basicFooter.jsp" />