<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/coverHeader.jsp"/>
<div class="container ">


    <div class="back position-relative">
        <img src="/resources/uplodingFile/<%= session.getAttribute("cimage") != null ? session.getAttribute("cimage") : "./lion.png" %>" id="coverid" class="img2" alt="">
        <label class="position-absolute cover-btn" data-toggle="modal" data-target="#staticBackdrop1">
            <img src="/resources/file/camera.png" style="height: 20px; width: 20px;background: currentColor;" class="me-1"><span>Add Cover Photo</span>
        </label>

        <%--Profile page work start--%>
        <div style="border-bottom: #cccccc solid 1px;">
            <img src="/resources/file/<%= session.getAttribute("image") != null ? session.getAttribute("image") : "./lion.png" %>" id="profileid" alt="" class="front">
            <label for="profilePhoto">
                <img class="icon" id="profilePhoto" src="/resources/file/profileCamera.png" style="height: 20px; width: 20px;" data-toggle="modal" data-target="#staticBackdrop">
            </label>
            <h3 style="margin-left: 225px;"><span><%out.print(session.getAttribute("name")); %></span></h3>
            <p style="margin-left: 225px; color: #a2a3b7; font-size: 14px; margin-bottom: 78px;">120 friends</p>
            <button id="editprofilebutton"  data-toggle="modal" data-target="#staticBackdrop"><img src="/resources/file/edit.gif" style="height: 20px; width: 20px;"> Edit Profile</button>
        </div>

        <%--navbar--%>
       <div>
           <nav class="navbar navbar-expand-lg ">

               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="/coverpagePost">Posts</a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="#">About</a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="#">Friends</a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="#">Videos</a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="#">Posts</a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="#">Check-ins</a>
                       </li>
                       <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                               More
                           </a>
                           <ul class="dropdown-menu">
                               <li><a class="dropdown-item" href="#">Action</a></li>
                               <li><a class="dropdown-item" href="#">Another action</a></li>
                               <li><hr class="dropdown-divider"></li>
                               <li><a class="dropdown-item" href="#">Something else here</a></li>
                           </ul>
                       </li>

                       <li>
                           <button id="dot"><img style="height: 20px; width: 20px;" src="/resources/file/dot.png"></button>
                       </li>
                   </ul>

               </div>

           </nav>
       </div>

    <%--profile modal Start --%>
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

                        <form:form method="post" action="/coverpage" enctype="multipart/form-data">
                            <div class="col-md-8 control-label">
                                <label class="col-md-4 col-sm-3 control-label"><strong>Photo</strong></label>
                                <div id="dvPreviewPhoto" class="col-md-4 control-label thumbnail" style="width: 150px; height: 150px">
                                    <img id="photoImage" alt="image pay nai" src="/resources/file/noImage.png" style="width: 150px; height: 150px" />
                                </div>
                                <div class="col-md-6 control-label">
                                    <input type="file" id="uploadPhoto" name="image" onchange="checkFileSize()" class="valid" onkeypress="goToNext(event,'uploadSignature')">
                                    <p id="photoAttachmentmsg"></p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" id="saveChangesBtn">Save changes</button>
                            </div>
                        </form:form>

                    </div>
             </div>
               </div>
        </div>

        <%--profile modal End --%>
        <%--cover photo modal start--%>

        <div class="modal fade" id="staticBackdrop1" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabe2">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form:form method="post" action="/coverpage" enctype="multipart/form-data">
                            <div class="col-md-8 control-label">
                                <label class="col-md-4 col-sm-3 control-label"><strong>Photo</strong></label>
                                <div id="dvPreviewPhoto2" class="col-md-4 control-label thumbnail" style="width: 350px; height: 250px">
                                    <img id="photoImage2" alt="image pay nai" src="/resources/file/noImage.png" style="width: 150px; height: 150px" />
                                </div>
                                <div class="col-md-6 control-label">
                                    <input type="file" id="uploadPhoto2" name="cImage" onchange="checkFile()" class="valid" onkeypress="goToNext(event,'uploadSignature')">
                                    <p id="photoAttachmentmsg2"></p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" id="saveChangesBtn2">Save changes</button>
                            </div>
                        </form:form>

                    </div>
                </div>
            </div>
        </div>
        <%--cover photo modal end --%>
 </div>
</div>
        <%--Profile page work END--%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            /*profile photo js  start*/
            $(document).ready(function() {

                // Function to display selected photo in the preview image
                function readURLPhoto(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function(e) {
                            $('#photoImage').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(input.files[0]);
                    }
                }

                // Function to check file size and type
                function checkFileSize() {
                    var oFile = document.getElementById("uploadPhoto");
                    var filePath = oFile.value;
                    var fileTypeInvalidMsg = "File must be an image !!!"
                    var requiredfield = "File size must be less than 100 kb !!!";

                    var allowedExtensions  = /^([a-zA-Z0-9\s_\\.\-:()])+(\.jpg|\.jpeg|\.gif|\.png|\.bmp)$/i;

                    if(!allowedExtensions.exec(filePath)){
                        $("#uploadPhoto").val('');
                        $("#photoAttachmentmsg").html(
                            '<span style="color:red">'
                            + fileTypeInvalidMsg
                            + '<span>');
                    } else {
                        if (oFile.files[0].size > 102400) {
                            $("#photoAttachmentmsg").html(
                                '<span style="color:red">'
                                + requiredfield
                                + '<span>');
                        } else {
                            $("#photoAttachmentmsg").html('');
                            readURLPhoto(oFile);
                        }
                    }
                };

                // Function to update profile image with selected photo
                function updateProfilePhoto() {
                    var photoSrc = $('#photoImage').attr('src');
                    $('#profileid').attr('src', photoSrc);
                    $('#photoImageCDrop').attr('src', photoSrc);
                    $('#photoImageChead').attr('src', photoSrc);

                }

                // Event listener for file input change
                $('#uploadPhoto').on('change', function() {
                    checkFileSize();
                });

                // Event listener for Save Changes button click
                $('#saveChangesBtn').on('click', function() {
                    updateProfilePhoto();
                });

            });

            /*profile photo js end*/


            /*cover photo js Start*/

                // Function to display selected photo in the preview image
                function readURLPhoto2(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function(e) {
                            $('#photoImage2').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(input.files[0]);
                    }
                }

                // Function to check file size and type
                function checkFile() {
                    var oFile = document.getElementById("uploadPhoto2");
                    var filePath = oFile.value;
                    var fileTypeInvalidMsg = "File must be an image !!!"
                    var requiredfield = "File size must be less than 200 kb !!!";

                    var allowedExtensions  = /^([a-zA-Z0-9\s_\\.\-:()])+(\.jpg|\.jpeg|\.gif|\.png|\.bmp)$/i;

                    if(!allowedExtensions.exec(filePath)){
                        $("#uploadPhoto2").val('');
                        $("#photoAttachmentmsg2").html(
                            '<span style="color:red">'
                            + fileTypeInvalidMsg
                            + '<span>');
                    } else {
                        if (oFile.files[0].size > 102400) {
                            $("#photoAttachmentmsg2").html(
                                '<span style="color:red">'
                                + requiredfield
                                + '<span>');
                        } else {
                            $("#photoAttachmentmsg2").html('');
                            readURLPhoto2(oFile);
                        }
                    }
                };

                // Function to update profile image with selected photo
                function updateProfilePhoto2() {
                    var photoSrc = $('#photoImage2').attr('src');
                    $('#coverid').attr('src', photoSrc);


                }

                // Event listener for file input change
                $('#uploadPhoto2').on('change', function() {
                    checkFileSize();
                });

                // Event listener for Save Changes button click
                $('#saveChangesBtn2').on('click', function() {
                    updateProfilePhoto2();
                });


            /*Cover photo js End*/
        </script>


<jsp:include page="common/basicFooter.jsp"/>