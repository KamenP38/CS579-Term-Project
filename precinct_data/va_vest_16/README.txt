2016 Virginia precinct and election results shapefile.

## RDH Date retrieval
10/04/2022

## Sources
This file was retrieved from VEST at https://doi.org/10.7910/DVN/NH5S2I

Election results from Virginia Department of Elections (https://historical.elections.virginia.gov/). Presidential write-in votes from the Official Results rather than the Historical Elections Database.
Precinct shapefile primarily from the U.S. Census Bureau's 2020 Redistricting Data Program Phase 2 release. A significant number of precincts throughout the state have been replaced with the U.S. Census Bureau's 2020 Redistricting Data Program final release. Virginia election reports sometimes include precinct splits that are obsolete or unused for the given election cycle. These have been omitted. In cases where voters were assigned to the wrong district the de facto precinct split has been included for that election.

## Fields metadata

Vote Column Label Format
------------------------
Columns reporting votes follow a standard label pattern. One example is:
G20PRERTRU
The first character is G for a general election, C for recount results, P for a primary, S for a special, and R for a runoff.
Characters 2 and 3 are the year of the election.
Characters 4-6 represent the office type (see list below).
Character 7 represents the party of the candidate.
Characters 8-10 are the first three letters of the candidate's last name.

Office Codes
AGR - Commissioner of Agriculture
ATG - Attorney General
AUD - Auditor
COM - Comptroller
COU - City Council Member
DEL - Delegate to the U.S. House
GOV - Governor
H## - U.S. House, where ## is the district number. AL: at large.
HOD - House of Delegates, accompanied by a HOD_DIST column indicating district number
HOR - U.S. House, accompanied by a HOR_DIST column indicating district number
INS - Commissioner of Insurance
LAB - Commissioner of Labor
LTG - Lieutenant Governor
LND - Commissioner of Public Lands
PRE - President
PSC - Public Service Commissioner
PUC - Public Utilities Commissioner
RGT - State University Regent
RRC - Railroad Commissioner
SAC - State Court of Appeals
SCC - State Court of Criminal Appeals
SOS - Secretary of State
SOV - Senate of Virginia, accompanied by a SOV_DIST column indicating district number
SPI - Superintendent of Public Instruction
SSC - State Supreme Court
TRE - Treasurer
USS - U.S. Senate

Party Codes
D and R will always represent Democrat and Republican, respectively.
See the state-specific notes for the remaining codes used in a particular file; note that third-party candidates may appear on the ballot under different party labels in different states.

## Fields

*va_2016 file*
G16PREDCLI - Hillary Clinton (Democratic Party)
G16PRERTRU - Donald Trump (Republican Party)
G16PRELJOH - Gary Johnson (Libertarian Party)
G16PREIMCM - Evan McMullin (Independent)
G16PREGSTE - Jill Stein (Green Party)
G16PREOWRI - Write-in Votes

## Processing Steps

Absentee ballots and provisional votes were reported at the county or city level throughout the state. These were distributed by candidate to precincts based on their share of the precinct-level reported vote.

The borders of Chesapeake, Goochland, Hanover, Henrico, Louisa, Norfolk, Petersburg, Prince George, Suffolk, Virginia Beach reflect de facto misalignments that were not corrected before 2016.

The following modifications were made to recreate the 2016 precinct boundaries.

Albemarle: Merge Cale/Biscuit Run, Free Bridge/Pantops; Add Belfield from 2010 VTD shapefile; Adjust Brownsville/Crozet to match 2010 VTD shapefile
Alexandria City: Merge Potomac Yard into Cora Kelly Center, Mt Vernon Recreation Center, George Washington Middle School based on 2017 precinct change map
Arlington: Merge Lyon Park/Garfield Park, Virginia Highlands/Met Park; Adjust Fillmore/Arlington View boundary based on city ordinance; Adjust Gunston/Oakridge to match county GIS shapefile
Bedford: Merge New London Academy/Forest Fire Station #2 to reverse 2018 split
Bristol City: Adjust Ward 2/Ward 4 to match description in municipal code
Carroll: Split Oakland A/Oakland D to match county GIS shapefile
Charles City County: Adjust District 1/District 2 boundary to match county code
Covington City: Realign Ward 1, Ward 2, Ward 3 to match PDF map and municipal code
Culpeper: Adjust East Fairfax/Brandy Station boundary to match county GIS shapefile
Emporia City: Adjust Precincts 1/7, Precincts 2/5 to match municipal code
Essex: Adjust South Precinct/Central Precinct boundary to match county PDF
Fairfax: Merge Merrifield/Gallows East, Belvoir/Army; Split Newgate North/South, Belvoir/Lorton Center; Adjust Bull Run/Virginia Run, Rotonda/Tysons, Shreve/Timber Lane to match county GIS shapefile
Fredericksburg City: Adjust District 1/3 boundaries to match municipal code
Galax City: Adjust North/South precinct boundary to match municipal GIS shapefile
Goochland: Adjust Hadensville/Fife boundary to match description in county code
Halifax: Adjust Meadville/Republican Grove to match 2011 redistricting PDF map
Hampton City: Add US House District 2 segment of Tyler Precinct to match county PDF
Hanover: Adjust Blunts/Beaverdam boundary to match county PDF
Henrico: Split Glenside/Johnson to match 2010 VTD shapefile; Add Hilliard, Summit Court from 2010 VTD shapefile
Henry: Adjust 10 precinct boundaries to align VTDs with county GIS shapefile
Loudoun: Merge Legacy/Stone Hill, Creighton's Corner/Brambleton Middle, Pinebrook/John Champe to match county GIS shapefile
Manassas City: Reverse 2017 realignment based on 2010 VTD shapefile and prior municipal code
Newport News City: Adjust Sanford/Riverview boundary to match county GIS shapefile
Prince William: Adjust Ben Lomond/Mullen, Freedom/Leesylvania to match county GIS shapefile
Rappahanock: Adjust Sperryville/Washington boundary to match county PDF
Richmond City: Merge Precinct 214 with Precincts 206/208 to reverse 2017 creation described in municipal ordinance
Richmond County: Adjust Precincts 2-1/3-1 boundary to match description in county ordinance
Roanoke City: Add Virginia Heights-Norwich; Adjust Forest Park/Eureka Park based on county GIS shapefile and description in municipal ordinance
Roanoke County: Adjust 12 precinct boundaries to match county GIS shapefile
Rockingham: Adjust Bridgewater Precinct to match municipal boundary
Russell: Adjust Daugherty/West Lebanon boundary to match county PDF
Tazewell: Adjust nearly all precinct boundaries to align VTDs with county GIS shapefile
Virginia Beach City: Merge Salem Woods/Rosemont Forest, Sigma/Sandbridge to match 2015 PDF; Adjust Centerville/Colonial to match county GIS shapefile
Williamsburg City: Revise Matoaka/Stryker to match municipal PDF map and municipal code
Wise: Adjust Big Stone Gap/East Stone Gap boundary to match county GIS shapefile
Wythe: Adjust West Wytheville/East Wytheville boundary to match county GIS shapefile
York: Adjust Dare/Harwoods Mill to match county GIS shapefile

Results are divided across four files. Because precincts can be split across legislative districts, the legislative races are reported with their own geography that divides these split precincts, resulting in shapes that are assigned to exactly one district.