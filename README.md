# README #

Ruby version 2.2.4
Rails version 5.0.2

# Description

The name of the program - #Pivorak.
In this program is implemented ticketing system. To use this program you need pass authorization. You can register or use one of the personal social networks: facebook, twitter, google.
After login, you can view  profile. There are two types of users : buyer and admin.
By default your account will be buyer. Admin can create bus line with next parameters:

-ticket count
-departure
-date and time of departure
-place
-date and time of arrival.

Also admin can update, destroy and watch on the list of buyers for each trip. Buyer can watch on list of trips, choose one ticket and buy or reserve it,  watch on list of all purchased tickets.

### Installation

```sh
$ git clone git@github.com:SkiboPavlo/pivorak.git
$ cd pivorak
$ bundle
$ rake db:create
$ rake db:migrate
$ rails s
```
