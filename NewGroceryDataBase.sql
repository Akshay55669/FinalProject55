CREATE TABLE public."Grocery"
(
    "Id" integer GENERATED ALWAYS AS IDENTITY,
    "Name" character varying(500) NOT NULL,
    "Price" numeric NOT NULL,
    "Image" character varying(800) NOT NULL,
	"Category" character varying(150) NOT NULL
);

ALTER TABLE public."Grocery"
    OWNER to postgres;

select * from public."Grocery"



use Grocery;


Insert into Product("Name","Price","Image","Category")
values
('Milky Mist Blueberry Fruit Yogurt 100 g (Cup)',55,'../../../assets/images/Milky Mist_Yoguat.jpg','DairyProducts'),
('Britannia Winkin Cow Classic Thick Lassi 180 ml (Tetra Pak)',25,'../../../assets/images/Britannia_Lassi.jpg','DairyProducts'),
('Amul Shrikhand Mango 500 g (Container)',90,'../../../assets/images/Amul_Shrikhand.jpg','DairyProducts'),
('Amul Taaza Homogenised Toned Milk 1 L (Tetra Pak)',63,'../../../assets/images/Amul_Tazza.png','DairyProducts'),
('Amul Butter 100 g (Carton)',50,'../../../assets/images/Amul_Butter.jpg','DairyProducts'),
('Amul fresh Cream',50,'../../../assets/images/Amul_FreshCream.jpg','DairyProducts'),
('Amul Paneer',50,'../../../assets/images/Amul_Paneer.jpg','DairyProducts'),
('Britannia Cheese',50,'../../../assets/images/Britannia_Cheese.jpg','DairyProducts'),


('Cauliflower ',25,'../../../assets/images/0_Cauliflower.jpg','Vegetables'),
('Spinach ',30,'../../../assets/images/spinach.jpg','Vegetables'),
('Beans ',30,'../../../assets/images/beans.jpg','Vegetables'),
('Brinjal ',30,'../../../assets/images/brinjal.jpg','Vegetables'),
('Cabbage ',30,'../../../assets/images/cabbage.jpg','Vegetables'),
('Cucumber ',30,'../../../assets/images/cucumber.jpg','Vegetables'),
('Lemon ',30,'../../../assets/images/lemon.jpg','Vegetables'),
('Onions',30,'../../../assets/images/onion.jpg','Vegetables'),
('Potatoes ',30,'../../../assets/images/potatoes.jpg','Vegetables'),
('Tomato ',30,'../../../assets/images/tomato.jpg','Vegetables'),


('Apple ',30,'../../../assets/images/Apple.jpeg','Fruits'),
('Banana ',30,'../../../assets/images/banana.jpg','Fruits'),
('Guava ',30,'../../../assets/images/guava.jpg','Fruits'),
('Kiwi-fruit',30,'../../../assets/images/kiwi-fruit.jpg','Fruits'),
('Mango ',30,'../../../assets/images/mango.jpg','Fruits'),
('Muskmelon ',30,'../../../assets/images/muskmelon.jpg','Fruits'),
('Oranges',30,'../../../assets/images/Oranges.jpg','Fruits'),
('Pineapple',30,'../../../assets/images/Pineapple.jpg','Fruits'),
('Strawberries',30,'../../../assets/images/strawberries.jpg','Fruits'),
('Watermelon',30,'../../../assets/images/Watermelon.jpg','Fruits'),


('Madhur Pure & Hygienic Sugar 5 kg',228,'../../../assets/images/Madhur_sugar.jpg','DailyNeeds'),
('Sugar Free Gold 300 Pellets',172,'../../../assets/images/SugarFree_Gold.jpg','DailyNeeds'),
('Tata Iodised Salt 1 kg',21,'../../../assets/images/Tata_Salt.jpg','DailyNeeds'),
('Ashirwaad Wheat Flour',250,'../../../assets/images/Wheat_flour.jpg','DailyNeeds'),
('Uttam Suji 500g',25,'../../../assets/images/Uttam_Suji.jpg','DailyNeeds'),
('Satyam Walnut Magaj 100 g',265,'../../../assets/images/Satyam_Magaj.jpg','DailyNeeds'),
('Satyam Popcorn Seeds 500 g',79,'../../../assets/images/Satyam_Popcorn.jpg','DailyNeeds'),
('Tata Sampann White Poha 500g',31,'../../../assets/images/Tata_Sampann.jpg','DailyNeeds'),
('Nutmosphere Salted Almonds 400 g',659,'../../../assets/images/Nutmosphere_Akmonds.jpg','DailyNeeds'),
('Fortune Rozana Basmati Rice 1kg',79,'../../../assets/images/Fortune_Rozana.jpg','DailyNeeds'),
('Sharbati Wheat 10 kg',349,'../../../assets/images/Sharbati_Wheat.jpg','DailyNeeds'),
('Besan 500g',21,'../../../assets/images/Besan.jpg','DailyNeeds'),
('Fortune Superfine Besan 500g',46,'../../../assets/images/Fortune_Besan.jpg','DailyNeeds'),
('Maggi 2-Minute Masala Instant Noodles 560 g',87,'../../../assets/images/Maggi_Noddles.jpg','DailyNeeds'),
('Gemini Refined Sunflower Oil 1L',165,'../../../assets/images/Gemini_Sunflower.jpg','DailyNeeds'),
('Nutrela Mini Soya Wadi / Chunks 200 g',55,'../../../assets/images/Nutrella_SoyaChunks.jpg','DailyNeeds'),


('Amul Buttermilk 500 ml (Pack)',14 ,'../../../assets/images/Amul_Buttermilk.jpg','DairyProducts'),
('Amul Garlic & Herbs Buttery Spread 100 g (Carton)',49 ,'../../../assets/images/Amul_ButterSpread.jpg','DairyProducts'),
('Amul Cow Ghee 500 ml (Pouch)', 255,'../../../assets/images/Amul_Ghee.jpg','DairyProducts'),
('Amul Mithai Mate Sweetened Condensed Milk',57 ,'../../../assets/images/Amul_MithaiMate.jpg','DairyProducts'),
('Britannia Healthy Slice Bread 450 g',32 ,'../../../assets/images/Britania_Bread.jpg','DairyProducts'),
('Britannia Pav 200 g',20 ,'../../../assets/images/Britania_Pav.jpg','DairyProducts'),
('HoneyBell Eggless Vanilla Bar Cake 25 g',12 ,'../../../assets/images/HoneyBell.jpg','DairyProducts'),
('Bio Nutrients Pure Diet Soy Paneer 500 g (Pack)',59 ,'../../../assets/images/Soy_Paneer.jpg','DairyProducts'),
('Mother Dairy Curd 1 kg (Pouch)',56 ,'../../../assets/images/Mother_DiaryCurd.jpg','DairyProducts'),
('Sunkots Italian Butter Khari 200 g',67 ,'../../../assets/images/Sunkots_Khari.jpg','DairyProducts'),


('Barbati',24 ,'../../../assets/images/barbati.jpg','Vegetables'),
('Methi',30 ,'../../../assets/images/Methi.jpg','Vegetables'),
('GreenCapsicum',19 ,'../../../assets/images/greencapsicum.jpg','Vegetables'),
('Bhindi',26 ,'../../../assets/images/bhindi.jpg','Vegetables'),
('Beetroot',15 ,'../../../assets/images/Beetroot.jpg','Vegetables'),
('Vatana',32 ,'../../../assets/images/vatana.jpeg','Vegetables'),
('Cucumber',23 ,'../../../assets/images/cucumber.jpg','Vegetables'),
('Lauki',19,'../../../assets/images/Lauki.jpg','Vegetables'),
('Gilki',10 ,'../../../assets/images/gilki.jpg','Vegetables'),



('Grapefruits', 30,'../../../assets/images/Grapefruits.jpg','Fruits'),
('GrapesRed',25 ,'../../../assets/images/GrapesRed.jpg','Fruits'),
('PomeloPink',34 ,'../../../assets/images/PomeloPink.jpg','Fruits'),
('Muskmelon',49 ,'../../../assets/images/muskmelon.jpg','Fruits'),
('Babugosha', 19,'../../../assets/images/babugosha.jpg','Fruits'),
('BeautyPears',26 ,'../../../assets/images/beauty-pears.png','Fruits'),
('Litchi', 29,'../../../assets/images/litchi.jpg','Fruits'),
('Blueberry',35 ,'../../../assets/images/blueberry.jpg','Fruits'),
('Pomegranate',38,'../../../assets/images/Pomegranate.jpg','Fruits'),
('CoconutTender',40 ,'../../../assets/images/coconut-tender.jpg','Fruits'),


('24 Mantra Organic Ragi Flour 500 g',66 ,'../../../assets/images/24Mantra.jpg','DailyNeeds'),
('Bemisal Premium Shahi Pakwan Rice 1 kg', 53,'../../../assets/images/Bemisalrice.jpg','DailyNeeds'),
('Best Farms Chana Dal 500 g',50 ,'../../../assets/images/BestChana.jpg','DailyNeeds'),
('Daawat Super Basmati Rice 1 kg',120 ,'../../../assets/images/Daawat_Super.jpg','DailyNeeds'),
('Karmiq Roasted & Salted Inshell Califionia Pistachios',430 ,'../../../assets/images/karmiq.jpg','DailyNeeds'),
('Gulab Sungold Refined Sunflower Oil 15 L',2679 ,'../../../assets/images/Gulab_Sunflower.jpg','DailyNeeds'),
('Everest Hingraj Powder 50 g', 112,'../../../assets/images/EverestHingraj.jpg','DailyNeeds'),
('India Gate Mogra Basmati Rice 10 kg',663 ,'../../../assets/images/IndiaGate_Mogra.jpg','DailyNeeds'),
('Nutrapoorna Select Lapsi 500 g',78 ,'../../../assets/images/Nutrapoorna.jpg','DailyNeeds'),
('Fortune Maida / Refined Wheat Flour 500 g', 43,'../../../assets/images/Fortune_maida.jpg','DailyNeeds');