// class Blog {
//   final String date, title, description, image;

//   Blog({required this.date, required this.title, required this.description, required this.image});
// }

// List<Blog> blogPosts = [
//   Blog(
//     date: "23 September 2020",
//     image: "assets/images/0.png",
//     title: "How Ireland’s biggest bank executed a comp lete security redesign",
//     description:
//         "Mobile banking has seen a huge increase since Coronavirus. In fact, CX platform Lightico found that 63 percent of people surveyed said they were more willing to try a new digital banking app than before the pandemic.So while you may be more inclined to bank remotely these days, cybercrime—especially targeting banks—is on the rise.",
//   ),
//   Blog(
//     date: "21 August  2020",
//     image: "assets/images/1.png",
//     title: "5 Examples of Web Motion Design That Really Catch Your Eye",
//     description:
//         "Web animation has become one of the most exciting web design trends in 2020. It breathes more life into a website and makes user interactions even more appealing and intriguing. Animation for websites allows introducing a brand in an exceptionally creative way in modern digital space. It helps create a lasting impression, make a company",
//   ),
//   Blog(
//     date: "23 September 2020",
//     image: "assets/images/2.png",
//     title: "The Principles of Dark UI Design",
//     description:
//         "Mobile banking has seen a huge increase since Coronavirus. In fact, CX platform Lightico found that 63 percent of people surveyed said they were more willing to try a new digital banking app than before the pandemic.So while you may be more inclined to bank remotely these days, cybercrime—especially targeting banks—is on the rise.",
//   ),

// ];

// ignore_for_file: non_constant_identifier_names

class Company {
  var name, desc, image, diversity, environment, social, gonver, tags, officer;

  Company(
      {required this.name,
      required this.desc,
      required this.image,
      required this.diversity,
      required this.environment,
      required this.social,
      required this.gonver,
      required this.tags,
      required this.officer});
}

List<Company> blogPosts = [
  Company(
    name: "Loop",
    desc: "Loop. is a place to see what brands and the people behind them can do in a world of mindless consumption. To see if we can fight for the Earth with hope and not hatred. To see humans shoot for the most and the best, but also stay in progress with the more and the better.",
    image: "assets/images/loop.jpg",
    diversity:[17,23,16,33,1],
    environment: 90,
    social: 20,
	gonver: 60,
    tags: ["ENV"],
    officer: [{"name": "Menuha Passerini", "role": "CEO"}, {"name": "Dardan Prifti", "role": "CFO"}, {"name": "Giusi Hoedemakers", "role": "CTO"}]
),
Company(
    name: "Ocean and Main",
    desc: "Eco friendly caftans and tunics inspired by the ocean, made on main street. Ethically sourced and locally made in Los Angeles. We're a place where People, Purpose and the Planet come first. Zero plastic, zero waste. Eco friendly caftans and tunics inspired by the ocean, made on main street.",
    image: "assets/images/ocean.jpg",
    diversity:[25, 16, 3, 32, 23],
    environment: 84,
    social: 47,
	gonver: 48,
    tags: ["ENV", "GE", "AA"],
    officer: [{"name": "Nishat Van Laren", "role": "CEO"}, {"name": "Juraj Jonkheer", "role": "CFO"}, {"name": "Jekaterina Alexandersson", "role": "CTO"}]
),
Company(
    name: "Bam's Vegan",
    desc: "Manifest Higher: Plant based recipes, tips, and more.",
    image: "assets/images/bam.jpg",
    diversity:[12, 63, 7, 13, 5],
    environment: 70,
    social: 58,
	gonver: 43,
    tags: ["AA", "ENV"],
    officer: [{"name": "Heiko Malone", "role": "CEO"}, {"name": "Alba Nieri", "role": "CTO"}]
),
Company(
    name: "Ecoslay",
    desc: "We will deliver homemade-to-order, plant-based products to your doorstep that are freshly cooked in our kitchen with kindness. We hope that you can feel the love that we pour into each sustainable pouch and that your hair falls in love with our concoctions.",
    image: "assets/images/ecoslay.jpg",
    diversity:[23, 39, 27, 7, 4],
    environment: 56,
    social: 73,
	gonver: 61,
    tags: ["LGBT", "ENV"],
    officer: [{"name": "Fitz Stein", "role": "CEO"}, {"name": "Theodore Tesař", "role": "CFO"}]
),
Company(
    name: "Candy Marcum Counseling",
    desc: "Candy Marcum has been counseling, training, writing, supervising, facilitating and advising people since 1981. Her passion, professionalism, enthusiasm and people skills have helped guide her in her life’s work as a healer. She counsels Individuals and serves as a Professional Supervisor for professionals wanting to gain full Licensure in Professional Counseling and Marriage and Family Counseling.",
    image: "assets/images/candy.jpg",
    diversity:[60, 10, 20, 10, 0],
    environment: 14,
    social: 87,
	gonver: 48,
    tags: ["LGBT", "GE"],
    officer: [{"name": "Candy Marcum", "role": "CEO"}, {"name": "Rajmund Rousseau", "role": "CFO"}]
),
Company(
    name: "Pegasus School of Liberal Arts & Sciences",
    desc: "The Pegasus School of Liberal Arts & Sciences opened its doors to students in 1997. As an open enrollment public charter school, Pegasus is part of the public school system of Texas, providing tuition free public education to its students.Serving students for 25 years, the Pegasus School of Liberal Arts & Sciences is an open-enrollment public charter school, educating its students with free tuition and public education.",
    image: "assets/images/pegasus.jpg",
    diversity:[50, 25, 20, 3, 2],
    environment: 56,
    social: 89,
	gonver: 74,
    tags: ["AA", "EDU", "GE"],
    officer: [{"name": "Sybella Franco", "role": "CEO"}, {"name": "Calixta Boothman", "role": "CFO"}, {"name": "Desiree Dresdner", "role": "CTO"}]
),
Company(
    name: "Sun and Ski Sports",
    desc: "Shop Our Huge Selection Of Skis, Snowboards, Apparel & More At Sun & Ski Sports! Brands: Agio, Alfresco, Casual Classics, Leisure Garden, Summer Classics.",
    image: "assets/images/sun.jpg",
    diversity:[50, 19, 24, 3, 4],
    environment: 84,
    social: 13,
	gonver: 21,
    tags: ["V", "GE"],
    officer: [{"name": "Muhamad Petrosyan", "role": "CEO"}, {"name": "Haifa Andringa", "role": "CFO"}, {"name": "Kian Mlakar", "role": "CTO"}]
),
Company(
    name: "Dallas Paving Company",
    desc: "Dallas Paving Company is the asphalt paving contractor of choice in Dallas – Fort Worth, since 1968. We provide professional and personalized services for commercial, industrial, municipal, and residential areas. We have gained customer trust and confidence through the use of modern proven techniques, high quality equipment and highly trained and experienced professionals.",
    image: "assets/images/Dallas.jpg",
    diversity:[17, 13, 11, 58, 1],
    environment: 11,
    social: 86,
	gonver: 72,
    tags: ["EDU", "H"],
    officer: [{"name": "Reece Quiñones", "role": "CEO"}, {"name": "Alissa Kaufman", "role": "CFO"}]
),
Company(
    name: "Quorum Business Solutions, Inc.",
    desc: "Trusted by companies of all sizes across the global energy ecosystem, we connect people, data, workflows, and systems to help energy workers achieve remarkable results. Our Quorum Energy Suite delivers innovative solutions for planning, operations, accounting, measurement, transportation, and logistics for oil and gas and renewable energy, to proudly serve more than 1,800 customers around the world.",
    image: "assets/images/Quorum.jpg",
    diversity:[96, 1, 1, 1, 1],
    environment: 31,
    social: 17,
	gonver: 96,
    tags: ["V", "EJ"],
    officer: [{"name": "Warcisław Knutsson", "role": "CEO"}, {"name": "Óskar McLain", "role": "CFO"}, {"name": "Page Di Pasqua", "role": "CTO"}]
),
Company(
    name: "Four Corners Brewing Company",
    desc: "Catch us for a beer and we’ll give you the long version. In short, we were craft beer fans that became home brewers. With a goal to turn more people on to the craft vibe, we opened a brewery in 2012. As Dallas natives, we’re proud to represent our community and extend la buena onda to you. ¡Salud!",
    image: "assets/images/Four.jpg",
    diversity:[4, 90, 1, 2, 3],
    environment: 57,
    social: 92,
	gonver: 67,
    tags: ["H", "AA"],
    officer: [{"name": "Ömer Faruk Joseph", "role": "CEO"}, {"name": "Irene Reilly", "role": "CFO"}]
),
Company(
    name: "The Movement Loft",
    desc: "The Movement Loft is an airy studio space offering a blend of adult dance yoga, sound bath and wellness classes, retreats and curated wellness events in Dallas. We are currently offering dance, yoga, stretch, meditation, sound bath and conditioning classes as well as wellness retreats around Dallas. Click below to see our schedule.",
    image: "assets/images/movement.jpg",
    diversity:[2, 5, 1, 92, 0],
    environment: 63,
    social: 98,
	gonver: 76,
    tags: ["H", "GE", "LGBT"],
    officer: [{"name": "Borislav Urbonas", "role": "CEO"}, {"name": "Shell Rao", "role": "CFO"}, {"name": "Berta Clausen", "role": "CTO"}]
),
Company(
    name: "Dallas Hope Center",
    desc: "An LGBT-focused young adult homeless shelter in the Dallas area focused on ages 18-24. Many LGBTQ+ youth face family rejection and are forced to leave their home, which leaves them disproportionately at risk of homelessness — as well as aging out of foster care with no place to go. Dallas lacks the appropriate services dedicated to these homeless youth due to an inconsistent ability to safely serve the LGBTQ+ community.",
    image: "assets/images/dallashope.jpg",
    diversity:[31, 25, 6, 34, 4],
    environment: 67,
    social: 99,
	gonver: 89,
    tags: ["LGBT", "GE", "H", "AA", "EDU"],
    officer: [{"name": "Domitille Donohue", "role": "CEO"}, {"name": "Danijela Fierro", "role": "CFO"}]	
),
Company(
    name: "Forestwood Garden Tea Room",
    desc: "Join us for lunch, and now brunch, in our Garden Tea Room while shopping our vast collection of antique treasures. You can also enjoy our delicious menu, including our cakes and bakery items, at home. Simply call the Garden Tea Room directly and place your order for pickup.",
    image: "assets/images/Forestwood.jpg",
    diversity:[47, 19, 14, 17, 3],
    environment: 25,
    social: 81,
	gonver: 87,
    tags: ["GE", "V"],
    officer: [{"name": "Triana Laine", "role": "CEO"}, {"name": "Branimir Fonda", "role": "CFO"}]	
),
Company(
    name: "The Single Parents Family Foundation",
    desc: "Our initiatives are diverse and include forms of family support programs aimed at alleviating the feelings of doubt, inadequacy in balance, effective parenting with career, financial constraints, enabling and adjusting to the new role and circumstances while helping children cope with the situation, loss, battling societal prejudice, stigma of single-parent homes, and fostering the needs of the single parent family members. Our programs help alleviate the burden of single parents by providing them with financial assistance, health services, food programs, education scholarships & community housing. If you’re a single parent who is struggling to make ends meet, we can help.",
    image: "assets/images/single.jpg",
    diversity:[25, 25, 25, 23, 2],
    environment: 27,
    social: 91,
	gonver: 88,
    tags: ["NP", "GE", "EJ"],
    officer: [{"name": "Anton Africani", "role": "CEO"}, {"name": "Leonida Berg", "role": "CFO"}, {"name": "Gwilim Samuel", "role": "CTO"}]	
),
Company(
    name: "SUSAN G KOMEN BREAST CANCER FOUNDATION, INC",
    desc: "Susan G. Komen is a breast cancer organization in the United States. Komen focuses on patient navigation and advocacy, providing resources for breast cancer patients to understand the American medical system. It has also funded research into the causes and treatment of breast cancer.",
    image: "assets/images/susan.jpg",
    diversity:[35, 27, 3, 34, 1],
    environment: 43,
    social: 64,
	gonver: 35,
    tags: ["NP", "GE", "EJ"],
    officer: [{"name": "Susan G. Komen", "role": "CEO"}, {"name": "Maxime Gorbold", "role": "CFO"}, {"name": "Lucjusz Daniel", "role": "CTO"}]	
),
Company(
    name: "Serve Southern Dallas",
    desc: "The need is great. Community leaders are on the ground, mobilizing like never before. Join us to meet the challenges faced by our neighbors in Southern Dallas. Mission: Equip, empower, and employ individuals returning home from prison, and provide support and assistance for families and communities impacted by incarceration.",
    image: "assets/images/serve.jpg",
    diversity:[37, 35, 9, 15, 4],
    environment: 37,
    social: 97,
	gonver: 87,
    tags: ["LGBT", "V", "EDU", "GE"],
    officer: [{"name": "Egídio Barta", "role": "CEO"}, {"name": "Bonita Velitchkov", "role": "CFO"}, {"name": "Jana Mancini", "role": "CTO"}]	
),
Company(
    name: "Breast Cancer Can Stick It Foundation Inc",
    desc: "To drum up funds for treatment, research, trials, and mammograms through music-centric events that ROCK, to ultimately STICK IT to breast cancer.",
    image: "assets/images/breastcancer.jpg",
    diversity:[35, 22, 11, 30, 2],
    environment: 64,
    social: 81,
	gonver: 37,
    tags: ["NP", "GE", "CANC"],
    officer: [{"name": "Ghislain Chapman", "role": "CEO"}, {"name": "Iefan Dircksens", "role": "CFO"}]	
),
Company(
    name: "Dallas Black Chamber of Commerce",
    desc: "Affectionately known as the “National Voice of Black Businesses”, The U.S. Black Chambers, Inc. (USBC) provides committed, visionary leadership, and advocacy in the realization of economic empowerment. Through the creation of resources and initiatives, we support a network of African American Chambers of Commerce and business organizations in their work of developing and growing Black enterprises.",
    image: "assets/images/commerce.jpg",
    diversity:[1, 88, 2, 5, 4],
    environment: 36,
    social: 92,
	gonver: 99,
    tags: ["AA", "EDU", "EJ"],
    officer: [{"name": "Denise Sauvageau", "role": "CEO"}, {"name": "Linda Klassen", "role": "CFO"}, {"name": "Levan Lunde", "role": "CTO"}]	
),
Company(
    name: "Pita's Plant",
    desc: "We are a small locally owned business, located in Dallas, TX. Our goal is to create unique handcrafted concrete planters, and to spread love and positivity one plant at a time! We believe in creating a high-quality yet personal product, so we make sure that every single one of our pieces is carefully hand- poured, sanded, painted, and sealed with tons of love. As a small business, our mission is to help spread kindness in the world, increase awareness about mental health, and do our part in making our world a greener place. We are committed to being an eco-friendly business, and do this by using recycled materials (such as glass bottles & CDs) to make our products.",
    image: "assets/images/pita.jpg",
    diversity:[1, 27, 11, 59, 2],
    environment: 93,
    social: 61,
	gonver: 23,
    tags: ["ENV", "H"],
    officer: [{"name": "Ramadhani Gerhardt", "role": "CEO"}, {"name": "Mudiwa Wildgrube", "role": "CFO"}, {"name": "Gowri Reilly", "role": "CTO"}]	
),
Company(
    name: "Vegan Food House",
    desc: "Cozy, cabin-like space for enjoying all-vegan versions of wings, po-boys, burgers, tacos & nachos.",
    image: "assets/images/vegan.jpg",
    diversity:[20, 46, 14, 13, 7],
    environment: 96,
    social: 61,
	gonver: 43,
    tags: ["ENV", "H"],
    officer: [{"name": "Hristofor Vladimirescu", "role": "CEO"}, {"name": "Besim Payne", "role": "CFO"}]	
)
];
