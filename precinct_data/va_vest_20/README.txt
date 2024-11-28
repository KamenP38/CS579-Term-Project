2020 Virginia precinct and election results shapefile.

## RDH Date retrieval
04/13/2022

## Sources
Election results from Virginia Department of Elections (https://historical.elections.virginia.gov/)

Precinct shapefile primarily from the U.S. Census Bureau's 2020 Redistricting Data Program Phase 2 release. A significant number of precincts throughout the state have been replaced with the U.S. Census Bureau's 2020 Redistricting Data Program final release. Virginia election reports sometimes include precinct splits that are obsolete or unused for the given election cycle. These have been omitted. In cases where voters were assigned to the wrong district the de facto precinct split has been included for that election.
## Fields metadata

Vote Column Label Format
------------------------
Columns reporting votes follow a standard label pattern. One example is:
G16PREDCli
The first character is G for a general election, P for a primary, C for a caucus, R for a runoff, S for a special.
Characters 2 and 3 are the year of the election.
Characters 4-6 represent the office type (see list below).
Character 7 represents the party of the candidate.
Characters 8-10 are the first three letters of the candidate's last name.

Office Codes
AGR - Agriculture Commissioner
ATG - Attorney General
AUD - Auditor
COC - Corporation Commissioner
COU - City Council Member
DEL - Delegate to the U.S. House
GOV - Governor
H## - U.S. House, where ## is the district number. AL: at large.
INS - Insurance Commissioner
LAB - Labor Commissioner
LAN - Commissioner of Public Lands
LTG - Lieutenant Governor
PRE - President
PSC - Public Service Commissioner
RRC - Railroad Commissioner
SAC - State Appeals Court (in AL: Civil Appeals)
SCC - State Court of Criminal Appeals
SOS - Secretary of State
SSC - State Supreme Court
SPI - Superintendent of Public Instruction
TRE - Treasurer
USS - U.S. Senate

Party Codes
D and R will always represent Democrat and Republican, respectively.
See the state-specific notes for the remaining codes used in a particular file; note that third-party candidates may appear on the ballot under different party labels in different states.

## Fields
G20PREDBID - Joseph R. Biden (Democratic Party)
G20PRERTRU - Donald J. Trump (Republican Party)
G20PRELJOR - Jo Jorgensen (Libertarian Party)
G20PREOWRI - Write-in Votes

G20USSDWAR - Mark Robert Warner (Democratic Party)
G20USSRGAD - Daniel Mac Arthur Gade (Republican Party)
G20USSOWRI - Write-in Votes

## Processing Steps
Absentee ballots and provisional votes were reported at the county or city level throughout the state. These were distributed by candidate to precincts based on their share of the precinct-level reported vote.
The borders of Chesapeake, Norfolk, Petersburg, Prince George, Suffolk, Virginia Beach reflect de facto misalignments that were not corrected before 2020.

The following modifications were made to recreate the 2020 precinct boundaries.

Albemarle: Add Mechums River to match county GIS shapefile
Alexandria City: Add Alex Renew, Olympus Condo; Adjust Lee Center/Lyles Crouch, Beatley Library/Cameron Station to match county GIS shapefile
Arlington: Adjust Gunston/Oakridge to match county GIS shapefile
Bristol City: Adjust Ward 2/Ward 4 to match description in municipal code
Charles City County: Adjust District 1/District 2 boundary to match county code
Chesapeake City: Split, merge, or adjust 26 precincts to match PDF maps of citywide realignment
Chesterfield: Split Iron Bridge/Iron Bridge North, Skinquarter/Magnolia, Winfrees Store/Longhouse, Southside/Ridgedale, Genito/Clover Hill to match county GIS shapefile
Covington City: Realign Ward 1, Ward 2, Ward 3 to match city PDF map and municipal code
Culpeper: Adjust East Fairfax/Brandy Station boundary to match county GIS shapefile
Emporia City: Adjust Precincts 1/7, Precincts 2/5 to match municipal code
Essex: Adjust South Precinct/Central Precinct boundary to match county PDF
Fairfax: Adjust Bull Run/Virginia Run, Shreve/Timber Lane to match county GIS shapefile
Fredericksburg City: Adjust District 1/3 boundaries to match municipal code
Galax City: Adjust North/South precinct boundary to match municipal GIS shapefile
Halifax: Merge South Boston East/West; Adjust Meadville/Republican Grove to match 2011 redistricting PDF map
Hampton City: Add US House District 2 segment of Tyler Precinct to match county PDF; Adjust 6 precincts to reflect correction of border with Newport News City
Hanover: Adjust Blunts/Beaverdam boundary to match county PDF
Henry: Adjust 10 precinct boundaries to align VTDs with county GIS shapefile
Loudoun: Adjust Weller/Ashbrook, Evergreen/Sycolin Creek; Add Goshen Post, Buffalo Trail to match county GIS shapefile
Newport News City: Adjust Sanford/Riverview boundary to match county GIS shapefile; Ajust 12 precincts to reflect correction of border with Hampton City
Norfolk City: Merge Bramblewood into Chesterfield/Ruffner Academy; Adjust Granby/Titustown to match county PDF
Northumberland: Merge subprecincts 3-A and 3-B to match county PDF
Prince William: Split Piney Branch/Bristow Run, Potomac/Williams; Adjust Ben Lomond/Mullen, Freedom/Leesylvania to match county GIS shapefile
Radford City: Split East/New River precincts to match municipal ordinance
Rappahanock: Adjust Sperryville/Washington boundary to match county PDF
Richmond City: Add Precinct 115, 215, 415 to match county GIS shapefile
Richmond County: Adjust Precincts 2-1/3-1 boundary to match description in county ordinance
Roanoke County: Adjust 12 precinct boundaries to match county GIS shapefile
Rockingham: Split East/West Bridgewater to match municipal ordinance; Adjust East Bridgewater to match municipal boundary
Russell: Adjust Daugherty/West Lebanon boundary to match county PDF
Tazewell: Merge Abbs Valley/Bossevain, Adria/Gap Store, Pounding Mill/Wardell, Raven/Richlands;  Adjust nearly all precinct boundaries to align VTDs with county GIS shapefile
Virginia Beach City: Adjust Centerville/Colonial to match county GIS shapefile
Williamsburg City: Revise Matoaka/Stryker to match municipal PDF map and municipal code
Wise: Adjust Big Stone Gap/East Stone Gap boundary to match county GIS shapefile
Wythe: Adjust West Wytheville/East Wytheville boundary to match county GIS shapefile
York: Adjust Dare/Harwoods Mill to match county GIS shapefile