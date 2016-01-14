<?xml version="1.0" encoding="US-ASCII" ?>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.common.min.css">
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.rtl.min.css">
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.default.min.css">
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.dataviz.min.css">
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.dataviz.default.min.css">
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2015.3.930/styles/kendo.mobile.all.min.css">

    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://kendo.cdn.telerik.com/2015.3.930/js/jszip.min.js"></script>
    <script src="http://kendo.cdn.telerik.com/2015.3.930/js/kendo.all.min.js"></script>
	
	</head>
<body>
	<script>
	
	/*var workbook = new kendo.ooxml.Workbook({
	  sheets: [
	    {
	      columns: [ { autoWidth: true } ],
	      rows: [
	        {
	          cells: [
	            {
	              value: "bold and italic",
	              bold: true,
	              italic: true
	            }
	          ]
	        },
	        {
	          cells: [
	            {
	              value: "red text on blue background",
	              color: "#ff0000",
	              background: "#0000ff"
	            }
	          ]
	        },
	        {
	          cells: [
	            {
	              value: "Arial 20px",
	              fontSize: 20,
	              fontName: "Arial"
	            }
	          ]
	        },
	        {
	          cells: [
	            {
	              value: "Right aligned",
	              hAlign: "right"
	            }
	          ]
	        },
	        {
	          cells: [
	            {
	              value: "Centered horizontally and vertically",
	              vAlign: "center",
	              hAlign: "center",
	              rowSpan: 2
	            }
	          ]
	        }
	      ]
	    }
	  ]
	});*/
	
	var workbook = new kendo.ooxml.Workbook({
		  sheets: [
		    {
		      columns: [ { autoWidth: true } ],
		      rows: [
		        {
		          cells: [
		            {
		              value: "bold and italic",
		              bold: true,
		              italic: true
		            },{
			              value: "bold and italic 2",
			              bold: true,
			              italic: true
					}
		          ]
		        },
		        {
		          cells: [
		            {
		              value: "red text on blue background",
		              color: "#ff0000",
		              background: "#0000ff"
		            }
		          ]
		        },
		        {
		          cells: [
		            {
		              value: "Arial 20px",
		              fontSize: 20,
		              fontName: "Arial"
		            }
		          ]
		        }
		      ]
		    }
		  ]
		});
	
	kendo.saveAs({
	    dataURI: workbook.toDataURL(),
	    fileName: "Test.xlsx"
	});
	</script>
</body>
</html>