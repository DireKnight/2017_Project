<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SignupPage.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>The Next Frontier - Signup</title>
    <meta name="description" content="The signup page for those who want to join The Next Frontier."/>
    <link href="CSS/SignupStyle.css" rel="stylesheet" />
    <script src="JavaScript/SignupJavaScript.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <div>
        <!-- Header -->
        <header>
            <h2>The Next Frontier - Signup Form</h2>
        </header>

        <!-- The Main form of the signup page.-->
        <div id="SingupDiv" runat="server" visible="true">
            <form runat="server">
                <!-- Personal Details -->
                <section>
                    <h3>Personal Details</h3>
                    <ul style="list-style:none">
                        <li>
                            <label for="txtFirstName">First Name: </label>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldFirstName" 
                                runat="server" 
                                ErrorMessage="Enter a first name" 
                                Text="*"
                                ControlToValidate="txtFirstName" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label for="txtLastName">Last Name: </label>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldLastName" 
                                runat="server" 
                                ErrorMessage="Enter a last name" 
                                Text="*"
                                ControlToValidate="txtLastName" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label for="txtCountry">Country: </label>
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldCountry" 
                                runat="server" 
                                ErrorMessage="Enter a country" 
                                Text="*"
                                ControlToValidate="txtCountry" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label for="txtBirth">Date of Birth: </label>
                            <asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldBirth" 
                                runat="server" 
                                ErrorMessage="Enter a birth date" 
                                Text="*"
                                ControlToValidate="txtBirth" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                    </ul>
                </section>

                <br />

                <!-- Professional Details -->
                <section>
                    <h3>Professional Details</h3>
                    <ul style="list-style:none">
                        <li>
                            <label for="txtSkill">Professional Skill: </label>
                            <asp:TextBox ID="txtSkill" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldSkill" 
                                runat="server" 
                                ErrorMessage="Enter a skill" 
                                Text="*"
                                ControlToValidate="txtSkill" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label for="txtDegree">Highest Degree: </label>
                            <asp:TextBox ID="txtDegree" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldDegree" 
                                runat="server" 
                                ErrorMessage="Enter a degree" 
                                Text="*"
                                ControlToValidate="txtDegree" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                    </ul>
                </section>

                <br />

                <!-- Account Details -->
                <section>
                    <h3>Account Details</h3>
                    <ul style="list-style:none">
                        <li>
                            <label for="txtUsername">Username: </label>
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldUsername" 
                                runat="server" 
                                ErrorMessage="Enter a username" 
                                Text="*"
                                ControlToValidate="txtUsername" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <label for="txtPassword">Password: </label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="vldPassword" 
                                runat="server" 
                                ErrorMessage="Enter a password" 
                                Text="*"
                                ControlToValidate="txtPassword" 
                                CssClass="ErrorMessage" >
                            </asp:RequiredFieldValidator>
                        </li>
                    </ul>
                </section>

                <br />

                <footer>
                    <!-- Buttons to submit things -->
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </footer>
            </form>
        </div>

        <!--Div for outputting a successful registration-->
        <div id="OutputDiv" runat="server" visible="false">
            <article>
                <section>
                    <h3>Success</h3>
                    <p>Thank you! The data has been successfully registered.</p>
                </section>
            </article>
        </div>
    </div>
</body>
</html>
