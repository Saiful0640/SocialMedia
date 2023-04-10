<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/coverHeader.jsp" />
        <div class="container ">
            <div class="back position-relative">
                <img src="./lion.png"  class="img1" alt="">
                <%--<button class="position-absolute cover-btn" type="file"><img src="/resources/file/camera.png" style="height: 20px; width: 20px;background: currentColor;" class="me-1"><span>Add Cover Photo</span></button>--%>
                <label class="position-absolute cover-btn">
                    <img src="/resources/file/camera.png" style="height: 20px; width: 20px;background: currentColor;" class="me-1"><span>Add Cover Photo</span>
                    <input type="file" id="coverPhoto" style="display: none;">
                </label>
                <div >
                    <img src="./lion.png" alt="" class="front">
                    <label for="profilePhoto">
                        <img class="icon" src="/resources/file/profileCamera.png" style="height: 20px; width: 20px;">
                        <input type="file" id="profilePhoto" style="display: none;">
                    </label>


                </div>
            </div>
        </div>

<jsp:include page="common/basicFooter.jsp" />