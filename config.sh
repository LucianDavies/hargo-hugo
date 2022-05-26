MY_PATH=$(dirname "$0")

cat << EOF > "${MY_PATH}/config.toml"
######################## default configuration ####################
baseURL = ""
languageCode = "en"
title = "Hargo | Hugo Ecommerce Site"
theme = "hargo-hugo"
summaryLength = "20"
paginate = 10
disqusShortname = ""

############################# Plugins ##############################
[params.plugins]

  # CSS Plugins
  [[params.plugins.css]]
  link = "plugins/bootstrap/bootstrap.min.css"
  [[params.plugins.css]]
  link = "plugins/slick/slick.css"
  [[params.plugins.css]]
  link = "plugins/themify-icons/themify-icons.css"
  [[params.plugins.css]]
  link = "scss/style.scss"

  # JS Plugins
  [[params.plugins.js]]
  link = "plugins/jQuery/jquery.min.js"
  [[params.plugins.js]]
  link = "plugins/bootstrap/bootstrap.min.js"
  [[params.plugins.js]]
  link = "plugins/slick/slick.min.js"
  [[params.plugins.js]]
  link = "plugins/google-map/gmap.js"
  [[params.plugins.js]]
  link = "js/script.js"


############################## navigation ###############################
[menu]

  [[menu.main]]
  name = "Products"
  URL = "products/"
  weight = 1

  [[menu.main]]
  name = "Blog"
  URL = "blog/"
  weight = 2

  [[menu.main]]
  name = "FAQ"
  URL = "faq/"
  weight = 3

  [[menu.main]]
  name = "Contact"
  URL = "contact/"
  weight = 4

  ############# footer menu #############
  [[menu.footer]]
  name = "Products"
  URL = "products/"
  weight = 1

  [[menu.footer]]
  name = "Blog"
  URL = "blog/"
  weight = 2

  [[menu.footer]]
  name = "FAQ"
  URL = "faq/"
  weight = 3

  [[menu.footer]]
  name = "Terms & Conditions"
  URL = "terms-conditions/"
  weight = 4

  [[menu.footer]]
  name = "Contact"
  URL = "contact/"
  weight = 5


#################### default parameters ################################
[params]
logo = "images/logo.png"
home = "Home"
# Meta data
description = "This is meta description"
author = "Themefisher"
# google map
gmapAPI = "https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"
mapLatitude = "51.5223477"
mapLongitude = "-0.1622023"
mapMarker = "images/marker.png"
# Google Analitycs
googleAnalitycsID = "" # Your ID
# Contact Information
mobile = "0124857985320"
email = "demo@email.com"
location = "Dhaka, Bangladedsh"
# copyright
copyright = "| Copyright &copy; 2019 [Gethugothemes](https://gethugothemes.com) All Rights Reserved |"
# Snipcart Credentials
snipcartApiKey = "M2E5YjA3NjMtYzRiYS00YzVjLWEyYWYtNDY5ZDI0OWZhYjg5"
currencySymbol = "$"

  # Preloader
  [params.preloader]
  enable = false
  preloader = "" # use .png , .svg or .gif format

  # Product Rating
  # it works with https://rating-widget.com/ , you will get the ID and publicKey after creating your account there.
  [params.rating]
  enable = false
  websiteID = "444334"
  publicKey = "811cf0927332bf51f2e12f84608594ac"

  # Social Site
  [[params.social]]
  icon = "ti-facebook"
  link = "#"

  [[params.social]]
  icon = "ti-twitter-alt"
  link = "#"

  [[params.social]]
  icon = "ti-youtube"
  link = "#"

  [[params.social]]
  icon = "ti-instagram"
  link = "#"

  [[params.social]]
  icon = "ti-pinterest"
  link = "#"

  # Contact Form
  [params.contact]
  enable = false
  formAction = "#" # contact form works with formspree.io

[build]
  writeStats = true
EOF


cat << EOF > "${MY_PATH}/data/contact.yml"
############################# contact info ################
contact:
  enable : false
  # office
  office:
    title : "Central Office"
    content : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna"
    # other information comes from "config.toml"

  # opennig hour
  opennigHour:
    title : "Opening Hours"
    dayTimeList:
      - dayTime : "Monday: 9:00 – 19:00"
      - dayTime : "Tuesday: 9:00 – 19:00"
      - dayTime : "Wednesday: 9:00 – 19:00"
      - dayTime : "Thursday: 9:00 – 19:00"
      - dayTime : "Friday: 9:00 – 19:00"
      - dayTime : "Saturday: 9:00 – 19:00"
      - dayTime : "sunday: 9:00 – 19:00"

####################### google map ########################
map:
  enable: false
EOF

cat << EOF > "${MY_PATH}/data/faq.yml"
faqItem:
  - title : Will updates also be free?
    content : Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque praesentium nisi officiis maiores quia sapiente totam omnis vel sequi corporis ipsa incidunt reprehenderit recusandae maxime perspiciatis iste placeat architecto, mollitia delectus ut ab quibusdam. Magnam cumque numquam tempore reprehenderit illo, unde cum omnis vel sed temporibus, repudiandae impedit nam ad enim porro, qui labore fugiat quod suscipit fuga necessitatibus. Perferendis, ipsum? Cum, reprehenderit. Sapiente atque quam vitae, magnam dolore consequatur temporibus harum odit ab id quo qui aspernatur aliquid officiis sit error asperiores eveniet quibusdam, accusantium enim recusandae quas ea est! Quaerat omnis, placeat vitae laboriosam doloremque recusandae mollitia minima!

  - title : Discounts for students and Non Profit Organizations?
    content : Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque praesentium nisi officiis maiores quia sapiente totam omnis vel sequi corporis ipsa incidunt reprehenderit recusandae maxime perspiciatis iste placeat architecto, mollitia delectus ut ab quibusdam. Magnam cumque numquam tempore reprehenderit illo, unde cum omnis vel sed temporibus, repudiandae impedit nam ad enim porro, qui labore fugiat quod suscipit fuga necessitatibus. Perferendis, ipsum? Cum, reprehenderit. Sapiente atque quam vitae, magnam dolore consequatur temporibus harum odit ab id quo qui aspernatur aliquid officiis sit error asperiores eveniet quibusdam, accusantium enim recusandae quas ea est! Quaerat omnis, placeat vitae laboriosam doloremque recusandae mollitia minima!

  - title : I need something unique. Can you make it?
    content : Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque praesentium nisi officiis maiores quia sapiente totam omnis vel sequi corporis ipsa incidunt reprehenderit recusandae maxime perspiciatis iste placeat architecto, mollitia delectus ut ab quibusdam. Magnam cumque numquam tempore reprehenderit illo, unde cum omnis vel sed temporibus, repudiandae impedit nam ad enim porro, qui labore fugiat quod suscipit fuga necessitatibus. Perferendis, ipsum? Cum, reprehenderit. Sapiente atque quam vitae, magnam dolore consequatur temporibus harum odit ab id quo qui aspernatur aliquid officiis sit error asperiores eveniet quibusdam, accusantium enim recusandae quas ea est! Quaerat omnis, placeat vitae laboriosam doloremque recusandae mollitia minima!

  - title : Is there any documentation and support?
    content : Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque praesentium nisi officiis maiores quia sapiente totam omnis vel sequi corporis ipsa incidunt reprehenderit recusandae maxime perspiciatis iste placeat architecto, mollitia delectus ut ab quibusdam. Magnam cumque numquam tempore reprehenderit illo, unde cum omnis vel sed temporibus, repudiandae impedit nam ad enim porro, qui labore fugiat quod suscipit fuga necessitatibus. Perferendis, ipsum? Cum, reprehenderit. Sapiente atque quam vitae, magnam dolore consequatur temporibus harum odit ab id quo qui aspernatur aliquid officiis sit error asperiores eveniet quibusdam, accusantium enim recusandae quas ea est! Quaerat omnis, placeat vitae laboriosam doloremque recusandae mollitia minima!

  - title : Any refunds?
    content : Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque praesentium nisi officiis maiores quia sapiente totam omnis vel sequi corporis ipsa incidunt reprehenderit recusandae maxime perspiciatis iste placeat architecto, mollitia delectus ut ab quibusdam. Magnam cumque numquam tempore reprehenderit illo, unde cum omnis vel sed temporibus, repudiandae impedit nam ad enim porro, qui labore fugiat quod suscipit fuga necessitatibus. Perferendis, ipsum? Cum, reprehenderit. Sapiente atque quam vitae, magnam dolore consequatur temporibus harum odit ab id quo qui aspernatur aliquid officiis sit error asperiores eveniet quibusdam, accusantium enim recusandae quas ea est! Quaerat omnis, placeat vitae laboriosam doloremque recusandae mollitia minima!
EOF

cat << EOF > "${MY_PATH}/data/homepage.yml"
############################ banner ##########################
banner:
  enable : true
  title : "Best Beauty Cream For Your Skin"
  content : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed dia"
  image : "images/banner.png"
  # button
  button:
    enable : true
    label : "All Products"
    link : "products/"
  # demo video
  video:
    enable : false
    videoURL : "https://www.youtube.com/embed/wf4F2-9UXUo"

########################## About ##############################
about:
  enable : false
  title : "About Our Product"
  content : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
          clita kasd gubergren,"
  image : "images/about.png"


###################### Call to action ########################
cta:
  enable : false
  title : "Buy X Get One Free Taba Cream"
  content : "Available for limited time only. Grab one while you still can!"
  image : "images/cta.png"
  overlayImage : "images/cta-overlay.png"
  button:
    label : "All Products"
    link : "products/"

######################## raw material #######################
material:
  enable : false
  title : "Ingredients Of Our Products"
  subtitle : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
          dol."
  materialItem:
    # material item loop
    - title : "Matcha Seeds"
      image : "images/material/material-1.png"
      content : "Lorem ipsum dolor sit amet,be consetetur sadipscing elitr, sed diam nonumy eirmod tem"
      
    # material item loop
    - title : "Aloe Vera"
      image : "images/material/material-2.png"
      content : "Lorem ipsum dolor sit amet,be consetetur sadipscing elitr, sed diam nonumy eirmod tem"
      
    # material item loop
    - title : "Turmeric"
      image : "images/material/material-3.png"
      content : "Lorem ipsum dolor sit amet,be consetetur sadipscing elitr, sed diam nonumy eirmod tem"
      
    # material item loop
    - title : "Tulshi leaf"
      image : "images/material/material-4.png"
      content : "Lorem ipsum dolor sit amet,be consetetur sadipscing elitr, sed diam nonumy eirmod tem"

########################### Advantage #########################
advantage:
  enable : false
  title : "Advantages Of Using <br> Our Product"
  subtitle : "Lorem ipsum dolor sit amet, da decal consetetur<br> sadipscing elitr, sed diam nonumya eirmod"
  image : "images/advantage.png"
  advantageList:
    # advantage list loop
    - listItem : "Extremely lightweight"
    - listItem : "Excellent breathability"
    - listItem : "Can increase Cell activation"
    - listItem : "Glowing Skin In 7 Days"
    - listItem : "Increasing Glow Of Face"
    - listItem : "More Beautiful Face Skin"


######################## Promo Video ##########################
video:
  enable : false
  title : "How To Use This Product?"
  content : "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et
          dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et."
  videoThumb : "images/video-thumb.jpg"
  videoURL : "https://www.youtube.com/embed/wf4F2-9UXUo"


######################## Products #############################
products:
  enable : true
  title : "Products List"
  # product item comes from "content/products"


########################## Testimonial ########################
testimonial:
  enable : false
  title : "What People Are Saying <br> About Our Product"
  testimonialItem:
    # testimonial item loop
    - name : "Angelo Perara"
      image : "images/clients/client-1.jpg" # size 100px*100px
      designation : "CEO, Dialogue Broad Band"
      content : "Lorem ipsum dolor sit amet, <br> consetetur sadipscing elitr, diam <br> nonumy eirmod tempor"
      rating : "five" # rating star, one to five
      
    # testimonial item loop
    - name : "Riya Ventila"
      image : "images/clients/client-2.jpg" # size 100px*100px
      designation : "CEO, Dialogue Broad Band"
      content : "Lorem ipsum dolor sit amet, <br> consetetur sadipscing elitr, diam <br> nonumy eirmod tempor"
      rating : "three" # rating star, one to five
      
    # testimonial item loop
    - name : "john Doe"
      image : "images/clients/client-3.jpg" # size 100px*100px
      designation : "CEO, Dialogue Broad Band"
      content : "Lorem ipsum dolor sit amet, <br> consetetur sadipscing elitr, diam <br> nonumy eirmod tempor"
      rating : "five" # rating star, one to five
      
    # testimonial item loop
    - name : "Riya Ventila"
      image : "images/clients/client-2.jpg" # size 100px*100px
      designation : "CEO, Dialogue Broad Band"
      content : "Lorem ipsum dolor sit amet, <br> consetetur sadipscing elitr, diam <br> nonumy eirmod tempor"
      rating : "four" # rating star, one to five
EOF
