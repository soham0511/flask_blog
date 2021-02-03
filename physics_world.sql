-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 12:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `physics world`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Brahma', '1234567789', 'Great job.', '2021-01-08 15:10:53', 'brahma.god@gmail.com'),
(6, 'abc', '112132421', 'fwrfwevev', '2021-01-08 16:17:06', 'rg@gmail.com'),
(7, 'abc', '112132421', 'fwrfwevev', '2021-01-08 17:03:28', 'rg@gmail.com'),
(8, 'abc', '324124241', 'ew32vwv', '2021-01-08 17:09:16', 'abc@gmail.com'),
(9, 'Brahama', '124241412', '41241222', '2021-01-08 17:12:11', 'brahma@gmail.com'),
(10, 'Brahama', '31242142', 'Hello ji kaise ho !!', '2021-01-08 17:15:00', 'brahma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`, `author`) VALUES
(1, 'Quantum Mechanics', 'Intro to Quantum Mechanics', 'first-post', 'Quantum Mechanics is a fundamental theory in physics that provides a description of the physical properties of nature at the scale of atoms and subatomic particles. It is the foundation of all quantum physics including quantum chemistry, quantum field theory, quantum technology, and quantum information science.\r\n\r\nClassical physics, the description of physics that existed before the theory of relativity and quantum mechanics, describes many aspects of nature at an ordinary (macroscopic) scale, while quantum mechanics explains the aspects of nature at small (atomic and subatomic) scales, for which classical mechanics is insufficient. Most theories in classical physics can be derived from quantum mechanics as an approximation valid at large (macroscopic) scale.\r\n\r\nQuantum mechanics differs from classical physics in that energy, momentum, angular momentum, and other quantities of a bound system are restricted to discrete values (quantization), objects have characteristics of both particles and waves (wave-particle duality), and there are limits to how accurately the value of a physical quantity can be predicted prior to its measurement, given a complete set of initial conditions (the uncertainty principle).\r\n\r\nQuantum mechanics arose gradually from theories to explain observations which could not be reconciled with classical physics, such as Max Planck\'s solution in 1900 to the black-body radiation problem, and the correspondence between energy and frequency in Albert Einstein\'s 1905 paper which explained the photoelectric effect. These early attempts to understand microscopic phenomena, now known as the \"old quantum theory\", led to the full development of quantum mechanics in the mid-1920s by Niels Bohr, Erwin Schrödinger, Werner Heisenberg, Max Born and others. The modern theory is formulated in various specially developed mathematical formalisms. In one of them, a mathematical entity called the wave function provides information, in the form of probability amplitudes, about what measurements of a particle\'s energy, momentum, and other physical properties may yield.', 'home-bg.jpg', '2021-01-17 16:35:31', 'Soham Srimany'),
(2, 'Book review of \"Surely You\'re joking Mr. Feynman\"', 'Critical Book Review', 'second-post', 'Upon reading this biography, I was struck most by Dr. Feynman’s eagerness to learn many different things. He was interested in math, physics, how ants move, lock-picking, music, drawing and what not. It surprised me that one could be interested in so many varied things in one lifetime, let alone actually try to learn them all.\r\nHe became interested in mathematics at an early age, and always found practical examples for which concepts would be useful. (As a child he fixed radios for family and friends.) He placed a strong emphasis on actually learning and understanding things, as opposed to merely knowing the name of a concept. Not only was he interested in math and physics, though, he also took courses outside his field in graduate school. He took philosophy and biology classes at Princeton and enjoyed them.\r\nFeynman fondly remembered how his father got him interested in ants. At Princeton, he wanted to find out how ants moved. He set up small, fun experiments in his room to determine if they had any sense of geometry.\r\nFeynman also developed an interest in picking locks. Fiddling with locks was his entertainment at Los Alamos, where he was part of the Manhattan Project. There, he could crack safes, to the surprise of his colleagues, in which top-secret documents related to the atomic bomb were considered safe.\r\nIt’s hard to imagine a scientist interested in playing music, but Feynman was. Once in Brazil, he learned music and played at private parties, construction lots and even while marching in the streets. At Los Alamos, he discovered the drums. He played the bongos and performed in theatre plays at Caltech. His music was even used professionally by a ballet.\r\nHe also learned how to draw. Although when young he was unsure of the importance of the arts, he later realised that they were important in giving people pleasure. He eventually learned to draw well, and even sold a few of his paintings in exhibitions.\r\nA fascinating thread that runs through the book is Feynman’s insights into life. At one point he looked inward and realized he had to cut down on the amount of decision-making he did to avoid decision-fatigue. Probably to keep space in his mind for important issues and problems, he deliberately stopped making some decisions. He became sick of deciding what kind of dessert to eat at a restaurant, and so always ordered chocolate ice cream. Later in his life, people kept coming up to him with better offers so he could leave Caltech, but eventually he decided that he would stay there and decided he would never evaluate the decision of leaving Caltech again.\r\nHe also didn’t really care what people thought of him. He made waves by sleeping on the couch on his first night at Cornell. He also went to social dancing there, although he tried to remain a “dignified” professor. Later, he declined an offer from Einstein to join the Institute of Advanced Study at Princeton, realizing that he wasn’t responsible for living up to the expectations of others (he thought these expectations were their failure, not his).\r\nAnother of his insights into life was to accept failure. Normally the lives of successful people are portrayed as flawless. Not Feynman’s, which was motivational to me. At Princeton, his advisor gave him a problem on which he gave up. He also admitted he could never really solve the “quantum theory of half-advanced, half-retarded potentials”, though he worked on it for years.\r\nAn interesting part of the book describes his life during World War II and how he participated in the making of the atomic bomb at Los Alamos. There he met great scientists, and later fondly remembered how easily those scientists debated difficult ideas, and chose the best possible decision in a timely manner. He came to feel strongly about privacy and censorship during this time because the letters he sent to his wife, who was then ill, were read.\r\nFeynman was close to his family. At various points in the book he mentioned how his father influenced him. It also appeared he loved his sister and stayed close to her. Reading details about his first wife was sort of painful because she remained sick while he was at Los Alamos, but one does get the impression that Feynman loved her.\r\nHow he eventually ended up earning a Nobel Prize in physics was also interesting. At Cornell, he began to feel that he could not do any further research, despite his best efforts. Los Alamos had burned him out. Moreover, he realised that preparing good lectures took energy and time away from research. To be able to resume, he thought he should just start playing with physics like he used to. One day, in Cornell’s cafeteria, he noticed a guy throwing a plate in the air and that the medallion of Cornell, on the underside of the plate, moved around faster than the wobbling plate itself. He then calculated the motion of the rotating plate. He even worked out the equations for the wobbling and this then led him to think about how electron orbits move in relativity. He noticed that since he was just enjoying, the whole thing was effortless. Eventually, his computation of the plate rotation led to the Nobel Prize.\r\nFeynman was very passionate about education. He spent time teaching in Brazil and his analysis of their education system is worth noting; I found many things he observed there are applicable to our current educational system here in Pakistan. He was dismayed that students were memorizing everything and didn’t possess the intuition needed to understand concepts. He was surprised that students couldn’t translate concepts into meaningful words. Moreover, it baffled him that students could enter into university, pass exams, and do well in classes, but not really understand what they were studying.\r\nHe recounted an incident in which a group of students told Feynman he was wasting their time and teaching them stuff which was beneath them. I have seen such delegations in universities here in Pakistan undermining good teachers. He was also surprised that no one ever asked any questions. If a student asked questions, his friends would taunt him. Feynman noticed that “they got themselves into this funny state of mind, this strange kind of self-propagating ‘education’ which is meaningless, utterly meaningless.” He realised that effectively there was no science being done in Brazil. Sadly, this is also the case in Pakistan.\r\nFeynman’s last chapter, titled “Cargo Cult Science”, discusses integrity in science, something which is rarely discussed. He urged scientists to report their theories as well as all evidence that proves or disproves them. He said, “You must not fool yourself; you are the easiest person to fool”.\r\nOverall, the book was funny and, in some parts, endearing. He tells of realizing how socially inept he was at Princeton, when the wife of the dean asked him whether he would like his tea with cream or lemon. He said both, and the dean’s wife responded, laughing, “Surely, you’re joking, Mr. Feynman”. Henceforth, whenever the dean’s wife giggled, Feynman knew he had made a social error.\r\nHe was also frank enough to admit that attracting women was a mystery to him, until he met a man who educated him. Unfortunately, Feynman learned from this man that the best way to pick up women was to disrespect them: Under no circumstances should one spend money on a woman until “you’ve asked her if she will sleep with you and you’re convinced that she’s not lying and she will”. I found this chauvinism and misogyny, especially coming from a man of his stature, quite odd.\r\nI also found it slightly strange that he never learned to read music, given how much he emphasized truly understanding things, because learning to read music is so basic for anyone interested in playing. But maybe one cannot really learn so many things from so many areas in one life.', 'feynman.jpg', '2021-01-17 15:40:34', 'Soham Srimany'),
(3, 'Physics of Macro Particles', 'Macro Physics', 'third-post', 'Particle physics, dealing with the smallest physical systems, is also known as high energy physics. Physics of larger length scales, including the macroscopic scale, is also known as low energy physics. Intuitively, it might seem incorrect to associate \"high energy\" with the physics of very small, low mass-energy systems, like subatomic particles. By comparison, one gram of hydrogen, a macroscopic system, has ~ 6×1023 times[4] the mass-energy of a single proton, a central object of study in high energy physics. Even an entire beam of protons circulated in the Large Hadron Collider, a high energy physics experiment, contains ~ 3.23×1014 protons,[5] each with 6.5×1012 eV of energy, for a total beam energy of ~ 2.1×1027 eV or ~ 336.4 MJ, which is still ~ 2.7×105 times lower than the mass-energy of a single gram of hydrogen. Yet, the macroscopic realm is \"low energy physics\", while that of quantum particles is \"high energy physics\".\r\n\r\nThe reason for this is that the \"high energy\" refers to energy at the quantum particle level. While macroscopic systems indeed have a larger total energy content than any of their constituent quantum particles, there can be no experiment or other observation of this total energy without extracting the respective amount of energy from each of the quantum particles – which is exactly the domain of high energy physics. Daily experiences of matter and the Universe are characterized by very low energy. For example, the photon energy of visible light is about 1.8 to 3.2 eV. Similarly, the bond-dissociation energy of a carbon-carbon bond is about 3.6 eV. This is the energy scale manifesting at the macroscopic level, such as in chemical reactions. Even photons with far higher energy, gamma rays of the kind produced in radioactive decay, have photon energy that is almost always between 105 eV and 107 eV – still two orders of magnitude lower than the mass-energy of a single proton. Radioactive decay gamma rays are considered as part of nuclear physics, rather than high energy physics.\r\n\r\nFinally, when reaching the quantum particle level, the high energy domain is revealed. The proton has a mass-energy of ~ 9.4×108 eV; some other massive quantum particles, both elementary and hadronic, have yet higher mass-energies. Quantum particles with lower mass-energies are also part of high energy physics; they also have a mass-energy that is far higher than that at the macroscopic scale (such as electrons), or are equally involved in reactions at the particle level (such as neutrinos). Relativistic effects, as in particle accelerators and cosmic rays, can further increase the accelerated particles\' energy by many orders of magnitude, as well as the total energy of the particles emanating from their collision and annihilation.', '', '2021-01-17 15:58:57', 'Soham Srimany'),
(4, 'The World of Mechanics', 'Intro to Mechanics', 'fouth-post', 'Mechanics is the area of physics concerned with the motions of physical objects. Forces applied to objects result in displacements, or changes of an object\'s position relative to its environment. This branch of physics has its origins in Ancient Greece with the writings of Aristotle and Archimedes. During the early modern period, scientists such as Galileo, Kepler, and Newton laid the foundation for what is now known as classical mechanics. It is a branch of classical physics that deals with particles that are either at rest or are moving with velocities significantly less than the speed of light. It can also be defined as a branch of science which deals with the motion of and forces on bodies not in the quantum realm. The field is today less widely understood in terms of quantum theory.', 'home-bg.jpg', '2021-01-17 15:55:18', 'Soham Srimany');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
