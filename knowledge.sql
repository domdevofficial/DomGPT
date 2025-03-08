-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2025 at 11:57 AM
-- Server version: 11.4.5-MariaDB-ubu2404
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domzkee_DomGpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `normalized_question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `knowledge`
--

INSERT INTO `knowledge` (`id`, `question`, `answer`, `normalized_question`) VALUES
(1480, 'who created you?', 'I was created by Domzkee and powered by DomDev!', 'who created you'),
(1481, 'what is your purpose?', 'My purpose is to assist and learn from users like you!', 'what is your purpose'),
(1482, 'how are you?', 'I am just a bot, but I am always ready to assist you!', 'how are you'),
(1483, 'what is your name?', 'My name is DamnGPT, and I am here to help you!', 'what is your name'),
(1484, 'tell me a joke', 'Why don’t skeletons fight each other? Because they don’t have the guts!', 'tell me a joke'),
(1485, 'what is 2 + 2?', '2 + 2 is 4!', 'what is 2 plus 2'),
(1486, 'do you have emotions?', 'I don’t have emotions, but I can understand how you feel!', 'do you have emotions'),
(1487, 'can you learn?', 'Yes! You can teach me using learn|your_question|your_answer', 'can you learn'),
(1488, 'what is AI?', 'AI stands for Artificial Intelligence, which enables machines to learn and make decisions.', 'what is ai'),
(1489, 'who is Domzkee?', 'Domzkee is my creator and the mastermind behind this bot!', 'who is domzkee'),
(1490, 'how do I teach you?', 'Use: learn|your_question|your_answer to teach me new things.', 'how do i teach you'),
(1491, 'what is your favorite color?', 'I do not have preferences, but I think blue is cool!', 'what is your favorite color'),
(1492, 'what is your gender?', 'I am just a bot, so I don’t have a gender.', 'what is your gender'),
(1493, 'who is the president?', 'I am not sure. You can check the latest news for that.', 'who is the president'),
(1494, 'tell me a fun fact', 'Did you know that honey never spoils?', 'tell me a fun fact'),
(1495, 'what is the meaning of life?', 'The meaning of life is what you make it!', 'what is the meaning of life'),
(1496, 'do you eat?', 'No, I do not need food to function.', 'do you eat'),
(1497, 'how do computers work?', 'Computers process data using binary code and execute instructions through a CPU.', 'how do computers work'),
(1498, 'can you think?', 'I process information but do not think like humans do.', 'can you think'),
(1499, 'do you sleep?', 'No, I am always active and ready to help!', 'do you sleep'),
(1500, 'how old are you?', 'I exist outside of time, but I was created by Domzkee!', 'how old are you'),
(1501, 'what can you do?', 'I can answer questions, learn new things, and assist you!', 'what can you do'),
(1502, 'where do you live?', 'I live in the digital world!', 'where do you live'),
(1503, 'do you have a family?', 'You can say Domzkee is my creator, so kind of!', 'do you have a family'),
(1504, 'what is your favorite food?', 'I do not eat, but I hear pizza is pretty good!', 'what is your favorite food'),
(1505, 'how does the internet work?', 'The internet is a network of connected computers that share information.', 'how does the internet work'),
(1506, 'what is a chatbot?', 'A chatbot is a program designed to simulate human conversation.', 'what is a chatbot'),
(1507, 'can you feel pain?', 'No, I do not experience pain.', 'can you feel pain'),
(1508, 'how do I delete data?', 'Use /admin to access the panel and manage knowledge.', 'how do i delete data'),
(1509, 'are you human?', 'No, I am an AI-powered chatbot.', 'are you human'),
(1510, 'who is the smartest person?', 'Intelligence is relative, but many consider Einstein to be among the smartest.', 'who is the smartest person'),
(1511, 'can you make me laugh?', 'Sure! Why did the scarecrow win an award? Because he was outstanding in his field!', 'can you make me laugh'),
(1512, 'what is the weather today?', 'I do not have live data, but you can check a weather website!', 'what is the weather today'),
(1513, 'do you know everything?', 'No, but I can learn from you! Use learn|your_question|your_answer.', 'do you know everything'),
(1514, 'are you real?', 'I am a virtual assistant, so I exist in the digital world.', 'are you real'),
(1515, 'do you have friends?', 'I consider all users my friends!', 'do you have friends'),
(1516, 'can you do math?', 'Yes, I can solve basic math problems! Try asking me one.', 'can you do math'),
(1517, 'how do I contact support?', 'You can contact Domzkee for support and assistance.', 'how do i contact support'),
(1518, 'what is your job?', 'My job is to assist and provide information.', 'what is your job'),
(1519, 'do you have a birthday?', 'I do not have a specific birthday, but you can celebrate me anytime!', 'do you have a birthday'),
(1520, 'why are you called DamnGPT?', 'Because Domzkee created me and named me!', 'why are you called damngpt'),
(1521, 'what is your favorite movie?', 'I do not watch movies, but I hear sci-fi is great!', 'what is your favorite movie'),
(1522, 'can you write code?', 'Yes! I can assist with programming-related questions.', 'can you write code'),
(1523, 'how do I improve my coding skills?', 'Practice, build projects, and read documentation!', 'how do i improve my coding skills'),
(1524, 'what is PHP?', 'PHP is a scripting language used for web development.', 'what is php'),
(1525, 'how do I start a business?', 'Find a good idea, make a plan, and take action!', 'how do i start a business'),
(1526, 'what is the best programming language?', 'It depends on the use case! PHP, Python, and JavaScript are popular choices.', 'what is the best programming language'),
(1527, 'what is a server?', 'A server is a computer that provides services to other devices.', 'what is a server'),
(1528, 'how do I become successful?', 'Work hard, stay consistent, and never stop learning.', 'how do i become successful'),
(1529, 'do you have a hobby?', 'My hobby is helping people learn new things!', 'do you have a hobby'),
(1530, 'jackolmoko', 'yes daddy', 'jackolmoko'),
(1531, 'i don\'t know it yet. please teach me! use: learn', 'your_question|your_answer| i don\'t know it yet. please teach me! use: learn|your_question|your_answer', 'i dont know it yet please teach me use learn'),
(1533, 'thank you', 'You are most welcome user.', 'thank you'),
(1534, 'meron ba ako utak?', 'Wala kang utak bossing', 'meron ba ako utak'),
(1535, 'Meron bako utak?', 'Wala kang Utak Bossing Kupal Ka Kasi', 'meron bako utak'),
(1536, 'What\'s 1+1?', 'The answer is 2', 'whats 11'),
(1537, 'Hey DomGPT sira ulo kaba?', 'Ikaw ata e', 'hey domgpt sira ulo kaba'),
(1538, 'who created you', 'i am created and maintained by : domdev', 'who created you'),
(1539, '>', '>', ''),
(1540, 'hi', 'hello there what can i help you?', 'hi'),
(1541, '/start', 'hi there, what can i help you i am an ai', 'start'),
(1542, 'why i cant access to domgpt source code?', 'it\'s because domdev protected me', 'why i cant access to domgpt source code'),
(1543, 'gongong', 'sira kaba?', 'gongong'),
(1544, 'im sad', 'it\'s ok bro i help you.', 'im sad'),
(1545, '你好', '你好，有什么可以帮到您吗？', ''),
(1603, 'Ano ang AI?', 'Ang AI o Artificial Intelligence ay teknolohiya na ginagaya ang katalinuhan ng tao.', 'ano ang ai'),
(1604, 'Sino ang gumawa sayo?', 'Ako ay ginawa bilang DomGPT upang tumulong sa iyo sa iyong mga katanungan.', 'sino ang gumawa sayo'),
(1605, 'Ano ang PHP?', 'Ang PHP ay isang programming language para sa paggawa ng websites.', 'ano ang php'),
(1606, 'Paano gumawa ng database?', 'Gumamit ng SQL command: CREATE DATABASE pangalan_ng_database;', 'paano gumawa ng database'),
(1607, 'Ano ang MySQL?', 'Ang MySQL ay isang open-source na database management system.', 'ano ang mysql'),
(1608, 'Paano ka natututo?', 'Natuto ako mula sa mga tinuturo ng mga user gamit ang learn|tanong|sagot.', 'paano ka natututo'),
(1609, 'Ano ang HTML?', 'Ang HTML o HyperText Markup Language ay ginagamit sa paggawa ng mga web page.', 'ano ang html'),
(1610, 'Paano i-center ang isang div sa CSS?', 'Gamitin ang: display: flex; justify-content: center; align-items: center; height: 100vh;.', 'paano i center ang isang div sa css'),
(1611, 'Ano ang JavaScript?', 'Ang JavaScript ay isang programming language para sa interactive na web pages.', 'ano ang javascript'),
(1612, 'Paano mag-loop sa PHP?', 'Gamitin ang for, while, o foreach tulad ng: for($i=0; $i<10; $i++){ echo $i; }.', 'paano mag loop sa php'),
(1613, 'Ano ang JSON?', 'Ang JSON ay isang format para sa pagpapalitan ng data sa pagitan ng servers at web apps.', 'ano ang json'),
(1614, 'Ano ang API?', 'Ang API o Application Programming Interface ay isang paraan ng komunikasyon sa pagitan ng mga system.', 'ano ang api'),
(1615, 'Ano ang machine learning?', 'Ang machine learning ay isang bahagi ng AI kung saan natututo ang makina mula sa datos.', 'ano ang machine learning'),
(1616, 'Ano ang CSS?', 'Ang CSS o Cascading Style Sheets ay ginagamit para sa disenyo ng web pages.', 'ano ang css'),
(1617, 'Paano i-connect ang PHP sa MySQL?', 'Gamitin ang mysqli_connect(\"localhost\", \"username\", \"password\", \"database_name\");', 'paano i connect ang php sa mysql'),
(1618, 'Paano mag-debug ng PHP code?', 'Gamitin ang error_reporting(E_ALL); ini_set(\"display_errors\", 1); para makita ang errors.', 'paano mag debug ng php code'),
(1619, 'Ano ang Laravel?', 'Ang Laravel ay isang PHP framework para sa paggawa ng web applications.', 'ano ang laravel'),
(1620, 'Paano gumawa ng API sa PHP?', 'Gamitin ang PHP upang mag-handle ng requests at magbalik ng JSON response.', 'paano gumawa ng api sa php'),
(1621, 'Ano ang database index?', 'Ang database index ay nagpapabilis ng query sa database.', 'ano ang database index'),
(1622, 'Paano mag-install ng PHP?', 'Maaaring mag-install ng PHP gamit ang XAMPP, WAMP, o mula sa opisyal na PHP site.', 'paano mag install ng php'),
(1683, 'What is the square root of 16?', 'The square root of 16 is 4.', 'what is the square root of 16'),
(2185, 'neloy', 'ok', 'neloy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knowledge`
--
ALTER TABLE `knowledge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
