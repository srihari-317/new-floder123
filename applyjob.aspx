<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applyjob.aspx.cs" Inherits="skilltechApp.applyjob" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="description" content="Best Web Development Company in Hyderabad">
    <link href="assets/images/favicon/favicon.png" rel="icon">
    <title>Skill Technologies</title>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="assets/css/bootstrap.min.js"></script>
    <link href="assets/css/regform.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        //Only Alphabets allowed Validation  
        function OnlyAlphabets(evt) {
            var keyCode = (evt.which) ? evt.which : evt.keyCode
            if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)

                return false;
            return true;
        }

        //Only Number allowed Validation  
        function OnlyNumbers(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31
                && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

        //Email Validation  
        function checkEmail(event) {
            var emailRex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if (!re.test(event.value)) {
                alert("Please enter a valid email address");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container" style="margin-top: 20px;">
        <div class="content">
            <form action="#" runat="server" id="jobapplyform">
                <div class="ribbon">
                    <span class="ribbon3">&nbsp;&nbsp;&nbsp;&nbsp;Apply the Job</span>
                </div>
                <div class="container">
                    <div class="row" style="margin-top: 30px;">
                        <div class="row col-xl-12 col-md-12 col-sm-12">
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="firstName">First Name</label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name" onkeypress="return OnlyAlphabets(event)" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="lastName">Last Name</label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name" onkeypress="return OnlyAlphabets(event)" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="row col-xl-12 col-md-12 col-sm-12">
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="mobileNo">Mobile Number</label>
                                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control" placeholder="Mobile Number" onkeypress="return OnlyNumbers(event)" TextMode="Phone" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="education">Education</label>
                                    <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" placeholder="BA, B.Sc, B.Tech, MCA etc..."></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Job Role</label>
                                    <asp:DropDownList ID="ddljobrole" runat="server" CssClass="form-control" placeholder="Job Role">
                                        <asp:ListItem>- Select Job Role - </asp:ListItem>
                                        <asp:ListItem>. Net Developer </asp:ListItem>
                                        <asp:ListItem>Business Development Manager</asp:ListItem>
                                        <asp:ListItem>Web Designer</asp:ListItem>
                                        <asp:ListItem>Web Developer </asp:ListItem>
                                        <asp:ListItem>SEO Expert</asp:ListItem>
                                        <asp:ListItem>Graphic Designer</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row col-xl-12 col-md-12 col-sm-12">
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="gender">Gender</label>
                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" placeholder="Gender">
                                        <asp:ListItem>- Select Gender - </asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Prefer not to say</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-xl-8 col-md-8 col-sm-8">
                                <div class="form-group">
                                    <label for="skillset">Skill Set</label>
                                    <asp:TextBox ID="txtSkillset" runat="server" CssClass="form-control" placeholder="Please mention your skill set like HTML, C#, ASP.NET, Java etc"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="row">
                        <div class="row col-xl-12 col-md-12 col-sm-12">
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Experience</label>
                                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Experience"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Certifications</label>
                                    <asp:TextBox ID="txtCetifications" runat="server" CssClass="form-control" placeholder="Certifications"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="resume">Attach Resume</label>
                                    <asp:FileUpload ID="resumeUploader" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row col-xl-12 col-md-12 col-sm-12">
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Current CTC</label>
                                    <asp:TextBox ID="txtCurrentctc" runat="server" CssClass="form-control" placeholder="Current CTC in Lakhs"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Expected CTC</label>
                                    <asp:TextBox ID="txtExpectedctc" runat="server" CssClass="form-control" placeholder="Expected CTC in Lakhs"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Notice Period</label>
                                    <asp:TextBox ID="txtNoticeperiod" runat="server" CssClass="form-control" placeholder="Notice Period"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="button">
                            <asp:Button ID="btnApplyjob" runat="server" Text="Apply" OnClick="btnApplyjob_Click" />
                        </div>
                    </div>
                </div>
                <div class="ribbon" style="margin-top: 0px;">
                    <span class="ribbon3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.aspx" style="color: white;">Back</a></span>
                </div>
            </form>
        </div>

    </div>

</body>
</html>
