Task list
-Created Hobby, device: User and Join Table for has_and_belongs_to_many
(with callbacks that should delete records from join table in case of hobby or user was destroyed

-Added devise_parameter_sanitizer.permit username in application_controller as was written in devise docs
And Added username to sign_up form
-Created simple root home view with links for sign_up and sign_in
-Added links to views_app_layout with Ip(using device:trackable) and log out button

-Created Hobby controller and views to show all hobbies let user add hobbies to theirs and create new one
-Created hobbies_users controller to let user to view only his own hobbies and remove them from his acc

-Added Geocoder, long and lat fields to let user be geocoded by ip
-Created near_users_controller to show user closest users 5 by using user.nearbys() 

-Added some css styles(i know it still looks bad, sorry :)

-Deployed this app on heroku for some testing https://sleepy-ridge-96418.herokuapp.com 
and asked a friend to help me with testing
All users were geodecoded by their last sign_in_ip but User.nearbys sometimes not working properly
1st user cant see anyone other, but 3d and 4th can see 1st
https://sleepy-ridge-96418.herokuapp.com/users/1/near_users
https://sleepy-ridge-96418.herokuapp.com/users/4/near_users

-Used rspec for few tests of model and controllers(only basic ones)
-Used factory for hobby with Faker (not sure there was no sense in that)
-Added error handling as we were doing it on RoR/LevelUp