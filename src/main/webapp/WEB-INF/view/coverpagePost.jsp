<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="coverPage.jsp"/>


<div style="background-color: #e5e4e4;margin-top: 216px;" class="row">

    <div class="col-md-3"></div>


    <div class="col-md-7 row my-2">
        <div class="col-md-5">
            <div class="info" style="background-color: #FFFFFF">

                <h5 id="infos" class="ms-3">Info</h5>
                <button style="background-color: #e5e5e5" class="addBio">Add Bio</button>
                <button style="background-color: #e5e5e5" class="editDetails">Edit Details</button>
                <button style="background-color: #e5e5e5" class="addHobbies">Add Hobbies</button>
                <button style="background-color: #e5e5e5" class="addFeature">Add Feature</button>

            </div>
        </div>

        <div class="col-md-7">

            <div class="post" style="background-color: #FFFFFF">
                <img id="photoImageBheader" class="me-1 postimag" alt="image pay nai"
                     src="/resources/file/<%= session.getAttribute("image") != null ? session.getAttribute("image") : "./profile.jpeg" %>"
                     style="width: 30px; height: 30px; border-radius: 50%">

            </div>

        </div>
    </div>


    <div class="col-md-2"></div>

</div>


<jsp:include page="common/basicFooter.jsp"/>

