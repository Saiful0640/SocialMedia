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

        <%--Profile page work start--%>
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


                        <div class="col-md-8 control-label">
                            <label class="col-md-4 col-sm-3 control-label"><strong>Photo</strong></label>
                            <div id="dvPreviewPhoto" class="col-md-4 control-label thumbnail" style="width: 150px; height: 150px">



                                <img id="photoImage" alt="image pay nai" src="/resources/file/noImage.png" style="width: 150px; height: 150px" />


                            </div>

                            <div class="col-md-6 control-label">
                                <input type="file" id="uploadPhoto" name="uploadPhoto" onchange="checkFileSize()"
                                       class="valid" onkeypress="goToNext(event,'uploadSignature')">
                                <p id="photoAttachmentmsg"></p>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <%--Profile page work END--%>

        <script>

            function checkFileSize() {
                //alert('hello');
                var oFile = document.getElementById("uploadPhoto"); // <input type="file" id="fileUpload" accept=".jpg,.png,.gif,.jpeg"/>
                var filePath = oFile.value;
                var fileTypeInvalidMsg = "File must be an image !!!"
                var requiredfield = "File size must be less than 100 kb !!!";
                //alert(oFile.size);

                var allowedExtensions  = /^([a-zA-Z0-9\s_\\.\-:()])+(\.jpg|\.jpeg|\.gif|\.png|\.bmp)$/i;

                if(!allowedExtensions.exec(filePath)){
                    $("#uploadPhoto").val('');
                    $("#photoAttachmentmsg").html(
                        '<span style="color:red">'
                        + fileTypeInvalidMsg
                        + '<span>');
                }else{
                    if (oFile.files[0].size > 102400) {
                        $("#photoAttachmentmsg").html(
                            '<span style="color:red">'
                            + requiredfield
                            + '<span>');

                        //$("#uploadPhoto").val('');
                    } else {
                        $("#photoAttachmentmsg").html('');
                        readURLPhoto(oFile)
                    }

                }
            };

            function readURLPhoto(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#photoImage')
                            .attr('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            };

        </script>

<jsp:include page="common/basicFooter.jsp"/>