<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/coverHeader.jsp" />
        <div class="container ">
            <div class="back position-relative">
                <img src="./lion.png" alt="">
                <button class="position-absolute cover-btn" >Add Cover Photo</button>
                <div class="front">
                    <img src="./lion.png" alt="">
                    <button >Add Profile Pic</button>
                </div>
            </div>
        </div>

<jsp:include page="common/basicFooter.jsp" />