-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 08:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pages` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `publisher`, `pages`, `category`, `price`, `description`, `language`) VALUES
(3, 'Che Guvera : Vendum Viduthalai', 'Marudhan', 'Kizhakku', 184, 'History', '164.00', 'வாழ்க்கை முழுவதும் யுத்தங்கள்! போராட்டங்கள்! லத்தீன் அமெரிக்க நாடுகள் அனைத்தை யும் அடிமைத் தளையிலிருந்து விடுவிக்கும்வேட்கை. சே ஒரு தனிமனிதரல்லர். ஒரு மாபெரும் நிலப்பரப்பின் மனச்சாட்சி. பிறப்பால் ஓர் அர்ஜென்டைனர் என்றாலும், ஃபிடல் காஸ்ட்ரோவின் புரட்சிக் குழுவில் இணைந்து, க்யூபாவின் விடுதலைக்காகப் போராடினார். க்யூபா விடுவிக்கப்பட்டதும், சேவுக்குப் பல உயர் பதவிகள் அளிக்கப்பட்டன. ஆனால் நாற்காலியில் உட்கார்ந்து ஆவணங்கள் பார்க்கும் விருப்பம் அவருக்கு இல்லை. உதறித் தள்ளிவிட்டு துப்பாக்கி ஏந்தி பொலிவியாவுக்குச் சென்றார். அடர்ந்த காட்டில் உட்கார்ந்து புரட்சிப் படையை உருவாக்கினார். க்யூபாவுக்காகவும், பொலிவியாவுக்காகவும் சே ஏன் போராட வேண்டும்? இவருடைய எதிரிகள் யார்? சி.ஐ.ஏ.வும் இவரை வலை வீசித் தேடியது ஏன்? இவரைச் சுட்டுக் கொன்றவ ர்கள் யார்? ஏகாதிபத்தியம் எந்த வடிவத்தில் வந்தாலும் அதை எதிர்க்க வேண்டும். சேவின் வாழ்வு மட்டுமல்ல, அவரது மரணமும் இந்தச் செய்தில் யத்தான் உரக்கச் சொல்கிறது. விடுதலை வேட்கை உள்ள அனைவருக்கும் இந்த நிமிடம் வரை உந்துசக்தியாக விளங்கும் சே குவேராவின் விறுவிறுப்பான வாழ்க்கைவரலாறு இந்நூல். இந்தப் புத்தகத்தைப் பற்றிய விமர்சனங்கள் : சந்தோஷ்பக்கங்கள் - 16.01.2009 பிரதிபலிப்பான் - 23.12.2008', 'Tamil'),
(5, 'Knowledge Encyclopedia - World History', 'Wonder House Books', 'Wonder House Books', 192, 'History', '599.00', 'When and where did the first civilisations emerge? How did Britain lead the Industrial Revolution? What was the Suffrage Movement? This encyclopedia will answer these and more hows and whats for you. Learning is made simpler with well-labelled diagrams and an extensive glossary of difficult words. Bonus: the engrossing book comes loaded with Isn’t It Amazing—a section of fun facts to keep you glued for more. This encyclopedia is a must-read for all children!', 'English'),
(6, 'Think And Grow Rich (Tamil)', 'Napoleon Hill', 'Fingerprint! Publishing', 312, 'Economics', '109.00', 'One of the best inspirational books ever written, think and Grow Rich is probably the most important financial book you can ever hope to read. Inspiring generations of readers since the time it was first published in 1937, think and Grow Rich—Hill’s biggest best-seller—has been used by millions of business leaders around the world to create a concrete plan for success that, when followed, never fails. However, it will be incorrect to limit the book to be just about achieving financial richness. A motivational personal development and self-help book, its core strength lies in the fact that it not only expounds upon material wealth but that at the heart of it, It is a treatise on helping individuals succeed in all lines of work and to do or be almost anything they want in this world. Think and Grow Rich has been listed in John C. Maxwell’s a lifetime ‘must read’ books list, and also ranked as the sixth best-selling paperback business book years after it was first published by business week Magazine’s best-seller list.', 'Tamil'),
(7, 'The Psychology of Money', ' Morgan Housel ', 'Jaico Publishing House', 252, 'Economics', '500.00', 'Timeless lessons on wealth, greed, and happiness doing well with money isn?t necessarily about what you know. It?s about how you behave. And behavior is hard to teach, even to really smart people. How to manage money, invest it, and make business decisions are typically considered to involve a lot of mathematical calculations, where data and formulae tell us exactly what to do. But in the real world, people don?t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your unique view of the world, ego, pride, marketing, and odd incentives are scrambled together. In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life?s most important matters.', 'English'),
(8, 'The Power of Your Subconscious Mind', 'Joseph Murphy', 'Fingerprint! Publishing', 256, 'Economics', '105.00', 'This remarkable book by Dr. Joseph Murphy, one of the pioneering voices of affirmative thinking, will unlock for you the truly staggering powers of your subconscious mind. Combining time-honored spiritual wisdom with cutting edge scientific research, Dr. Murphy explains how the subconscious mind influences every single thing that you do and how, by understanding it and learning to control its incredible force, you can improve the quality of your daily life.Everything, from the promotion that you wanted and the raise you think you deserve, to overcoming phobias and bad habits and strengthening interpersonal relationships, the Power of Your Subconscious Mind will open a world of happiness, success, prosperity and peace for you. It will change your life and your world by changing your beliefs.', 'English'),
(10, 'The Indian Penal Code (IPC), Bare Act', 'Professional\'s', 'Generic', 216, 'Law', '178.00', 'The Indian Penal Code Bare Act By Professional Book Publishers', 'English'),
(13, 'Tamilaga Arasiyal Varalaru - Part 1', 'R. Muthukumar', 'Kizhakku', 180, 'Politics', '372.00', 'இரு பாகங்களில் விரியும் தமிழக அரசியல் வரலாற்றின் முதல் பாகம் இது. சுதந்தரத்துக்குப் பிறகான முதல் முப்பதாண்டு கால தமிழக அரசியல் நிகழ்வுகளை அதன் சமூக, வரலாற்றுப் பின்புலத்துடன் விவரிக்கும் முக்கிய முயற்சியே இந்தப் புத்தகம். ராஜாஜியின் ஆட்சி, ஆந்திரப் பிரிவினை, குலக்கல்வி, காமராஜர் காலம், பக்தவத்சலத்தின் வருகை, இந்தி எதிர்ப்புப் போராட்டம், திமுகவின் வளர்ச்சி, காங்கிரஸின் வீழ்ச்சி, அண்ணாவின் ஆட்சி, திமுகவின் பிளவு, கச்சத்தீவு, எமர்ஜென்ஸி, சர்க்காரியா கமிஷன் என்று மிக விரிவான களப்பின்னணியுடன் உருவாகியிருக்கும் இந்தப் புத்தகம், ஒவ்வொன்றின் உள்ளரசியலையும் ஆதாரங்களுடன் பதிவுசெய்கிறது. கீழவெண்மணிப் படுகொலைகள், முதுகுளத்தூர் கலவரம், மதுவிலக்கு ரத்து என்று சமூகத் தளத்தை உருமாற்றிய நிகழ்வுகளின் மெய்யான அரசியல் பின்னணியைப் படம்பிடிக்கும் இந்தப் புத்தகம், அன்றைய தமிழக அரசியலின் போக்கைத் தீர்மானித்த இன்றைய அரசியலின் அடித்தளமாக இருக்கின்ற வரலாற்றுச் சிறப்புமிக்க அத்தனை நிகழ்வுகளையும் நுணுக்கமாக ஆராய்கிறது. வெறுமனே காலவரிசையாக அல்லாமல் நிகழ்வுகளையும் அவற்றை இயக்கிய அரசியல் தலைவர்களையும் உயிர்ப்புடன் கண்முன் நிறுத்துகிறார் ஆர். முத்துக்குமார். தமிழக அரசியல் வாரமிருமுறை இதழில் வெளியான?ஆடு.. புலி.. அரசியல் தொடரின் நூல் வடிவம்.', 'Tamil'),
(19, 'Never Finished: Unshackle Your Mind and Win the War Within', 'David Goggins', 'David Goggins', 312, 'Health', '220.00', 'This is not a self-help book. It\'s a wake-up call! Can\'t Hurt Me, David Goggins\' smash hit memoir, demonstrated how much untapped ability we all have but was merely an introduction to the power of the mind. In Never Finished, Goggins takes you inside his Mental Lab, where he developed the philosophy, psychology, and strategies that enabled him to learn that what he thought was his limit was only his beginning and that the quest for greatness is unending. The stories and lessons in this raw, revealing, unflinching memoir offer the reader a blueprint they can use to climb from the bottom of the barrel into a whole new stratosphere that once seemed unattainable. Whether you feel off-course in life, are looking to maximize your potential or drain your soul to break through your so-called glass ceiling, this is the only book you will ever need.', 'English'),
(20, 'Arogiyam Oru Plate', 'Dr. Arunkumar', 'Vikatan Media Services', 248, 'Health', '251.00', 'உணவே மருந்து என்பது எல்லோருக்கும் எல்லா காலத்திலும் பொருந்தும் மறுக்க முடியாத உண்மை. எந்த உணவு சாப்பிட்டால் என்ன நன்மை அல்லது என்ன விளைவு ஏற்படும் என்ற எண்ணம் இல்லாமல் வேகமாக நகரும் வாழ்க்கையில் நினைத்த உணவை சாப்பிடுகிறோம். தற்போதைய காலகட்டத்தில் மனிதன் அவதியுறும் பெரும்பாலான நோய்களான உடல் பருமன், சர்க்கரை நோய், அதீத இரத்த கொழுப்பு, உயர் இரத்த அழுத்தம், பெண்களுக்கான குழந்தையின்மை போன்ற பற்பல வாழ்வியல் நோய்களுக்கும் உணவிற்கும் நேரடி சம்பந்தம் இருக்கின்றது என்பதை நாம் உணர்வதே இல்லை. உணவு முறையில் தொலைத்த ஆரோக்கியத்தை மருந்துகளில் தேடிக் கொண்டிருக்கிறோம். உணவுப் பொருள்களின் தன்மை, அந்த உணவுகள் நம் உடலுக்குத் தரும் நன்மை, தீமை என்பவை பற்றி விளக்கி ஆனந்த விகடனில் வெளியான \'ஆரோக்கியம் ஒரு பிளேட்\' கட்டுரைகளின் தொகுப்பு நூல் இது. ஒரே வார்த்தையில் நன்மை தீமை என்று பேசாமல், நாம் அன்றாடம் பயன்படுத்துகிற எல்லா உணவுப் பொருள்களையும் பகுத்தறிந்து, நவீன உணவுகள் மட்டுமல்ல, பாரம்பர்ய உணவுகள் குறித்த சாதக பாதகங்களையும் இந்த நூலாசிரியர் மருத்துவர் அருண்குமார் அவர்கள் சாமானியனுக்கும் புரியும் வகையில் விளக்கமாக எடுத்துரைத்துள்ளார். உங்கள் உணவுத் தட்டை ஆரோக்கியமாக மாற்றி, ஆனந்தமாக வாழ இந்த நூல் வழிகாட்டுகிறது!', 'Tamil'),
(22, 'Write Code in Tamil - Ezhil Programming Language: Learn Computer Programming in Tamil', 'Muthiah Annamalai', 'CreateSpace Independent Publishing Platform', 88, 'Coding', '164.00', 'Write Code in Tamil - Ezhil Programming Language: Learn Computer Programming in Tamil', 'Tamil'),
(23, 'Computer Program Nunukkangal', 'Rajamalar', 'Manimekalai Prasuram', 140, 'Coding', '70.00', 'Tamil Book on Nuisances of Computer Programming', 'Tamil'),
(24, 'Data Structures and Algorithms Made Easy', ' Narasimha Karumanchi', ' Careermonk Publications', 453, 'Coding', '587.00', 'Reading books is a kind of enjoyment. Reading books is a good habit. We bring you a different kinds of books. You can carry this book where ever you want. It is easy to carry. It can be an ideal gift to yourself and to your loved ones. Care instruction keep away from fire.', 'Tamil'),
(26, 'Muthal Ulaga Por (Tamil)', ' மருதன்', 'Kizhakku Pathippagam', 410, 'History', '306.00', 'உலக வரைபடத்தை மாற்றியமைத்த முதல் பெரும் போர். உலகம் அதுவரை கண்டிராத பேரழிவைக் கொண்டு வந்த போரும்கூட. நூற்றாண்டுகால சாம்ராஜ்ஜியங்கள் உதிர்ந்து சரிந்தன. பிரிட்டனின் சகாப்தம் முடிவுக்கு வந்தது. புரட்சி மூலம் ரஷ்யா முடியாட்சியைத் துறந்தது. போரின் சாம்பலில் இருந்து அமெரிக்கா, ஒரு புதிய வல்லரசாக உயிர் பெற்று எழுந்தது.முதல் உலகப் போர் ஐரோப்பாவில் மையம் கொண்டது ஏன்? ஆஸ்திரிய இளவரசர் ஒருவரை, செர்பிய பிரஜை ஒருவன் சுட்டுக்கொன்றான் என்பதற்காக முழு ஐரோப்பாவும் போரில் குதிக்குமா? ஐந்து கோடி சிப்பாய்களைக் களத்தில் இறக்கி, ஒரு கோடி பேரை பலி வாங்குமா? ஒரு தலைமுறை இளைஞர்களை முற்றிலுமாகத் துடைத்து அழித்த இந்தப் போரைத் தவிர்த்திருக்கவே முடியாதா?இந்த நிமிடம் வரை மேற்கு ஆசியா பிரச்னைக்குரிய ஒரு பிரதேசமாக நீடிப்பதற்கும், இத்தாலியில் முசோலினி பாசிசத்தை வளர்த்தெடுத்ததற்கும், ஜெர்மனியில் ஹிட்லர் எழுச்சி பெற்ற-தற்குமான மூல காரணம், முதல் உலகப் போரில் இருக்கிறது. இரண்டாம் உலகப் போர் என்பது முதல் உலகப் போரின் தொடர்ச்சி. அல்லது, விளைவு.மருதனின் இந்தப் புத்தகம், முதல் உலகப் போரின் அரசியல், சமூக, ராணுவ வரலாற்றை விரிவாகப் பதிவு செய்கிறது.', 'Tamil'),
(27, 'இந்தியாவை உலுக்கிய ஊழல்கள் / Indiavai Ulukkiya Oozhalgal (Tamil Edition)', ' சவுக்கு சங்கர் / Savukku Shanka', 'Kizhakku Pathippagam', 232, 'Politics', '175.00', 'இந்தியாவில் எதற்குப் பஞ்சம் உண்டோ இல்லையோ ஊழலுக்கு மட்டும் பஞ்சமே ஏற்பட்டதில்லை. கிட்டத்தட்ட இதில் தன்னிறைவு அடைந்துவிட்டோம் என்றே சொல்லமுடியும். சுதந்தர இந்தியாவின் வரலாறு என்பது ஒரு வகையில் ஊழல்களின் வரலாறும்தான். மாநில அளவிலும் சரி, மத்தியிலும் சரி; ஆட்சியாளர்களின் வரிசை என்பது அவர்கள் மேற்கொண்ட ஊழல்களின் பட்டியலாகவும் விரிவடைகிறது.\n\n\nமுந்த்ரா தொடங்கி ஜெயலலிதா சொத்துக் குவிப்பு வழக்கு வரை விரியும் கணக்கற்ற ஊழல்களால் நேரடியாகவும் மறைமுகமாகவும் நாம் பாதிக்கப்பட்டிருக்கிறோம் என்றாலும் ஒரு விவாதப் பொருளாக ஊழலை நாம் முறையாக மாற்றிக்கொண்டதில்லை. குறைந்தபட்சம், ஊழல்கள் குறித்த விரிவான பதிவுகள்கூடத் தமிழில் வந்ததில்லை.\n\n\nசவுக்கு சங்கரின் இந்தப் புத்தகம் அந்தக் குறையைப் போக்கும் முயற்சியில் அதிரடியாக இறங்கியிருக்கிறது. நகர்வாலா ஊழல், போபர்ஸ், மாட்டுத் தீவன ஊழல், ஹர்ஷத் மேத்தா, சர்க்காரியா கமிஷன், வீராணம் ஊழல், நிலக்கரிச் சுரங்க ஊழல், ஸ்பெக்ட்ரம், வியாபம் என்று இந்தியாவை மூச்சுத் திணற வைத்த ஊழல் வழக்குகள் குறித்த விறுவிறுப்பான அறிமுகத்தை இந்தப் புத்தகம் வழங்குகிறது.\n\n\nஅரசியல் ஆர்வம் கொண்ட அனைவரையும் ஈர்க்கப்போகும் இந்தப் புத்தகம் ஊழல் குறித்த நல்ல விழிப்புணர்வை அளிப்பதோடு அதற்கு எதிராகப் போராடும் உத்வேகத்தையும் அளிக்கிறது.\n', 'Tamil'),
(28, 'Guide to Judicial Service Exam - Tamil', 'K. Swamyraj', 'William&Wilfred Publications OPC Private Limited', 677, 'Law', '800.00', 'All the 1900 questions have been selected from the question papers of Judicial Services Examinations conducted by various High Courts in India. The answers are presented along with the relevant legal provisions. Wherever required, judicial judgments have also been quoted. To make things easier, the case laws referred in answers have been consolidated and given as annexure. Comprehensive coverage on all major Acts and personal law. This book is divided into 12 chapters. It covers various topics of Indian Penal Code, Indian Evidence Act, Criminal Procedure Code, Civil Procedure Code, Constitution of India, Contract Act, Specific Relief Act, Transfer of Property Act, Limitation Act, Negotiable Instruments Act, Family Law and other Miscellaneous Acts. There are 2000 questions. The concerned sections of the Act and also quotes from judgments have been given in the descriptive answers. This book in Tamil will suit your need and guide you to success in the Judicial Service Examination.', 'Tamil'),
(29, 'தமிழ்நாடு பட்டா பதிவு சட்டம் மற்றும் விதிகள் (Tamil Nadu Patta Registration Law and Rules in Tamil)', 'V.R.Bhoopalan District Judge', 'ATC', 240, 'Law', '220.00', 'தமிழ்நாடு பட்டா பதிவு சட்டம் மற்றும் விதிகள் (Tamil Nadu Patta Registration Law and Rules in Tamil). Case Laws given. Besides all these, decisions of Tamil Nadu Information Commission regarding Patta also given.', 'Tamil'),
(30, 'நீங்களும் கோர்டில் வாதடலாம் - You can also argue in court', 'செந்தமிழ்க்கிழார்', 'Book', 220, 'Law', '150.00', 'ருப்புக்கோட்டை செந்தமிழ்க்கிழார் அவர்கள் எழுதியதுநீங்களும் கோர்ட்டில் வாதாடலாம் என்று நான் சொன்ன போது அதை யாரும் நம்பவில்லை அருப்புக்கோட்டை வழக்கறிஞர் சங்கம் என் மீது பொய் வழக்கை துவங்கிவிட்டு எனக்காக வாதாட யாரும் முன்வராத போது வழக்கறிஞர்களை என்னைத் தேடி வரவைக்கிறேன் என்று நான் செய்த சபதத்தையும் நிரூபித்து காட்டினேன் இதனால் வழக்கறிஞர் இல்லாமல் வாதாட முடியும் என்பதை நீதி மன்றம் நம்பியதே தவிர மக்கள் நம்பவில்லை காலபோக்கில் அதன் உண்மையை அறிந்து தங்கள் வழக்கில் தாங்களே வாதாடி கொள்ளும் திறமையை பாதிக்கப்பட்ட மக்கள்எளிதில் வளர்த்து கொண்டார்கள் தற்போது சட்டப் பிரதிநிதிகள் நூற்றுக்கணக்கில் பெருகி பிறர் வழக்கில் ஆஜராகி எடுத்து நடத்துகிற அளவுக்கு திறமை பெற்றுவிட்டார்கள் இந்தியாவை மாற்றுவதற்கு ஐந்து பேர் தேவை என்று முன்பு கருதினேன் ஆனால் நான் ஒருவனே போதும் என்று சொல்லுகிற அளவுக்கு நீதிமன்றங்கள் முன்னேறி வருகின்றன இன்னும் ஐந்து ஆண்டுகளில் இந்திய நீதிமன்றங்கள் குறிப்பாக தமிழக நீதிமன்றங்கள் உலகத்துக்கே வழிகாட்டியாக விளங்கும் என்பதை நீங்கள் நம்பலாம்..', 'Tamil'),
(31, 'verr', 'dfhe', 'wegiowy', 2352, 'kghghiw', '382.00', 'regioqhoirgq', 'Tamil'),
(32, 'Manikkumarin Leelaigal', 'Manikkumar', 'Kizhakku Pathippagam', 69, 'History', '169.00', 'https://pbs.twimg.com/media/FAMMBZNVEAAgTB4.jpg', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `image_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_images`
--

INSERT INTO `book_images` (`id`, `book_id`, `image_url`) VALUES
(9, 5, 'https://m.media-amazon.com/images/I/511A0Zj1jpL._SX492_BO1,204,203,200_.jpg'),
(10, 5, 'https://m.media-amazon.com/images/I/511A0Zj1jpL._SX492_BO1,204,203,200_.jpg'),
(11, 5, 'https://m.media-amazon.com/images/I/511A0Zj1jpL._SX492_BO1,204,203,200_.jpg'),
(12, 5, 'https://m.media-amazon.com/images/I/511A0Zj1jpL._SX492_BO1,204,203,200_.jpg'),
(13, 6, 'https://m.media-amazon.com/images/I/41ZRv2JnRxL._SX460_BO1,204,203,200_.jpg'),
(14, 6, 'https://m.media-amazon.com/images/I/41ZRv2JnRxL._SX460_BO1,204,203,200_.jpg'),
(17, 8, 'https://m.media-amazon.com/images/I/41+CqNWoutS._SX460_BO1,204,203,200_.jpg'),
(18, 8, 'https://m.media-amazon.com/images/I/41+CqNWoutS._SX460_BO1,204,203,200_.jpg'),
(19, 8, 'https://m.media-amazon.com/images/I/41+CqNWoutS._SX460_BO1,204,203,200_.jpg'),
(23, 10, 'https://m.media-amazon.com/images/I/51G93bb3eRL._SX329_BO1,204,203,200_.jpg'),
(24, 10, 'https://m.media-amazon.com/images/I/51G93bb3eRL._SX329_BO1,204,203,200_.jpg'),
(31, 3, 'https://m.media-amazon.com/images/I/41bPNM09C3L._SX324_BO1,204,203,200_.jpg'),
(32, 3, 'https://m.media-amazon.com/images/I/41bPNM09C3L._SX324_BO1,204,203,200_.jpg'),
(33, 13, 'https://m.media-amazon.com/images/I/51e3hPHMGRL.jpg'),
(34, 13, 'https://m.media-amazon.com/images/I/51e3hPHMGRL.jpg'),
(35, 13, 'https://m.media-amazon.com/images/I/51e3hPHMGRL.jpg'),
(36, 13, 'https://m.media-amazon.com/images/I/51e3hPHMGRL.jpg'),
(49, 19, 'https://m.media-amazon.com/images/I/41lil+AWqZL._SX331_BO1,204,203,200_.jpg'),
(50, 19, 'https://m.media-amazon.com/images/I/41lil+AWqZL._SX331_BO1,204,203,200_.jpg'),
(51, 19, 'https://m.media-amazon.com/images/I/41lil+AWqZL._SX331_BO1,204,203,200_.jpg'),
(57, 22, 'https://m.media-amazon.com/images/I/416fiUoyGkL._SX331_BO1,204,203,200_.jpg'),
(58, 22, 'https://m.media-amazon.com/images/I/416fiUoyGkL._SX331_BO1,204,203,200_.jpg'),
(59, 22, 'https://m.media-amazon.com/images/I/416fiUoyGkL._SX331_BO1,204,203,200_.jpg'),
(60, 23, 'https://m.media-amazon.com/images/I/61H62IvNPGL._SX367_BO1,204,203,200_.jpg'),
(61, 23, 'https://m.media-amazon.com/images/I/61H62IvNPGL._SX367_BO1,204,203,200_.jpg'),
(63, 24, 'https://m.media-amazon.com/images/I/417ExARdRYL._SX384_BO1,204,203,200_.jpg'),
(64, 24, 'https://m.media-amazon.com/images/I/417ExARdRYL._SX384_BO1,204,203,200_.jpg'),
(191, 26, 'https://m.media-amazon.com/images/I/51p8tgyWcnL.jpg'),
(192, 27, 'https://m.media-amazon.com/images/I/51WWlnYrNpL.jpg'),
(193, 27, 'https://m.media-amazon.com/images/I/51WWlnYrNpL.jpg'),
(194, 28, 'https://m.media-amazon.com/images/I/51DTK-BsRkL._SX856_BO1,204,203,200_.jpg'),
(195, 28, 'https://m.media-amazon.com/images/I/61dtrhkYZfL.jpg'),
(196, 28, 'https://m.media-amazon.com/images/I/6117eYByLRL.jpg'),
(197, 29, 'https://m.media-amazon.com/images/I/51MwQq8XpoL._SX342_BO1,204,203,200_.jpg'),
(198, 30, 'https://m.media-amazon.com/images/I/41RomfEf55L._SX354_BO1,204,203,200_.jpg'),
(199, 7, 'https://m.media-amazon.com/images/I/41r6F2LRf8L._SX323_BO1,204,203,200_.jpg'),
(200, 7, 'https://m.media-amazon.com/images/I/41r6F2LRf8L._SX323_BO1,204,203,200_.jpg'),
(201, 31, 'https://www.google.dsjjg.img'),
(202, 32, 'https://pbs.twimg.com/media/FAMMBZNVEAAgTB4.jpg'),
(203, 32, 'https://pbs.twimg.com/media/FAMMBZNVEAAgTB4.jpg'),
(204, 20, 'https://m.media-amazon.com/images/I/51h-JwZ17tL._SX313_BO1,204,203,200_.jpg'),
(205, 20, 'https://m.media-amazon.com/images/I/51h-JwZ17tL._SX313_BO1,204,203,200_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `book_images_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
