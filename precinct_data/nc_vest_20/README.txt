2020 North Carolina precinct and election results shapefile.

## RDH Date retrieval
06/30/2021

## Sources
Election results and precinct shapefile from the NC State Board of Elections (https://www.ncsbe.gov/results-data)

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
G20PREGHAW - Howie Hawkins (Green Party)
G20PRECBLA - Don Blankenship (Constitution Party)
G20PREOWRI - Write-in Votes

G20USSRTIL - Thom Tillis (Republican Party)
G20USSDCUN - Cal Cunningham (Democratic Party)
G20USSLBRA - Shannon W. Bray (Libertarian Party)
G20USSCHAY - Kevin E. Hayes (Constitution Party)

G20GOVRFOR - Dan Forest (Republican Party)
G20GOVDCOO - Roy Cooper (Democratic Party)
G20GOVLDIF - Steven J. DiFiore (Libertarian Party)
G20GOVCPIS - Al Pisano (Constitution Party)

G20LTGRROB - Mark Robinson (Republican Party)
G20LTGDHOL - Yvonne Lewis Holley (Democratic Party)

G20ATGRONE - Jim O'Neill (Republican Party)
G20ATGDSTE - Josh Stein (Democratic Party)

G20TRERFOL - Dale R. Folwell (Republican Party)
G20TREDCHA - Ronnie Chatterji (Democratic Party)

G20SOSRSYK - E.C. Sykes (Republican Party)
G20SOSDMAR - Elaine Marshall (Democratic Party)

G20AUDRSTR - Anthony Wayne (Tony) Street (Republican Party)
G20AUDDWOO - Beth A. Wood (Democratic Party)

G20AGRRTRO - Steve Troxler (Republican Party)
G20AGRDWAD - Jenna Wadsworth (Democratic Party)

G20INSRCAU - Mike Causey (Republican Party)
G20INSDGOO - Wayne Goodwin (Democratic Party)

G20LABRDOB - Josh Dobson (Republican Party)
G20LABDHOL - Jessica Holmes (Democratic Party)

G20SPIRTRU - Catherine Truitt (Republican Party)
G20SPIDMAN - Jen Mangrum (Democratic Party)

G20SSCRNEW - Paul Newby (Republican Party)
G20SSCDBEA - Cheri Beasley (Democratic Party)

G20SSCRBER - Phil Berger, Jr. (Republican Party)
G20SSCDINM - Lucy Inman (Democratic Party)

G20SSCRBAR - Tamara Barringer (Republican Party)
G20SSCDDAV - Mark Davis (Democratic Party)

G20SACRWOO - April C. Wood (Republican Party)
G20SACDSHI - Tricia Shields (Democratic Party)

G20SACRGOR - Fred Gore (Republican Party)
G20SACDCUB - Lora Christine Cubbage (Democratic Party)

G20SACRDIL - Chris Dillon (Republican Party)
G20SACDSTY - Gray Styers (Democratic Party)

G20SACRCAR - Jeff Carpenter (Republican Party)
G20SACDYOU - Reuben F. Young (Democratic Party)

G20SACRGRI - Jefferson G. Griffin (Republican Party)
G20SACDBRO - Chris Brook (Democratic Party)


## Processing Steps
Buncombe 681, Henderson CV, Wake 01-07A, 07-07A are missing from the 20201018 shapefile. They are added from the 20190827 shapefile.

North Carolina produces two sets of election results data. The precinct results are the unaltered results as initially reported by the counties. Many counties report early votes by vote center while provisional and other nonstandard ballots may be reported countywide. The precinct-sorted results are then produced within 30 days after the election. In the precinct-sorted data nearly all votes are assigned to precincts regardless of the manner by which the ballots were cast. However, North Carolina law requires the addition of statistical "noise" to the precinct-sorted data wherever any given vote by any specific voter may otherwise be deduced via cross referencing the various election-related data sets produced by the SBE.

For the 2020 general election 51 counties reported all votes by precinct in their initial precinct results. The precinct-sorted data set was used instead for the counties listed below.

Alleghany, Avery, Beaufort, Bertie*, Bladen, Buncombe, Cabarrus, Caldwell, Camden, Currituck, Dare, Davidson*, Davie, Duplin*, Durham*, Edgecombe, Guilford, Halifax*, Harnett, Haywood, Henderson, Hertford, Hyde, Johnston, Jones, Lee, Lincoln, Macon, Martin, Mecklenburg*, Moore, Nash, New Hanover*, Northampton*, Orange, Pasquotank, Pitt*, Polk, Richmond, Scotland, Stokes*, Surry*, Tyrrell*, Wake, Washington, Watauga, Wayne, Wilkes*, Yadkin

In counties marked by asterisk some votes were still reported by vote center or countywide in the precinct-sorted data. These were distributed by candidate to precincts based on the precinct-level reported vote. The precinct-sorted results were further adjusted to match the certified countywide totals based on the precinct-level vote by candidate.
