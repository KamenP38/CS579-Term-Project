2020 Massachusetts precinct and election shapefile.

## RDH Date retrieval
08/31/2021

## Sources
Election results from Massachusetts Secretary of the Commonwealth (https://electionstats.state.ma.us/) Precinct shapefile from MassGIS Bureau of Geographic Information (https://docs.digital.mass.gov/dataset/massgis-data-wards-and-precincts)

## Fields metadata

Vote Column Label Format
------------------------
Columns reporting votes follow a standard label pattern. One example is:
G16PREDCli
The first character is G for a general election, P for a primary, S for a special, and R for a runoff.
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
G20PREDBID - Joseph R. Biden (Democratic-Farmer-Labor Party)
G20PRERTRU - Donald J. Trump (Republican Party)
G20PRELJOR - Jo Jorgensen (Libertarian Party)
G20PREGHAW - Howie Hawkins (Green Party)
G20PREOWRI - Write-in Votes

G20USSDMAR - Edward J. Markey (Democratic Party)
G20USSROCO - Kevin J. O'Connor (Republican Party)
G20USSOAYY - Shiva Ayyadurai (Write-in)
G20USSOWRI - Other Write-in Votes

## Processing Steps
A number of municipal boundaries were aligned with the more current MassGIS Town Survey shapefile.

The following precincts were split by congressional district to match reporting units: Andover 7; Bellingham 4; Cambridge 3-2; Fall River 5B,6C; Palmer 1; Raynham 1,2; Sudbury 1; Winchendon 1. Andover 9A was merged with Andover 1 by an act of the MA legislature prior to the 2020 election. The following precinct divisions are authorized and defined for voting purposes but not for redistricting purposes by specific acts of the MA legislature and were split accordingly: Chicopee 6A,6B; Dracut 6; Hingham 5; Newburyport 1; Peabody 4-3; Quincy 2-3; Revere 2-3,5-1,5-2. Warren A and Warren B precincts were split based on polling place assignments in the Warren parcel shapefile.