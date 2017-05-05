<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%ResultSet resultset =null;%>
    <%@ page session="true" %>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>

    	
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
/* -- import Roboto Font ---------------------------- */
@import "https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic";

/* -- You can use this tables in Bootstrap (v3) projects. -- */
// @import "//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css";


/* -- Box model ------------------------------- */
*,
*:after,
*:before {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

/* -- Demo style ------------------------------- */
html, body {
  position: relative;
  min-height: 100%;
  height: 100%;
}

html {
  position: relative;
  overflow-x: hidden;
  margin: 16px;
  padding: 0;
  min-height: 100%;
  font-size: 62.5%; // For rem units support
}

body {
  font-family: 'RobotoDraft', 'Roboto', 'Helvetica Neue, Helvetica, Arial', sans-serif;
  font-style: normal;
  font-weight: 300;
  font-size: 1.4rem;
  line-height: 2rem;
  letter-spacing: 0.01rem;
  color: #212121;
  background-color: #f5f5f5;

  // Font Rendering
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-rendering: optimizeLegibility;
}

#demo {
  margin: 20px auto;
  max-width: 960px;
}

// Material Design typography
// http://codepen.io/zavoloklom/pen/IkaFL
#demo h1 {
  font-size: 2.4rem;
  line-height: 3.2rem;
  letter-spacing: 0;
  font-weight: 300;
  color: #212121;
  text-transform: inherit;
  margin-bottom: 1rem;
  text-align: center;
}
#demo h2 {
  font-size: 1.5rem;
  line-height: 2.8rem;
  letter-spacing: 0.01rem;
  font-weight: 400;
  color: #212121;
  text-align: center;
}

// Material Design shadows
// 
.shadow-z-1 {
  -webkit-box-shadow: 0 1px 3px 0 rgba(0,0,0,.12),
                      0 1px 2px 0 rgba(0,0,0,.24);
  -moz-box-shadow:    0 1px 3px 0 rgba(0,0,0,.12),
                      0 1px 2px 0 rgba(0,0,0,.24);
  box-shadow:         0 1px 3px 0 rgba(0,0,0,.12),
                      0 1px 2px 0 rgba(0,0,0,.24);
}


/* -- Material Design Table style -------------- */

// Variables
// ---------------------
@table-header-font-weight:      400;
@table-header-font-color:       #757575;

@table-cell-padding:            1.6rem;
@table-condensed-cell-padding:  @table-cell-padding/2;


@table-bg:                      #fff;
@table-bg-accent:               #f5f5f5;
@table-bg-hover:                rgba(0,0,0,.12);
@table-bg-active:               @table-bg-hover;
@table-border-color:            #e0e0e0;



// Mixins
// -----------------
.transition(@transition) {
  -webkit-transition: @transition;
       -o-transition: @transition;
          transition: @transition;
}

// Tables
//
// -----------------

// Baseline styles
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 2rem;
  background-color: @table-bg;
  > thead,
  > tbody,
  > tfoot {
    > tr {
      .transition(all .3s ease);
      > th,
      > td {
        text-align: left;
        padding: @table-cell-padding;
        vertical-align: top;
        border-top: 0;
        .transition(all .3s ease);
      }
    }
  }
  > thead > tr > th {
    font-weight: @table-header-font-weight;
    color: @table-header-font-color;
    vertical-align: bottom;
    border-bottom: 1px solid rgba(0,0,0,.12);
  }
  > caption + thead,
  > colgroup + thead,
  > thead:first-child {
    > tr:first-child {
      > th,
      > td {
        border-top: 0;
      }
    }
  }
  > tbody + tbody {
    border-top: 1px solid rgba(0,0,0,.12);
  }

  // Nesting
  .table {
    background-color: @table-bg;
  }

  // Remove border
  .no-border {
    border: 0;
  }
}

// Condensed table w/ half padding
.table-condensed {
  > thead,
  > tbody,
  > tfoot {
    > tr {
      > th,
      > td {
        padding: @table-condensed-cell-padding;
      }
    }
  }
}


// Bordered version
//
// Add horizontal borders between columns.
.table-bordered {
  border: 0;
  > thead,
  > tbody,
  > tfoot {
    > tr {
      > th,
      > td {
        border: 0;
        border-bottom: 1px solid @table-border-color;
      }
    }
  }
  > thead > tr {
    > th,
    > td {
      border-bottom-width: 2px;
    }
  }
}


// Zebra-striping
//
// Default zebra-stripe styles (alternating gray and transparent backgrounds)
.table-striped {
  > tbody > tr:nth-child(odd) {
    > td,
    > th {
      background-color: @table-bg-accent;
    }
  }
}

// Hover effect
//
.table-hover {
  > tbody > tr:hover {
    > td,
    > th {
      background-color: @table-bg-hover;
    }
  }
}

// Responsive tables (vertical)
//
// Wrap your tables in `.table-responsive-vertical` and we'll make them mobile friendly
// by vertical table-cell display. Only applies <768px. Everything above that will display normally.
// For correct display you must add 'data-title' to each 'td'
.table-responsive-vertical {

  @media screen and (max-width: 768px) {

    // Tighten up spacing
    > .table {
      margin-bottom: 0;
      background-color: transparent;
      > thead,
      > tfoot {
        display: none;
      }

      > tbody {
        display: block;

        > tr {
          display: block;
          border: 1px solid @table-border-color;
          border-radius: 2px;
          margin-bottom: @table-cell-padding;

          > td {
            background-color: @table-bg;
            display: block;
            vertical-align: middle;
            text-align: right;
          }
          > td[data-title]:before {
            content: attr(data-title);
            float: left;
            font-size: inherit;
            font-weight: @table-header-font-weight;
            color: @table-header-font-color;
          }
        }
      }
    }
    
    // Special overrides for shadows
    &.shadow-z-1 {
      -webkit-box-shadow: none;
      -moz-box-shadow: none;
      box-shadow: none;
      > .table > tbody > tr {
        border: none;
        .shadow-z-1();
      }
    }

    // Special overrides for the bordered tables
    > .table-bordered {
      border: 0;

      // Nuke the appropriate borders so that the parent can handle them
      > tbody {
        > tr {
          > td {
            border: 0;
            border-bottom: 1px solid @table-border-color;
          }
          > td:last-child {
            border-bottom: 0;
          }
        }
      }
    }

    // Special overrides for the striped tables
    > .table-striped {
      > tbody > tr > td,
      > tbody > tr:nth-child(odd) {
          background-color: @table-bg;
      }
      > tbody > tr > td:nth-child(odd) {
          background-color: @table-bg-accent;
      }
    }

    // Special overrides for hover tables
    > .table-hover {
      > tbody {
        > tr:hover > td,
        > tr:hover {
          background-color: @table-bg;
        }
        > tr > td:hover {
          background-color: @table-bg-hover;
        }
      }
    }
  }
}


// CSS/LESS Color variations
//
// --------------------------------


.table-striped.table-mc-red > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-red > tbody > tr:nth-child(odd) > th {
    background-color: #fde0dc;
}
.table-hover.table-mc-red > tbody > tr:hover > td,
.table-hover.table-mc-red > tbody > tr:hover > th {
    background-color: #f9bdbb;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-red > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-red > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-red > tbody > tr > td:nth-child(odd) {
        background-color: #fde0dc;
    }
    .table-responsive-vertical .table-hover.table-mc-red > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-red > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-red > tbody > tr > td:hover {
        background-color: #f9bdbb;
    }
}
.table-striped.table-mc-pink > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-pink > tbody > tr:nth-child(odd) > th {
    background-color: #fce4ec;
}
.table-hover.table-mc-pink > tbody > tr:hover > td,
.table-hover.table-mc-pink > tbody > tr:hover > th {
    background-color: #f8bbd0;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-pink > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-pink > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-pink > tbody > tr > td:nth-child(odd) {
        background-color: #fce4ec;
    }
    .table-responsive-vertical .table-hover.table-mc-pink > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-pink > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-pink > tbody > tr > td:hover {
        background-color: #f8bbd0;
    }
}
.table-striped.table-mc-purple > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-purple > tbody > tr:nth-child(odd) > th {
    background-color: #f3e5f5;
}
.table-hover.table-mc-purple > tbody > tr:hover > td,
.table-hover.table-mc-purple > tbody > tr:hover > th {
    background-color: #e1bee7;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-purple > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-purple > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-purple > tbody > tr > td:nth-child(odd) {
        background-color: #f3e5f5;
    }
    .table-responsive-vertical .table-hover.table-mc-purple > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-purple > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-purple > tbody > tr > td:hover {
        background-color: #e1bee7;
    }
}
.table-striped.table-mc-deep-purple > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-deep-purple > tbody > tr:nth-child(odd) > th {
    background-color: #ede7f6;
}
.table-hover.table-mc-deep-purple > tbody > tr:hover > td,
.table-hover.table-mc-deep-purple > tbody > tr:hover > th {
    background-color: #d1c4e9;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-deep-purple > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-deep-purple > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-deep-purple > tbody > tr > td:nth-child(odd) {
        background-color: #ede7f6;
    }
    .table-responsive-vertical .table-hover.table-mc-deep-purple > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-deep-purple > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-deep-purple > tbody > tr > td:hover {
        background-color: #d1c4e9;
    }
}
.table-striped.table-mc-indigo > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-indigo > tbody > tr:nth-child(odd) > th {
    background-color: #e8eaf6;
}
.table-hover.table-mc-indigo > tbody > tr:hover > td,
.table-hover.table-mc-indigo > tbody > tr:hover > th {
    background-color: #c5cae9;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-indigo > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-indigo > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-indigo > tbody > tr > td:nth-child(odd) {
        background-color: #e8eaf6;
    }
    .table-responsive-vertical .table-hover.table-mc-indigo > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-indigo > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-indigo > tbody > tr > td:hover {
        background-color: #c5cae9;
    }
}
.table-striped.table-mc-blue > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-blue > tbody > tr:nth-child(odd) > th {
    background-color: #e7e9fd;
}
.table-hover.table-mc-blue > tbody > tr:hover > td,
.table-hover.table-mc-blue > tbody > tr:hover > th {
    background-color: #d0d9ff;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-blue > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-blue > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-blue > tbody > tr > td:nth-child(odd) {
        background-color: #e7e9fd;
    }
    .table-responsive-vertical .table-hover.table-mc-blue > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-blue > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-blue > tbody > tr > td:hover {
        background-color: #d0d9ff;
    }
}
.table-striped.table-mc-light-blue > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-light-blue > tbody > tr:nth-child(odd) > th {
    background-color: #e1f5fe;
}
.table-hover.table-mc-light-blue > tbody > tr:hover > td,
.table-hover.table-mc-light-blue > tbody > tr:hover > th {
    background-color: #b3e5fc;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-light-blue > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-light-blue > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-light-blue > tbody > tr > td:nth-child(odd) {
        background-color: #e1f5fe;
    }
    .table-responsive-vertical .table-hover.table-mc-light-blue > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-light-blue > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-light-blue > tbody > tr > td:hover {
        background-color: #b3e5fc;
    }
}
.table-striped.table-mc-cyan > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-cyan > tbody > tr:nth-child(odd) > th {
    background-color: #e0f7fa;
}
.table-hover.table-mc-cyan > tbody > tr:hover > td,
.table-hover.table-mc-cyan > tbody > tr:hover > th {
    background-color: #b2ebf2;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-cyan > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-cyan > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-cyan > tbody > tr > td:nth-child(odd) {
        background-color: #e0f7fa;
    }
    .table-responsive-vertical .table-hover.table-mc-cyan > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-cyan > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-cyan > tbody > tr > td:hover {
        background-color: #b2ebf2;
    }
}
.table-striped.table-mc-teal > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-teal > tbody > tr:nth-child(odd) > th {
    background-color: #e0f2f1;
}
.table-hover.table-mc-teal > tbody > tr:hover > td,
.table-hover.table-mc-teal > tbody > tr:hover > th {
    background-color: #b2dfdb;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-teal > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-teal > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-teal > tbody > tr > td:nth-child(odd) {
        background-color: #e0f2f1;
    }
    .table-responsive-vertical .table-hover.table-mc-teal > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-teal > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-teal > tbody > tr > td:hover {
        background-color: #b2dfdb;
    }
}
.table-striped.table-mc-green > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-green > tbody > tr:nth-child(odd) > th {
    background-color: #d0f8ce;
}
.table-hover.table-mc-green > tbody > tr:hover > td,
.table-hover.table-mc-green > tbody > tr:hover > th {
    background-color: #a3e9a4;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-green > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-green > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-green > tbody > tr > td:nth-child(odd) {
        background-color: #d0f8ce;
    }
    .table-responsive-vertical .table-hover.table-mc-green > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-green > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-green > tbody > tr > td:hover {
        background-color: #a3e9a4;
    }
}
.table-striped.table-mc-light-green > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-light-green > tbody > tr:nth-child(odd) > th {
    background-color: #f1f8e9;
}
.table-hover.table-mc-light-green > tbody > tr:hover > td,
.table-hover.table-mc-light-green > tbody > tr:hover > th {
    background-color: #dcedc8;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-light-green > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-light-green > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-light-green > tbody > tr > td:nth-child(odd) {
        background-color: #f1f8e9;
    }
    .table-responsive-vertical .table-hover.table-mc-light-green > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-light-green > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-light-green > tbody > tr > td:hover {
        background-color: #dcedc8;
    }
}
.table-striped.table-mc-lime > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-lime > tbody > tr:nth-child(odd) > th {
    background-color: #f9fbe7;
}
.table-hover.table-mc-lime > tbody > tr:hover > td,
.table-hover.table-mc-lime > tbody > tr:hover > th {
    background-color: #f0f4c3;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-lime > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-lime > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-lime > tbody > tr > td:nth-child(odd) {
        background-color: #f9fbe7;
    }
    .table-responsive-vertical .table-hover.table-mc-lime > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-lime > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-lime > tbody > tr > td:hover {
        background-color: #f0f4c3;
    }
}
.table-striped.table-mc-yellow > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-yellow > tbody > tr:nth-child(odd) > th {
    background-color: #fffde7;
}
.table-hover.table-mc-yellow > tbody > tr:hover > td,
.table-hover.table-mc-yellow > tbody > tr:hover > th {
    background-color: #fff9c4;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-yellow > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-yellow > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-yellow > tbody > tr > td:nth-child(odd) {
        background-color: #fffde7;
    }
    .table-responsive-vertical .table-hover.table-mc-yellow > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-yellow > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-yellow > tbody > tr > td:hover {
        background-color: #fff9c4;
    }
}
.table-striped.table-mc-amber > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-amber > tbody > tr:nth-child(odd) > th {
    background-color: #fff8e1;
}
.table-hover.table-mc-amber > tbody > tr:hover > td,
.table-hover.table-mc-amber > tbody > tr:hover > th {
    background-color: #ffecb3;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-amber > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-amber > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-amber > tbody > tr > td:nth-child(odd) {
        background-color: #fff8e1;
    }
    .table-responsive-vertical .table-hover.table-mc-amber > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-amber > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-amber > tbody > tr > td:hover {
        background-color: #ffecb3;
    }
}
.table-striped.table-mc-orange > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-orange > tbody > tr:nth-child(odd) > th {
    background-color: #fff3e0;
}
.table-hover.table-mc-orange > tbody > tr:hover > td,
.table-hover.table-mc-orange > tbody > tr:hover > th {
    background-color: #ffe0b2;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-orange > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-orange > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-orange > tbody > tr > td:nth-child(odd) {
        background-color: #fff3e0;
    }
    .table-responsive-vertical .table-hover.table-mc-orange > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-orange > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-orange > tbody > tr > td:hover {
        background-color: #ffe0b2;
    }
}
.table-striped.table-mc-deep-orange > tbody > tr:nth-child(odd) > td,
.table-striped.table-mc-deep-orange > tbody > tr:nth-child(odd) > th {
    background-color: #fbe9e7;
}
.table-hover.table-mc-deep-orange > tbody > tr:hover > td,
.table-hover.table-mc-deep-orange > tbody > tr:hover > th {
    background-color: #ffccbc;
}
@media screen and (max-width: 767px) {
    .table-responsive-vertical .table-striped.table-mc-deep-orange > tbody > tr > td,
    .table-responsive-vertical .table-striped.table-mc-deep-orange > tbody > tr:nth-child(odd) {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-striped.table-mc-deep-orange > tbody > tr > td:nth-child(odd) {
        background-color: #fbe9e7;
    }
    .table-responsive-vertical .table-hover.table-mc-deep-orange > tbody > tr:hover > td,
    .table-responsive-vertical .table-hover.table-mc-deep-orange > tbody > tr:hover {
        background-color: @table-bg;
    }
    .table-responsive-vertical .table-hover.table-mc-deep-orange > tbody > tr > td:hover {
        background-color: #ffccbc;
    }
}
<!-- table {
 border: 1px solid black;
background: rgba(255,255,255,0.5);
    
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
th {
    background-color: #000000;
    color: white;
}
tr:hover{background-color:#f5f5f5} -->
img {
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: -1;
}



</style>
<meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<title>Welcome to TechTonic</title>
</head>
<body>

   
 

  <img src="Resources/images/intro-bg.jpg" width="1900" height="890">
 

      <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/TechTonicApp/Logout" style="color:#000000" >SignOUT</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


  
<div class="container">
<form action="/TechTonicApp/DecisionServlet" method="get">
   <%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "techtonicsapp";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
 <div id="demo">

  <div class="table-responsive-vertical shadow-z-1">
 
 
  <center><h4 style="color:#FDFEFE">Atmecs MeetUps</h4></center> 
                                                                               
  
         <table id="table" class="table table-hover table-mc-light-blue">
  

    <thead>
  
    
      <tr>
     	 <th><center>Select</center></th>
        <th><center>NO</center></th>
        <th><center>Date</center></th>
        <th><center>TechTalk</center></th>
        <th><center>Description</center></th>
        <th><center>Presentor</center></th>
       
         </tr>
    </thead>
    <tbody>
       <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM techtalk";

resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>

      <tr>
       <tr><td data-title="Select"><center><input type="checkbox" name="check<%=i%>" value="<%= resultSet.getString("id") %>"></center></td>
        <td data-title="NO"><center><%=resultSet.getString("id") %></center></td>
        <td data-title="Date"><center><%=resultSet.getString("Date")%></center></td>
         <td data-title="TechTalk"><center><%=resultSet.getString("tech_talk_data") %></center></td>
        <td data-title="Description"><center><%=resultSet.getString("Description")%></center></td>
        <td data-title="Presentor"><center><%=resultSet.getString("Presontor")%></center></td>
       
        
    
       
        </tr>
     </tbody>
    <% i++;
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  <tr>
  
  <td></td>
        <td></td>
        <td><center><input type="submit" value="Update" name="Update" class="waves-effect waves-light btn"></center></td>
          <td><center><input type="submit" value="Delete" name="Delete" class="waves-effect waves-light btn"></center></td>
        <td><center><input type="submit" value="Add" name="Add" class="waves-effect waves-light btn"></center></td>
        <td></td>
       </tr>
      
  </table>
  </div>
 
  
  
</div>
</div>
  </form>
</body>
</html>