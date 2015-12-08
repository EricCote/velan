#Instructions

Bonjour Velan!

After you left on Friday, our virtual machines were taken down before I could save the reports to the web. The network admin needed the space to prepare this week's courses. After you left, he didn't know I was still working on your stuff. Our bad!

This is the new improved Translation Sample.

I can recreate a few other samples if you need to. Just email me using the address at the end of this document and explain what you need.   


## Adventure Works install

Get Adventure Works here:

Adventure Works 2014: 
https://msftdbprodsamples.codeplex.com/downloads/get/880661

Adventure Works DW 2014:
https://msftdbprodsamples.codeplex.com/downloads/get/880664

You'll need to unzip and restore the backups.  

*Note:* there are different versions of Adventure Works.  You can install an older version of Adventure Works on a newer version of Sql Server, but not the other way around.  (I.E.: You can install Adventure Works 2012 on SQL Server 2014, but not Adventure Works 2016.) 

## Other steps

1. You need SSDT BI 2014 if you don't have it installed. Here is a link.
http://www.microsoft.com/en-us/download/details.aspx?id=42313

2. You need to create the tables from tables.sql, and run them in SSMS (Sql Server Management Studio).

3. You can open the two reports.  I've improved the reports from the course demo. 
  * The first report is based on getting all the language columns in the table. The report chooses the column to display by using expressions that get the right column on the textbox. (Same technique as we did in the course.)
  * The second report uses a dynamic query in the dataset, that modifies the query depending on the language. (We didn't see that in the course.) This technique is faster because the query returns only the data filtered by the language.  

I've added a few things to the demos
  * A default language based on the browser. If the language is unsupported, we fallback to en-US. 
  * Localized parameter lists, with an "all" keyword. (advanced but useful.)
  * Dynamic parameters with drop-down lists that are "always" refreshed when another param is changed (see "advanced" tab in Parameter properties.)
  * using .NET localizable format rues for Dates ("D", "T", etc) and currencies ("C"). See https://msdn.microsoft.com/en-us/library/ms252080(v=vs.100).aspx#

## SSRS Bugs

Reporting Services never allowed us to localize the parameter prompts.  This is a very well known problem. https://connect.microsoft.com/SQLServer/feedback/details/390924/localize-report-parameter-prompts-in-reporting-services-reports .  

A few peaople speculate that this will finally be solved in Reporting Services 2016. The SQL Server 2016 CTP (Community Tech Preview) don't allow for this yet. Let's keep our fingers crossed. In the meantime, we can use two workarounds. 

One workaround would be to create multiple reports for each language (one in French, one in English, etc). Not very localization friendly.  :-(

Another workaround would be to build our own webpage (aspx, mvc or simply html) with localized parameters in the page, which would then allow to display the report in an IFrame or a ReportViewer control. (This is what I usually do. Also, this approach can also be used to workaround the click on "View report" button when we change a dropdown.)

## Adventure Works bug

A few produts were not translated in French or Spanish. These were left blank in the database. Our report will show blank names for those products. (GIGO: Garbage In, Garbage Out)

### Contact Info

Eric Côté
eric@coteexpert.com





 








