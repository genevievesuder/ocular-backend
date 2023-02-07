puts "Destroying existing seed data...🗑️"
User.destroy_all
Post.destroy_all
Definition.destroy_all
Favorite.destroy_all

puts "Creating Users..."

u1 = User.create(
    email: "akeyeguy@msn.com", 
    username: "ak_eye_guy", 
    password: "password",
    education: "Pacific university College of Optometry Alumni", 
    title: "Doctor of Optometry", 
    field: "Optometry", 
    about: "Optometrist by weekday. Father, fisherman, & beer enthusiast by weekend.")

u2 = User.create(
    email: "bellad6@gmail.com", 
    username: "belladonna", 
    password: "password",
    education: "University of California - Berkeley", 
    title: "Student of Optometry", 
    field: "Pediatric Optometry & Vision Therapy", 
    about: "I love all things eyes, optometry, and vision!! My passion is working with the youth & educating people on eye health and disease prevention. Always down for a study session. :)")

u3 = User.create(
    email: "aurors@gmail.com", 
    username: "ak_optic_chic", 
    password: "password",
    education: "U of O", 
    title: "PUCO first year student", 
    field: "Optometry", 
    about: "First year student starting this fall at PU, would love any advice & recommendations from other optometry students and graduates.")

u4 = User.create(
    email: "krune49@hotmail.com", 
    username: "killianrune49", 
    password: "password",
    education: "Nova Southeastern University", 
    title: "3rd year student", 
    field: "Neuro-optometry", 
    about: "Born and raised in Austin, TX. Currently studying neuro-opt at NSU 🤘")

u5 = User.create(
    email: "ors@gmail.com", 
    username: "orion_robert", 
    password: "password",
    education: "Duke University Eye Center", 
    title: "", 
    field: "Opthamology", 
    about: "Hi")

u6 = User.create(
    email: "sumiregalilahi@icloud.com", 
    username: "sumire_gee", 
    password: "password",
    education: "Chicago College of Optometry", 
    title: "Doctor of Optometry",
    field: "Geriatric optometry", 
    about: "")

u7 = User.create(
    email: "meow@gmail.com", 
    username: "scholarlyfireplace", 
    password: "password",
    education: "Farmingdale State", 
    title: "freshman at FSC", 
    field: "", 
    about: "Undeclared freshman curious about an education/career in optometry")

u8 = User.create(
    email: "hello@hotmail.com", 
    username: "user3836479", 
    password: "password",
    education: "", 
    title: "", 
    field: "", 
    about: "")

puts "Creating Posts..."

p1 = Post.create(
    title: "Interesting patient case", 
    content: "Friday's patient: 51 YO healthy M presents with bilateral chronic angle closure glaucoma CATS IOP 38 OU. Large clumps of non-adherent WBCs(?) in A/C and anterior Iris stromal fissures, bilaterally. No mass on U/S. Uveitis Masquerade Syndrome? leukemia infiltrates?", 
    image: "https://preview.redd.it/136w17uln4ga1.jpg?width=640&crop=smart&auto=webp&v=enabled&s=7a7d90c942abc2d5ebb1afbeaf76f68b9c3750cd", 
    user: u1)

p2 = Post.create(
    title: "starting optometric tech position", 
    content: "hi everyone! ill be starting an optometric tech position soon and im wondering if anyone has any tips/advice before i start or chime in w their experience. :) i have no prior experience in optometry but the field has always interested me and im super excited to learn. thank u so much! book recs are also greatly appreciated.", 
    image: "", 
    user: u7)

p3 = Post.create(
    title: "Scope of practice and future of optometry", 
    content: "Hello everyone, One thing that I've been thinking a lot about lately is the scope of practice for optometry.
    In comparison to the health care fields of practice we have med school, optometry, dentistry and a few other schools as well. With dentistry a dentist goes through 4 years of dental school and then can practice as a general dentist but then they also practice dental surgery like implants. Technically, (or so I thought) a dentist can only do implants if they do med school after dental school and get an MD DDS. There is a pathway where after dental school they do three years of med school and then go into OMFS type of surgery which includes implants. But technically general dentists do it too. For optometry the biggest hurdle we face in growing our profession is the medical counter part of Ophthalmology. The biggest argument we face with adding lasers and surgical procedures to our career is that we aren't trained enough. This is true because an optometrist does 4 years of optometry school and then practices general optometry but then we are trying to add surgery as well, why not increase the length of our training? OMFS originally required dentists to go through additional training, why not add to our optometry field. We can have a pathway that allows those with OD degrees to also do three of med schools. You can take the Step exams and the USML but skip the clerkships and then do residencies where you learn more about surgery. Then you can practice surgery. There is no pathway that exists currently. Yes a dentist can do implants without the med school pathway but that pathway does exist. I think this pathway will go a long way in increasing our credibility worldwide. The biggest argument we face is that we aren't trained enough but we can change that. This doesn't take away from Ophthalmology the same way OMFS doesn't take away from plastic surgery. It also gives another pathway to those who wish to explore eye health with the traditional med school pathway. Schools that have medical schools and optometry schools should consider adding pathways to increase the scope of our field. This makes more sense then just having 4 years of optometry and certificates when it comes to surgery.", 
    image: "", 
    user: u6)

p4 = Post.create(
    title: "How do *you* prescribe ADDs for presbyopes", 
    content: "What's your prescribing philosophy for presbyopes? There is so much testing you can do for ADD determination, but I find that prescribing age-estimated adds works just as well as NRA/PRA balancing, FCC, etc., the majority of the time. So much so that I virtually never do near testing in the phoropter anymore. Occasionally, for patients that I know have unusual working distances (especially concert musicians), I'll stick it in a trial frame and add plus until they're happy.
    Side question — who here has ever prescribed different ADDs between eyes? And if so, how'd that go for you?", 
    image: "", 
    user: u5)

p5 = Post.create(
    title: "Nbeo part 2 tmod", 
    content: "Hi. I'm looking for some guidance. I passed nbeo part 1 PAM but failed the TMOD section. Anyone have guidance on how to study for the section/ what seemed to work. Thank you!", 
    image: "https://media4.giphy.com/media/P8X4lemg5Iphe/giphy.gif", 
    user: u8)

p6 = Post.create(
    title: "What do you use and why? - tonometry measuring devices.", 
    content: "What intra-ocular measuring device do you use in your practice? My practice has a Nidek non-contact tonometer, an I-Care 100, Perkins applanation tonometer and a Pascal dynamic contour tonometry. I mostly use non-contact because its fast and I get an auto-refraction. I-care 100 if I need to remeasure IOP or px cannot access the autoref machine/machine could not measure IOP. I am thinking of utilising the Pascal dynamic contour tonometry more as it does not get influeced by corneal biometry unlike all the other methods listed above. The hospital seems to rely on tonopen or Goldman applanation tonometry. So perhaps for best patiebt outcomes, I should get one of these devices so that my measurements are more in line with the hospitals measurement. So what do you use to measure intra-ocular pressure and why?", 
    image: "https://i.ebayimg.com/images/g/joYAAOSwV5BjjmIl/s-l1600.jpg", 
    user: u1)

puts "Creating Definitions..."

d1 = Definition.create(
    term: "Amblyopia", 
    definition: "When vision in one or both eyes does not develop properly during childhood. It is sometimes called lazy eye. Amblyopia is a common problem in babies and young children.", 
    category: "Vision Impairments")

d2 = Definition.create(
    term: "Aqueous Humor", 
    definition: "The clear liquid inside the front part of the eye. It nourishes the eye and keeps it inflated. The eye constantly produces a small amount of aqueous humor while an equal amount flows out through the trabecular meshwork in the drainage angle.", 
    category: "Anatomy")
    
d3 = Definition.create(
    term: "Astigmatism", 
    definition: "An imperfection in the curvature of the eye's cornea or lens.", 
    category: "Vision Impairments")
    
d4 = Definition.create(
    term: "Blepharitis", 
    definition: "Inflammation of the eyelids which causes them appear red, swollen, or feel like they are burning or sore. Blepharitis is very common, especially among people who have oily skin, dandruff or rosacea.", 
    category: "Infections & Irritations")
    
d5 = Definition.create(
    term: "Cataracts", 
    definition: "A cataract is when your eye's natural lens becomes cloudy. Proteins in your lens break down and cause things to look blurry, hazy or less colorful.", 
    category: "Vision Impairments")
    
d6 = Definition.create(
    term: "Ciliary Body", 
    definition: "A part of the uvea. The ciliary body produces aqueous humor.", 
    category: "Anatomy")
    
d7 = Definition.create(
    term: "Conjunctivitis", 
    definition: "Often called pink eye, conjunctivitis is when the conjunctiva is irritated by an infection or allergies. Your eyes are red and swollen (inflamed), and sometimes they have a sticky discharge. You can have conjunctivitis in one or both eyes. Some types of pink eye are very contagious.", 
    category: "Infections & Irritations")
    
d8 = Definition.create(
    term: "Dilating Eye Drops", 
    definition: "Dilating eye drops (Tropicamide) enlarge the pupils and keep them from getting smaller to assist in proper examination or ocular procedures when shining light in the eyes", 
    category: "Drugs")
    
d9 = Definition.create(
    term: "Endothelium", 
    definition: "The inner layer of cells that make up the cornea. These cells remove extra fluid from the cornea", 
    category: "Anatomy")
    
d10 = Definition.create(
    term: "Farsightedness (Hyperopia)", 
    definition: "Farsightedness (also called hyperopia) is a refractive error. This is when the eye does not refract—or bend—light properly. Generally, a farsighted person sees distant objects clearly, but near vision is blurry.", 
    category: "Vision Impairments")
    
d11 = Definition.create(
    term: "Fuchs' Dystrophy", 
    definition: "Fuchs' dystrophy is a disease of the cornea. It is when cells in the corneal layer called the endothelium gradually die off. These cells normally pump fluid from the cornea to keep it clear. When they die, fluid builds up and the cornea gets swollen and puffy. Vision becomes cloudy or hazy.", 
    category: "Diseases and Syndromes")
    
d12 = Definition.create(
    term: "Glaucoma", 
    definition: "Glaucoma is a disease that damages the eye's optic nerve. It usually happens when fluid builds up in the front part of the eye. That extra fluid increases the pressure in the eye, damaging the optic nerve.", 
    category: "Diseases and Syndromes")
    
d13 = Definition.create(
    term: "Gonioscopy", 
    definition: "Gonioscopy is a painless exam in which an ophthalmologist uses to check a part of the eye called the drainage angle. This area is at the front of the eye between the iris and the cornea. It is where fluid called aqueous humor naturally drains out of the eye. The gonioscopy is performed to check to see if this drainage angle is functioning properly.", 
    category: "Exams")
    
d14 = Definition.create(
    term: "Hemangioma", 
    definition: "A hemangioma is a non-cancerous (benign) tumor caused by abnormal growth of blood vessels. Hemangiomas can occur anywhere on the body, but are most commonly found on the face and neck. While they can be present at birth, hemangiomas more often appear during the first six months of life.", 
    category: "Abnormalities")
    
d15 = Definition.create(
    term: "Hyphema", 
    definition: "A hyphema is when blood collects inside the front of the eye. This happens between the cornea (the clear, dome-shaped window at the front of the eye) and the iris (the colored part of the eye). The blood may cover part or all of the iris and the pupil (the round, dark circle in the middle of your eye). If you have a hyphema, your vision might be partly or totally blocked in that eye.", 
    category: "Injuries")
    
d16 = Definition.create(
    term: "Iridocorneal Endothelial Syndrome (ICE)", 
    definition: "Iridocorneal endothelial syndrome (ICE) is a rare eye condition. The three main features of ICE include: swelling of the cornea, changes in the iris, and a form of glaucoma.", 
    category: "Diseases and Syndromes")
    
d17 = Definition.create(
    term: "Keratoconus", 
    definition: "When the cornea thins out and bulges like a cone. Changing the shape of the cornea brings light rays out of focus. As a result, vision is blurry and distorted.", 
    category: "Abnormalities")
    
d18 = Definition.create(
    term: "Lucentis", 
    definition: "The brand name for Ranibizumab, Lucentis is a drug used to treat wet age-related macular degeneration (AMD). It is also used to treat diabetic eye disease and other problems of the retina. It is injected into the eye to help slow vision loss from these diseases.", 
    category: "Drugs")
    
d19 = Definition.create(
    term: "Macular Edema", 
    definition: "Often occuring in Diabetic patients, Macular edema happens when fluid builds up in the macula, causing swelling. This can distort vision, making things look blurry and colors look washed out. Without treatment, macular edema can lead to permanent vision loss.", 
    category: "Abnormalities")
    
d20 = Definition.create(
    term: "Myopia", 
    definition: "Nearsightedness (myopia) is when close-up objects look clear but distant objects are blurry. For instance, you can read a map clearly but have trouble seeing well enough to drive a car", 
    category: "Vision Impairments")
    




puts "Creating Favorites..."

f1 = Favorite.create(
    user: u1,
    definition: d1)

f2 = Favorite.create(
    user: u1,
    definition: d4)

f3 = Favorite.create(
    user: u1,
    definition: d12)

f4 = Favorite.create(
    user: u2,
    definition: d19)

f5 = Favorite.create(
    user: u2,
    definition: d8)

f6 = Favorite.create(
    user: u3,
    definition: d16)

f7 = Favorite.create(
    user: u3,
    definition: d13)

f8 = Favorite.create(
    user: u4,
    definition: d2)

f9 = Favorite.create(
    user: u5,
    definition: d15)

f10 = Favorite.create(
    user: u8,
    definition: d3)



puts "Seeding complete!🌱"