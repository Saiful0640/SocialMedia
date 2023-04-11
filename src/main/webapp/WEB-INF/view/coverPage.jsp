<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/coverHeader.jsp"/>
<div class="container ">


    <div class="back position-relative">
        <img src="./lion.png" class="img1" alt="">
        <label class="position-absolute cover-btn">
            <img src="/resources/file/camera.png" style="height: 20px; width: 20px;background: currentColor;"
                 class="me-1"><span>Add Cover Photo</span>
            <input type="file" id="coverPhoto" style="display: none;">
        </label>

        <div>
            <img src="./lion.png" alt="" class="front">
            <label for="profilePhoto">
                <img class="icon" id="profilePhoto" src="/resources/file/profileCamera.png" style="height: 20px; width: 20px;" data-toggle="modal" data-target="#staticBackdrop">
            </label>
        </div>

        <div class="modal fade" id="staticBackdrop" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Modal body text goes here.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>



<jsp:include page="common/basicFooter.jsp"/>