2020 Texas precinct and election results shapefile.

## RDH Date retrieval
08/03/2021

## Sources
Election results and precinct shapefile from the Texas Legislative Council (https://data.capitol.texas.gov/). The precinct data files available for download at the TXLC Capitol Data Portal are allocated to Census VTD geography based on Voting Age Population from the 2010 Census. The unallocated precinct results and registration statistics were generously provided by TXLC staff to instead merge with the precinct boundaries.

The shapefile includes unallocated Voter Registration (VR) and Spanish Surname Voter Registration (SSVR) for the November 2020 general election. Any VR data analysis of these unallocated precinct results should utilize this unallocated VR data rather than the VR data allocated by VTD available for download at CDP. SSVR is denoted as a percentile of total VR for each precinct.

Precinct results for the following counties were replaced in whole or in part with county source files or with precinct data provided via the Secretary of State: Andrews, Bee, Borden, Brazos, Chambers, Coryell, Dawson, Deaf Smith, Donley, Fayette, Hansford, Harrison, Hood, Hudspeth, Knox, Lamar, Loving, Mason, Maverick, Reeves, Starr, Tom Green, Trinity, Waller, Wilbarger, Willacy, Williamson.

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
G20VR - Voter registration
G20SSVR - Spanish surname voter registration

G20PRERTRU - Donald J. Trump (Republican Party)
G20PREDBID - Joseph R. Biden (Democratic Party)
G20PRELJOR - Jo Jorgensen (Libertarian Party)
G20PREGHAW - Howie Hawkins (Green Party)
G20PREOWRI - Write-in Votes

G20USSRCOR - John Cornyn (Republican Party)
G20USSDHEG - Mary "MJ" Hegar (Democratic Party)
G20USSLMCK - Kerry Douglas McKennon (Libertarian Party)
G20USSGCOL - David B. Collins (Green Party)

G20RRCRWRI - James "Jim" Wright (Republican Party)
G20RRCDCAS - Chrysta Castañeda (Democratic Party)
G20RRCLSTE - Matt Sterett (Libertarian Party)
G20RRCGGRU - Katija "Kat" Gruene (Green Party)

G20SSCRHEC - Nathan Hecht (Republican Party)
G20SSCDMEA - Amy Clark Meachum (Democratic Party)
G20SSCLASH - Mark Ash (Libertarian Party)

G20SSCRBLA - Jane Bland (Republican Party)
G20SSCDCHE - Kathy Cheng (Democratic Party)

G20SSCRBOY - Jeff Boyd (Republican Party)
G20SSCDWIL - Staci Williams (Democratic Party)
G20SSCLSTR - William Bryan Strange III (Libertarian Party)

G20SSCRBUS - Brett Busby (Republican Party)
G20SSCDTRI - Gisela D. Triana (Democratic Party)
G20SSCLOXF - Tom Oxford (Libertarian Party)

G20SCCRRIC - Bert Richardson (Republican Party)
G20SCCDFRI - Elizabeth Davis Frizell (Democratic Party)

G20SCCRYEA - Kevin Patrick Yeary (Republican Party)
G20SCCDCLI - Tina Clinton (Democratic Party)

G20SCCRNEW - David Newell (Republican Party)
G20SCCDBIR - Brandon Birmingham (Democratic Party)

## Processing Steps
Precinct 4/6 in Gonzales was merged prior to 2008. Precinct 5/6 in Hood was merged prior to 2012. Gonzales 4 was the city of Nixon while Gonzales 6 was the surrounding county precinct. Hood 5 and 6 were divided by US Hwy 377. However, they reappear as separate line items in the 2020 general election county reports. Since these are otherwise regarded as unitary precincts and it is unclear that the separate 2020 line items correspond to the obsolete boundaries the results for Gonzales 4/6 and Hood 5/6 were combined for this shapefile.

Brazos 84 and 85 were single parcel precincts created where new construction required a distinct ballot style. Each precinct cast 2 Republican votes for all statewide races. For this shapefile the votes for Brazos 84 and 85 were added to Brazos 82 and Brazos 2 respectively based on voter registration address.

Precinct totals for the counties listed below do not add up to the Secretary of State County Canvass for one or more offices. Most commonly this is due to omission of some ballots counted after election day from either the county precinct reports or from summary results certified to the state. In some cases these involve data entry errors where numbers were transposed, dropped, or added in one or more precincts or in countywide summations. In some cases corrections to the initial precinct results were made after the certification deadline.

Anderson, Armstrong, Cass, Cochran, Cottle, Fayette, Frio, Gillespie, Hamilton, Hansford, Hood, Howard, Hudspeth, Irion, Jasper, Kent, Kleberg, Lamar, Liberty, Live Oak, Lynn, Maverick, Morris, Motley, Presidio, Reeves, Rockwall, Shackelford, Starr, Terrell, Travis, Upton, Val Verde, Van Zandt, Ward, Webb, Willacy.

Most of the discrepancies are in single digits or low double digits. The exceptions are a 140 vote overreport from Cass for David Collins (G) for U.S. Senate, a 54 vote underreport from Van Zandt for Jane Bland (R) for Supreme Court Justice 6, a 100 vote underreport from Cochran for Staci Williams (D) for Supreme Court Justice 7, a 100 vote underreport from Travis for Jeff Boyd (R) for Supreme Court Justice 7, a 274 vote overreport from Reeves for Elizabeth Frizell for Criminal Appeals Judge 3, a 286 vote underreport from Reeves for Kevin Yeary (R) for Criminal Appeals Judge 4.

Hood had an underreport of 171-176 Republican votes and 45-54 Democratic votes for all statewide races. Kleberg had an underreport of 56-71 Republican votes and 55-67 Democratic votes for all statewide races. Presidio had an underreport of 58 votes for Chrysta Castañeda (D) for railroad commissioner, 55 votes for Amy Meachum (D) for Supreme Court Chief Justice, and 55 votes for Kathy Cheng (D) for Supreme Court Justice 6.

Votes reported countywide were distributed by candidate to precincts based on the precinct-level reported vote. This includes all early ballots in Collingsworth and Hudspeth. Early ballots for precincts 101/102, 301/303 in Donley. Mail ballots in Borden and Kimble. Federal and/or limited ballots in Bee, Bexar, Brazos, Chambers, Coryell, Harrison, Hays, and Jefferson. Provisional and military ballots in Bowie, Reeves, and Trinity.

The Mason County courthouse burned down in February 2021. The only known surviving precinct results are on a spreadsheet with an incorrect formula in place of the election day results. This was filed with the Secretary of State in 2020 and the TXLC consequently allocated all votes countywide. For this shapefile the election day votes were instead calculated as the difference between the early votes and the countywide summary totals and then distributed by candidate to precincts based on the precinct-level early vote.

In Williamson County a vendor programming error combined in person early votes to a handful of precincts for the initial results. The in person early votes were subsequently hand counted so as to be assigned to their correct precincts. A batch of about 250 ballots was not recounted before the certification deadline and thus reported only in countywide summary results. For this shapefile those in person early votes were distributed by candidate to precincts based on the precinct-level reported vote.

San Saba did not file a precinct report with the Secretary of State as required by the Texas election code and asserted they are unable to locate any precinct results for the 2020 general election. The countywide summary totals were distributed by candidate to precincts based on the 2018 precinct-level reported vote. 

The following counties reported combined results for some precincts. As these specific precincts align with VTD boundaries the combined results were replaced with the VTD allocated precinct results from the TXLC Capitol Data Portal. Any data corrections or distributions noted above were transferred accordingly.

Austin: 207/208
Brooks: 3/3S
Kent: 201/202
Kleberg: 33/34
Lamar: 1A3B/1D/1E7C, 1B/1I, 1F/1G, 2B2A/2C3A, 4C/4E 
Lamb: 7/8
Lynn: 1/5, 2/8, 3/10, 4/11
McMullen: 2A/2B, 4A/4B
Newton: 11/13/21
Real: 4/7
Red River: 1/11, 17/18, 27/30