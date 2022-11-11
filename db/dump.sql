/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : joke_test

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 11/11/2022 05:36:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'general', 'General', 'sentiment_very_satisfied');
INSERT INTO `categories` VALUES (2, 'knoc-knoc', 'Knock Knock', 'door_front');
INSERT INTO `categories` VALUES (3, 'programming', 'Programming', 'computer');
INSERT INTO `categories` VALUES (4, 'dad', 'Dad', 'escalator_warning');
INSERT INTO `categories` VALUES (5, 'food', 'Food', 'fastfood');
COMMIT;

-- ----------------------------
-- Table structure for jokes
-- ----------------------------
DROP TABLE IF EXISTS `jokes`;
CREATE TABLE `jokes` (
  `id` int NOT NULL,
  `type` int DEFAULT NULL,
  `setup` text,
  `punchline` text,
  PRIMARY KEY (`id`),
  KEY `Type - Category` (`type`),
  CONSTRAINT `Categories` FOREIGN KEY (`type`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jokes
-- ----------------------------
BEGIN;
INSERT INTO `jokes` VALUES (1, 1, 'What did the fish say when it hit the wall?', 'Dam.');
INSERT INTO `jokes` VALUES (2, 1, 'How do you make a tissue dance?', 'You put a little boogie on it.');
INSERT INTO `jokes` VALUES (3, 1, 'What\'s Forrest Gump\'s password?', '1Forrest1');
INSERT INTO `jokes` VALUES (4, 1, 'What do you call a belt made out of watches?', 'A waist of time.');
INSERT INTO `jokes` VALUES (5, 1, 'Why can\'t bicycles stand on their own?', 'They are two tired');
INSERT INTO `jokes` VALUES (6, 1, 'How does a train eat?', 'It goes chew, chew');
INSERT INTO `jokes` VALUES (7, 1, 'What do you call a singing Laptop', 'A Dell');
INSERT INTO `jokes` VALUES (8, 1, 'How many lips does a flower have?', 'Tulips');
INSERT INTO `jokes` VALUES (9, 1, 'How do you organize an outer space party?', 'You planet');
INSERT INTO `jokes` VALUES (10, 1, 'What kind of shoes does a thief wear?', 'Sneakers');
INSERT INTO `jokes` VALUES (11, 1, 'What\'s the best time to go to the dentist?', 'Tooth hurty.');
INSERT INTO `jokes` VALUES (12, 2, 'Knock knock. \n Who\'s there? \n A broken pencil. \n A broken pencil who?', 'Never mind. It\'s pointless.');
INSERT INTO `jokes` VALUES (13, 2, 'Knock knock. \n Who\'s there? \n Cows go. \n Cows go who?', 'No, cows go moo.');
INSERT INTO `jokes` VALUES (14, 2, 'Knock knock. \n Who\'s there? \n Little old lady. \n Little old lady who?', 'I didn\'t know you could yodel!');
INSERT INTO `jokes` VALUES (15, 3, 'What\'s the best thing about a Boolean?', 'Even if you\'re wrong, you\'re only off by a bit.');
INSERT INTO `jokes` VALUES (16, 3, 'What\'s the object-oriented way to become wealthy?', 'Inheritance');
INSERT INTO `jokes` VALUES (17, 3, 'Where do programmers like to hangout?', 'The Foo Bar.');
INSERT INTO `jokes` VALUES (18, 3, 'Why did the programmer quit his job?', 'Because he didn\'t get arrays.');
INSERT INTO `jokes` VALUES (19, 1, 'Did you hear about the two silk worms in a race?', 'It ended in a tie.');
INSERT INTO `jokes` VALUES (20, 1, 'What do you call a laughing motorcycle?', 'A Yamahahahaha.');
INSERT INTO `jokes` VALUES (21, 1, 'A termite walks into a bar and says...', '\'Where is the bar tended?\'');
INSERT INTO `jokes` VALUES (22, 1, 'What does C.S. Lewis keep at the back of his wardrobe?', 'Narnia business!');
INSERT INTO `jokes` VALUES (23, 3, 'Why do programmers always mix up Halloween and Christmas?', 'Because Oct 31 == Dec 25');
INSERT INTO `jokes` VALUES (24, 3, 'A SQL query walks into a bar, walks up to two tables and asks...', '\'Can I join you?\'');
INSERT INTO `jokes` VALUES (25, 3, 'How many programmers does it take to change a lightbulb?', 'None that\'s a hardware problem');
INSERT INTO `jokes` VALUES (26, 3, 'If you put a million monkeys at a million keyboards, one of them will eventually write a Java program', 'the rest of them will write Perl');
INSERT INTO `jokes` VALUES (27, 3, '[\'hip\', \'hip\']', '(hip hip array)');
INSERT INTO `jokes` VALUES (28, 3, 'To understand what recursion is...', 'You must first understand what recursion is');
INSERT INTO `jokes` VALUES (29, 3, 'There are 10 types of people in this world...', 'Those who understand binary and those who don\'t');
INSERT INTO `jokes` VALUES (30, 1, 'What did the duck say when he bought lipstick?', 'Put it on my bill');
INSERT INTO `jokes` VALUES (31, 1, 'What happens to a frog\'s car when it breaks down?', 'It gets toad away');
INSERT INTO `jokes` VALUES (32, 1, 'did you know the first French fries weren\'t cooked in France?', 'they were cooked in Greece');
INSERT INTO `jokes` VALUES (33, 3, 'Which song would an exception sing?', 'Can\'t catch me - Avicii');
INSERT INTO `jokes` VALUES (34, 2, 'Knock knock. \n Who\'s there? \n Opportunity.', 'That is impossible. Opportunity doesn’t come knocking twice!');
INSERT INTO `jokes` VALUES (35, 3, 'Why do Java programmers wear glasses?', 'Because they don\'t C#');
INSERT INTO `jokes` VALUES (36, 1, 'Why did the mushroom get invited to the party?', 'Because he was a fungi.');
INSERT INTO `jokes` VALUES (37, 1, 'Do you know what the word \'was\' was initially?', 'Before was was was was was is.');
INSERT INTO `jokes` VALUES (38, 1, 'I\'m reading a book about anti-gravity...', 'It\'s impossible to put down');
INSERT INTO `jokes` VALUES (39, 1, 'If you\'re American when you go into the bathroom, and American when you come out, what are you when you\'re in there?', 'European');
INSERT INTO `jokes` VALUES (40, 1, 'Want to hear a joke about a piece of paper?', 'Never mind...it\'s tearable');
INSERT INTO `jokes` VALUES (41, 1, 'I just watched a documentary about beavers.', 'It was the best dam show I ever saw');
INSERT INTO `jokes` VALUES (42, 1, 'If you see a robbery at an Apple Store...', 'Does that make you an iWitness?');
INSERT INTO `jokes` VALUES (43, 1, 'A ham sandwhich walks into a bar and orders a beer. The bartender says...', 'I\'m sorry, we don\'t serve food here');
INSERT INTO `jokes` VALUES (44, 1, 'Why did the Clydesdale give the pony a glass of water?', 'Because he was a little horse');
INSERT INTO `jokes` VALUES (45, 1, 'If you boil a clown...', 'Do you get a laughing stock?');
INSERT INTO `jokes` VALUES (46, 1, 'Finally realized why my plant sits around doing nothing all day...', 'He loves his pot.');
INSERT INTO `jokes` VALUES (47, 1, 'Don\'t look at the eclipse through a colander.', 'You\'ll strain your eyes.');
INSERT INTO `jokes` VALUES (48, 1, 'I bought some shoes from a drug dealer.', 'I don\'t know what he laced them with, but I was tripping all day!');
INSERT INTO `jokes` VALUES (49, 1, 'Why do chicken coops only have two doors?', 'Because if they had four, they would be chicken sedans');
INSERT INTO `jokes` VALUES (50, 1, 'What do you call a factory that sells passable products?', 'A satisfactory');
INSERT INTO `jokes` VALUES (51, 1, 'When a dad drives past a graveyard: Did you know that\'s a popular cemetery?', 'Yep, people are just dying to get in there');
INSERT INTO `jokes` VALUES (52, 1, 'Why did the invisible man turn down the job offer?', 'He couldn\'t see himself doing it');
INSERT INTO `jokes` VALUES (53, 1, 'How do you make holy water?', 'You boil the hell out of it');
INSERT INTO `jokes` VALUES (54, 1, 'I had a dream that I was a muffler last night.', 'I woke up exhausted!');
INSERT INTO `jokes` VALUES (55, 1, 'Why is peter pan always flying?', 'Because he neverlands');
INSERT INTO `jokes` VALUES (56, 3, 'How do you check if a webpage is HTML5?', 'Try it out on Internet Explorer');
INSERT INTO `jokes` VALUES (57, 1, 'What do you call a cow with no legs?', 'Ground beef!');
INSERT INTO `jokes` VALUES (58, 1, 'I dropped a pear in my car this morning.', 'You should drop another one, then you would have a pair.');
INSERT INTO `jokes` VALUES (59, 1, 'Lady: How do I spread love in this cruel world?', 'Random Dude: [...💘]');
INSERT INTO `jokes` VALUES (60, 3, 'A user interface is like a joke.', 'If you have to explain it then it is not that good.');
INSERT INTO `jokes` VALUES (61, 2, 'Knock knock. \n Who\'s there? \n Hatch. \n Hatch who?', 'Bless you!');
INSERT INTO `jokes` VALUES (62, 1, 'What do you call sad coffee?', 'Despresso.');
INSERT INTO `jokes` VALUES (63, 1, 'Why did the butcher work extra hours at the shop?', 'To make ends meat.');
INSERT INTO `jokes` VALUES (64, 1, 'Did you hear about the hungry clock?', 'It went back four seconds.');
INSERT INTO `jokes` VALUES (65, 1, 'Well...', 'That’s a deep subject.');
INSERT INTO `jokes` VALUES (66, 1, 'Did you hear the story about the cheese that saved the world?', 'It was legend dairy.');
INSERT INTO `jokes` VALUES (67, 1, 'Did you watch the new comic book movie?', 'It was very graphic!');
INSERT INTO `jokes` VALUES (68, 1, 'I started a new business making yachts in my attic this year...', 'The sails are going through the roof.');
INSERT INTO `jokes` VALUES (69, 1, 'I got hit in the head by a soda can, but it didn\'t hurt that much...', 'It was a soft drink.');
INSERT INTO `jokes` VALUES (70, 1, 'I can\'t tell if i like this blender...', 'It keeps giving me mixed results.');
INSERT INTO `jokes` VALUES (71, 1, 'I couldn\'t get a reservation at the library...', 'They were fully booked.');
INSERT INTO `jokes` VALUES (72, 3, 'I was gonna tell you a joke about UDP...', '...but you might not get it.');
INSERT INTO `jokes` VALUES (73, 3, 'The punchline often arrives before the set-up.', 'Do you know the problem with UDP jokes?');
INSERT INTO `jokes` VALUES (74, 3, 'Why do C# and Java developers keep breaking their keyboards?', 'Because they use a strongly typed language.');
INSERT INTO `jokes` VALUES (75, 1, 'What do you give to a lemon in need?', 'Lemonaid.');
INSERT INTO `jokes` VALUES (76, 1, 'Never take advice from electrons.', 'They are always negative.');
INSERT INTO `jokes` VALUES (78, 1, 'Hey, dad, did you get a haircut?', 'No, I got them all cut.');
INSERT INTO `jokes` VALUES (79, 1, 'What time is it?', 'I don\'t know... it keeps changing.');
INSERT INTO `jokes` VALUES (80, 1, 'A weasel walks into a bar. The bartender says, \"Wow, I\'ve never served a weasel before. What can I get for you?\"', 'Pop,goes the weasel.');
INSERT INTO `jokes` VALUES (81, 1, 'Bad at golf?', 'Join the club.');
INSERT INTO `jokes` VALUES (82, 1, 'Can a kangaroo jump higher than the Empire State Building?', 'Of course. The Empire State Building can\'t jump.');
INSERT INTO `jokes` VALUES (83, 1, 'Can February march?', 'No, but April may.');
INSERT INTO `jokes` VALUES (84, 1, 'Can I watch the TV?', 'Yes, but don’t turn it on.');
INSERT INTO `jokes` VALUES (85, 1, 'Dad, can you put my shoes on?', 'I don\'t think they\'ll fit me.');
INSERT INTO `jokes` VALUES (86, 1, 'Did you hear about the bread factory burning down?', 'They say the business is toast.');
INSERT INTO `jokes` VALUES (87, 1, 'Did you hear about the chameleon who couldn\'t change color?', 'They had a reptile dysfunction.');
INSERT INTO `jokes` VALUES (88, 1, 'Did you hear about the cheese factory that exploded in France?', 'There was nothing left but de Brie.');
INSERT INTO `jokes` VALUES (89, 1, 'Did you hear about the cow who jumped over the barbed wire fence?', 'It was udder destruction.');
INSERT INTO `jokes` VALUES (90, 1, 'Did you hear about the guy who invented Lifesavers?', 'They say he made a mint.');
INSERT INTO `jokes` VALUES (91, 1, 'Did you hear about the guy whose whole left side was cut off?', 'He\'s all right now.');
INSERT INTO `jokes` VALUES (92, 1, 'Did you hear about the kidnapping at school?', 'It\'s ok, he woke up.');
INSERT INTO `jokes` VALUES (93, 1, 'Did you hear about the Mexican train killer?', 'He had loco motives');
INSERT INTO `jokes` VALUES (94, 1, 'Did you hear about the new restaurant on the moon?', 'The food is great, but there’s just no atmosphere.');
INSERT INTO `jokes` VALUES (95, 1, 'Did you hear about the runner who was criticized?', 'He just took it in stride');
INSERT INTO `jokes` VALUES (96, 1, 'Did you hear about the scientist who was lab partners with a pot of boiling water?', 'He had a very esteemed colleague.');
INSERT INTO `jokes` VALUES (97, 1, 'Did you hear about the submarine industry?', 'It really took a dive...');
INSERT INTO `jokes` VALUES (98, 1, 'Did you hear that David lost his ID in prague?', 'Now we just have to call him Dav.');
INSERT INTO `jokes` VALUES (99, 1, 'Did you hear that the police have a warrant out on a midget psychic ripping people off?', 'It reads \"Small medium at large.\"');
INSERT INTO `jokes` VALUES (100, 1, 'Did you hear the joke about the wandering nun?', 'She was a roman catholic.');
INSERT INTO `jokes` VALUES (101, 1, 'Did you hear the news?', 'FedEx and UPS are merging. They’re going to go by the name Fed-Up from now on.');
INSERT INTO `jokes` VALUES (210, 1, 'What do you call a dad that has fallen through the ice?', 'A Popsicle.');
INSERT INTO `jokes` VALUES (211, 1, 'What do you call a dictionary on drugs?', 'High definition.');
INSERT INTO `jokes` VALUES (212, 1, 'what do you call a dog that can do magic tricks?', 'a labracadabrador');
INSERT INTO `jokes` VALUES (213, 1, 'What do you call a droid that takes the long way around?', 'R2 detour.');
INSERT INTO `jokes` VALUES (214, 1, 'What do you call a duck that gets all A\'s?', 'A wise quacker.');
INSERT INTO `jokes` VALUES (215, 1, 'What do you call a fake noodle?', 'An impasta.');
INSERT INTO `jokes` VALUES (216, 1, 'What do you call a fashionable lawn statue with an excellent sense of rhythmn?', 'A metro-gnome');
INSERT INTO `jokes` VALUES (217, 1, 'What do you call a fat psychic?', 'A four-chin teller.');
INSERT INTO `jokes` VALUES (218, 1, 'What do you call a fly without wings?', 'A walk.');
INSERT INTO `jokes` VALUES (219, 1, 'What do you call a girl between two posts?', 'Annette.');
INSERT INTO `jokes` VALUES (220, 1, 'What do you call a group of disorganized cats?', 'A cat-tastrophe.');
INSERT INTO `jokes` VALUES (221, 1, 'What do you call a group of killer whales playing instruments?', 'An Orca-stra.');
INSERT INTO `jokes` VALUES (222, 1, 'What do you call a monkey in a mine field?', 'A babooooom!');
INSERT INTO `jokes` VALUES (223, 1, 'What do you call a nervous javelin thrower?', 'Shakespeare.');
INSERT INTO `jokes` VALUES (224, 1, 'What do you call a pig that knows karate?', 'A pork chop!');
INSERT INTO `jokes` VALUES (225, 1, 'What do you call a pig with three eyes?', 'Piiig');
INSERT INTO `jokes` VALUES (226, 1, 'What do you call a pile of cats?', ' A Meowtain.');
INSERT INTO `jokes` VALUES (227, 1, 'What do you call a sheep with no legs?', 'A cloud.');
INSERT INTO `jokes` VALUES (228, 1, 'What do you call a troublesome Canadian high schooler?', 'A poutine.');
INSERT INTO `jokes` VALUES (229, 1, 'What do you call an alligator in a vest?', 'An in-vest-igator!');
INSERT INTO `jokes` VALUES (230, 1, 'What do you call an Argentinian with a rubber toe?', 'Roberto');
INSERT INTO `jokes` VALUES (231, 1, 'What do you call an eagle who can play the piano?', 'Talonted!');
INSERT INTO `jokes` VALUES (232, 1, 'What do you call an elephant that doesn’t matter?', 'An irrelephant.');
INSERT INTO `jokes` VALUES (233, 1, 'What do you call an old snowman?', 'Water.');
INSERT INTO `jokes` VALUES (234, 1, 'What do you call cheese by itself?', 'Provolone.');
INSERT INTO `jokes` VALUES (235, 1, 'What do you call corn that joins the army?', 'Kernel.');
INSERT INTO `jokes` VALUES (236, 1, 'What do you call someone with no nose?', 'Nobody knows.');
INSERT INTO `jokes` VALUES (237, 1, 'What do you call two barracuda fish?', ' A Pairacuda!');
INSERT INTO `jokes` VALUES (238, 1, 'What do you do on a remote island?', 'Try and find the TV island it belongs to.');
INSERT INTO `jokes` VALUES (239, 1, 'What do you do when you see a space man?', 'Park your car, man.');
INSERT INTO `jokes` VALUES (240, 1, 'What do you get hanging from Apple trees?', 'Sore arms.');
INSERT INTO `jokes` VALUES (241, 1, 'What do you get when you cross a bee and a sheep?', 'A bah-humbug.');
INSERT INTO `jokes` VALUES (242, 1, 'What do you get when you cross a chicken with a skunk?', 'A fowl smell!');
INSERT INTO `jokes` VALUES (243, 1, 'What do you get when you cross a rabbit with a water hose?', 'Hare spray.');
INSERT INTO `jokes` VALUES (244, 1, 'What do you get when you cross a snowman with a vampire?', 'Frostbite.');
INSERT INTO `jokes` VALUES (245, 1, 'What do you give a sick lemon?', 'Lemonaid.');
INSERT INTO `jokes` VALUES (246, 1, 'What does a clock do when it\'s hungry?', 'It goes back four seconds!');
INSERT INTO `jokes` VALUES (247, 1, 'What does a female snake use for support?', 'A co-Bra!');
INSERT INTO `jokes` VALUES (248, 1, 'What does a pirate pay for his corn?', 'A buccaneer!');
INSERT INTO `jokes` VALUES (249, 1, 'What does an angry pepper do?', 'It gets jalapeño face.');
INSERT INTO `jokes` VALUES (250, 1, 'What happens to a frog\'s car when it breaks down?', 'It gets toad.');
INSERT INTO `jokes` VALUES (251, 1, 'What happens when you anger a brain surgeon?', 'They will give you a piece of your mind.');
INSERT INTO `jokes` VALUES (252, 1, 'What has ears but cannot hear?', 'A field of corn.');
INSERT INTO `jokes` VALUES (253, 1, 'What is a centipedes\'s favorite Beatle song?', ' I want to hold your hand, hand, hand, hand...');
INSERT INTO `jokes` VALUES (254, 1, 'What is a tornado\'s favorite game to play?', 'Twister!');
INSERT INTO `jokes` VALUES (255, 1, 'What is a vampire\'s favorite fruit?', 'A blood orange.');
INSERT INTO `jokes` VALUES (256, 1, 'What is a witch\'s favorite subject in school?', 'Spelling!');
INSERT INTO `jokes` VALUES (257, 1, 'What is red and smells like blue paint?', 'Red paint!');
INSERT INTO `jokes` VALUES (258, 1, 'What is the difference between ignorance and apathy?', 'I don\'t know and I don\'t care.');
INSERT INTO `jokes` VALUES (259, 1, 'What is the hardest part about sky diving?', 'The ground.');
INSERT INTO `jokes` VALUES (260, 1, 'What is the leading cause of dry skin?', 'Towels');
INSERT INTO `jokes` VALUES (261, 1, 'What is the least spoken language in the world?', 'Sign Language');
INSERT INTO `jokes` VALUES (262, 1, 'What is the tallest building in the world?', 'The library, it’s got the most stories!');
INSERT INTO `jokes` VALUES (263, 1, 'What is this movie about?', 'It is about 2 hours long.');
INSERT INTO `jokes` VALUES (264, 1, 'What kind of award did the dentist receive?', 'A little plaque.');
INSERT INTO `jokes` VALUES (265, 1, 'What kind of bagel can fly?', 'A plain bagel.');
INSERT INTO `jokes` VALUES (266, 1, 'What kind of dinosaur loves to sleep?', 'A stega-snore-us.');
INSERT INTO `jokes` VALUES (267, 1, 'What kind of dog lives in a particle accelerator?', 'A Fermilabrador Retriever.');
INSERT INTO `jokes` VALUES (268, 1, 'What kind of magic do cows believe in?', 'MOODOO.');
INSERT INTO `jokes` VALUES (269, 1, 'What kind of music do planets listen to?', 'Nep-tunes.');
INSERT INTO `jokes` VALUES (270, 1, 'What kind of pants do ghosts wear?', 'Boo jeans.');
INSERT INTO `jokes` VALUES (271, 1, 'What kind of tree fits in your hand?', 'A palm tree!');
INSERT INTO `jokes` VALUES (272, 1, 'What lies at the bottom of the ocean and twitches?', 'A nervous wreck.');
INSERT INTO `jokes` VALUES (273, 1, 'What musical instrument is found in the bathroom?', 'A tuba toothpaste.');
INSERT INTO `jokes` VALUES (274, 1, 'What time did the man go to the dentist?', 'Tooth hurt-y.');
INSERT INTO `jokes` VALUES (275, 1, 'What type of music do balloons hate?', 'Pop music!');
INSERT INTO `jokes` VALUES (276, 1, 'What was a more important invention than the first telephone?', 'The second one.');
INSERT INTO `jokes` VALUES (277, 1, 'What was the pumpkin’s favorite sport?', 'Squash.');
INSERT INTO `jokes` VALUES (278, 1, 'What\'s black and white and read all over?', 'The newspaper.');
INSERT INTO `jokes` VALUES (279, 1, 'What\'s blue and not very heavy?', ' Light blue.');
INSERT INTO `jokes` VALUES (280, 1, 'What\'s brown and sticky?', 'A stick.');
INSERT INTO `jokes` VALUES (281, 1, 'What\'s orange and sounds like a parrot?', 'A Carrot.');
INSERT INTO `jokes` VALUES (282, 1, 'What\'s red and bad for your teeth?', 'A Brick.');
INSERT INTO `jokes` VALUES (283, 1, 'What\'s the best thing about elevator jokes?', 'They work on so many levels.');
INSERT INTO `jokes` VALUES (284, 1, 'What\'s the difference between a guitar and a fish?', 'You can tune a guitar but you can\'t \"tuna\"fish!');
INSERT INTO `jokes` VALUES (285, 1, 'What\'s the difference between a hippo and a zippo?', 'One is really heavy, the other is a little lighter.');
INSERT INTO `jokes` VALUES (286, 1, 'What\'s the difference between a seal and a sea lion?', 'An ion! ');
INSERT INTO `jokes` VALUES (287, 1, 'What\'s the worst part about being a cross-eyed teacher?', 'They can\'t control their pupils.');
INSERT INTO `jokes` VALUES (288, 1, 'What\'s the worst thing about ancient history class?', 'The teachers tend to Babylon.');
INSERT INTO `jokes` VALUES (289, 1, 'What’s brown and sounds like a bell?', 'Dung!');
INSERT INTO `jokes` VALUES (290, 1, 'What’s E.T. short for?', 'He’s only got little legs.');
INSERT INTO `jokes` VALUES (291, 1, 'What’s Forest Gump’s Facebook password?', '1forest1');
INSERT INTO `jokes` VALUES (292, 1, 'What’s the advantage of living in Switzerland?', 'Well, the flag is a big plus.');
INSERT INTO `jokes` VALUES (293, 1, 'What’s the difference between an African elephant and an Indian elephant?', 'About 5000 miles.');
INSERT INTO `jokes` VALUES (294, 1, 'When do doctors get angry?', 'When they run out of patients.');
INSERT INTO `jokes` VALUES (295, 1, 'When does a joke become a dad joke?', 'When it becomes apparent.');
INSERT INTO `jokes` VALUES (296, 1, 'When is a door not a door?', 'When it\'s ajar.');
INSERT INTO `jokes` VALUES (297, 1, 'Where did you learn to make ice cream?', 'Sunday school.');
INSERT INTO `jokes` VALUES (298, 1, 'Where do bees go to the bathroom?', ' The BP station.');
INSERT INTO `jokes` VALUES (299, 1, 'Where do hamburgers go to dance?', 'The meat-ball.');
INSERT INTO `jokes` VALUES (300, 1, 'Where do rabbits go after they get married?', 'On a bunny-moon.');
INSERT INTO `jokes` VALUES (301, 1, 'Where do sheep go to get their hair cut?', 'The baa-baa shop.');
INSERT INTO `jokes` VALUES (302, 1, 'Where do you learn to make banana splits?', 'At sundae school.');
INSERT INTO `jokes` VALUES (303, 1, 'Where do young cows eat lunch?', 'In the calf-ateria.');
INSERT INTO `jokes` VALUES (304, 1, 'Where does batman go to the bathroom?', 'The batroom.');
INSERT INTO `jokes` VALUES (305, 1, 'Where does Fonzie like to go for lunch?', 'Chick-Fil-Eyyyyyyyy.');
INSERT INTO `jokes` VALUES (306, 1, 'Where does Napoleon keep his armies?', 'In his sleevies.');
INSERT INTO `jokes` VALUES (307, 1, 'Where was the Declaration of Independence signed?', 'At the bottom! ');
INSERT INTO `jokes` VALUES (308, 1, 'Where’s the bin?', 'I haven’t been anywhere!');
INSERT INTO `jokes` VALUES (309, 1, 'Which side of the chicken has more feathers?', 'The outside.');
INSERT INTO `jokes` VALUES (310, 1, 'Who did the wizard marry?', 'His ghoul-friend');
INSERT INTO `jokes` VALUES (311, 1, 'Who is the coolest Doctor in the hospital?', 'The hip Doctor!');
INSERT INTO `jokes` VALUES (312, 1, 'Why are fish easy to weigh?', 'Because they have their own scales.');
INSERT INTO `jokes` VALUES (313, 1, 'Why are fish so smart?', 'Because they live in schools!');
INSERT INTO `jokes` VALUES (314, 1, 'Why are ghosts bad liars?', 'Because you can see right through them!');
INSERT INTO `jokes` VALUES (315, 1, 'Why are graveyards so noisy?', 'Because of all the coffin.');
INSERT INTO `jokes` VALUES (316, 1, 'Why are mummys scared of vacation?', 'They\'re afraid to unwind.');
INSERT INTO `jokes` VALUES (317, 1, 'Why are oranges the smartest fruit?', 'Because they are made to concentrate. ');
INSERT INTO `jokes` VALUES (318, 1, 'Why are pirates called pirates?', 'Because they arrr!');
INSERT INTO `jokes` VALUES (319, 1, 'Why are skeletons so calm?', 'Because nothing gets under their skin.');
INSERT INTO `jokes` VALUES (320, 1, 'Why can\'t a bicycle stand on its own?', 'It\'s two-tired.');
INSERT INTO `jokes` VALUES (321, 1, 'Why can\'t you use \"Beef stew\"as a password?', 'Because it\'s not stroganoff.');
INSERT INTO `jokes` VALUES (322, 1, 'Why can\'t your nose be 12 inches long?', 'Because then it\'d be a foot!');
INSERT INTO `jokes` VALUES (323, 1, 'Why can’t you hear a pterodactyl go to the bathroom?', 'The p is silent.');
INSERT INTO `jokes` VALUES (324, 1, 'Why couldn\'t the kid see the pirate movie?', 'Because it was rated arrr!');
INSERT INTO `jokes` VALUES (325, 1, 'Why couldn\'t the lifeguard save the hippie?', 'He was too far out, man.');
INSERT INTO `jokes` VALUES (326, 1, 'Why did Dracula lie in the wrong coffin?', 'He made a grave mistake.');
INSERT INTO `jokes` VALUES (327, 1, 'Why did Sweden start painting barcodes on the sides of their battleships?', 'So they could Scandinavian.');
INSERT INTO `jokes` VALUES (328, 1, 'Why did the A go to the bathroom and come out as an E?', 'Because he had a vowel movement.');
INSERT INTO `jokes` VALUES (329, 1, 'Why did the barber win the race?', 'He took a short cut.');
INSERT INTO `jokes` VALUES (330, 1, 'Why did the belt go to prison?', 'He held up a pair of pants!');
INSERT INTO `jokes` VALUES (331, 1, 'Why did the burglar hang his mugshot on the wall?', 'To prove that he was framed!');
INSERT INTO `jokes` VALUES (332, 1, 'Why did the chicken get a penalty?', 'For fowl play.');
INSERT INTO `jokes` VALUES (333, 1, 'Why did the Clydesdale give the pony a glass of water?', 'Because he was a little horse!');
INSERT INTO `jokes` VALUES (334, 1, 'Why did the coffee file a police report?', 'It got mugged.');
INSERT INTO `jokes` VALUES (335, 1, 'Why did the cookie cry?', 'Because his mother was a wafer so long');
INSERT INTO `jokes` VALUES (336, 1, 'Why did the cookie cry?', 'It was feeling crumby.');
INSERT INTO `jokes` VALUES (337, 1, 'Why did the cowboy have a weiner dog?', 'Somebody told him to get a long little doggy.');
INSERT INTO `jokes` VALUES (338, 1, 'Why did the fireman wear red, white, and blue suspenders?', 'To hold his pants up.');
INSERT INTO `jokes` VALUES (339, 1, 'Why did the girl smear peanut butter on the road?', 'To go with the traffic jam.');
INSERT INTO `jokes` VALUES (340, 1, 'Why did the half blind man fall in the well?', 'Because he couldn\'t see that well!');
INSERT INTO `jokes` VALUES (341, 1, 'Why did the house go to the doctor?', 'It was having window panes.');
INSERT INTO `jokes` VALUES (342, 1, 'Why did the kid cross the playground?', 'To get to the other slide.');
INSERT INTO `jokes` VALUES (343, 1, 'Why did the man put his money in the freezer?', 'He wanted cold hard cash!');
INSERT INTO `jokes` VALUES (344, 1, 'Why did the man run around his bed?', 'Because he was trying to catch up on his sleep!');
INSERT INTO `jokes` VALUES (345, 1, 'Why did the melons plan a big wedding?', 'Because they cantaloupe!');
INSERT INTO `jokes` VALUES (346, 1, 'Why did the octopus beat the shark in a fight?', 'Because it was well armed.');
INSERT INTO `jokes` VALUES (347, 1, 'Why did the opera singer go sailing?', 'They wanted to hit the high Cs.');
INSERT INTO `jokes` VALUES (348, 1, 'Why did the scarecrow win an award?', 'Because he was outstanding in his field.');
INSERT INTO `jokes` VALUES (349, 1, 'Why did the tomato blush?', 'Because it saw the salad dressing.');
INSERT INTO `jokes` VALUES (350, 1, 'Why did the tree go to the dentist?', 'It needed a root canal.');
INSERT INTO `jokes` VALUES (351, 1, 'Why did the worker get fired from the orange juice factory?', 'Lack of concentration.');
INSERT INTO `jokes` VALUES (352, 1, 'Why didn\'t the number 4 get into the nightclub?', 'Because he is 2 square.');
INSERT INTO `jokes` VALUES (353, 1, 'Why didn’t the orange win the race?', 'It ran out of juice.');
INSERT INTO `jokes` VALUES (354, 1, 'Why didn’t the skeleton cross the road?', 'Because he had no guts.');
INSERT INTO `jokes` VALUES (355, 1, 'Why do bananas have to put on sunscreen before they go to the beach?', 'Because they might peel!');
INSERT INTO `jokes` VALUES (356, 1, 'Why do bears have hairy coats?', 'Fur protection.');
INSERT INTO `jokes` VALUES (357, 1, 'Why do bees have sticky hair?', 'Because they use honey combs!');
INSERT INTO `jokes` VALUES (358, 1, 'Why do bees hum?', 'Because they don\'t know the words.');
INSERT INTO `jokes` VALUES (359, 1, 'Why do birds fly south for the winter?', 'Because it\'s too far to walk.');
INSERT INTO `jokes` VALUES (360, 1, 'Why do choirs keep buckets handy?', 'So they can carry their tune');
INSERT INTO `jokes` VALUES (361, 1, 'Why do crabs never give to charity?', 'Because they’re shellfish.');
INSERT INTO `jokes` VALUES (362, 1, 'Why do ducks make great detectives?', 'They always quack the case.');
INSERT INTO `jokes` VALUES (363, 1, 'Why do mathematicians hate the U.S.?', 'Because it\'s indivisible.');
INSERT INTO `jokes` VALUES (364, 1, 'Why do pirates not know the alphabet?', 'They always get stuck at \"C\".');
INSERT INTO `jokes` VALUES (365, 1, 'Why do pumpkins sit on people’s porches?', 'They have no hands to knock on the door.');
INSERT INTO `jokes` VALUES (366, 1, 'Why do scuba divers fall backwards into the water?', 'Because if they fell forwards they’d still be in the boat.');
INSERT INTO `jokes` VALUES (367, 1, 'Why do trees seem suspicious on sunny days?', 'Dunno, they\'re just a bit shady.');
INSERT INTO `jokes` VALUES (368, 1, 'Why do valley girls hang out in odd numbered groups?', 'Because they can\'t even.');
INSERT INTO `jokes` VALUES (369, 1, 'Why do wizards clean their teeth three times a day?', 'To prevent bat breath!');
INSERT INTO `jokes` VALUES (370, 1, 'Why do you never see elephants hiding in trees?', 'Because they\'re so good at it.');
INSERT INTO `jokes` VALUES (371, 1, 'Why does a chicken coop only have two doors?', 'Because if it had four doors it would be a chicken sedan.');
INSERT INTO `jokes` VALUES (372, 1, 'Why does a Moon-rock taste better than an Earth-rock?', 'Because it\'s a little meteor.');
INSERT INTO `jokes` VALUES (373, 1, 'Why does it take longer to get from 1st to 2nd base, than it does to get from 2nd to 3rd base?', 'Because there’s a Shortstop in between!');
INSERT INTO `jokes` VALUES (374, 1, 'Why does Norway have barcodes on their battleships?', 'So when they get back to port, they can Scandinavian.');
INSERT INTO `jokes` VALUES (375, 1, 'Why does Superman get invited to dinners?', 'Because he is a Supperhero.');
INSERT INTO `jokes` VALUES (376, 1, 'Why does Waldo only wear stripes?', 'Because he doesn\'t want to be spotted.');
INSERT INTO `jokes` VALUES (377, 3, 'Knock-knock.', 'A race condition. Who is there?');
INSERT INTO `jokes` VALUES (378, 3, 'What\'s the best part about TCP jokes?', 'I get to keep telling them until you get them.');
INSERT INTO `jokes` VALUES (379, 3, 'A programmer puts two glasses on his bedside table before going to sleep.', 'A full one, in case he gets thirsty, and an empty one, in case he doesn’t.');
INSERT INTO `jokes` VALUES (380, 3, 'There are 10 kinds of people in this world.', 'Those who understand binary, those who don\'t, and those who weren\'t expecting a base 3 joke.');
INSERT INTO `jokes` VALUES (381, 1, 'Two guys walk into a bar . . .', 'The first guy says \"Ouch!\" and the second says \"Yeah, I didn\'t see it either.\"');
INSERT INTO `jokes` VALUES (382, 3, 'What did the router say to the doctor?', 'It hurts when IP.');
INSERT INTO `jokes` VALUES (383, 3, 'An IPv6 packet is walking out of the house.', 'He goes nowhere.');
INSERT INTO `jokes` VALUES (384, 3, 'A DHCP packet walks into a bar and asks for a beer.', 'Bartender says, \"here, but I’ll need that back in an hour!\"');
INSERT INTO `jokes` VALUES (385, 3, '3 SQL statements walk into a NoSQL bar. Soon, they walk out', 'They couldn\'t find a table.');
INSERT INTO `jokes` VALUES (386, 1, 'I saw a nice stereo on Craigslist for $1. Seller says the volume is stuck on ‘high’', 'I couldn’t turn it down.');
INSERT INTO `jokes` VALUES (388, 3, 'What’s the object-oriented way to become wealthy?', 'Inheritance.');
INSERT INTO `jokes` VALUES (389, 1, 'What do you call a bee that can\'t make up its mind?', 'A maybe.');
INSERT INTO `jokes` VALUES (390, 1, 'Why was Cinderalla thrown out of the football team?', 'Because she ran away from the ball.');
INSERT INTO `jokes` VALUES (391, 1, 'What kind of music do welders like?', 'Heavy metal.');
INSERT INTO `jokes` VALUES (392, 1, 'Why are “Dad Jokes” so good?', 'Because the punchline is apparent.');
INSERT INTO `jokes` VALUES (393, 3, 'Java developers wear glasses.', 'Because they can\'t C#.');
INSERT INTO `jokes` VALUES (394, 3, 'Why dot net developers don\'t wear glasses?', 'Because they see sharp.');
INSERT INTO `jokes` VALUES (395, 1, 'Why is seven bigger than nine?', 'Because seven ate nine.');
INSERT INTO `jokes` VALUES (396, 4, 'Why do fathers take an extra pair of socks when they go golfing?', 'In case they get a hole in one!');
INSERT INTO `jokes` VALUES (397, 1, 'What do you call a suspicious looking laptop?', 'Asus');
INSERT INTO `jokes` VALUES (398, 3, 'What did the Java code say to the C code?', 'You\'ve got no class.');
INSERT INTO `jokes` VALUES (399, 3, 'What is the most used language in programming?', 'Profanity.');
INSERT INTO `jokes` VALUES (400, 3, 'Why do programmers always get Christmas and Halloween mixed up?', 'Because DEC 25 = OCT 31');
INSERT INTO `jokes` VALUES (401, 3, 'What goes after USA?', 'USB.');
INSERT INTO `jokes` VALUES (402, 4, 'Why don\'t eggs tell jokes?', 'Because they would crack each other up.');
INSERT INTO `jokes` VALUES (403, 1, 'How do you make the number one disappear?', 'Add the letter G and it’s “gone”!');
INSERT INTO `jokes` VALUES (404, 1, 'My older brother always tore the last pages of my comic books, and never told me why.', 'I had to draw my own conclusions.');
INSERT INTO `jokes` VALUES (405, 1, 'The Sergeant-Major growled at the young soldier: I didn’t see you at camouflage training this morning.', 'Thank you very much, sir.');
INSERT INTO `jokes` VALUES (406, 1, 'Why does Waldo only wear stripes?', 'Because he doesn\'t want to be spotted.');
INSERT INTO `jokes` VALUES (407, 3, 'A male developer often gets called as a Dev, then what would you call a female developer?.', 'Devi.');
INSERT INTO `jokes` VALUES (408, 1, 'Why did the kid throw the watch out the window?', 'So time would fly.');
INSERT INTO `jokes` VALUES (409, 3, 'Where did the API go to eat?', 'To the RESTaurant.');
INSERT INTO `jokes` VALUES (410, 5, 'Why did the rooster cross the road?', 'He heard that the chickens at KFC were pretty hot.');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
