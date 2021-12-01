---
layout: default
title: File-based Content
nav_order: 101
parent: Appendix - Common Items
has_toc: false
---

# FILE-BASED CONTENT

The page identifies the file formats which must be used when publishing Open Datasets and provides guidelines for specific physical file formats in order to optimize datasets for machine processing.

It was originally written for open data formats as a supplement to the standard described in Section 3.11 [_Open Data Physical Dataset Format Standard_](https://www2.gov.bc.ca/assets/gov/government/services-for-government-and-broader-public-sector/information-technology-services/standards-files/open_data_physical_dataset_extract.pdf) of the [_CPPM Policy Chapter 12: Information Management and Information Technology Management_](https://www2.gov.bc.ca/gov/content?id=BAA776C61B934ADA95F42CE503D2784F), which is the standard issued by the Office of the Chief Information Officer.  

|**AUDIENCE**|  |
|:---:|:---:|
| *Data Publishers* | *Data Users* | 

## Table of Contents
+ [**FILE CONTENT**](#file-content)
	+ [Approach](#approach)
	+ [Principles](#principles)
+ [**FILE FORMATS**](#file-formats)
	+ [Comma Separated Variable (CSV)](#comma-separated-variable-csv)
	+ [Delimiter Separated Values (DSV)](#delimiter-separated-values-dsv)
	+ [Extensible Markup Language (XML)](#extensible-markup-language-xml)
+ [**DOCUMENTATION CONVENTIONS**](#documentation-conventions)
+ [**ADDITIONAL RESOURCES**](#additional-resources)

---------------------------------------------------------------------

## FILE CONTENT

The scope of this document is guidelines for file contents, for the above-stated purpose of optimizing files for machine processing.
Datasets that are files should contain machine processable information.

### Approach

The approach we have adopted in writing these guidelines is to make statements that cause data to be structured and formatted as if it were a file in a database system. In general, the guidelines for file content begin with statements that apply to an entire file, and progress through statements that apply to smaller and smaller elements within a file.  

For example:

+ How to identify the open dataset formats to which these guidelines apply
+ The types of data that may be represented in the file (e.g. spatial, attribute, image, etc.)
+ Major sections of the file (e.g. header, body, etc.)
+ Guidelines that apply to rows of data (e.g. row delimiters)
+ Guidelines that apply to fields with a row (e.g. representation of optional fields)

### Principles

The _objective_ of these guidelines is to make open datasets machine processable. The guidelines focus on being practical and usable. 

The _guidelines_ for a file format are independent of the applications that either create or consume open datasets. It cannot be expected that these _guidelines_ will cover all applications that might be used.  _Guidelines_ are intended to cover the majority of situations that are likely to be encountered using common applications and technologies.

[RETURN TO TOP][1]

-------------------------------------------------------

## FILE FORMATS

A table in Section 3.11 of the standard lists more than ten file formats as being usable for open datasets.  

This document provides guidelines for the contents of open datasets published by DataBC that use the following file formats:

+ Comma Separated Variable (CSV)
+ Delimiter Separated Values (DSV)
+ Extensible Markup Language (XML)

### Comma Separated Variable (CSV)

Comma separated variable (CSV) files originated with Microsoft operating systems, and Microsoft applications have established some de facto standards for this file format.  These guidelines, therefore, reflect these common practices for handling CSV files.

Advice on preparing spreadsheet data and an online system to ensure the spreadsheet is readable can be found in the [_Additional Resources_](#additional-resources) section below. 

+ This file format will be identified by the *.csv file extension.  
+ CSV files will only contain alphanumeric attribute data.  
+ They will not contain images, executables, or shapes.
+ The end of data is indicated by the end of the file.
+ If the file contains data created with a Microsoft character set, consider converting Microsoft “smart quotes” (i.e. where different characters are used the opening “double” and ‘single’ quotation marks) to regular quotation marks (i.e. "double" and 'single'). 
+ Since all characters in the file are interpreted as data, there should be no empty lines or non-data text at the end of the file.
  + Any comments and data notes need to be placed in a separate citation file.
+ The record terminator is a carriage return character followed by a line feed pair character (CRLF).
  + The record terminator for the last row of data is optional.
+ All records within a file will have the same fields.
+ The file will not contain any lines, characters, or white space that interferes with the file being machine processable.
+ Fields are separated with a single comma.
+ The first record in a file will be a header, where each field in the header contains name of the field.

Field names in the header:
+ Will be comprised of:
  + Alphabet characters A (or a) thru Z (or z)
  + Number characters 0 thru 9
  + Underscores
+ Must begin with a letter
+ May not contain any spaces
+ Are not case sensitive

+ Separating commas are mandatory even if one or more of the fields are empty.  
  + i.e. The number of separating commas in a record must be one less than the number of fields in the header record.
+ Any empty field in a record will be interpreted as that record not having a value in that field.  
  + An empty field cannot be interpreted as containing a value from a previous record.  
   
In the follow data, for example, the two rows with **STATUS** of “Open” are interpreted as not being associated with a **REGION**.

REGION, STATUS, QUANTITY
North, Closed, 234
, Open, 345
South, Closed, 234
, Open, 345

If each of the four rows needs is associated with a **REGION**, then there must be values in all **REGION** fields.

REGION, STATUS, QUANTITY
North, Closed, 234
North, Open, 345
South, Closed, 234
South, Open, 345

+ Empty fields will be interpreted as the absence of data (e.g.  a database NULL).  
  + Empty fields should not be assumed to imply values such as a numeric 0 or a zero-length string.
   
For spaces at the beginning and end of a field:

+ If the field does not begin and end with double-quotes, then the spaces are considered to be part of the field
+ If the field begins and ends with double-quotes, and the spaces are between the double quotes at either end of field, then the spaces are considered to be part of the field
+ If the field begins and ends with double-quotes, and the spaces are outside the double quotes at either end of the field, then the spaces are not considered to be part of the field

+ Any field which contains any one of the following characters must begin and end with double-quotes:

  + CRLF
  + Comma
  + Double-quote
+ Any field which does not contain one of the above characters may (or may not) begin and end with double-quotes.
+ Each double-quote within a field must be doubled.  

**For example:**

Line_ID, Line_Text, Actor
"123", "He said, ""Go west,"" to the driver.", "Protagonist"

+ Times and dates should, whenever possible, be represented in accordance with Section 3.5 (BC Government IM/IT Display Date and Time Standard) of the standard, with the additional guidelines:

  + Elements of dates and times must be displayed in order of significance
  + The seconds (SS) and partial second (FF) elements of time are optional
  
+  SS may be used without FF

To summarize **date and time formats**:

+ The format for **dates** is:   YYYY-MM-DD, where:

  + YYYY is a four digit year
  + MM is a two digit month (e.g. “01” for January)
  + DD is a two digit day-of-month (e.g.  “05” for
   the 5th day of the month)
+ The format for **times** is:  HH:MM:SS:FF, where:

  + HH a two digit hour of a 24 hours clock (e.g. “01” for 1 a.m., and “13” for 1 p.m.)
  + MM is a two digit representation of the minute (e.g.  “07” for 7 minutes past the hour)
  + SS and FF are two digit representations of the seconds and partial second
  
+ The format for **date and time** is:  YYYY-MM-DD HH:MM:SS:FF

[RETURN TO TOP][1] 

-----------------------------------------------------------

### Delimiter Separated Values (DSV)

+ A delimiter separated value (DSV) file needs to be associated with a citation file that specifies:

   + The delimiter character
   + The record-terminator character (e.g. “LF”, ASCII 30 (Record Separator), “CRLF”, etc.)
   + The escape character
   
+ The value delimiter must be a single character.
+ In _principle_, any character may be used to separate the values.  
+ In _practice_; however, the delimiter should be a character that is not often found within values.  

The following table lists characters that are commonly used as value separators:

| Value Separator |	Comments |
|:--- |:---|
|Tab|When viewing or manually modifying a file, it can be difficult to distinguish a tab from spaces.|
|Semicolon (;)| |
|Colon (:)|In UNIX systems, the most common DSV delimiter for values that may contain whitespace|
|Pipe| |
|Tilde (~)| |
|Slash (/)| |
|ASCII 31|(Unit Separator)|

+ A common escape character is the backslash (\).
+ Comma separated variable (CSV) files are a special case of DSV files that have different de facto standards for handling embedded commas, double quotes, and new line characters.     
+ See the [**_CSV_**](#comma-separated-variable-csv) section of this document for guidelines on files that use the comma as their delimiter.
+ There is no standard file extension associated with DSV files.  

The following extensions (not case sensitive) are suggested options:

+ dat
+ dsv
+ tab (for tab-separated values)
+ tsv (for tab-separated values)
+ no file extension
+ The file extension TXT should be avoided.  
  + Although this extension is associated with tab-separated values, the default application for opening a TXT files is often a web browser.

+ DSV files will only contain alphanumeric attribute data.  
  + They will not contain images, executables, or shapes.
  + The end of data is indicated by the end of the file.
  + If the file contains data created with a Microsoft character set, consider converting Microsoft “smart quotes” (i.e. where different characters are used the opening “double” and ‘single’ quotation marks) to regular quotation marks (i.e. "double" and 'single').
  + Since all characters in the file are interpreted as data, there should be no empty lines or non-data text at the end of the file. (Any comments and data notes need to be placed in a separate citation file.)
  + The end of records will be identified by the record terminator character identified in the citation file.
  + All records within a file will have the same fields.
  + The file will not contain any lines, characters, or white space that interferes with the file being machine processable.
  + Fields will be separated with by the delimiter character identified in the citation file.
  + The first record in a file will be a header, where each field in the header contains name of the field.

Field names in the header:

+ Will be comprised of:
  + Alphabet characters A (or a) thru Z (or z)
  + Number characters 0 thru 9
  + Underscores
+ Must begin with a letter
+ May not contain any spaces
+ Are not case sensitive
+ Separating delimiters are mandatory even if one or more of the fields are empty.  (i.e. The number of un-escaped delimiters in a record must be one less than the number of fields in the header record)
+ Any empty field in a record will be interpreted as that record not having a value in that field.  An empty field cannot be interpreted as containing a value from a previous record.  

In the follow data, for example, the two rows with **STATUS** of “Open” are interpreted as not being associated with a **REGION**.

REGION:STATUS:QUANTITY
North:Closed:234
:Open:345
South:Closed:234
:Open:345

If each of the four rows needs is associated with a **REGION**, then there must be values in all **REGION** fields.

REGION:STATUS:QUANTITY
North:Closed:234
North:Open:345
South:Closed:234
South:Open:345

+ Empty fields will be interpreted as the absence of data (e.g.  a database NULL).  
  +  fields should not be assumed to imply values such as a numeric 0 or a zero-length string.
+ Spaces at the beginning and end of fields (i.e. any immediately before or after a delimiter) are considered part of a field.

+ Any of the following characters that occur within a field must be “escaped” by placing the escape character immediately before that character:
  + The delimiter character
  + The record-terminator character
  + The escape character

If, for example, the delimiter character is a colon and the escape character is a backslash, the field:

  + Synonyms for \ (backslash):  reverse solidus; slosh; hack, would be escaped as:
  + Synonyms for \\ (backslash)\:  reverse solidus; slosh; hack

+ Times and dates should, whenever possible, be represented in accordance with Section 3.5 (BC Government IM/IT Display Date and Time Standard) of the standard, with the additional guidelines:

  + Elements of dates and times must be displayed in order of significance
  + The seconds (SS) and partial second (FF) elements of time are optional
  
+ SS may be used without FF
	  
To summarize date and time formats:

+ The format for dates is:   YYYY-MM-DD, where:
  + YYYY is a four digit year
  + MM is a two digit month (e.g. “01” for January)
  + DD is a two digit day-of-month (e.g.  “05” for the 5th day of the month)
+ The format for times is:  HH:MM:SS:FF, where:
  + HH a two digit hour of a 24 hours clock (e.g. “01” for 1 a.m., and “13” for 1 p.m.)
  + MM is a two digit representation of the minute (e.g.  “07” for 7 minutes past the hour)
  + SS and FF are two digit representations of the seconds and partial second
+ The format for date and time is:  YYYY-MM-DD HH:MM:SS:FF

[RETURN TO TOP][1]

------------------------------------------------------------------------------

### Extensible Markup Language (XML)

This section focuses on guidelines for connecting XML files (xml) to their XML schema (xsd).  

+ Extensible Markup Language (XML) is a markup language that defines a set of rules for encoding documents in a format that is both human-readable and machine-readable. 
  + The World Wide Web Consortium's XML 1.0 Specification of 1998 and several other related specifications—all of them free open standards—define XML.  
  + XML compression is not used. 
   
This file format will be identified by the following file extensions:
+ xml (not case sensitive)

For the purpose of this file format, **schema files** will be identified by the following file extension:
+ xsd (not case sensitive)
  + XML Schema Definition (XSD) is a World Wide Web Consortium (W3C) recommendation that specifies how to formally describe the elements in an Extensible Markup Language (XML) document.

+ Whenever practicable, file names should be no longer than 64 characters.  
+ The maximum length for a file names is 128 characters.
+ All XML files should reference their XML schema.  

The outer-most XML element should contain:

+ A namespace declaration that points to the schema location in DataBC; and
+ An xsi:schemaLocation attribute that points to the namespace location and the schema location.

For example, in the following XML snippet, <DIRECTORY> is the outer-most XML element,
http://pub.data.gov.bc.ca/schemas/bcgov_directory/2012/1 is where the schema is located, and
http://pub.data.gov.bc.ca/schemas/bcgov_directory/2012/1/bcgov_directory_2012_1.xsd is the fully qualified file path where the schema file is located.

   <DIRECTORY
     xmlns="http://pub.data.gov.bc.ca/schemas/bcgov_directory/2012/1"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xsi:schemaLocation=”
       http://pub.data.gov.bc.ca/schemas/bcgov_directory/2012/1 
       http://pub.data.gov.bc.ca/schemas/bcgov_directory/2012/1/bcgov_directory_2012_1.xsd”>

------------------------------------------------------------------------------

## DOCUMENTATION CONVENTIONS

Documentation conventions are:

+ Curly brackets **{}** identify a variable.  
   + Example: {x} is replaced by the value of a variable named x.
+ Square brackets **[]** indicate that the expression between the square brackets is optional.
+ {dataset_id} is a surrogate key used in the DataBC domain to uniquely identify a dataset.
+ {version} is an integer, and does not have a trailing period.  
   + Versions are created only when the structure of the file is changes – by the addition new columns or there are significant changes to the coding used within the file.

Sub-directories within the DataBC domain are:

+ /datasets
   + /license (A secondary source of license information.)
+ /schemas

The pattern for the location of dataset files is:

+ {domain}/datasets/{dataset_id}/{filename}[.{extension}]

The pattern for the location of XML schema files is:
+ {domain}/schemas/{filename}[.v{version}][.{extension}]

----------------

## ADDITIONAL RESOURCES

+ [_Clean Sheet_](http://www.clean-sheet.org/) provides clear and simple advise for preparing spreadsheet data for release
+ [_CSV Lint_](http://csvlint.io/) helps you check that your CSV file is readable

----------------

[RETURN TO TOP][1]

[1]: #file-based-content
