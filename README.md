### README

Gearlist is an internal web app tool written in rails/postgres/javascript to help IT manage assets and inventory.


###### Be sure to set up your environment before initial setup:
  - The pg username should be: gearlist
  - The pg password should be an environment variable labeled: GEARLISTPASSWORD
  - The primary admin account (used at first setup) should be an environment variable labeled: GEARLISTMAILTOADDRESS


###### Pre-setting divisions (as in, office locations etc)
If you have a large number of divisions or locations, or if for security reasons you would like them to be pre-seeded from environment variables, you can set them with the variable labeled: GEARLISTDIVISIONLIST


###### Importing from tracmor
If you would like to import previous asset data from tracmor, please export, save, and then drop an csv version of the file under db/seeds/assetexport.csv. More information on the exact formatting of the csv file can be found at lib/tasks/import.rake and /lib/tasks/reimport.rake