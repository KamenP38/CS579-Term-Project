2016 Texas precinct and election results shapefile.

## RDH Date retrieval
08/03/2021

## Sources
Election results and precinct shapefile from the Texas Legislative Council (https://data.capitol.texas.gov/). The precinct data files available for download at the TXLC Capitol Data Portal are allocated to Census VTD geography based on Voting Age Population from the 2010 Census. The unallocated precinct results and registration statistics were generously provided by TXLC staff to instead merge with the precinct boundaries.
Precinct results for the following counties were replaced in whole or in part with county source files or with precinct data provided via the Secretary of State: Angelina, Archer, Armstrong, Baylor, Bosque, Bowie, Brazos, Cameron, Carson, Cass, Childress, Cochran, Cooke, Dawson, Fannin, Fayette, Franklin, Glasscock, Hansford, Hockley, Hood, Houston, Howard, Jasper, Jeff Davis, Jim Wells, Kleberg, Lamb, La Salle, Loving, Mason, Motley, Navarro, Pecos, Rockwall, Sabine, Schleicher, Somervell, Sterling, Terrell, Throckmorton, Trinity, Val Verde. 

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
G16VR - Voter registration
G16SSVR - Spanish surname voter registration

G16PRERTRU - Donald J. Trump (Republican Party)
G16PREDCLI - Hillary Clinton (Democratic Party)
G16PRELJOH - Gary Johnson (Libertarian Party)
G16PREGSTE - Jill Stein (Green Party)
G16PREOWRI - Write-in Votes

G16RRCRCHR - Wayne Christian (Republican Party)
G16RRCDYAR - Grady Yarbrough (Democratic Party)
G16RRCLMIL - Mark Miller (Libertarian Party)
G16RRCGSAL - Martina Salinas (Green Party)

G16SSCRLEH - Debra Lehrmann (Republican Party)
G16SSCDWES - Mike Westergren (Democratic Party)
G16SSCLGLA - Kathie Glass (Libertarian Party) 
G16SSCGMUN - Rodolfo Rivera Munoz (Green Party)

G16SSCRGRE - Paul Green (Republican Party)
G16SSCDGAR - Dori Contreras Garza (Democratic Party)
G16SSCLOXF - Tom Oxford (Libertarian Party)
G16SSCGWAT - Charles E. Waterbury (Green Party)

G16SSCRGUZ - Eva Guzman (Republican Party)
G16SSCDROB - Savannah Robinson (Democratic Party)
G16SSCLFUL - Don Fulton (Libertarian Party)
G16SSCGCHI - Jim Chisholm (Green Party)

G16SCCRKEE - Mary Lou Keel (Republican Party)
G16SCCDMEY - Lawrence "Larry" Meyers (Democratic Party)
G16SCCLASH - Mark Ash (Libertarian Party)
G16SCCGREP - Adam King Blackwell Reposa (Green Party)

G16SCCRWAL - Scott Walker (Republican Party)
G16SCCDJOH - Betsy Johnson (Democratic Party)
G16SCCLSTR - William Bryan Strange, III (Libertarian Party)
G16SCCGSAN - Judith Sanders-Castro (Green Party)

G16SCCRKEA - Michael E. Keasler (Republican Party)
G16SCCDBUR - Robert Burns (Democratic Party)
G16SCCLBEN - Mark W. Bennett (Libertarian Party)

## Processing Steps

The shapefile includes unallocated Voter Registration (VR) and Spanish Surname Voter Registration (SSVR) for the November 2016 general election. Any VR data analysis of these unallocated precinct results should utilize this unallocated VR data rather than the VR data allocated by VTD available for download at CDP. SSVR is denoted as a percentile of total VR for each precinct.

In Brazos County the votes assigned to Precinct 51 in the 2016 general election canvass report are the countywide limited ballots. Precinct 51 is a single parcel with no registered voters.

Precinct totals for the counties listed below do not add up to the Secretary of State County Canvass for one or more offices. Most commonly this is due to omission of some ballots counted after election day from either the county precinct reports or from summary results certified to the state. In some cases these involve data entry errors where numbers were transposed, dropped, or added in one or more precincts or in countywide summations. In some cases corrections to the initial precinct results were made after the certification deadline.

Anderson, Andrews, Bexar, Brooks, Coke, Cottle, Deaf Smith, Donley, Ector, Gonzales, Hamilton, Hansford, Hartley, Hemphill, Hill, Hockley, Houston, Jackson, Jasper, Jeff Davis, Kent, Medina, Morris, Motley, Parmer, Potter, Presidio, Shackelford, Sherman, Willacy, Zavala.

Most of the discrepancies are in single digits or low double digits. The exceptions are a 178 vote overreport from Presidio for Donald Trump (R) for U.S President, a 1000 vote overreport from Bexar for Martina Salinas (G) for Railroad Commissioner, and a 64 vote overreport from Deaf Smith for Adam Reposa (G) for Criminal Appeals Judge 2.

Votes reported countywide were distributed by candidate to precincts based on the precinct-level reported vote. This includes all early ballots in Blanco, Collingsworth, Crockett, Dawson, Kent, Loving, McMullen, and Trinity. Mail ballots in Armstrong and Childress. Federal and/or limited ballots in Bexar, Brazos, Cass, Jefferson, and Rockwall. Provisional and military ballots in Bowie, Jasper, Sabine, and Val Verde.

Dimmit, Hudspeth, and San Saba did not file precinct reports with the Secretary of State as required by the Texas election code and assert they are unable to locate any precinct results for the 2016 general election. For Dimmit and Hudspeth the countywide summary totals were distributed by candidate to precincts based on the 2020 precinct-level reported vote. San Saba also failed to file a precinct report in 2020 so the countywide summary totals were distributed by candidate to precincts based on the 2018 precinct-level reported vote.

The following counties reported combined results for some precincts. As these specific precincts align with VTD boundaries the combined results were replaced with the VTD allocated precinct results from the TXLC Capitol Data Portal. Any data corrections or distributions noted above were transferred accordingly.

Bowie: 1A/4E, 2B/4D/5A, 2D/4A/4C/5B, 13/30, 24/25
Brooks: 1/2, 3/4, 5/7, 8/9
Dallam: 1/4, 2/8, 3/5/9, 6/7
Freestone: 1/12
Howard: 11-16, 103-105, 24-26, 207/207C, 32-35, 42-46, 404/405
Karnes: 12/13
Lamb: 4/11, 7/8
Lynn: 1/5, 2/8, 3/10, 4/11
McMullen: 2A/2B, 4A/4B
Nacogdoches: 14/17, 22/23/24/25, 30/31/32, 33/34, 41/43
Real: 4/7
Red River: 1/11, 17/18, 27/30
