

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload-Test.aspx.cs" Inherits="RoadRuner_Test.Upload_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        @import "lesshat";

        .clearfix() {
            zoom: 1;
            &:before, &:after

        {
            content: "";
            display: block;
        }

        &:after {
            clear: both;
        }

        }

        .col() {
            padding-right: 10px;
            float: left;
            &:last-of-type

        {
            padding-right: 0;
        }

        }

        .transition(@speed, @easing) {
            transition: all @speed @easing;
        }

        // VARIABLES

        @white: #fff;
        @grey-lightest: #f9f9f9;
        @grey-light: #e3e3e3;
        @grey: #e5e5e5;
        @grey-dark: #b9b9b9;

        @purple: #c68eaa;
        @green: #7ed321;
        @emerald: #04BDBD;
        @blue: #04AEC5;
        @blue-dark: #0F6CC9;
        @color-primary: @green;
        @color-primary-strong: darken(saturate(@color-primary, 5%), 10%);

        @br: 3px;

        @fast: 0.35s;

        @ease: ease-in-out;

        // GENERAL

        * {
            &, &:before, &:after

        {
            box-sizing: border-box;
        }

        }

        body {
            padding: 1em;
            font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            font-size: 15px;
            // font-size: 1vw;
            color: @grey-dark;
            background-color: @grey-light;
        }

        // TYPOGRAPHY

        h4 {
            color: @color-primary;
        }

        // FORM

        input {
            width: -webkit-fill-available;
            width: 100%;
            padding: 1em;
            line-height: 1.4;
            background-color: @grey-lightest;
            border: 1px solid @grey;
            border-radius: 3px;
            .transition(@fast, @ease);
            &:focus

        {
            width: -webkit-fill-available;
            outline: 0;
            border-color: @color-primary-strong;
            & + .input-icon

        {
            i

        {
            color: @color-primary;
        }

        &:after {
            border-right-color: @color-primary;
        }

        }
        }

        &[type="radio"] {
            display: none;
            & + label

        {
            &:extend(input);
            display: inline-block;
            width: 50%;
            text-align: center;
            float: left;
            border-radius: 0;
            &:first-of-type

        {
            border-top-left-radius: @br;
            border-bottom-left-radius: @br;
        }

        &:last-of-type {
            border-top-right-radius: @br;
            border-bottom-right-radius: @br;
        }

        i {
            padding-right: 0.4em;
        }

        }

        &:checked + label {
            background-color: @color-primary;
            color: @white;
            border-color: @color-primary-strong;
        }

        }

        &[type="checkbox"] {
            display: none;
            & + label

        {
            position: relative;
            display: block;
            padding-left: 1.6em;
            &:before

        {
            &:extend(input);
            position: absolute;
            top: 0.2em;
            left: 0;
            display: block;
            width: 1em;
            height: 1em;
            padding: 0;
            content: "";
        }

        &:after {
            position: absolute;
            top: 0.45em;
            left: 0.2em;
            font-size: 0.8em;
            color: @white;
            opacity: 0;
            font-family: FontAwesome;
            content: "\f00c";
        }

        }
        }

        &:checked + label {
            &:before

        {
            &:extend(input[type="radio"]:checked + label);
        }

        &:after {
            opacity: 1;
        }

        }
        }

        select {
            &:extend(input[type="radio"] + label);
            height: 3.4em;
            line-height: 2;
            &:first-of-type

        {
            border-top-left-radius: @br;
            border-bottom-left-radius: @br;
        }

        &:last-of-type {
            border-top-right-radius: @br;
            border-bottom-right-radius: @br;
        }

        &:focus, &:active {
            outline: 0;
            &:extend(input[type="radio"]:checked + label);
        }

        option {
            &:extend(input);
            background-color: @color-primary;
            color: @white;
        }

        }

        .input-group {
            margin-bottom: 1em;
            display: block;
            .clearfix();
        }

        .input-group-icon {
            position: relative;
            input

        {
            padding-left: 4.4em;
        }

        .input-icon {
            position: absolute;
            top: 0;
            left: 0;
            width: 3.4em;
            height: 3.4em;
            line-height: 3.4em;
            text-align: center;
            pointer-events: none;
            &:after

        {
            position: absolute;
            top: 0.6em;
            bottom: 0.6em;
            left: 3.4em;
            /*display: block;*/
            display: inherit;
            border-right: 1px solid @grey;
            content: "";
            .transition(@fast, @ease);
        }

        i {
            .transition(@fast, @ease);
        }

        }
        }


        .container1 {
            max-width: 55em;
            padding: 0em 2em 2em 3em;
            /*margin: 0em auto;*/
            margin: 4em 0em 0em 15%;
            background-color: @white;
            border-radius: @br * 1.4;
            box-shadow: 0px 3px 10px -2px rgba(0,0,0,0.2);
            padding-top: 25px;
        }

        .row {
            .clearfix();
        }

        .col-half {
            .col();
            width: 100% / 2;
        }

        .col-third {
            .col();
            width: 100% / 3;
        }

        @media only screen and (max-width: 540px) {
            .col-half {
                width: 100%;
                padding-right: 0;
            }
        }

        .btn-style {
            float: right;
        }

        .ddl-style {
            height: 25px;
        }


        .btn-success {
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
        }

            .btn-success:focus,
            .btn-success.focus {
                color: #fff;
                background-color: #449d44;
                border-color: #255625;
            }

            .btn-success:hover {
                color: #fff;
                background-color: #449d44;
                border-color: #398439;
            }

            .btn-success:active,
            .btn-success.active,
            .open > .dropdown-toggle.btn-success {
                color: #fff;
                background-color: #449d44;
                background-image: none;
                border-color: #398439;
            }

                .btn-success:active:hover,
                .btn-success.active:hover,
                .open > .dropdown-toggle.btn-success:hover,
                .btn-success:active:focus,
                .btn-success.active:focus,
                .open > .dropdown-toggle.btn-success:focus,
                .btn-success:active.focus,
                .btn-success.active.focus,
                .open > .dropdown-toggle.btn-success.focus {
                    color: #fff;
                    background-color: #398439;
                    border-color: #255625;
                }

            .btn-success.disabled:hover,
            .btn-success[disabled]:hover,
            fieldset[disabled] .btn-success:hover,
            .btn-success.disabled:focus,
            .btn-success[disabled]:focus,
            fieldset[disabled] .btn-success:focus,
            .btn-success.disabled.focus,
            .btn-success[disabled].focus,
            fieldset[disabled] .btn-success.focus {
                background-color: #5cb85c;
                border-color: #4cae4c;
            }

            .btn-success .badge {
                color: #5cb85c;
                background-color: #fff;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align-last: center;">
            <h1>Test Result</h1>

            <asp:TextBox ID="txt_Result" runat="server" Width="50%" Height="20" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-lg btn-success" Width="100" Height="50" OnClick="btn_submit_Click" />
        </div>
    </form>
</body>
</html>
