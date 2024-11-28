2020 Illinois precinct and election results shapefile.

## RDH Date retrieval
06/07/2021

## Sources
Election results from Illinois State Board of Elections(https://www.elections.il.gov/electionoperations/votetotalsearch.aspx)

Precinct shapefile from the U.S. Census Bureau's 2020 Redistricting Data Program final release.

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

ATG - Attorney General
AUD - Auditor
COC - Corporation Commissioner
COU - City Council Member
DEL - Delegate to the U.S. House
GOV - Governor
H## - U.S. House, where ## is the district number. AL: at large.
INS - Insurance Commissioner
LTG - Lieutenant Governor
PRE - President
PSC - Public Service Commissioner
SAC - State Appeals Court (in AL: Civil Appeals)
SCC - State Court of Criminal Appeals
SOS - Secretary of State
SPI - Superintendent of Public Instruction
USS - U.S. Senate

Party Codes
D and R will always represent Democrat and Republican, respectively.
See the state-specific notes for the remaining codes used in a particular file; note that third-party candidates may appear on the ballot under different party labels in different states.

## Fields

G20PREDBID - Joseph R. Biden (Democratic Party)
G20PRERTRU - Donald J. Trump (Republican Party)
G20PRELJOR - Jo Jorgensen (Libertarian Party)
G20PREGHAW - Howie Hawkins (Green Party)
G20PREACAR - Brian Carroll (American Solidarity Party)
G20PRESLAR - Gloria La Riva (Party for Socialism and Liberation)

G20USSDDUR - Richard J. Durbin (Democratic Party)
G20USSRCUR - Mark C. Curran Jr. (Republican Party)
G20USSIWIL - Willie L. Wilson (Willie Wilson Party)
G20USSLMAL - Danny Malouf (Libertarian Party)
G20USSGBLA - David F. Black (Green Party)

## Processing Steps

Countywide votes were distributed for Bureau, Kankakee, Livingston, Macon, Perry, Sangamon. It was just 6 votes in Sangamon and 1 to 3 votes in each of the other counties.

The following modifications were made to match precinct boundaries in use for the 2020 general election.

Washington: Merge Hoyleton 1/2
Winnebago: Adjust Rockton 5/11/12/13