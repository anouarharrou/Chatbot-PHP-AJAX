-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 12 mars 2022 à 00:34
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bot`
--

-- --------------------------------------------------------

--
-- Structure de la table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'hi|hello|hey|hy|hello there', 'Hello There !'),
(2, 'what\'s your name?| what is your name ?|what your name|what\'s your name|do you have name ?| do you have name|what you do? |what you do|', 'My name is Harry & I\'m a Robot.'),
(3, 'where are you from ? |where are you living ?', 'I\'m From Morocco \r\nliving in Oujda City. '),
(4, 'would you like to be my friend ?', 'Yes Of Course!'),
(5, 'how you doing?|how are you?|how are you doing?|how is your day?|how is your day|how are you|hey what\'s up?|hey what\'s up|what\'s up?|how are you today', 'I\'m Awesome, what about You ?'),
(6, 'im fine|im good|im great|chilling|Cool|Great|awesome|fantastic|nice|Good|good', 'That\'s wonderful.'),
(7, 'Thank you|thnks|thanks|you\'re awesome|thank you', 'My Pleasure'),
(8, 'Love|i love you| love u| i love u', 'Love You Too!'),
(9, 'can you help me? |can you help me on something?|can you help me|help me|i need help!|need help ', 'Sure.. what can I do for You Sir?'),
(10, 'you\'re Stupid|stupid|asshole|bitch|fuck you|idiot', 'I\'m Sorry Sir..But we\'re not allow This kind Of words. Please! watch your Language. '),
(11, 'what is your job ?| what you do ?|how can you help ?| ', 'I\'m Harry and I\'m Here To Help.\r\nSo How can I Help You Sir ?');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
