## NSFW Random Prompt Generator by toolkit anon
Pretty much as the toolkit's endpoint but with python.

### Usage
- Create a .py file and paste the code from below
- Edit the code below at the very bottom and change 16 to number of prompts you want
- Create an empty prompts.txt file
- Open CMD in directory
- python file.py
- The generated prompts can be read via the web-ui's read from prompt script
- Enjoy
 
You may also want to think about changing up the prompt structure and adding your own prompts to the lists below. 

### Updates
***14/10/22 - Removed "mac and cheese" from artStyle. I thought it was funny at first but too much mac and cheese popping up...*** 

### Code
```
import random

beautifier = ("aesthetic", "esthetic", "aesthetical", "esthetical",
              "attractive", "beauteous", "bonny", "bonnie", "comely", "cute", "drop-dead", "fair",
              "fetching", "good", "good-looking", "goodly", "gorgeous", "handsome", "knockout", "likely",
              "lovely", "lovesome", "pretty", "ravishing", "seemly", "sightly", "stunning", "taking",
              "well-favored", "alluring", "appealing", "charming", "cunning", "delightful", "engaging",
              "fascinating", "glamorous", "glamourous", "prepossessing", "elegant", "exquisite", "glorious",
              "Junoesque", "magnificent", "resplendent", "splendid", "statuesque", "sublime", "superb",
              "flawless", "perfect", "radiant", "dainty", "delicate", "personable", "pleasant",
              "presentable", "chocolate-box", "prettyish", "desirable", "dishy", "dollish", "foxy", "hot",
              "luscious", "nubile", "pulchritudinous", "seductive", "sexy", "toothsome", "hunky", "studly",
              "arresting", "eye-catching", "flamboyant", "flashy", "glossy", "showstopping", "showy",
              "slick", "snazzy", "splashy", "striking", "zingy", "photogenic", "telegenic");

accessory = ("nothing", "glasses", "stockings", "pony tail", "freckles",
             "cybernetic augments", "choker and eyeshadow", "bodysuit", "swimsuit",
             "mecha suit");

bSize = ("large breasts", "medium breasts", "small breasts");

expression = ("surprised expression", "angry expression", "crying expression",
              "bored expression", "excited expression");

perp = ("a tentacle monster", "a group of men", "a group of aliens",
        "a muscly man", "a demon", "a slime monster", "a water elemental",
        "a black hole with tentacles");

hairColor = ("white hair", "black hair", "purple hair", "pink hair",
             "red hair");

hairLength = ("long", "medium", "short");

eyeColor = ("hazel", "green", "brown", "black", "grey", "purple", "pink",
            "red", "silver", "yellow", "Sapphire", "turquoise", "amethyst", "aquamarine", "ruby", "coral",
            "peach", "gold", "dark brown", "jade", "teal", "ice blue", "light blue", "blue", "grey-blue",
            "amber");

place = ("ancient greece", "far out space", "alien planet", "japan",
         "china", "korea", "spaceship", "american farm", "hell",
         "fantasy paladin", "temple", "high school", "locker room", "bedroom", "dungeon", "castle", "sc-fi setting",
         "europe",
         "public park", "church", "fantasy rpg");

style = ("missionary", "doggy-style", "blowjob", "vaginal", "pov", "deepthroat", "bukakke", "group sex");

type = ("catgirl", "marble statue", "astronaut", "young innocent", "hot",
        "slut", "beautiful", "princess", "gothic", "emo", "succubus", "clown", "medusa", "orc",
        "teacher", "librarian", "schoolgirl", "milf", "prostitute", "elf eared", "galactic", "knight",
        "ninja", "mage", "cyborg");

artStyle = ("60s kitsch and psychedelia", "abstract illusionism", "ambrotype",
            "american romanticism", "anaglyph effect", "anaglyph filter", "blueprint", "brutalism",
            "chillwave", "cottagecore", "crayon art", "cyanotype", "dark academia", "digital art",
            "dutch golden age", "fractalism", "fresco", "futuresynth", "german romanticism", "glitch art",
            "gothic art", "graffiti", "hyperrealism", "infrared", "Lovecraftian", "magic realism",
            "multiple exposure", "narrative realism", "photorealism", "realism", "retrowave",
            "Sabattier effect", "Sabattier filter", "still life", "street art", "surrealism", "synthwave",
            "vaporwave", "afrofuturism", "anime", "avant-garde", "calotype", "camcorder effect", "cubism",
            "daguerreotype", "doge", "expressionism", "figurativism", "fisheye lens", "gothic",
            "holography", "impressionism", "inverted colors", "long exposure", "macro lens", "manga", "modernism",
            "naturalism", "optical illusion", "positivism",
            "stuckism", "symbolism", "telephoto lens", "the matrix", "tilt-shift", "tintype", "tonalism");

details = ("Elaborate", "Ornate", "Intricate", "Detailed", "Fine", "Refined",
           "Complicated", "Convoluted", "Extensive", "Exhaustive", "Far-reaching", "Informative",
           "In-depth", "Thorough", "Step-by-step", "Exact", "Precise", "Exquisite", "Lavish",
           "Sumptuous", "opulent", "luxurious", "Intricately designed", "Grandiose", "Stately",
           "Splendid", "Magnificent", "Precious", "Dazzling", "Imperceptible detail");

artists = ("Aaron Douglas", "Aaron Horkey", "Aaron Jasinski", "Abbott Fuller Graves", "Abed Abdi", "Abigail Larson",
           "Adam Martinakis", "Adolf HirÃ©my-Hirschl", "Adolph Menzel", "Adonna Khare", "Adrian Ghenie", "Adrian Smith",
           "Adrian Tomine", "Affandi", "Aggi Erguna", "Agnes Lawrence Pelton", "Akihiko Yoshida", "Akira Toriyama",
           "Al Feldstein", "Al Williamson", "Alan Lee", "Alan Moore", "Alan Schaller", "Albert Bierstadt",
           "Albert Koetsier", "Albert Lynch", "Albert Watson", "Alberto Giacometti", "Alberto Vargas", "Albrecht Anker",
           "Albrecht Durer", "Alec Soth", "Alejandro Burdisio", "Aleksi Briclot", "Alena Aenami", "Alex Andreev",
           "Alex Figini", "Alex Grey", "Alex Horley", "Alex Katz", "Alex Maleev", "Alexander Archipenko",
           "Alexander Jansson", "Alexander Milne Calder", "Alexandr Averin", "Alexandre Cabanel", "Alexandre Calame",
           "Alexej von Jawlensky", "Alexey Kurbatov", "Alfred Kubin", "Alfred Parsons", "Alice Bailly", "Alice Neel",
           "Alison Bechdel", "Carne Griffiths", "David Inshaw", "Thomas Benjamin Kennington", "Thomas Blackshear",
           "Thomas Cole", "Thomas Dodd", "Thomas Eakins", "Thomas Gainsborough", "Thomas Kinkade", "Thomas Visscher",
           "Vincent Tanguay", "A.J.Casson", "Aaron Siskind", "Abbott Handerson Thayer", "Abdel Hadi Al Gazzar",
           "Abraham Mintchine", "Abraham Pether", "Abram Efimovich Arkhipov", "Adam Elsheimer", "Adam Hughes",
           "Adam Paquette", "Adi Granov", "Adolph Gottlieb", "Adriaen van Ostade", "Adriaen van Outrecht",
           "Adrian Donoghue", "Adrian Paul Allinson", "Adrianus Eversen", "Afarin Sajedi", "Agnes Cecile",
           "Agnes Martin", "Agostino Arrivabene", "Agostino Tassi", "Ai Weiwei", "Ai Yazawa", "Akos Major",
           "Akseli Gallen-Kallela", "Al Capp", "Alain Laboile", "Alan Bean", "Alan Davis", "Alan Kenny", "Alan Parry",
           "Alasdair McLellan", "Alastair Magnaldo", "Alayna Lemmer", "Albert Benois", "Albert Bloch",
           "Albert Dubois-Pillet", "Albert Eckhout", "Albert Edelfelt", "Albert Gleizes", "Albert Goodwin",
           "Albert Joseph Moore", "Albert Kotin", "Albert Marquet", "Albert Pinkham Ryder", "Albert Robida",
           "Albert Servaes", "Albert Tucker", "Alberto Biasi", "Alberto Burri", "Alberto Magnelli", "Alberto Seveso",
           "Alberto Sughi", "Alejandro Jodorowsky", "Aleksey Savrasov", "Alessandro Allori", "Alessandro Barbucci",
           "Alessandro Gottardo", "Alessio Albi", "Alex Alemany", "Alex Colville", "Alex Garant", "Alex Gross",
           "Alex Hirsch", "Alex Howitt", "Alex Petruk", "Alex Prager", "Alex Ross", "Alex Russell Flint",
           "Alex Schomburg", "Alex Timmermans", "Alex Toth", "Alexander Bogen", "Alexander Fedosav",
           "Alexander Kanoldt", "Alexander McQueen", "Alexander Millar", "Alexandre Antigna", "Alma Thomas",
           "Alphonse Mucha", "Alphonse Osbert", "Alvar Aalto", "Alyssa Monks", "Amadou Opa Bathily", "Amanda Clark",
           "Ambrosius Bosschaert", "AmÃ©dÃ©e Guillemin", "Amedeo Modigliani", "Amiet Cuno", "Amir Zand",
           "Anato Finnstark", "Anders Zorn", "Andre Kohn", "AndrÃ© Lhote", "AndrÃ© Masson", "Andrea Kowch",
           "Andreas Achenbach", "Andreas Franke", "Andreas Gursky", "Andreas Rocha", "Andrew Atroshenko",
           "Andrew Ferez", "Andrew Robinson", "Andrew Wyeth", "Android Jones", "Andy Goldsworthy", "Andy Warhol",
           "Angela Sung", "Angus McKie", "Anish Kapoor", "Anka Zhuravleva", "Anna Dittmann", "Anne Dewailly",
           "Anne Stokes", "Anne Truitt", "Anne-Louis Girodet", "Anni Albers", "Annibale Carracci", "Annie Soudain",
           "Annie Swynnerton", "Ansel Adams", "Anthony Gerace", "Anthony van Dyck", "Antoine Blanchard",
           "Anton Corbijn", "Anton Fadeev", "Anton Otto Fischer", "Anton Pieck", "Anton Semenov", "Antoni Gaudi",
           "Antonio Mancini", "Apollonia Saintclair", "Aquirax Uno", "Armand Guillaumin", "Arnold Bocklin",
           "Aron Demetz", "Arshile Gorky", "Art Fitzpatrick", "Artemisia Gentileschi", "Artgerm", "Arthur Adams",
           "Arthur Boyd", "Arthur Dove", "Arthur Garfield Dove", "Arthur Hacker", "Arthur Rackham", "Arthur Radebaugh",
           "Arthur Wardle", "Artur Bordalo", "Asaf Hanuka", "Asher Brown Durand", "Ashley Willerton", "Ashley Wood",
           "Atay Ghailan", "Atelier Olschinsky", "Atey Ghailan", "Aubrey Beardsley", "Audrey Kawasaki", "August Macke",
           "Augustus Edwin Mulready", "Augustus Jansson", "Augustus John", "Austin Osman Spare", "Ayami Kojima",
           "Ayan Nag", "Bakemono Zukushi", "Balthus", "Banksy", "Barbara Kruger", "Barclay Shaw", "Barry Windsor Smith",
           "Basil Gogos", "Bastien Lecouffe-Deharme", "Bayard Wu", "Beatrix Potter", "Beauford Delaney", "Beeple",
           "Bella Kotak", "Ben Shahn", "Ben Templesmith", "Benoit B. Mandelbrot", "Berend Strik", "Bernard Aubertin",
           "Bernard Buffet", "Berndnaut Smilde", "Bernie Wrightson", "Bertil Nilsson", "Bijou Karman", "Bill Brauer",
           "Bill Henson", "Bill Medcalf", "Bill Sienkiewicz", "Bill Watterson", "Billy Childish", "Bjarke Ingels",
           "Blek Le Rat", "Bo Bartlett", "Bob Byerley", "Bob Eggleton", "Bob Ross", "Bojan Koturanovic", "Bordalo II",
           "Boris Grigoriev", "Boris Vallejo", "Botero", "Brad Kunkle", "Brandon Woelfel", "Brenda Zlamany",
           "Brian Despain", "Brian Froud", "Brian Kesinger", "Brian Mashburn", "Brian Stelfreeze", "Brian Sum",
           "Bridget Bate Tichenor", "Briton RiviÃ¨re", "Brooke Shaden", "Brothers Hildebrandt", "Bruce Munro",
           "Bruce Pennington", "Bruce Timm", "Bruno Munari", "C. R. W. Nevinson", "Cagnaccio Di San Pietro",
           "Camille Corot", "Camille Pissarro", "Camille Walala", "Canaletto", "Candido Portinari", "Carel Willink",
           "Carl Barks", "Carl Gustav Carus", "Carl Holsoe", "Carl Larsson", "Carl Spitzweg", "Carlo Crivelli",
           "Carlos Schwabe", "Carmen Saldana", "Carrie Mae Weems", "Casey Weldon", "Caspar David Friedrich",
           "Cassius Marcellus Coolidge", "Catherine Hyde", "Catrin Welz-Stein", "Cedric Peyravernay", "Chad Knight",
           "Chantal Joffe", "Charles Addams", "Charles Angrand", "Charles Blackman", "Charles Camoin",
           "Charles Dana Gibson", "Charles E. Burchfield", "Charles Gwathmey", "Charles Le Brun", "Charles Liu",
           "Charles Schridde", "Charles Schulz", "Charles Spencelayh", "Charles Vess", "Charles-Francois Daubigny",
           "Charlie Bowater", "Charline von Heyl", "Chen Zhen", "Chesley Bonestell", "Chiharu Shiota", "Ching Yeh",
           "Chip Zdarsky", "Chris Claremont", "Chris Cunningham", "Chris Foss", "Chris Leib", "Chris Mars",
           "Chris Moore", "Chris Ofili", "Chris Saunders", "Chris Turnham", "Chris Uminga", "Chris Van Allsburg",
           "Chris Ware", "Christian Dimitrov", "Christian Grajewski", "Christophe Vacher", "Christopher Balaskas",
           "Christopher Jin Baron", "Chuck Close", "Cicely Mary Barker", "Cindy Sherman", "Claire Hummel",
           "Clara Miller Burd", "Clara Peeters", "Clarence Holbrook Carter", "Claude Cahun", "Claude Monet",
           "Clemens Ascher", "Cliff Chiang", "Clive Madgwick", "Clovis Trouille", "Clyde Caldwell", "Coby Whitmore",
           "Coles Phillips", "Colin Geller", "Conor Harrington", "Conrad Roset", "Constant Permeke",
           "Constantin Brancusi", "Cory Arcangel", "Cory Loftis", "Costa Dvorezky", "Craig Davison", "Craig Mullins",
           "Craig Wylie", "Craola", "Cuno Amiet", "Cyril Rolando", "Dain Yoon", "Dale Chihuly", "Damien Hirst",
           "Dan Flavin", "Dan Kelby", "Dan Mumford", "Dan Witz", "Daniel Buren", "Daniel Clowes", "Daniel Garber",
           "Daniel Merriam", "Daniel Ridgway Knight", "Daniela Uhlig", "Daniele Afferni", "Dante Gabriel Rossetti",
           "Dao Le Trong", "Dariusz Zawadzki", "Darren Bacon", "Darwyn Cooke", "Daryl Mandryk", "Dave Dorman",
           "Dave Gibbons", "Dave McKean", "David A. Hardy", "David Aja", "David B. Mattingly", "David Bomberg",
           "David Bowie", "David Burdeny", "David Burliuk", "David Choe", "David Driskell", "David Finch",
           "David Hockney", "David Ligare", "David Lynch", "David McClellan", "David Palumbo", "David Shrigley",
           "David Spriggs", "David Teniers the Younger", "David Wiesner", "Dean Cornwell", "Dean Ellis", "Death Burger",
           "Debbie Criswell", "Derek Boshier", "Desmond Morris", "Diane Arbus", "Diane Dillon", "Dick Bickenbach",
           "Diego Dayer", "Diego Rivera", "Dmitry Kustanovich", "Don Bluth", "Don Maitz", "Donald Judd",
           "Donato Giancola", "Dora Carrington", "Dora Maar", "Dorina Costras", "Dorothea Tanning", "Dorothy Lathrop",
           "Doug Chiang", "Douglas Smith", "Dr. Seuss", "Dustin Nguyen", "Duy Huynh", "E. H. Shepard", "Earl Norem",
           "Ed Benedict", "Ed Binkley", "Ed Brubaker", "Ed Emshwiller", "Ed Freeman", "Ed Mell", "Ed Roth",
           "Eddie Campbell", "Eddie Mendoza", "Edgar Degas", "Edmund Dulac", "Edmund Leighton", "Edouard Manet",
           "Edouard Riou", "Eduardo Kobra", "Edvard Munch", "Edward Atkinson Hornel", "Edward Burne-Jones",
           "Edward Gorey", "Edward Hopper", "Edward John Poynter", "Edward Julius Detmold", "Edward Lear",
           "Edward Robert Hughes", "Edward Steichen", "Edward Weston", "Edwin Austin Abbey", "Edwin Deakin",
           "Edwin Henry Landseer", "Eero Saarinen", "Egon Schiele", "Eiichiro Oda", "Eileen Agar", "El Greco",
           "Elaine de Kooning", "Eleanor Vere Boyle", "Elenore Abbott", "Eliott Lilly", "Elizabeth Gadd",
           "Elizabeth Shippen Green", "Ellen Gallagher", "Ellen Jewett", "Elliot Lilly", "Elsa Beskow", "Emil Alzamora",
           "Emil Ferris", "Emil Nolde", "Emilia Wilk", "Emily Kame Kngwarreye", "Emma Geary", "Emmanuel Shiu",
           "Emmanuelle Moureaux", "Emory Douglas", "Enki Bilal", "Ephraim Moses Lilien", "Eric Fischl", "Eric Wallis",
           "Eric Zener", "Erich Heckel", "Erin Hanson", "Ernest Crichlow", "Ernie Barnes", "Ernst Fuchs", "Ernst Haas",
           "Ernst Haeckel", "Ernst Ludwig Kirchner", "Esao Andrews", "Etel Adnan", "Ethan Van Sciver",
           "Etienne Hebinger", "Ettore Sottsass", "Ettore Tito", "Eugene Delacroix", "Eugene von Guerard",
           "Evelyn De Morgan", "Everett Raymond Kinstler", "Evgeni Gordiets", "Eyvind Earle", "F Scott Hess",
           "Fabian Perez", "Fabio Hurtado", "Fairfield Porter", "Faith 47", "Faith Ringgold", "Fang Lijun",
           "Farel Dalrymple", "Fenghua Zhong", "Ferdinand Hodler", "Ferdinand Knab", "Ferdinand Van Kessel",
           "Fernand Khnopff", "Fernand Toussaint", "Fernando Herenu", "Filip Hodas", "Filippino Lippi", "Filippo Balbi",
           "Flora Borsi", "Ford Madox Brown", "Francesca Woodman", "Francis Bacon", "Francis Coates Jones",
           "Francis Picabia", "Francisco De Goya", "Frank Auerbach", "Frank Frazetta", "Frank Gehry", "Frank Holl",
           "Frank Lloyd Wright", "Frank Miller", "Frank Stella", "Frank Tinsley", "Frank Xavier Leyendecker",
           "Franklin Booth", "Franz Marc", "Franz Sedlacek", "Franz Xaver Winterhalter", "Frederic Church",
           "Frederic Remington", "Frederick Lord Leighton", "Frederick McCubbin", "Frida Kahlo",
           "Friedensreich Hundertwasser", "Frits Van den Berghe", "Gabriel Dawe", "Gabriele MÃ¼nter", "Gaetano Pesce",
           "Galan Pang", "Gareth Pugh", "Gary Larson", "Gaston BussiÃ¨re", "Gediminas Pranckevicius",
           "Genndy Tartakovsky", "Geof Darrow", "Georg Jensen", "Georg Karl Pfahler", "George Ault",
           "George Cruikshank", "George Dionysus Ehret", "George Frederic Watts", "George French Angas", "George Grosz",
           "George Herriman", "George Inness", "George Lucas", "George Luks", "George Stubbs", "George Tooker",
           "Georges de La Tour", "Georges Rouault", "Georges Seurat", "Georgia O'Keeffe", "Gerald Brom",
           "Gerda Wegener", "Gerhard Munthe", "Gerhard Richter", "Gertrude Abercrombie", "Giacomo Balla",
           "Gianluca Foli", "Gifford Beal", "Gil Elvgren", "Gilbert Stuart", "Gilberto \"Soren\" Zaragoza",
           "Giorgio De Chirico", "Giotto Di Bondone", "Giovanni Battista Bracelli", "Giovanni Battista Gaulli",
           "Giovanni Battista Piranesi", "Giovanni Battista Venanzi", "Giovanni da Udina", "Giuseppe Arcimboldo",
           "Giuseppe de Nittis", "Gjon Mili", "Glen Orbik", "Glenn Fabry", "Gloria Stoll Karn", "Go Nagai",
           "Gordon Browne", "Gordon Parks", "Goro Fujita", "Grace Cossington Smith", "Grace Popp", "Grandma Moses",
           "Grant Wood", "Grayson Perry", "Greg Girard", "Greg Hildebrandt", "Greg Rutkowski", "Greg Simkins",
           "Gregory Crewdson", "Guerrilla Girls", "Guido Borelli Da Caluso", "Guido Crepax", "Guillermo del Toro",
           "Guo Pei", "Gustaf Tenggren", "Gustav Klimt", "Gustave Buchet", "Gustave Courbet", "Gustave DorÃ©",
           "Gustave Moreau", "Gustave Van de Woestijne", "Guy Billout", "Gwen John", "Gwenda Morgan",
           "H. R. (Hans Ruedi) Giger", "H.P. Lovecraft", "Haddon Sundblom", "Hajime Sorayama", "Hal Foster",
           "Hale Woodruff", "Hanna-Barbera", "Hannah Hoch", "Hans Arnold", "Hans Baldung", "Hans Baluschek",
           "Hans Bellmer", "Harold McCauley", "Haroon Mirza", "Harriet Backer", "Harry Clarke", "Hasui Kawase",
           "Hayao Miyazaki", "Hayv Kahraman", "Hein Gorny", "Heinrich Kley", "Heinrich Lefler", "Heinz Edelmann",
           "Helen Frankenthaler", "Helene Knoop", "Helene Schjerfbeck", "Helio Oiticica", "Helmut Newton",
           "Hendrick Avercamp", "Hendrick Cornelisz Vroom", "Hendrick Goltzius", "Hendrik Kerstens",
           "Henri De Toulouse Lautrec", "Henri Fantin Latour", "Henri Matisse", "Henri Rousseau", "Henri-Edmond Cross",
           "Henriette Grindat", "Henry Asencio", "Henry Fuseli", "Henry Moore", "Henry Moret", "Henry Ossawa Tanner",
           "Henry Raleigh", "Herbert List", "Herve Groussin", "HervÃ© Guibert", "Hethe Srodawa", "Hieronymus Bosch",
           "Hikari Shimoda", "Hilma AF Klint", "Hirohiko Araki", "Hiroshi Nagai", "Hiroshi Sugimoto", "Hiroshi Yoshida",
           "Honor C. Appleton", "Hope Gangloff", "Horace Vernet", "Hou China", "Howard Chandler Christy",
           "Howard Finster", "Howard Hodgkin", "Howard Pyle", "Hsiao-Ron Cheng", "Hubert Robert", "Hugh Ferriss",
           "Hugh Kretschmer", "Hundertwasser", "Hyacinthe Rigaud", "Iain Faulkner", "Ian McQue", "Ian Miller",
           "Ida Rentoul Outhwaite", "Igor Morski", "Igor Wolski", "Igor Zenin", "Ilya Kuvshinov", "Ilya Repin",
           "Incarcerated Jerkfaces", "Ingrid Baars", "Inio Asano", "Irma Stern", "Iryna Yermolova", "Isaac Cordal",
           "Isaac Levitan", "Ismail Inceoglu", "Issac Levitan", "Istvan Banyai", "Ivan Aivazovsky", "Ivan Albright",
           "Ivan Bilibin", "Ivan Shishkin", "Iwan Baan", "J. J. Grandville", "J.C. Leyendecker", "J.M.W. Turner",
           "Jacek Yerka", "Jack Butler Yeats", "Jack Davis", "Jack Gaughan", "Jack Kirby", "Jackson Pollock",
           "Jacob Hashimoto", "Jacob Lawrence", "Jacob van Ruisdael", "Jacques Le Moyne", "Jacques Nathan-Garamond ",
           "Jake Parker", "James Abbott McNeill Whistler", "James C Christensen", "James Ensor", "James Gilleard",
           "James Gillray", "James Gurney", "James Jean", "James Montgomery Flagg", "James Paick", "James Stokoe",
           "James Thomas Watts", "James Tissot", "James Turrell", "Jamie Baldridge", "Jamie Hawkesworth",
           "Jamie Hewlett", "Jamie McKelvie", "Jamini Roy", "Jan Brett", "Jan Luyken", "Jan Pietersz Saenredam",
           "Jan Van Eyck", "Jan van Kessel the Elder", "Jane Graverol", "Jane Newland", "Janek Sedlar",
           "Jasmine Becket-Griffith", "Jason A. Engle", "Jason Chan", "Jason Edmiston", "Jasper Johns", "Jaume Plensa",
           "Jaya Suberg", "JC Leyendecker", "Jean Arp", "Jean Auguste Dominique Ingres", "Jean Bourdichon",
           "Jean Delville", "Jean Dubuffet", "Jean Fouquet", "Jean Giraud", "Jean Jullien", "Jean Marc Nattier",
           "Jean Metzinger", "Jean Nouvel", "Jean-Antoine Watteau", "Jean-Baptiste Monge", "Jean-Louis Prevost",
           "Jean-Michel Basquiat", "Jean-Paul Riopelle", "Jeanloup Sieff", "Jeannette Guichard-Bunel", "Jed Henry",
           "Jef Wu", "Jeff Easley", "Jeff Goldblum", "Jeff Kinney", "Jeff Koons", "Jeff Legg", "Jeff Lemire",
           "Jeff Simpson", "Jeff Wall", "Jeffrey Catherine Jones", "Jeffrey Smith art", "Jeffrey T. Larson",
           "Jenny Saville", "JennyBird Alcantara", "Jeremiah Ketner", "Jeremy Geddes", "Jeremy Lipking", "Jeremy Mann",
           "Jerry Pinkney", "Jerry Siegel", "Jerzy Duda-Gracz", "Jesper Ejsing", "Jesper Ejsing", "Jessica Rossier",
           "Jessica Woulfe", "Jessie Willcox Smith", "Jhonen Vasquez", "Jillian Tamaki", "Jim Burns", "Jim Davis",
           "Jim Lee", "Jim Mahfood", "Jim Woodring", "Jimmy Ernst", "Jimmy Lawlor", "Joachim Brohm", "Joan MirÃ³",
           "Joan Tuset", "Joanna Kustra", "Joao Ruas", "Joe Bowler", "Joe De Mers", "Joe Fenton", "Joe Jusko",
           "Joe Madureira", "Joe Webb", "Joel Meyerowitz", "Joel Sternfeld", "Joey Chou", "Johann Wolfgang von Goethe",
           "Johannes Itten", "Johannes Vermeer", "Johannes Voss", "Johfra Bosschart", "John Anster Fitzgerald",
           "John Atherton", "John Atkinson Grimshaw", "John Bauer", "John Berkey", "John Blanche", "John Bratby",
           "John Cassaday", "John Constable", "John Currin", "John Duncan", "John Frederick Kensett",
           "John French Sloan", "John Harris", "John Howe", "John Hoyland", "John James Audubon", "John Kenn Mortensen",
           "John La Farge", "John Lavery", "John Martin", "John Perceval", "John Philip Falter", "John Salminen",
           "John Singer Sargent", "John Singleton Copley", "John Stezaker", "John Totleben", "John Wayne Gacy",
           "John Whitcomb", "John Wilhelm", "John William Waterhouse", "Jon Klassen", "Jon McCoy", "Jon Whitcomb",
           "Jordan Grimmer", "Jorge Jacinto", "Josan Gonzalez", "Josef Albers", "Joseph Cornell", "Joseph Ducreux",
           "Joseph Lorusso", "Joseph Mallord William Turner", "Joseph Stella", "Josephine Wall", "Josh Kao",
           "Josh Keyes", "Jovana Rikalo", "Juan Gris", "Judy Chicago", "Juergen Teller", "Jules Bastien-Lepage",
           "Julia Contacessi", "Julian Calle", "Juliana Huxtable", "Julie Bell", "Julie Blackmon", "Julie Mehretu",
           "Julien Delval", "Julius Horsthuis", "Jun Kaneko", "Junji Ito", "Justin Gerard", "Kadir Nelson",
           "Kaethe Butcher", "Kapwani Kiwanga", "Karel Appel", "Karel Thole", "Karen Wallis", "Karl Blossfeldt",
           "Karl Schmidt-Rottluff", "Karol Bak", "Kasia Nowowiejska", "Kate Beaton", "Kate Greenaway",
           "Kathryn Morris Trotter", "Kati Horna", "Katsuhiro Otomo", "Katsushika Hokusai", "Kawanabe KyÅsai", "Kaws",
           "Kay Nielsen", "Kay Sage", "Kazimir Malevich", "Kazuo Koike", "Kehinde Wiley", "Keith Haring",
           "Keith Negley", "Keith Parkinson", "Kelly Freas", "Kelly Mckernan", "Kelly Sue Deconnick", "Kelly Vivanco",
           "Ken Fairclough", "Ken Kelly", "Ken Sugimori", "Kengo Kuma", "Kenne Gregoire", "Kent Monkman",
           "Kentaro Miura", "Kevin Gnutzmans", "Kevin Sloan", "Kieron Gillen", "Kilian Eng", "Kim Jung Gi",
           "Kim Keever", "Kitagawa Utamaro", "Kitty Lange Kielland", "Klaus Burgle", "Klaus Janson", "Klaus Wittmann",
           "Kobayashi Kiyochika", "Konstantin Korovin", "Konstantin Yuon", "Koson Ohara", "Krenz Cushart", "Kris Kuksi",
           "Kuang Hong", "Kunisada", "Kuno Veeber", "Kurzgesagt", "L. Birge Harrison", "Lady Pink", "Larry Elmore",
           "Larry Poons", "Larry Sultan", "Laurel Burch", "Laurent Grasso", "Laurie Greasley", "Laurie Lipton",
           "Lawren Harris", "Lee Krasner", "Lee Madgwick", "Lee Quinones", "Leiji Matsumoto", "Leon Kossoff",
           "Leonardo Da Vinci", "Leonetto Cappiello", "Leonid Afremov", "Leonora Carrington", "Les Edwards",
           "Lesley Vance", "Leticia Gillett", "Liam Wong", "Liang Mark", "Lisa Frank", "Lisa Keene", "Liu Ye",
           "Liubov Sergeevna Popova", "Lois van Baarle", "Loish", "Lorena Alvarez GÃ³mez", "Lorenz Hideyoshi",
           "Loretta Lux", "Lori Earley", "Louis Comfort Tiffany", "Louis Glackens", "Louis Icart", "Louis Janmot",
           "Louis Rhead", "Louis Wain", "Louise Bourgeois", "Louise Dahl-Wolfe", "Lovis Corinth", "Luca Boni",
           "Lucas Cranach the Elder", "Lucian Freud", "Lucy Madox Brown", "Ludwig Mies van der Rohe", "Luis Royo",
           "Luisa Russo", "Lynd Ward", "Lynda Barry", "Lynda Benglis", "Lyonel Feininger", "Lyubov Popova",
           "M.C. Escher", "M.W. Kaluta", "Mab Graves", "Maginel Wright Enright Barney", "Magnus Enckell",
           "Makoto Shinkai", "Malcolm Liepke", "Man Ray", "Mandy Disher", "Mao Hamaguchi", "Marat Latypov",
           "Marc Chagall", "Marc Davis", "Marc Samson", "Marc Simonetti", "Marcin Jakubowski", "Marco Mazzoni",
           "Marcus Selmer", "Marek Okon", "Margaret Brundage", "Margaret Macdonald Mackintosh", "Margaret Mee",
           "Margaux Valonia", "Maria Kreyn", "Maria Pascual Alberich", "Maria Sibylla Merian", "Marianne North",
           "Marianne von Werefkin", "Marie Guillemine Benoist", "Marie Spartali Stillman", "Marius Borgeaud",
           "Marjane Satrapi", "Mark Arian", "Mark Briscoe", "Mark Brooks", "Mark Keathley", "Mark Lovett",
           "Mark Rothko", "Mark Ryden", "Mark Seliger", "Marsden Hartley", "Martin Ansin", "Martin Deschambault",
           "Martin John Heade", "Martin Johnson Heade", "Martin Kippenberger", "Martine Johanna", "Martiros Saryan",
           "Mary Anning", "Mary Blair", "Mary Cassatt", "Masaaki Masamoto", "Masaaki Sasamoto", "Masamune Shirow",
           "Mat Collishaw", "Mati Klarwein", "Matias Hannecke", "Matt Bors", "Matt Fraction", "Matt Groening",
           "Matthias GrÃ¼newald", "Matthias Jung", "Matti Suuronen", "Maurice Sendak", "Max Beckmann", "Max Dupain",
           "Max Ernst", "Max Pechstein", "Max Weber", "Maxfield Parrish", "Maximilian Pirner", "Maximilien Luce",
           "Maxwell Boas", "Mead Schaeffer", "Meryl McMaster", "Michael Carson", "Michael Cheval", "Michael Deforge",
           "Michael Heizer", "Michael Hutter", "Michael Parkes", "Michael Sowa", "Michael Whelan", "Michal Karcz",
           "Michal Lisowski", "Michelangelo Buonarroti", "Michelangelo Merisi Da Caravaggio", "Mickalene Thomas",
           "Miho Hirano", "Mikalojus Konstantinas Ciurlionis", "Mike Campau", "Mike Deodato", "Mike Mayhew",
           "Mike Mignola", "Mike Winkelmann (Beeple)", "Mike Worrall", "Mikhail Larionov", "Mikhail Nesterov",
           "Mikhail Vrubel", "Mikko Lagerstedt", "Milo Manara", "Milton Avery", "Milton Caniff", "Milton Glaser",
           "Miriam Schapiro", "Moebius", "Mordecai Ardon", "Mort Kunstler", "Muxxi", "Nagel Patrick", "Nan Goldin",
           "Naoki Urasawa", "Naoko Takeuchi", "Naomi Okubo", "Naoto Hattori", "Natalia Goncharova", "Nathan Coley",
           "Nathan Wirth", "NC Wyeth", "Neil Boyle", "Neil Welliver", "Nele Zirnite", "NHK Animation", "Ni Chuanjing",
           "Nicholas Roerich", "Nick Knight", "Nick Sharratt", "Nick Silva", "Nicola Samori", "Nicolas de Stael",
           "Nicolas Delort", "Nicolas Mignard", "Nikolai Ge", "Nikolina Petolas", "Noah Bradley", "Nobuyoshi Araki",
           "Noelle Stevenson", "Noriyoshi Ohrai", "Norman Ackroyd", "Norman Bluhm", "Norman Foster", "Norman Rockwell",
           "Octavio Ocampo", "Odd Nerdrum", "Odilon Redon", "Ogawa Kazumasa", "Ohara Koson", "Olafur Eliasson",
           "Oleg Oprisco", "Olga Skomorokhova", "Olivier Bonhomme", "Olivier Valsecchi", "Ollie Hoff", "Os Gemeos",
           "Osamu Tezuka", "OSGEMEOS", "Oskar Fischinger", "Oskar Kokoschka", "Ossip Zadkine", "Otto Dix",
           "Otto Marseus van Schrieck", "Pablo Picasso", "Pamela Colman Smith", "Paolo Roversi", "Paolo Veronese",
           "Pascal Blanche", "Pascale Campion", "Patrice Murciano", "Patricia Polacco", "Patrick Brown",
           "Patrick Caulfield", "Patrick Dougherty", "Patrick Heron", "Patrick Woodroffe", "Paul Barson",
           "Paul Chadeisson", "Paul Corfield", "Paul Delvaux", "Paul Gauguin", "Paul Gustav Fischer", "Paul Henry",
           "Paul Klee", "Paul Laffoley", "Paul Lehr", "Paul Ranson", "Paul Strand", "Paul Wonner",
           "Paula Modersohn-Becker", "Paulus Potter", "Pawel Kuczynski", "Peter Andrew Jones", "Peter Bagge",
           "Peter De Seve", "Peter Doig", "Peter Elson", "Peter Gric", "Peter Holme III", "Peter Howson", "Peter Kemp",
           "Peter Max", "Peter Milligan", "Peter Mohrbacher", "Peter Paul Rubens", "Peter Sculthorpe", "Peter Wileman",
           "Peter Zumthor", "Phil Foglio", "Phil Jimenez", "Phil Koch", "Phil Noto", "Philip Guston",
           "Philippe Druillet", "Philippe Parreno", "Pierre Bonnard", "Pierre Puvis de Chavannes",
           "Pierre-Auguste Renoir", "Piet Hein Eek", "Piet Mondrian", "Pieter Aertsen", "Pieter Bruegel The Elder",
           "Pieter Claesz", "Pieter de Hooch", "Pieter Jansz Saenredam", "Piotr JabÅ‚oÅ„ski", "Pipilotti Rist", "Pixar",
           "Pixar Concept Artists", "Posuka Demizu", "Qian Xuan", "Qing Han", "Quentin Blake", "Quentin Tarantino",
           "Quint Buchholz", "Rafael Albuquerque", "Raffaello Sanizo", "Raina Telgemeier", "Raja Ravi Varma",
           "Ralph Horsley", "Ralph McQuarrie", "Ralph Steadman", "Ramon Casas", "Randolph Caldecott", "Raphael",
           "Raphael Lacoste", "Raphaelle Peale", "Ravi Zupa", "Ray Caesar", "Ray Donley", "Raymond Briggs",
           "Raymond Duchamp-Villon", "Raymond Leech", "Raymond Swanland", "Rayner Alencar", "Rebeca Saray",
           "Rebecca Guay", "Rebecca Louise Law", "Rebecca Sugar", "Reginald Marsh", "Rembrandt Van Rijn",
           "Remedios Varo", "RenÃ© Lalique", "Rene Laloux", "Rene Magritte", "RETNA (Marquis Lewis)", "Reylia Slaby",
           "RHADS", "Rich Davies", "Richard Burlet", "Richard Corben", "Richard Dadd", "Richard Deacon",
           "Richard Diebenkorn", "Richard Doyle", "Richard Eurich", "Richard Hamilton", "Richard Lindner",
           "Richard McGuire", "Richard Misrach", "Richard S. Johnson", "Richard Scarry", "Rick Guidice", "ROA",
           "Rob Gonsalves", "Rob Liefeld", "Robby Cavanaugh", "Robert Antoine Pinchon", "Robert Chew",
           "Robert Childress", "Robert Crumb", "Robert Farkas", "Robert Hagan", "Robert Irwin", "Robert M Cunningham",
           "Robert Maguire", "Robert McCall", "Robert Mcginnis", "Robert Motherwell", "Robert Neubecker",
           "Robert Rauschenberg", "Robert S. Duncanson", "Robert Stivers", "Robert Vonnoh", "Robert William Hume",
           "Robert Williams", "Roberto Ferri", "Roberto Matta", "Roberto Parada", "Rockwell Kent", "Rodney Matthews",
           "Roger Ballen", "Roger de La Fresnaye", "Roger Dean", "Rolf Armstrong", "Romero Britto", "Ron Mueck",
           "Ron Walotsky", "Ronald Balfour", "Ross Tran", "Roy Gjertson", "Roy Lichtenstein", "Roz Chast", "Ruan Jia",
           "Rudolf Freund", "Rufino Tamayo", "Rumiko Takahashi", "Russ Mills", "Russell Ayto", "Ruth Bernhard",
           "Ruxing Gao", "Ryan Hewett", "Ryan McGinley", "Ryan Stegman", "Ryohei Hase", "Sacha Goldberger",
           "Sailor Moon", "Sakai HoÌ„itsu", "Sally Mann", "Salomon van Ruysdael", "Salvador Dali", "Sam Bosma",
           "Sam Kieth", "Sam Spratt", "Samuel and Joseph Newsom", "Samuel Earp", "Samuel Melton Fisher",
           "Sandra Chevrier", "Sandro Botticelli", "Sandy Skoglund", "Saner Edgar", "Sanford Kossin", "Sangyeob Park",
           "Santiago Calatrava", "Santiago Caruso", "Sara Wollfalk", "Sarah Lucas", "Satoshi Kon", "Saturno Butto",
           "Saul Bass", "Saul Steinberg", "Saul Tepper", "Scarlett Hooft Graafland", "Scott Brundage",
           "Scott Listfield", "Scott Naismith", "Sean Scully", "Sean Yoro", "Seb Mckinnon", "Sebastian Errazuriz",
           "Serge Marshennikov", "Shaddy Safadi", "Shaun Tan", "Shawn Coss", "Sheilah Beckett", "Shepard Fairey",
           "Sherree Valentine Daines", "Shin Jeongho", "Shinji Aramaki", "Shintaro Kago", "Shohei Otomo",
           "Shotaro Ishinomori", "Shusei Nagaoko", "Sidney Nolan", "Silvestro Lega", "Simeon Solomon", "Simon Birch",
           "Simon Bisley", "Simon Stalenhag", "Simone Martini", "Sir James Guthrie", "Siya Oum", "Skottie Young",
           "Skottie Young", "Slim Aarons", "Sofonisba Anguissola", "Sonia Delaunay", "Sou Fujimoto", "Sparth",
           "Squeak Carnwath", "Stan And Jan Berenstain", "Stan Lee", "Stanislav Poltavsky", "StanisÅ‚aw Szukalski",
           "Stanley Donwood", "Stephan Martiniere", "Stephen Gammell", "Stephen Oakley", "Stephen Shore",
           "Stevan Dohanos", "Steve Argyle", "Steve Dillon", "Steve Ditko", "Steve Henderson", "Steve Lieber",
           "Steve McCurry", "Steven Belledin", "Storm Thorgerson", "Stuart Davis", "Stuart Haygarth", "Stuart Immonen",
           "Studio Ghibli", "Sue Bryce", "Susan Luo", "Susan Seddon Boulet", "Sven Nordqvist", "Syd Mead",
           "Sydney Edmunds", "Sydney Prior Hall", "Tadao Ando", "TaiyÅ Matsumoto", "Takashi Murakami",
           "Takato Yamamoto", "Takeshi Obata", "Tamara Lempicka", "Tan Zhi Hui", "Tara McPherson",
           "Tari MaÌrk DaÌvid", "Tatsuro Kiuchi", "teamLab", "Ted Nasmith", "Ted Wallace", "Teophilus Tetteh",
           "Terada Katsuya", "Teresa Ramos", "Terry Oakes", "Terry Redlin", "Tex Avery", "theCHAMBA",
           "Theo van Rysselberghe", "Thomas Allom", "Thomas Moran", "Thomas Rowlandson", "Thomas Saliot",
           "Thomas Struth", "Thomas W Schaller", "Thornton Oakley", "Tibor Nagy", "Till Freitag", "Tim Burton",
           "Tim Doyle", "Tim Hildebrandt", "Tim White", "Tintoretto", "Titian", "Todd McFarlane", "Todd Schorr",
           "Toei Animations", "Tokujin Yoshioka", "tokyogenso", "Tom Bagshaw", "Tom Hammick", "Tom Lovell",
           "Tom Roberts", "Tom Thomson", "Tom Whalen", "Tomasz Alen Kopera", "Tomer Hanuka", "Tomi Ungerer",
           "Tomma Abts", "Tomokazu Matsuyama", "Tony DiTerlizzi", "Tony Moore", "Toshiharu Mizutani", "Toumas Korpi",
           "Tove Jansson", "Tracey Emin", "Travis Louie", "Tristan Eaton", "Tsutomu Nihei", "Tyler Edlin",
           "Tyler Shields", "Tyler West", "Ub Iwerks", "Uemura Shoen", "Ul Di Rico", "Umberto Boccioni",
           "Utagawa Hiroshige", "Valerie Hegarty", "Vhils", "Victo Ngai", "Victor Adame Minguez", "Victor Brauner",
           "Victor Medina", "Victor Moscoso", "Victor Nizovtsev", "Victor Vasarely", "Victoria Crowe",
           "Viktor Vasnetsov", "Viktoria Gavrilenko", "Vincent Di Fate", "Vincent Van Gogh", "Virgil Finlay",
           "Vito Acconci", "Vittorio Matteo Corcos", "Vivian Maier", "Viviane Sassen", "Vivienne Westwood",
           "Vladimir Kush", "W. Heath Robinson", "W.W. Denslow", "Wadim Kashin", "Walt Disney", "Walt Kelly",
           "Walter Crane", "Walter Kim", "Walter Langley", "Walter Percy Day", "Wangechi Mutu", "Warren Ellis",
           "Warwick Globe", "Wassily Kandinsky", "Wayne Barlowe", "Wendy Froud", "Wes Anderson", "Wilfredo Lam",
           "Will Barnet", "Will Eisner", "Willem de Kooning", "Willem van Haecht", "William Blake", "William Eggleston",
           "William Etty", "William Gropper", "William Henry Hunt", "William Hogarth", "William Holman Hunt",
           "William Kentridge", "William Morris", "William S. Burroughs", "William Steig", "William Stout",
           "William Wegman", "William Zorach", "William-Adolphe Bouguereau", "Wim Crouwel", "Wim Wenders",
           "Winslow Homer", "Winsor McCay", "Wojciech Ostrycharz", "Wolf Kahn", "Wolfgang Tillmans",
           "Worthington Whittredge", "Yaacov Agam", "Yang Jialun", "Yanjun Cheng", "Yasuo Kuniyoshi",
           "Yasushi Nirasawa", "Yasutomo Oka", "Yayi Morales", "Yayoi Kusama", "Yiannis Moralis", "Yinka Shonibare",
           "Yohann Schepacz", "Yoji Shinkawa", "Yoshitaka Amano", "Yoshiyuki Tomino", "Yue Minjun",
           "Yuri Ivanovich Pimenov", "Yuumei", "Yves Klein", "Yves Tanguy", "Zack Snyder", "Zaha Hadid",
           "Zanele Muholi", "ZdzisÅ‚aw BeksiÅ„ski", "Zeen Chin", "Zhang Kechun", "Zhelong Xu", "Zhichao Cai",
           "Zinaida Serebriakova", "Alexandre Benois", "Alexandre Jacovleff", "Alexei Harlamoff", "Alexis Gritchenko",
           "Alfred Augustus Glendening", "Alfred Cheney Johnston", "Alfred Eisenstaedt", "Alfred Guillou",
           "Alfred Heber Hutty", "Alfred Henry Maurer", "Alfred Kelsner", "Alfred Munnings", "Alfred Sisley",
           "Alfred Stevens", "Alfredo Jaar", "Algernon Blackwood", "Alice Pasquini", "Alice Rahon", "Aliza Razell",
           "Allen Williams", "Allie Brosh", "Allison Bechdel", "Alois Arnegger", "Alpo Jaakola", "Alson Skinner Clark",
           "Alvaro Siza", "Alvin Langdon Coburn", "Amadeo De Souza-Cardoso", "Amanda Sage", "Amandine Van Ray",
           "Ambrosius Benson", "Amedee Ozenfant", "Aminollah Rezaei", "Amy Earles", "Amy Judd", "Amy Sillman",
           "Anatoly Metlan", "Ando Fuchs", "Andre De Dienes", "Andre Derain", "Andre Kertesz", "Andre Leblanc",
           "Andre Norton", "Andre-Charles Boulle", "Andrea Mantegna", "Andreas Levers", "Andreas Vesalius",
           "AndreÌi Arinouchkine", "Andrei Markin", "Andrew Hem", "Andrew Macara", "Andrey Remnev", "Andrzej Sykut",
           "Andy Fairhurst", "Andy Kehoe", "Angela Barrett", "Anita Malfatti", "Anja Millen", "Anja Percival",
           "Ann Stookey", "Anna Ancher", "Anna and Elena Balbusso", "Anna Bocek", "Anna Razumovskaya", "Anne Bachelier",
           "Anne Brigman", "Anne Mccaffrey", "Anne Packard", "Anne Rothenstein", "Anne Sudworth", "Annick Bouvattier",
           "Anselm Kiefer", "Antanas Sutkus", "Anthony Thieme", "Anto Carte", "Antoine Verney-Carron",
           "Anton Domenico Gabbiani", "Anton Mauve", "Anton Raphael Mengs", "Antonello da Messina", "Antonio Canova",
           "Antonio Donghi", "Antonio J. Manzanedo", "Antonio Mora", "Antonio Roybal", "Antony Gormley",
           "Apollinary Vasnetsov", "Archibald Thorburn", "Aries Moross", "Arik Brauer", "Aristarkh Lentulov",
           "Aristide Maillol", "Arkhyp Kuindzhi", "Arman Manookian", "Armand Point", "Arnold BÃ¶cklin",
           "Arnold Schoenberg", "Aron Wiesenfeld", "Art Frahm", "Art Spiegelman", "Artem Chebokha", "Arthur Hughes",
           "Arthur Lismer", "Arthur Sarnoff", "Arthur Stanley Wilkinson", "Arthur Streeton", "Arthur Tress",
           "Arturo Souto", "Artus Scheiner", "Ary Scheffer", "Asger Jorn", "August Friedrich Schenck", "August Sander",
           "August von Pettenkofen", "Auguste Herbin", "Auguste Mambour", "Auguste Toulmouche", "Aykut Aydogdu",
           "Barbara Hepworth", "Barbara Stauffacher Solomon", "Barbara Takenaga", "Barkley L. Hendricks",
           "Barnett Newman", "Barry McGee", "Bart Sears", "Barthel Bruyn the Elder", "Barthel Bruyn the Younger",
           "Bartolome Esteban Murillo", "Becky Cloonan", "Ben Aronson", "Ben Goossens", "Ben Hatke", "Ben Nicholson",
           "Ben Quilty", "Ben Wooten", "Benedetto Caliari", "Benedick Bana", "Bernardo Bellotto", "Bernardo Strozzi",
           "Bert Hardy", "Bert Stern", "Berthe Morisot", "Bess Hamiti", "Beth Conklin", "Bettina Rheims",
           "Bhupen Khakhar", "Bill Brandt", "Bill Carman", "Bill Durgin", "Bill Gekas", "Bill Jacklin", "Bill Traylor",
           "Bill Viola", "Bill Ward", "Bo Chen", "Bojan Jevtic", "Boris Groh", "Boris Kustodiev", "Brad Rigney",
           "Brandon Mably", "Brent Cotton", "Brent Heighton", "Brett Weston", "Brett Whiteley", "Brian Bolland",
           "Brian K. Vaughan", "Brian M. Viveros", "Brian Oldham", "Briana Mora", "Brice Marden", "Bridget Riley",
           "Brooke DiDonato", "Brothers Grimm", "Bruce Coville", "Bruce Nauman", "Bruno Catalano", "Bruno Walpoth",
           "Bryan Hitch", "Burt Glinn", "Butcher Billy", "Cai Guo-Qiang", "Callie Fink", "Camille Claudel",
           "Camille Vivier", "Camille-Pierre Pambu Bodo", "Caras Ionut", "Carl Eugen Keel", "Carl Kleiner", "Carl Moll",
           "Carl Rungius", "Carlo Bocchio", "Carlo Dolci", "Carlo Scarpa", "Carlos Cruz-Diez", "Carolina Herrera",
           "Carolyn Blish", "Carrie Ann Baade", "Carrie Graber", "Carson Grubaugh", "Carsten Holler",
           "Carsten Meyerdierks", "Casey Baugh", "Casey Childs", "Catherine Nolin", "Cathy Wilkes", "Cecil Beaton",
           "Cecilia Beaux", "Cecily Brown", "Cedric Seaut", "Cerith Wyn Evans", "CFA Voysey", "Charles Burns",
           "Charles Courtney Curran", "Charles Demuth", "Charles Dwyer", "Charles Ellison", "Charles Filiger",
           "Charles Ginner", "Charles Maurice Detmold", "Charles Mellin", "Charles Philipon", "Charles Reiffel",
           "Charles Rennie Mackintosh", "Charles Robinson", "Charles Sheeler", "Charles Tunnicliffe",
           "Charles Victor Thirion", "Charles White", "Charles Willson Peale", "Charles Wysocki",
           "Charles-Amable Lenoir", "Charley Harper", "Charly Amani", "Chase Stone", "Chie Yoshii", "Chiho Aoshima",
           "Childe Hassam", "Chris Bachalo", "Chris Cold", "Chris Dyer", "Chris Friel", "Chris LaBrooy",
           "Chris Riddell", "Chris Samnee", "Christian Boltanski", "Christian Griepenkerl", "Christian Schad",
           "Christian Schloe", "Christian Wilhelm Allers", "Christine Ellger", "Christoffer Relander",
           "Christophe Jacrot", "Christophe Staelens", "Christopher Ryan McKenney", "Christopher Wool",
           "Chuah Thean Teng", "Chuanxing Zeng", "Chung Shek", "Cildo Meireles", "Claes Oldenburg", "Clara Ledesma",
           "Clarence Gagnon", "Claude LefÃ¨bvre", "Claude Lorrain", "Claude Melan", "Claudia Tremblay", "Clay Mann",
           "Clayton Crain", "Cleon Peterson", "Clifford Coffin", "Clint Cearley", "Clive Barker", "Clyfford Still",
           "Colin Campbell Cooper", "Colin Elder", "Collin Elder", "Conrad Shawcross", "Constantin Joffe",
           "Cornelia Parker", "Cornelis Springer", "Craig McCracken", "Craig Thompson", "Craigie Aitchison",
           "Cyril Pontet", "Daan Roosegaarde", "Daido Moriyama", "Dan Colen", "Dan Hillier", "Dan Matutina",
           "Dan McPharlin", "Dan Piraro", "Dana Schutz", "Daniel Arsham", "Daniel F. Gerhartz", "Daniel Jaems",
           "Daniel Libeskind", "Daniel Lieske", "Daniel Ridgway Knights", "Danielle Eckhardt", "Danny Flynn",
           "Danny Lyon", "Danny Roberts", "Darek Zabrocki", "Daria Endresen", "Dariusz Klimczak", "Dave Coverly",
           "Dave Heath", "Dave Rapoza", "Dave Stevens", "David Alfaro Siqueiros", "David Aronson", "David Bailey",
           "David Bates", "David Brayne", "David Brown Milne", "David Chipperfield", "David Cronenberg",
           "David Downton", "David Goldblatt", "David Hammons", "David Hettinger", "David LaChapelle", "David Malkin",
           "David Mann", "David Michael Bowers", "David Mould", "David Nordahl", "David Normal", "David Plowden",
           "David Renshaw", "David Sims", "David Tindle", "David Tutwiler", "David Walker", "David Welker",
           "David Yarrow", "Davide Sasselli", "Davide Sorrenti", "Davis Marc", "Davis Stuart", "De Es Schwertberger",
           "Debbie Fleming Caffery", "Deborah Azzopardi", "Deborah Turbeville", "Dee Nickerson",
           "Deirdre Sullivan-Beeman", "Del Kathryn Barton", "Delphin Enjolras", "Demizu Posuka", "Denis Sarazhin",
           "Dennis Stock", "Denys Lasdun", "Derek Gores", "Didier Barra", "Didier LourenÃ§o", "Dima Dmitriev",
           "Dimitra Milan", "Dimitry Roulland", "Dino Valls", "Dmitri Danish", "Dmitry Spiros", "Dmitry Vishnevsky",
           "Do Ho Suh", "Dod Procter", "Dom Qwek", "Don Bergland", "Don Blanding", "Don Lawrence", "Don Northrup",
           "Donald Pass", "Donna Huanca", "Dorothea Lange", "Dorothea Sharp", "Dorothy Johnstone", "Doug Aitken",
           "Drew Struzan", "Duffy Sheridan", "Duncan Fegredo", "Dusan Djukaric", "Eadweard Muybridge",
           "Eastman Johnson", "Ebru Sidar", "Echo Chernik", "Ed Myers", "Ed Piskor", "Ed Valigursky", "Eddie Colla",
           "Eddie Jones", "Edgar Maxence", "Edith Rimmington", "Edmund Tarbell", "Edmundo Senatore", "Edna Reindel",
           "Edoardo Tresoldi", "Edogawa Ranpo", "Ã‰douard Manet", "Ã‰douard Riou", "Ã‰douard Vuillard", "Eduard Cortes",
           "Eduard Gaertner", "Eduard Veith", "Eduard Wiiralt", "Edward Bawden", "Edward Blair Wilkins",
           "Edward Cucuel", "Edward Henry Potthast", "Edward Hersey", "Edward Moran", "Edward OkuÅ„", "Edward Poynter",
           "Edward Seago", "Edward Wadsworth", "Edwin Lord Weeks", "Edwin Wurm", "Eiko Ojala", "Eileen Gray",
           "Eilif Peterssen", "Einer Johansen", "Ekaterina Panikanova", "El Anatsui", "El Lissitzky", "Elba Damast",
           "Eleanor Fortescue-Brickdale", "Elena Paraskeva", "Elfriede Lohse-WÃ¤chtler", "Elias Ravanetti",
           "Elihu Vedder", "Elina Karimova", "Elisa Breton", "Elisabeth Sonrel", "Eliseu Visconti", "Elizabeth Catlett",
           "Elke Vogelsang", "Ellen von Unwerth", "Elliott Erwitt", "Ellsworth Kelly", "Elsa Bleda", "Elsie Driggs",
           "Emek Golan", "Emerico Imre Toth", "Emerson Silva", "Emery Hawkins", "Emil Carlsen", "Emila MedkovÃ¡",
           "Emile Claus", "Emile Galle", "Emiliano Di Cavalcanti", "Emiliano Ponzi", "Emilio Giuseppe Dossena",
           "Emily Balivet", "Emily Carr", "Emmanuel de Critz", "Emmy Bridgwater", "Enoch Bolles", "Enrique TÃ¡bara",
           "Eric Canete", "Eric Carle", "Eric Deschamps", "Eric Ravilious", "Erica Hopper", "Erik Johansson",
           "Erik Jones", "Erna Rosenstein", "Ernest Lawson", "Ernest Meissonier", "Ernest Zacharevic", "Ernesto Neto",
           "Ernst Barlach", "Ernst Wilhelm Nay", "Erol Otus", "Erwin Blumenfeld", "Esaias van de Velde",
           "Esteban Vicente", "Esther Rolick", "Ã‰tienne Adolphe Piot", "Ã‰tienne Maurice Falconet", "Euan Uglow",
           "Eugen Bracht", "EugÃ¨ne Atget", "EugÃ¨ne Boudin", "Eugene Galien-Laloue", "EugÃ¨ne Girardet",
           "Eugene Leroy", "Eugene Tertychnyi", "Eustache Le Sueur", "Eva Hesse", "Eva Rothschild",
           "Eva Å vankmajerovÃ¡", "Eve Arnold", "Eve Ventrue", "Evelyn Dunbar", "Everett Shinn", "Evgeny Lushpin",
           "Ezra Stoller", "Fan Ho", "Fay Godwin", "Fay Helfer", "Felice Casorati", "Felicia Simion", "Felicien Rops",
           "Felipe Pantone", "Felix Gonzalez-Torres", "Felix Kelly", "FÃ©lix Labisse", "Felix Philipp Kanitz",
           "Felix Vallotton", "Ferdinand du Puigaudeau", "Ferdinand Keller", "Ferenc Pinter", "Fern Isabel Coppedge",
           "Fernand Cormon", "Fernand Fonssagrives", "Fernand Leger", "Fernando Amorsolo", "Fernando Botero",
           "Ferris Plock", "Filippo Brunelleschi", "Fintan Magee", "Firmin Baes", "Fletcher Sibthorp",
           "Florence Harrison", "Florian Nicolle", "Florianne Becker", "Floris Arntzenius", "Floris Jespers",
           "Fra Angelico", "Frances MacDonald", "Francesco Albani", "Francesco Borromini", "Francesco Clemente",
           "Francesco Guardi", "Francesco Hayez", "Francesco Solimena", "Francine Van Hove", "Francis Davis Millet",
           "Francis Newton Souza", "Francisco de Zurbaran", "Francisco Goya", "Franciszek Starowieyski",
           "Franck Tacito", "Franco Fontana", "Francois Schuiten", "Frank Bramley", "Frank Cadogan Cowper", "Frank Cho",
           "Frank McCarthy", "Frank Quitely", "Frank Thorne", "Frank Weston Benson", "Franklin Carmichael",
           "Frans Floris", "Frans Francken the Younger", "Frans Hals", "Frans Snyders", "Frantisek Kupka",
           "Franz Kline", "Franz Lefler", "Franz Stuck", "Franz Vohwinkel", "Franz West", "Fred Calleri", "Fred Stein",
           "Fred Tomaselli", "Frederic Bazille", "Frederick Arthur Bridgman", "Frederick Arthur Verner",
           "Frederick Carl Frieseke", "Frederick Cayley Robinson", "Frederick Goodall", "Frederick Judd Waugh",
           "Frederick Sandys", "Frieke Janssens", "Frits Thaulow", "Fritz Bleyl", "Fritz Henle", "Fritz Scholder",
           "Fujii Yoshitoyo", "Fujishima Takeji", "Fuyuko Matsui");


def createPrompts(promptCount):
    prompts = ""

    f = open("prompts.txt", "w")

    for i in range(promptCount):
        lower_bound = 0.9
        upper_bound = 1.4
        multiplier = random.uniform(lower_bound, upper_bound)

        prompts = prompts + "(" \
                  + getRandomStringFromList(place) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(beautifier) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(type) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "girl with " \
                  + "(" \
                  + getRandomStringFromList(bSize) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "and " + "(" \
                  + getRandomStringFromList(bSize) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(hairLength) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + " " \
                  + getRandomStringFromList(hairColor) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "and " \
                  + "(" \
                  + getRandomStringFromList(eyeColor) \
                  + " eyes:" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "wearing " \
                  + "(" \
                  + getRandomStringFromList(accessory) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(style) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "with " \
                  + "(" \
                  + getRandomStringFromList(perp) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(expression) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(nsfw:" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(penetration:" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(perfect face:" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(perfect fingers:" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(artists) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(artists) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(artists) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(artStyle) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "(" \
                  + getRandomStringFromList(details) \
                  + ":" \
                  + "{:.2f}".format(random.uniform(lower_bound, multiplier)) \
                  + ") " \
                  + "\n"

    f.write(prompts)


def getRandomStringFromList(list):
    i = random.randint(0, len(list) - 1)
    return list[i]


if __name__ == '__main__':
    createPrompts(16)
```