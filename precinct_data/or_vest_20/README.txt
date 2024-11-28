2020 Oregon precinct and election results shapefile.

## RDH Date retrieval
09/23/2021

## Sources
Election results from the Oregon Secretary of State via OpenElections (https://github.com/openelections/openelections-data-or/). Results from Polk, Tillamook, Wallowa, and Wasco counties were corrected with the respective county canvass reports.

Precinct shapefiles for the following counties were provided by the respective county governments: Benton, Clatsop, Columbia, Coos, Crook, Curry, Deschutes, Douglas, Harney, Hood River, Jackson, Josephine, Klamath, Lane, Linn, Malheur, Morrow, Multnomah, Polk, Sherman, Tillamook, Umatilla, Union, Wallowa, Wasco, Yamhill.

Precinct shapefiles for the following counties were provided by the Oregon Secretary of State: Jefferson, Lane, Marion. Several gaps in the Marion County shapefile were assigned based on the Precinct Split Summary Report.

Precinct shapefiles for Clackamas and Washington were provided by the Metro Regional Government Data Resource Center.

Precinct boundaries for Grant County and Wheeler County are defined by school district boundaries. Precinct shapefiles were produced to match PDF maps provided by the respective counties using the 2016 Oregon Education Boundaries shapefile obtained from the Oregon Spatial Data Library.

Precinct shapefiles for the following counties were produced based on PDF maps provided by the respective counties: Baker, Gilliam, Lake, Lincoln. Boundaries defined by the PLSS grid were produced with the Oregon Public Land Survey Quarter-Quarter Reference Grid shapefile obtained from the Oregon Spatial Data Library. Municipal boundaries were produced from the Oregon Department of Transportion 2016 City Limits shapefile obtained from the Oregon Spatial Data Library. Street boundaries were produced from the U.S. Census Bureau census block shapefiles.

PDF maps obtained from Lake County are approximate precinct boundaries drawn on the PLSS grid for county precincts and on the street map for Lakeview city precincts. These boundaries were adjusted to match address range assignments in the Lake County Address Library Report which serves as the legal definition of the precincts according to the Lake County Clerk. Precinct divisions across roads that span multiple rural precincts are generally defined by zip codes. Address ranges were further identified based on the Lake County tax lot parcel viewer.

Rural precinct boundaries in the shapefiles provided by Coos County and Union County were revised to match the updated PLSS cadastral grid in the Oregon GIS Framework obtained from the Oregon Spatial Data Library. 

Municipal precinct boundaries in the following counties were edited to match city limits in effect for the November 2020 general election: Coos, Deschutes, Douglas, Jefferson, Malheur, Marion, Tillamook, Umatilla, Washington, Yamhill.

Precinct numbers in the Columbia County, Josephine County, and Wallowa County shapefiles were edited to match the Oregon Secretary of State voter file.

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
G20PREGHAW - Howie Hawkins (Pacific Green Party)
G20PREPHUN - Dario Hunter (Progressive Party)
G20PREOWRI - Write-in Votes

G20USSDMER - Jeff Merkley (Democratic Party, Independent Party and Working Family Party (fusion candidate))
G20USSRPER - Jo Rae Perkins (Republican Party)
G20USSLDYE - Gary Dye (Libertarian Party)
G20USSGTAH - Ibrahim A. Taher (Pacific Green Party and Progressive Party (fusion candidate))
G20USSOWRI - Write-in Votes

G20ATGDROS - Ellen Rosenblum (Democratic Party, Independent Party and Working Family Party (fusion candidate))
G20ATGRCRO - Michael Cross (Republican Party)
G20ATGLHED - Lars D. H. Hedbor (Libertarian Party)
G20ATGOWRI - Write-in Votes

G20SOSDFAG - Shemia Fagan (Democratic Party and Working Family Party (fusion candidate))
G20SOSRTHA - Kim Thatcher (Republican Party and Independent Party (fusion candidate))
G20SOSLMAR - Kyle Markley (Libertarian Party)
G20SOSGPAR - Nathalie Paravicini (Pacific Green Party and Progressive Party (fusion candidate))
G20SOSOWRI - Write-in Votes

G20TREDREA - Tobias Read (Democratic Party and Working Family Party (fusion candidate))
G20TRERGUD - Jeff Gudman (Republican Party)
G20TREIHEN - Chris Henry (Independent Party, Pacific Green Party and Progressive Party (fusion candidate))
G20TRECMAR - Michael P. Marsh (Constitution Party)
G20TREOWRI - Write-in Votes