# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#


puts 'SETTING UP DEFAULT USER LOGIN'
print "Enter admin email: "
admin_email = STDIN.gets.to_s


user = User.create! :email => admin_email, :password => 'password123', :password_confirmation => 'password123', :admin => true
puts 'New user created: ' << user.email
puts "Admin password has been set to: password123"

Article.create([
  { :title => "How do I get a Hawai'i driver license for the first time?", :content => "<div class=\"quick_top\"><h2>Apply in person at a <a href=\"http://hnlanswers.herokuapp.com/articles/3/\">driver license station or Satellite City Hall</a>.</h2>\r\n<p>Requirements at the station:\r\n<ol>\r\n<li>Bring your <a target=\"_blank\" href=\"http://hawaii.gov/dot/hawaiis-legal-presence-law\" target=\"_blank\" >proof of legal presence.</a></li>\t\r\n<li>If you’re between 15.5 and 17 years of age, bring <a target=\"_blank\" href=\"http://www1.honolulu.gov/csd/vehicle/dlrequirements.htm\">a parental consent form</a>.</li>\r\n<li>Take written knowledge exam.</li> \r\n<li>Take an eye test, and be fingerprinted and photographed.</li>\r\n<li><a target=\"_blank\" href=\"http://www1.honolulu.gov/csd/vehicle/dlrequirements.htm#feetable\">Pay fees</a> with cash, personal check, VISA, or MasterCard.</li>\r\n</ol></div>\r\n<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>Study manuals for the written test are available <a target=\"_blank\" href=\"http://hawaii.gov/dot/highways/hwy-v/\">online</a> or at local bookstores and state libraries.</p>\r\n<p>You also need to complete a road test before you can receive your driver license. You can <a target=\"_blank\" href=\"http://www3.honolulu.gov/csdarts/default.aspx\">schedule your road test</a> online. If you already have a valid US driver license, the road test may be waived.</p></div>", :preview => "Go to a driver license station with your proof of legal presence, take a written exam there as well as eye test, photograph, and fingerprints, pay fees, and schedule a road test appointment.", :contact_id => 1, :tags => "driver license, drivers license, driver’s license, driving license, license, driving, drive, driving test, written test, written exam, driving exam, road test, road exam, new driver license, new driver’s license, new driving license ", :service_url => "", :is_published => false, :category_id => 1, :access_count => 0 },
  { :title => "How do I renew my driver license?",                         :content => "<div class=\"quick_top\"><h2>Renew your license in person at a <a target=\"_blank\" href=\"http://hnlanswers.herokuapp.com/articles/3/\">driver license station or Satellite City Hall</a>.</h2>\r\n<p>Requirements at the station:\r\n<ol><li>Bring your current license.</li>\r\n<li>Bring your <a href=\"http://hawaii.gov/dot/hawaiis-legal-presence-law\" target=\"_blank\" >proof of legal presence.</a></li>\r\n<li>Fill out an application form.</li>\r\n<li>Take an eye test.</li>\r\n<li>Pay with personal check or cash.</li>\r\n</ol></div>\r\n<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>Driver license fees depend on the duration of the license you are applying for.</p>\r\n<table>\r\n<tr>\r\n<th>Two-Year License</th>\r\n<th>Four-Year License</th>\r\n<th>Eight-Year License</th>\r\n</tr>\r\n<tr>\r\n<td>$10.00</td>\r\n<td>$20.00</td>\r\n<td>$40.00</td>\r\n</tr>\r\n</table>\r\n<p>If your license has been expired for more than 90 days, you will be charged an additional reactivation fee of $5 for every 30-day period beyond the 90 days.</p></div>", :preview => "Go to a driver license station with your proof of legal presence and current license, fill an application form there, take eye test, and pay fees.", :contact_id => 1, :tags => "renew driver license, renew drivers license, renew driver’s license, renew license, renew driving license, extend driver license, extend drivers license, extend driver’s license, extend license, extend driving license, renewal ", :service_url => "", :is_published => false, :category_id => 1, :access_count => 0 },
  { :title => "Where do I go to apply for a driver license?",              :content => "<div class=\"quick_top\"><h2>You can apply for a driver license in person at any of the following locations</h2></div>\r\n<div class=\"quick_bottom\">\r\n <table>\r\n  <tr>\r\n  <th>HAWAII KAI<br /> \r\n  (Satellite City Hall, Hawaii Kai Corporate Plaza)\r\n  </th>\r\n  <td>\r\n  6600 Kalanianaole Highway, Suite 101 <br />\r\n  Honolulu, HI 96825 <br />\t\r\n  Ph: (808) 768-4800\r\n  Mon - Fri, 8:00 am - 4:00 pm\r\n\r\n  <tr>\r\n  <th>\r\n  KALIHI-KAPALAMA <br />\r\n  (City Square Shopping Center)\r\n  </th>\r\n  <td>\r\n  1199 Dillingham Blvd, Room A101 <br />\r\n  Honolulu, HI 96817 <br />\r\n  Ph: (808) 532-7730\r\n  Mon - Fri, 7:45 am - 4:00 pm\r\n\r\n <tr>\r\n  <th>KAPOLEI <br />\r\n  (Kapolei Hale)\r\n  </th>\r\n  <td>\r\n  1000 Ulu'ohi'a Street <br />\r\n  Kapolei, HI 96707 <br />\r\n  Ph: (808) 768-3100\r\n  Mon - Fri, 7:45 am - 4:00 pm\r\n\r\n  <tr>\r\n  <th>KOOLAU<br />\r\n  (Koolau Center)\r\n  </th>\r\n  <td>\r\n  47-388 Hui Iwa Street, Suite 19 <br />\r\n  Kaneohe, HI 96744 <br />\r\n  Ph: (808) 239-6301\r\n  Mon - Fri, 7:45 am - 4:00 pm\r\n\r\n  <tr>\r\n  <th>PEARLRIDGE<br />\r\n  (Satellite City Hall, Uptown Pearlridge Shopping Center)\r\n  </th>\r\n  <td>\r\n  98-1005 Moanalua Road, 244B <br />\r\n  Aiea, HI 96701 <br />\r\n  Ph: (808) 768-5200\r\n  Mon - Fri, 9:00 am - 5:00 pm  \r\n  \r\n  <tr>\r\n  <th>\r\n  WAHIAWA <br />\r\n  </th>\r\n  <td>\r\n  330 North Cane Street <br />\r\n  Wahiawa, Hl 96786\t<br />\r\n  Ph: (808) 621-7255\r\n  Mon - Fri, 7:45 am - 4:00 pm\r\n\r\n  <tr>\r\n  <th>\r\n  WAIANAE<br />\r\n  (Waianae Neighborhood Community Center)\r\n  </th>\r\n  <td>\r\n  85-670 Farrington Highway <br />\r\n  Waianae, Hl 96792 <br />\r\n  Ph: (808) 768-4222\r\n  Mon & Wed ONLY, 7:45 am - 4:00 pm\r\n\r\n  <tr>\r\n  <th>WINDWARD CITY<br />\r\n  (Satellite City Hall, Windward City Shopping Center)\r\n  </th>\r\n  <td>45-480 Kaneohe Bay Drive, Unit C06 <br />\r\n  Kaneohe, HI 96744 <br />\t\r\n  Ph: (808) 768-4100\r\n  Mon - Fri, 8:00 am - 4:00 pm\r\n \r\n  </th>\r\n  </tr>\r\n  </table>\r\n<p>Note: The Satellite City Hall locations process renewal and duplicate permits only. They don't administer written or road tests.</p>\r\n</div>", :preview => "Driver Licensing locations", :contact_id => 1, :tags => "", :service_url => "", :is_published => false, :category_id => 1, :access_count => 0 },
  { :title => "How do I register a new motor vehicle?",                    :content => "<div class=\"quick_top\"><h2>If you purchased the vehicle from an Oahu dealer, the dealer will probably have it registered and licensed for you. So you won’t need to do anything further.</h2>\r\n<strong>If you are completing registration on your own</strong>\r\n<ul><li>Fill out the Application for Registration (Form CS-L MVR 1).</li>\r\n<li>Obtain a Hawaii Vehicle Inspection Certificate.</li>\r\n<li>Obtain proof of insurance.</li>\r\n<li>Look up your <a target=\"_blank\" href=\"http://www3.honolulu.gov/mvrfeeinq/\">registration fee online</a>.</li>\r\n<li>Submit the forms, proof of insurance, and payment by mail to the Registration Section or submit them in person to any <a href=\"http://hnlanswers.herokuapp.com/articles/6\">Satellite City Hall</a>.</li>\r\n</ul>\r\n</div>\r\n<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>The Application for Registration form should be signed by you, the registered owner(s), and the dealer.</p>\r\n<p>Proof of valid Hawaii No-fault Insurance is required to obtain a Hawaii Vehicle Inspection Certificate.</p>\r\n<p>Active duty service members stationed in Hawaii who are non-residents of Hawaii must also submit the Non-Resident Certificate (Form CS-L MVR 50). Obtain the form from your military personnel office or your military unit.</p>\r\n<p>Or submit your registration materials in person at any <a href=\"http://hnlanswers.herokuapp.com/articles/6\">Satellite City Hall</a>.</p>\r\n<p>Submit your registration materials by mail to:<ul>\r\n\tRegistration Section<br/>\r\n\tP. O. Box 30330<br/>\r\n\tHonolulu, HI 96813<br/>\r\n\tPh:(808) 532-4324</ul></p>\r\n</div>", :preview => "To register a new motor vehicle, apply by mail or in person at any Satellite City Hall.", :contact_id => 6, :tags => "motor vehicle, car, auto, truck, motorcycle, motor vehicle registration, car registration, auto registration, truck registration, motorcycle registration", :service_url => "", :is_published => false, :category_id => 2, :access_count => 0 },
  { :title => "How do I renew the registration for my motor vehicle?",     :content => "<div class='quick_bottom'><h3>what you need to know</h3>\r\n<p>To renew online, you’ll need your license plate number, the VIN number for your vehicle, and a Visa or Mastercard.</p>\r\n<p>You can renew online if your current registration has not expired, your address is correct, and no additional documents are required.</p>\r\n<p>If you don't want to renew online, renew in person at any <a href='http://hnlanswers.herokuapp.com/articles/6'>Satellite City Hall</a>.</p>\r\n<p>Or renew by mail to:<ul>\r\nRegistration Section<br/>\r\nP. O. Box 30330<br/>\r\nHonolulu, HI 96813<br/>\r\nPh:(808) 532-4324</ul></p>\r\n</div>", :preview => "Renew your motor vehicle registration online! You’ll need your license plate number, the VIN number for your vehicle, and a Visa or Mastercard to make a payment online.", :contact_id => 6, :tags => "motor vehicle, car, auto, motor vehicle registration, car registration, auto registration, renew registration ", :service_url => "http://www4.honolulu.gov/mvrreg/", :is_published => false, :category_id => 2, :access_count => 0 },
  { :title => "Where do I go to register a motor vehicle?",                :content => "<div class=\"quick_top\"><h2>Register a new motor vehicle, or renew your registration, at any Satellite City Hall location.</h2></div>\r\n<div class=\"quick_bottom\">\r\n<table>\r\n<tr>\r\n<th>\r\nALA MOANA<br />\r\n(Ala Moana Center)\r\n</th>\r\n<td>\r\n1450 Ala Moana Blvd.,#1286 \r\nHonolulu, Hi 96814\t\r\nPh: (808) 768-4300\r\nMon - Fri, 9:00 am - 5:00 pm\r\n</td><tr>\r\n<th>\r\nPEARLRIDGE<br />\r\n(Uptown Pearlridge Shopping Center)\r\n</th>\r\n<td>\r\n98-1005 Moanalua Road, 244B\r\nAiea, HI 96701 \t\r\nPh: (808) 768-5200\r\nMon - Fri, 9:00 am - 5:00 pm\r\n</td><tr>\r\n<th>\r\nHAWAII KAI <br />\r\n(Hawaii Kai Corporate Plaza)\r\n</th>\r\n<td>\r\n6600 Kalanianaole Highway, Suite 101\r\nHonolulu, Hawaii 96825\t\r\nPh: (808) 768-4600\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWINDWARD CITY<br />\r\n(Windward City Shopping Center)\r\n</th>\r\n<td>\r\n45-480 Kaneohe Bay Drive, Unit C06\r\nKaneohe, HI  96744\t\r\nPh: (808) 768-4100\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nFORT STREET <br />\r\n(Downtown)\r\n</th>\r\n<td>\r\n1000 Fort Street Mall \r\nHonolulu, Hi 96813\t\r\nPh: (808) 768-3798\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKAILUA<br />\r\n(Keolu Shopping Center )\r\n</th>\r\n<td>\r\n1090 Keolu Drive \r\nKailua, Hi 96734\t\r\nPh: (808) 768-4600\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKAPOLEI <br />\r\n(Kapolei Hale)\r\n</th>\r\n<td>\r\n1000 Uluohia Street\r\nKapolei, HI 96707\t\r\nPh: (808) 768-3100\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKALIHI-KAPALAMA <br />\r\n(City Square Shopping Center)\r\n</th>\r\n<td>\r\n1199 Dillingham Blvd.\r\nSatellite City Hall A109 \r\nHonolulu, Hi 96817\t\r\nPh: (808) 532-7730\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWAHIAWA \r\n</th>\r\n<td>\r\n330 North Cane Street \r\nWahiawa, Hl 96786\t\r\nPh: (808) 621-7255\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWAIANAE<br />\r\n(Waianae Neighborhood Community Center)\r\n</th>\r\n<td>\r\n85-670 Farrington Hwy.\r\nWaianae, Hl 96792\t\r\nPh: (808) 768-4222\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td>\r\n</tr>\r\n</table></div>", :preview => "Register a new car, truck, or motorcycle at any Satellite City Hall.", :contact_id => 4, :tags => "motor vehicle, car, auto, truck, motorcycle, motor vehicle registration, car registration, auto registration, truck registration, motorcycle registration, renew registration, registration location", :service_url => "", :is_published => false, :category_id => 2, :access_count => 0 },
  { :title => "What is the registration fee for my motor vehicle?",        :content => "<div class=\"quick_bottom\"><h3>what you need to know</h3><p>You will need the license plate number and VIN for your car, truck, or motorcycle to look up the fee.</p></div>", :preview => "Look up the registration fee for your car, truck, or motorcycle online.", :contact_id => 5, :tags => "motor vehicle, car, auto, truck, motorcycle, motor vehicle registration, car registration, auto registration, truck registration, motorcycle registration, registration fee ", :service_url => "http://www3.honolulu.gov/mvrfeeinq/", :is_published => false, :category_id => 2, :access_count => 0 },
  { :title => "How do I register a new trailer?",                          :content => "<div class=\"quick_top\"><h2>If you purchased the trailer on Oahu</h2>\r\n<ul><li>Fill out the Application for Registration of Trailer (Form CS-L MVR 14).</li>\r\n<li>Have the selling dealer sign the back of the form.</li>\r\n<li>If the vehicle weighs less than 10,000 pounds, obtain a Hawaii Vehicle Inspection Certificate.</li>\r\n<li>If the vehicle weighs more than 10,000 pounds, obtain a State Department of Transportation Inspection Certificate.</li>\r\n<li>Look up your <a target=\"_blank\" href=\"http://www3.honolulu.gov/mvrfeeinq/\">registration fee online</a>.</li>\r\n<li>Submit the forms and payment in person to any <a href=\"http://hnlanswers.herokuapp.com/articles/10\">Satellite City Hall</a>.</li></div>\r\n<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>To register trailers from outside the county or outside the state, or if your trailer is homemade or shop-built, you will need different forms. Contact a <a href=\"http://hnlanswers.herokuapp.com/articles/10\">Satellite City Hall</a> for more information.</p></div>", :preview => "Register your trailer by mail or in person at a Satellite City Hall.", :contact_id => 7, :tags => "trailer, trailer registration", :service_url => "", :is_published => false, :category_id => 4, :access_count => 0 },
  { :title => "How do I renew the registration for my trailer?",           :content => "<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>\tTo renew online, you’ll need your license plate number, the VIN number for your trailer, and a Visa or Mastercard.</p>\r\n<p>You can renew online if your current registration has not expired, your address is correct, and no additional documents are required.</p>\r\n<p>If you don’t meet these requirements, you can renew by mail or in person. <a target=\"_blank\" href=\"http://www1.honolulu.gov/csd/vehicle/mvinformation.htm\">Learn more ></a></p>\r\n</div>", :preview => "Renew your trailer registration online.", :contact_id => 7, :tags => "trailer, trailer registration, renew registration", :service_url => "http://www4.honolulu.gov/mvrreg/", :is_published => false, :category_id => 4, :access_count => 0 },
  { :title => "Where do I go to register a trailer?",                      :content => "<div class=\"quick_top\"><h2>Register a new trailer, or renew your trailer registration, at any Satellite City Hall location.</h2></div>\r\n<div class=\"quick_bottom\">\r\n<table>\r\n<tr>\r\n<th>\r\nALA MOANA<br />\r\n(Ala Moana Center)\r\n</th>\r\n<td>\r\n1450 Ala Moana Blvd.,#1286 \r\nHonolulu, Hi 96814\t\r\nPh: (808) 768-4300\r\nMon - Fri, 9:00 am - 5:00 pm\r\n</td><tr>\r\n<th>\r\nPEARLRIDGE<br />\r\n(Uptown Pearlridge Shopping Center)\r\n</th>\r\n<td>\r\n98-1005 Moanalua Road, 244B\r\nAiea, HI 96701 \t\r\nPh: (808) 768-5200\r\nMon - Fri, 9:00 am - 5:00 pm\r\n</td><tr>\r\n<th>\r\nHAWAII KAI <br />\r\n(Hawaii Kai Corporate Plaza)\r\n</th>\r\n<td>\r\n6600 Kalanianaole Highway, Suite 101\r\nHonolulu, Hawaii 96825\t\r\nPh: (808) 768-4600\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWINDWARD CITY<br />\r\n(Windward City Shopping Center)\r\n</th>\r\n<td>\r\n45-480 Kaneohe Bay Drive, Unit C06\r\nKaneohe, HI  96744\t\r\nPh: (808) 768-4100\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nFORT STREET <br />\r\n(Downtown)\r\n</th>\r\n<td>\r\n1000 Fort Street Mall \r\nHonolulu, Hi 96813\t\r\nPh: (808) 768-3798\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKAILUA<br />\r\n(Keolu Shopping Center )\r\n</th>\r\n<td>\r\n1090 Keolu Drive \r\nKailua, Hi 96734\t\r\nPh: (808) 768-4600\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKAPOLEI <br />\r\n(Kapolei Hale)\r\n</th>\r\n<td>\r\n1000 Uluohia Street\r\nKapolei, HI 96707\t\r\nPh: (808) 768-3100\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nKALIHI-KAPALAMA <br />\r\n(City Square Shopping Center)\r\n</th>\r\n<td>\r\n1199 Dillingham Blvd.\r\nSatellite City Hall A109 \r\nHonolulu, Hi 96817\t\r\nPh: (808) 532-7730\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWAHIAWA \r\n</th>\r\n<td>\r\n330 North Cane Street \r\nWahiawa, Hl 96786\t\r\nPh: (808) 621-7255\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td><tr>\r\n<th>\r\nWAIANAE<br />\r\n(Waianae Neighborhood Community Center)\r\n</th>\r\n<td>\r\n85-670 Farrington Hwy.\r\nWaianae, Hl 96792\t\r\nPh: (808) 768-4222\r\nMon - Fri, 8:00 am - 4:00 pm\r\n</td>\r\n</tr>\r\n</table>\r\n</div>", :preview => "Register a trailer, or renew your trailer registration, at any Satellite City Hall.", :contact_id => 4, :tags => "trailer, trailer registration, renew registration, registration location", :service_url => "", :is_published => false, :category_id => 4, :access_count => 0 },
  { :title => "What is the registration fee for my trailer?",              :content => "<div class=\"quick_bottom\"><h3>what you need to know</h3><p>You will need the license plate number and VIN for your trailer to look up the fee.</p></div>", :preview => "Look up the registration fee for your trailer online.", :contact_id => 5, :tags => "trailer, trailer registration, registration fee", :service_url => "http://www3.honolulu.gov/mvrfeeinq/", :is_published => false, :category_id => 4, :access_count => 0 },
  { :title => "How do I transfer ownership of my vehicle or trailer?",     :content => "<div class=\"quick_top\"><h2>If the vehicle, motorcycle, or trailer is titled in Honolulu, make the following changes on your Certificate of Title.</h2>\r\n<strong>If you are the seller</strong>\r\n<ul>\r\n<li>Record the odometer reading in the Certificate of Title</li>\r\n<li>Have each registered owner sign and date Section A.</li>\r\n<li>Have the lienholder (if any) sign and date Section B.</li>\r\n<li>Give the Certificate of Title to the new owner.</li>\r\n</ul>\r\n<strong>If you are the new owner</strong>\r\n<ul>\r\n<li>Sign and date Section D in the Certificate of Title</li>\r\n<li>Have the new lienholder (if any) sign and date Section E.</li>\r\n<li>Submit the Certificate of Title by mail or in person at any <a href=\"http://hnlanswers.herokuapp.com/articles/6\">Satellite City Hall</a>.</li>\r\n</ul></div>\r\n<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>Seller must complete the Certificate of Title within 10 days of transferring the vehicle.</p>\r\n<p>New owner must submit the Certificate of Title along with last issued Certificate of Registration and current Hawaii Vehicle Inspection Certificate.</p>\r\n<p>New owners who are non-resident active duty military service members must also submit a Non-Resident Certificate (Form CS-L MVR 50).</p>\r\n<p>Submit your registration materials in person at any <a href=\"http://hnlanswers.herokuapp.com/articles/6\">Satellite City Hall</a>.</p>\r\n<p>Or submit by mail to:<ul>\r\n\tDivision of Motor Vehicle, Licensing and Permits</br/>\r\n\tRegistration Section</br/>\r\n\tP. O. Box 30330</br/>\r\n\tHonolulu, HI 96820-0330</ul></p>\r\n</div>", :preview => "To transfer ownership of a vehicle or trailer, both the buyer and the seller need to fill out portions of the vehicle’s Certificate of Title.", :contact_id => 8, :tags => "motor vehicle, car, auto, truck, motorcycle, trailer, transfer ownership, transfer title, motorcycle, transfer registration", :service_url => "", :is_published => false, :category_id => 2, :access_count => 0 },
  { :title => "How do I get a personalized license plate?",                :content => "<div class=\"quick_bottom\"><h3>what you need to know</h3>\r\n<p>To apply for personalized license plates online, you’ll need an email address and a Visa or Mastercard.</p>\r\n<p>You can apply for a personalized plate for yourself (or for someone else) if the vehicle is registered in the city and county of Honolulu.</p>\r\n<p>When applying for personalized license plates, there is a $25.00 non-refundable fee.</p>\r\n<p>In the future, each time the vehicle registration is renewed, an additional $25.00 fee will be added to your registration fee.</p>\r\n<p>Please allow 60 to 90 days for receipt of your personalized plate.</p>\r\n<p>If you don't want to apply online, you can submit your application by mail to:<br/>\r\n<ul>Division of Motor Vehicle, Licensing and Permits<br/>\r\nCashiering Section<br/>\r\nP. O. Box 30330<br/>\r\nHonolulu, HI 96820-0330<br/>\r\nPh: (808) 532-4325</ul></p>\r\n<p>Or submit your application in person at any <a target=\"_blank\" href=\"http://www1.honolulu.gov/csd/satellite/index.htm\">Satellite City Hall</a>.</p>\r\n</div>", :preview => "Apply for personalized license plates online.", :contact_id => 9, :tags => "motor vehicle, car, auto, truck, motorcycle, license plates, personalized license plates\r\n", :service_url => "http://www4.honolulu.gov/specialplates/", :is_published => false, :category_id => 5, :access_count => 0 },
  { :title => "How do I get a job at the City?",                           :content => "", :preview => "View available jobs and apply online.", :contact_id => 10, :tags => "city jobs, jobs, job opportunities, human resources, HR, employment, open position, positions ", :service_url => "http://agency.governmentjobs.com/honolulu/default.cfm?action=jobs", :is_published => false, :category_id => 6, :access_count => 0 },
  { :title => "What employment benefits are offered by the City?",         :content => "<div class=\"quick_top\"><p>Exact benefits depend on the position, type of appointment, and length of appointment. In general, benefits may include:<br />\r\n<ul>\r\n<li>Time Off</li>\r\n<li>Health</li>\r\n<li>Retirement Plan</li>\r\n<li>Deferred Compensation</li>\r\n<li>Employee Assistance Program</li>\r\n<li>Training and Development</li>\r\n<li>Child Care Center</li>\r\n<li>Parking</li>\r\n<li>Pre-tax Benefit on Transportation Expenses</li>\r\n<li>Credit Union Membership</li>\r\n<li>Mortgage Loans</li>\r\n</p></div>\r\n<div class=\"quick_bottom\"><h3>Time Off</h3>\r\n<table>\r\n<tr>\r\n<th>Vacation</th>\r\n<th>Sick Leave</th>\r\n<th>Holidays</th>\r\n</tr>\r\n<tr>\r\n<td>Up to 21 days per year</td>\r\n<td>Up to 21 days per year</td>\r\n<td>13 holidays per year, 14 in an election year<br>\r\n<a target=\"_blank\" href=\"http://www1.honolulu.gov/hr/2012holidayschedule.pdf\">2012 Holiday Schedule</a></td>\r\n</tr>\r\n</table>\r\n<h3>Health</h3>\r\n<p><a target=\"_blank\" href=\"http://www.eutf.hawaii.gov/\">Plans offered</a> may include medical, prescription drug, vision, dental, and life insurance. The amount the City pays is specified in the bargaining unit agreements.</p>\r\n<h3>Retirement Plan</h3>\r\n<p>All new employees have contributions deducted from their paychecks for their <a target=\"_blank\" href=\"http://ers.ehawaii.gov/\">retirement plan</a>.</p>\r\n<h3>Deferred Compensation</h3>\r\n<p>You can <a target=\"_blank\" href=\"https://www.ingretirementplans.com/index.shtml\">defer part of your pay</a> to defer federal/state taxes until retirement. A Roth option is also available.</p>\r\n<h3>Employee Assistance Program</h3>\r\n<p>Free confidential counseling and referral services are available upon request.</p>\r\n<h3>Training and Development</h3>\r\n<p>Numerous opportunities are available through City sponsored training programs.</p>\r\n<h3>Child Care Center</h3>\r\n<p>The Early Education Center, (808) 533-0004.  Located above the Frank Fasi Municipal Building.</p>\r\n<h3>Parking</h3>\r\n<p>Some job locations have free parking on-site. Others may have convenient parking at low monthly rates.<p>\r\n<h3>Pre-tax benefit on Transportation Expenses</h3>\r\n<p>You may designate as a pre-tax item, your monthly City parking fee, bus pass, or mass transit fee paid via payroll deduction. Mass transit alternatives include TheBus, VanPool Hawai'i, and Handi-Van.</p>\r\n<h3>Credit Union Membership</h3>\r\n<p>Employees are eligible to join the following Credit Unions:\r\n<ul><li><a target=\"_blank\" href=\"http://www.kalanet.com/\">Honolulu City & County Employees' Federal Credit Union</a></li><li><a target=\"_blank\" href=\"http://www.hsfcu.com/\">Hawai’i State Federal Credit Union</a></li></ul></p>\r\n<h3>Mortgage Loans</h3>\r\n<p>Low-interest mortgage loans available through the <a target=\"_blank\" href=\"http://ers.ehawaii.gov/\">Employees' Retirement System of the State of Hawai’i</a>.<p>\r\n<p>Benefits are subject to change.</p></div>", :preview => "Benefits include time off, health insurance, and retirement plan, among others.", :contact_id => nil, :tags => "job benefits, human resources, HR, employment benefits, compensation, salary, vacation, time off, sick leave, sick days, retirement plan, jobs, city jobs ", :service_url => "", :is_published => false, :category_id => 6, :access_count => 0 },
  { :title => "How can I get a camping permit?",                           :content => "", :preview => "", :contact_id => nil, :tags => "camp, camping, tent, reserve, book, booking, reservation", :service_url => "", :is_published => false, :category_id => 3, :access_count => 0 },
  { :title => "How far in advance can I reserve a camping spot?",          :content => "", :preview => "", :contact_id => nil, :tags => "camp, camping, tent, reserve, book, reservation, booking", :service_url => "", :is_published => false, :category_id => 3, :access_count => 0 },
  { :title => "For how many days can I reserve a camping spot?",           :content => "", :preview => "", :contact_id => nil, :tags => "camp, camping, reserve, reservation, book, booking", :service_url => "", :is_published => false, :category_id => 3, :access_count => 0 }
])



Category.create([
  { :name => "Driver License", :access_count => 0 },
  { :name => "Motor Vehicle",  :access_count => 0 },
  { :name => "Camping",        :access_count => 0 },
  { :name => "Trailers",       :access_count => 0 },
  { :name => "License Plates", :access_count => 0 },
  { :name => "City Jobs",      :access_count => 0 }
])



Contact.create([
  { :name => "Driver Licensing", :subname => "", :number => "(808) 532-7730", :url => "http://www1.honolulu.gov/csd/vehicle/dlrequirements.htm", :address => "", :department => "", :description => "For more information about driver licensing, go to the existing Honolulu.gov website. Or contact the city’s Customer Service Department at (808) 532-7730.", :updated_at => "2012-05-18 00:36:15" },
  { :name => "Satellite City Halls", :subname => "", :number => "(808) 768-3798", :url => "http://www1.honolulu.gov/csd/satellite/index.htm", :address => "", :department => "", :description => "Visit the existing Honolulu.gov website or contact the Customer Service Department for more information about Satellite City Halls.", :updated_at => "2012-05-02 16:00:08" },
  { :name => "Registration Fees", :subname => "", :number => "(808) 768-3798", :url => "http://www3.honolulu.gov/mvrfeeinq/", :address => "", :department => "", :description => "Use our online service to find out the registration fee, or renewal fee, for your motor vehicle or trailer.", :updated_at => "2012-05-02 16:30:23" },
  { :name => "Motor Vehicle Registration", :subname => "", :number => "(808) 768-3798", :url => "http://www1.honolulu.gov/csd/vehicle/mvehicle.htm", :address => "", :department => "", :description => "For more information about your motor vehicle registration, go to the existing Honolulu.gov website. Or contact the city’s Customer Service Department at (808) 768-3798.", :updated_at => "2012-05-02 20:50:18" },
  { :name => "Trailer Registration", :subname => "", :number => "(808) 768-3798", :url => "http://www1.honolulu.gov/csd/vehicle/registering_trailers.pdf", :address => "", :department => "", :description => "For more information about renewing your trailer registration, go to the existing Honolulu.gov website. Or contact the city’s Customer Service Department at (808) 768-3798.", :updated_at => "2012-05-02 20:47:38" },
  { :name => "Transfer Ownership", :subname => "", :number => "(808) 768-3798", :url => "http://www1.honolulu.gov/csd/vehicle/mvtransfers.htm", :address => "", :department => "", :description => "", :updated_at => "2012-05-02 16:33:40" },
  { :name => "Personalized License Plates", :subname => "", :number => "(808) 768-3798", :url => "http://www4.honolulu.gov/specialplates/", :address => "", :department => "", :description => "", :updated_at => "2012-05-02 16:36:02" },
  { :name => "City Jobs", :subname => "", :number => "(808) 768-8536", :url => "http://agency.governmentjobs.com/honolulu/default.cfm?action=jobs", :address => "<br />650 South King St, 10th Floor<br />Honolulu, HI 96813<br />", :department => "", :description => "", :updated_at => "2012-05-30 05:46:53" },
  { :name => "City Employment Benefits", :subname => "", :number => "(808) 768-8540", :url => "http://www1.honolulu.gov/hr/benefits.htm", :address => "650 South King St, 10th Floor<br>Honolulu, HI 96813", :department => "", :description => "", :updated_at => "2012-05-25 01:10:26" }
])



User.create([
  { :email => "mick@codeforamerica.org", :encrypted_password => "$2a$10$j2rwmpJpExpP35fwc42OiOgv8WFYCAWs37LpDKn/Ju6.tR3rmcU1G", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 7, :current_sign_in_at => "2012-06-18 18:45:20", :last_sign_in_at => "2012-06-13 21:31:11", :current_sign_in_ip => "206.195.188.121", :last_sign_in_ip => "206.195.188.121", :is_moderator => true, :is_admin => false, :is_editor => false },
  { :email => "diana@codeforamerica.org", :encrypted_password => "$2a$10$fcfHEW1hw2Uqs0bqd3MR0eqzY89y1VViwf61ivlwf/2lamWtS0RJG", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => nil, :last_sign_in_at => nil, :current_sign_in_ip => nil, :last_sign_in_ip => nil, :is_moderator => nil, :is_admin => false, :is_editor => false },
  { :email => "honolulu@codeforamerica.org", :encrypted_password => "$2a$10$kFAXTHEMORxOU0A3KGVbS.ErC2zR0x.XhNL5F5Km2qrLSlu7ofqUe", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => "2012-06-20 00:28:08", :sign_in_count => 30, :current_sign_in_at => "2012-06-29 14:26:00", :last_sign_in_at => "2012-06-28 01:37:59", :current_sign_in_ip => "64.72.75.194", :last_sign_in_ip => "90.209.201.162", :is_moderator => true, :is_admin => false, :is_editor => false },
  { :email => "joey@codeforamerica.org", :encrypted_password => "$2a$10$5.rm9VrAWgsMP0aXlRYkteSA1GU7h4xXwCPFgHkML3WjBeDBlR51q", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2012-06-08 22:07:13", :last_sign_in_at => "2012-06-08 22:07:13", :current_sign_in_ip => "69.12.169.82", :last_sign_in_ip => "69.12.169.82", :is_moderator => nil, :is_admin => false, :is_editor => false }
])


