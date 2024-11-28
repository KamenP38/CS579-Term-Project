2020 Arizona precinct and election results shapefile.

## RDH Date retrieval
06/30/2021

## Sources
Election results from Arizona Secretary of State (https://azsos.gov/2020-election-information)
Precinct shapefile from Arizona Secretary of State via personal communication except Greenlee County is sourced from the county shapefile instead.

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

G20PRERTRU - Donald J. Trump (Republican Party)
G20PREDBID - Joseph R. Biden (Democratic Party)
G20PRELJOR - Jo Jorgensen (Libertarian Party)

G20USSDKEL - Mark Kelly (Democratic Party)
G20USSRMCS - Martha McSally (Republican Party)


## Processing Steps
The following modifications were made to match the precinct boundaries for the 2020 general election.

Apache: Merge Puerco East/West
La Paz: Merge Alamo into Wenden
Maricopa: Merge South Mtn Park E, NE, S, SE, SW into South Mtn Park

