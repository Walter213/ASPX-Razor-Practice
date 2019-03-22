﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContestEntry.aspx.cs" Inherits="WebApp.SamplePages.ContestEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>Contest Entry</h1>
    </div>

    <div class="row col-md-12">
        <div class="alert alert-info">
            <blockquote style="font-style: italic">
                This illustrates some simple controls to fill out an entry form for a contest. 
                This form will use basic bootstrap formatting and illustrate Validation.
            </blockquote>
            <p>
                Please fill out the following form to enter the contest. This contest is only available to residents in Western Canada.
            </p>

        </div>
    </div>
    <%-- Entry all validation controls in one group area --%>  
    <asp:RequiredFieldValidator ID="RequiredFieldFirstName" runat="server" ErrorMessage="First Name is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldLastName" runat="server" ErrorMessage="Last Name is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="LastName"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldStreetAddress1" runat="server" ErrorMessage="Street Address 1 is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="StreetAddress1"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldCity" runat="server" ErrorMessage="City is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="City"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldPostalCode" runat="server" ErrorMessage="PostalCode is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="PostalCode"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldEmaillAddress" runat="server" ErrorMessage="Emaill Address is required." Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="EmailAddress"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldCheckAnswer" runat="server" ErrorMessage="You need to check mark the box idiot" Display="none"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="CheckAnswer"></asp:RequiredFieldValidator>

    <%-- Since we have no control to demostrate a range on, the streetaddress2 control will be used
        we will simulate a survey question fo strongly liked to strongly disliked with a value 1 to 5--%>

    <asp:RangeValidator ID="RangeStreetAddress" runat="server" ErrorMessage="Range test simulation using streetaddress 2" Display="None" 
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="StreetAddress2" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionPostalCode" runat="server" ErrorMessage="Invalid Postal Code format AnAnAn" Display="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="PostalCode" ValidationExpression="[a-zA-Z][0-9][a-zA-Z][0-9][a-zA-Z][0-9]"
        ></asp:RegularExpressionValidator>

    <%-- Datatype compare --%>
    <asp:CompareValidator ID="CompareEmailAddress" runat="server" ErrorMessage="Invalid Email Address" Display="None" 
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="EmailAddress" Type="string" Operator="DataTypeCheck"></asp:CompareValidator>
    
    <%-- Specified constant value --%>
    <asp:CompareValidator ID="CompareCheckAnswer" runat="server" ErrorMessage="Incorrect Answer to skill testing question" Display="None" 
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="CheckAnswer" Type="string" Operator="Equal" ValueToCompare="15"></asp:CompareValidator>

    <%-- compare between the controls 

     <asp:CompareValidator ID="CompareConfirmPassword" runat="server" ErrorMessage="Incorrect Password, Please Try Again" Display="None" 
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="ConfirmPassword" Type="string" Operator="Equal" ControlToCompare="PassWord"
        ></asp:CompareValidator> --%>

    <%-- display the error message on the form this example will use the Validation Summary control--%>

    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Please fill in the fields that are required" 
        CssClass="alert alert-danger"/>

    <div class="row">
        <div class ="col-md-6">
            <fieldset class="form-horizontal">
                <legend>Application Form</legend>

                <asp:Label ID="Label1" runat="server" Text="First Name"
                     AssociatedControlID="FirstName"></asp:Label>
                <asp:TextBox ID="FirstName" runat="server" 
                    ToolTip="Enter your first name." MaxLength="25"></asp:TextBox> 
                  
                 <asp:Label ID="Label6" runat="server" Text="Last Name"
                     AssociatedControlID="LastName"></asp:Label>
                <asp:TextBox ID="LastName" runat="server" 
                    ToolTip="Enter your last name." MaxLength="25"></asp:TextBox> 
                        
                <asp:Label ID="Label3" runat="server" Text="Street Address 1"
                     AssociatedControlID="StreetAddress1"></asp:Label>
                <asp:TextBox ID="StreetAddress1" runat="server" 
                    ToolTip="Enter your street address." MaxLength="75"></asp:TextBox> 
                  
                  <asp:Label ID="Label7" runat="server" Text="Street Address 2"
                     AssociatedControlID="StreetAddress2"></asp:Label>
                <asp:TextBox ID="StreetAddress2" runat="server" 
                    ToolTip="Enter your additional street address." MaxLength="75"></asp:TextBox> 
                  <br />
                 <asp:Label ID="Label8" runat="server" Text="City"
                     AssociatedControlID="City"></asp:Label>
                <asp:TextBox ID="City" runat="server" 
                    ToolTip="Enter your City name" MaxLength="50"></asp:TextBox> 
                  
                 <asp:Label ID="Label9" runat="server" Text="Province"
                     AssociatedControlID="Province"></asp:Label>
                <asp:DropDownList ID="Province" runat="server" Width="75px">
                    <asp:ListItem Value="AB" Text="AB"></asp:ListItem>
                     <asp:ListItem Value="BC" Text="BC"></asp:ListItem>
                     <asp:ListItem Value="MN" Text="MN"></asp:ListItem>
                     <asp:ListItem Value="SK" Text="SK"></asp:ListItem>
                </asp:DropDownList>
                  
                 <asp:Label ID="Label10" runat="server" Text="Postal Code"
                     AssociatedControlID="PostalCode"></asp:Label>
                <asp:TextBox ID="PostalCode" runat="server" 
                    ToolTip="Enter your postal code"  MaxLength="6"></asp:TextBox> 
                 
                <asp:Label ID="Label2" runat="server" Text="Email"
                     AssociatedControlID="EmailAddress"></asp:Label>
                <asp:TextBox ID="EmailAddress" runat="server" 
                    ToolTip="Enter your email address"
                     TextMode="Email"></asp:TextBox> 
                  
              </fieldset>   
           <p>Note: You must agree to the contest terms in order to be entered.
               <br />
               <asp:CheckBox ID="Terms" runat="server" Text="I agree to the terms of the contest" />
           </p>

            <p>
                Enter your answer to the following calculation instructions:<br />
                Multiply 15 times 6<br />
                Add 240<br />
                Divide by 11<br />
                Subtract 15<br />
                <asp:TextBox ID="CheckAnswer" runat="server" ></asp:TextBox>
            </p>
        </div>
        <div class="col-md-6">   
            <div class="col-md-offset-2">
                <p>
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>&nbsp;&nbsp;
                    <asp:Button ID="Clear" runat="server" Text="Clear" CausesValidation="true" OnClick="Clear_Click"  />
                </p>
                <asp:Label ID="Message" runat="server" ></asp:Label><br />
                <asp:GridView ID="GridviewCollectionContest" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>