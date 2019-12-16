<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/new.css">
        <link rel="stylesheet" href="css/animate-new.css">

        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="css/formstyle.css">

    </head>

    <body>
  
<!-- ${status}; -->
          
        <div class=" register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="img/btti-01.png" alt="IMG" style="width:250px;height:250px;">
                    </div>
                </div>
                <div class="col-md-9 register-right">

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading"></h3>

                            <form method="POST" action="Insert" id="signup-form" class="signup-form">
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="first_name">Student Name</label>
                                        <input type="text" class="form-input" name="student_name" id="first_name" />
                                    </div>
                                    <div class="form-group form-icon">
                                        <label for="birth_date">Date</label>
                                        <input type="text" class="form-input" name="date" id="birth_date" placeholder="MM-DD-YYYY" />
                                    </div>

                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="last_name">Session</label>
                                        <input type="text" class="form-input" name="session" id="last_name" />
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Admission Fee</label>
                                        <input type="text" class="form-input" name="admission_fee" id="password"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="re_password">Course Fee</label>
                                        <input type="text" class="form-input" name="course_fee" id="re_password"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Paid</label>
                                        <input type="text" class="form-input" name="paid" id="password"/>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="last_name">Course Name</label>
                                        <div class="form-input">
                                            <select class="form-control" name="course_name">
                                                <option selected>Choose...</option>
                                                <option>Japanese Language</option>
                                                <option>Basic Computer</option>
                                                <option>Advance Computer</option>
                                                <option>Graphic Design</option>
                                                <option>Advance Graphic Design</option>
                                                <option>Web Design & Development</option>
                                                <option>Auto CAD</option>
                                                <option>Digital Marketing</option>
                                                <option>Android Apps Development</option>
                                                <option>C Programming</option>
                                                <option>Hardware & Maintenance</option>
                                                <option>Advance ICT</option>
                                                <option>English Language</option>
                                                <option>Database Programming</option>
                                                <option>Industrial Electricity</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="last_name">Received By</label>
                                        <div class="form-input">
                                            <select class="form-control" name="received">
                                                <option selected>Choose...</option>
                                                <option>Coordinator</option>
                                                <option>Admin</option>
                                                <option>Front Office Executive</option>
                                                <option>Director</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-text">
                                    <a href="#" class="add-info-link"><i class="zmdi zmdi-chevron-right"></i>Additional info</a>
                                    <div class="add_info">

                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="re_password">Father's Name</label>
                                                <input type="text" name="father_name"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Mother's Name</label>
                                                <input type="text" name="mother_name"/>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="re_password">Mobile</label>
                                                <input type="text" name="mobile"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Date of Birth</label>
                                                <input type="text" name="birth_date"/>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group">
                                                <label for="re_password">Permanent Address</label>
                                                <input type="text" name="permanent_address"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Remarks</label>
                                                <input type="text" name="remarks"/>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="name">Upload Picture</div>
                                            <div class="value">
                                                <div class="input-group js-input-file">
                                                    <input class="input-file" type="file" name="file_picture" id="file">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Submit"/>
                                </div>
                            </form>


                            <!-- <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="First Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Confirm Password *"
                                            value="" />
                                    </div>
                                    <div class="form-group">
                                        <div class="maxl">
                                            <label class="radio inline">
                                                <input type="radio" name="gender" value="male" checked>
                                                <span> Male </span>
                                            </label>
                                            <label class="radio inline">
                                                <input type="radio" name="gender" value="female">
                                                <span>Female </span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Your Email *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" minlength="10" maxlength="10" name="txtEmpPhone"
                                            class="form-control" placeholder="Your Phone *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option class="hidden" selected disabled>Please select your Sequrity Question
                                            </option>
                                            <option>What is your Birthdate?</option>
                                            <option>What is Your old Phone Number</option>
                                            <option>What is your Pet Name?</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Enter Your Answer *"
                                            value="" />
                                    </div>
                                    <input type="submit" class="btnRegister" value="Register" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <h3 class="register-heading">Apply as a Hirer</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="First Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Email *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" maxlength="10" minlength="10" class="form-control"
                                            placeholder="Phone *" value="" />
                                    </div>
    
    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password *" value="" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Confirm Password *"
                                            value="" />
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option class="hidden" selected disabled>Please select your Sequrity Question
                                            </option>
                                            <option>What is your Birthdate?</option>
                                            <option>What is Your old Phone Number</option>
                                            <option>What is your Pet Name?</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="`Answer *" value="" />
                                    </div>
                                    <input type="submit" class="btnRegister" value="Register" />
                                </div>
                            </div>
                        </div> -->
                        </div>
                    </div>
                </div>

            </div>
            <script src="js/tilt.jquery.min.js"></script>
            <script >
                $('.js-tilt').tilt({
                    scale: 1.1
                })
            </script>

            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
            <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
            <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
            <script src="js/formmain.js"></script>

    </body>

</html>