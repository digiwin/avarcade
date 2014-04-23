-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2014 at 07:40 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `avarcade`
--

-- --------------------------------------------------------

--
-- Table structure for table `ava_adverts`
--

CREATE TABLE IF NOT EXISTS `ava_adverts` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(40) NOT NULL,
  `ad_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ava_adverts`
--

INSERT INTO `ava_adverts` (`id`, `ad_name`, `ad_content`) VALUES
(1, 'Default', ''),
(2, 'AV Arcade Banner', '<a href="http://anonym.to/?http://www.avscripts.net"><img src="http://anonym.to/?http://www.avscripts.net/images/ad_example.png"></a><br>'),
(3, 'test advert', 'dungdn test advert');

-- --------------------------------------------------------

--
-- Table structure for table `ava_cats`
--

CREATE TABLE IF NOT EXISTS `ava_cats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `cat_order` decimal(5,1) NOT NULL DEFAULT '1.0',
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `seo_url` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ava_cats`
--

INSERT INTO `ava_cats` (`id`, `name`, `cat_order`, `description`, `keywords`, `seo_url`, `parent_id`) VALUES
(1, 'Action', 1.0, 'A default category for demonstration', 'games, flash, arcade', 'action', 0),
(2, 'Adventure', 2.0, 'this is a test category', 'test', 'adventure', 0),
(3, 'Girls', 3.0, 'list game for girls', 'games, flash, arcade, girls', 'girls', 0),
(4, 'Puzzle', 4.0, 'puzzle', 'games, flash, arcade, puzzle', 'puzzle', 0),
(5, 'Racing', 5.0, 'racing', 'games, flash, arcade, racing', 'racing', 0),
(6, 'Strategy', 6.0, 'strategy', 'games, flash, arcade, strategy', 'strategy', 0),
(7, 'Kids', 7.0, 'game for kids', 'games, flash, arcade, kids', 'kids', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ava_comments`
--

CREATE TABLE IF NOT EXISTS `ava_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `link_id` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` char(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_favourites`
--

CREATE TABLE IF NOT EXISTS `ava_favourites` (
  `user_id` int(5) NOT NULL,
  `game_id` int(5) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `game_id` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ava_feed_settings`
--

CREATE TABLE IF NOT EXISTS `ava_feed_settings` (
  `name` varchar(20) NOT NULL,
  `value` varchar(240) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ava_feed_settings`
--

INSERT INTO `ava_feed_settings` (`name`, `value`) VALUES
('max_feed', '1000'),
('category_action', '1'),
('category_jigsaw', '1'),
('category_fighting', '1'),
('category_education', '1'),
('category_driving', '1'),
('category_dress_up', '1'),
('category_defense', '1'),
('category_casino', '1'),
('category_board_game', '1'),
('category_arcade', '1'),
('category_adventure', '1'),
('feed_params', ''),
('default_ad', '1'),
('get_tags', '0'),
('download', '1'),
('curl', '1'),
('mochi_secretkey', ''),
('mochi_pubid', ''),
('category_multiplayer', '1'),
('category_other', '1'),
('category_customize', '1'),
('category_puzzle', '1'),
('category_rhythm', '1'),
('category_rpg', '1'),
('category_shooter', '1'),
('category_sports', '1'),
('category_strategy', '1'),
('category_skill', '1'),
('category_autopost', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ava_fgd`
--

CREATE TABLE IF NOT EXISTS `ava_fgd` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `fgd_id` int(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  `tags` varchar(200) NOT NULL,
  `mochi_id` varchar(20) NOT NULL,
  `author_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`fgd_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_fog`
--

CREATE TABLE IF NOT EXISTS `ava_fog` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `fog_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `author_link` varchar(255) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `highscores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`fog_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_forums`
--

CREATE TABLE IF NOT EXISTS `ava_forums` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `description` text,
  `forum_order` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `last_post_time` int(11) DEFAULT NULL,
  `last_poster` varchar(60) DEFAULT NULL,
  `last_poster_id` int(11) DEFAULT NULL,
  `last_topic` varchar(60) DEFAULT NULL,
  `last_topic_id` int(11) DEFAULT NULL,
  `last_topic_seo_url` varchar(100) DEFAULT NULL,
  `last_topic_forum_seo_url` varchar(100) DEFAULT NULL,
  `total_topics` int(11) NOT NULL DEFAULT '0',
  `total_posts` int(11) NOT NULL DEFAULT '0',
  `seo_url` varchar(100) DEFAULT '',
  `read_only` tinyint(1) NOT NULL DEFAULT '0',
  `parents` varchar(20) NOT NULL DEFAULT '0',
  `children` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`),
  KEY `forum_order` (`forum_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ava_forums`
--

INSERT INTO `ava_forums` (`id`, `name`, `description`, `forum_order`, `parent_id`, `category`, `last_post_time`, `last_poster`, `last_poster_id`, `last_topic`, `last_topic_id`, `last_topic_seo_url`, `last_topic_forum_seo_url`, `total_topics`, `total_posts`, `seo_url`, `read_only`, `parents`, `children`) VALUES
(1, 'Main Category', 'A category.', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'main-category', 1, '', '2'),
(2, 'Example Forum', 'Here''s an example forum. In the admin panel rename me to set up your first forum.', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'example-forum', 0, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `ava_friends`
--

CREATE TABLE IF NOT EXISTS `ava_friends` (
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  KEY `user1` (`user1`),
  KEY `user2` (`user2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ava_friend_requests`
--

CREATE TABLE IF NOT EXISTS `ava_friend_requests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_games`
--

CREATE TABLE IF NOT EXISTS `ava_games` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_parent` int(11) DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `user_submit` varchar(10) NOT NULL DEFAULT '0',
  `width` varchar(4) NOT NULL DEFAULT '',
  `height` varchar(4) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `import` char(1) NOT NULL DEFAULT '0',
  `filetype` varchar(5) NOT NULL DEFAULT '1',
  `instructions` text NOT NULL,
  `mochi` tinyint(1) NOT NULL DEFAULT '0',
  `rating` decimal(5,1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `advert_id` tinyint(5) NOT NULL DEFAULT '1',
  `highscores` tinyint(1) NOT NULL DEFAULT '0',
  `mochi_id` varchar(20) NOT NULL DEFAULT '0',
  `seo_url` varchar(100) NOT NULL,
  `submitter` int(11) NOT NULL DEFAULT '0',
  `html_code` text,
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `ava_games`
--

INSERT INTO `ava_games` (`id`, `name`, `description`, `url`, `category_id`, `category_parent`, `hits`, `published`, `user_submit`, `width`, `height`, `image`, `import`, `filetype`, `instructions`, `mochi`, `rating`, `featured`, `date_added`, `advert_id`, `highscores`, `mochi_id`, `seo_url`, `submitter`, `html_code`) VALUES
(1, 'Turn Based Battle', 'Not everything is as it seems when James the Elf has the first Random Encounter of this Adventure. Will he get to the bottom of his mysterious enemy? Or will the entire world crumble to the great evil who presides in an impenetrable fortress?', 'http://games.mochiads.com/c/g/turn-based-battle/TurnBasedBattleMOCHI.swf', 1, 0, 0, 1, '0', '550', '400', 'http://thumbs.mochiads.com/c/g/turn-based-battle/_thumb_100x100.jpg', '0', 'swf', 'Use the mouse to navigate and battle!', 0, 0.0, 1, '2013-12-15 12:13:23', 1, 1, '15ae16d5b1c9f47d', 'turn-based-battle', 0, NULL),
(2, 'Shift', 'Guide your mystery man through a plethora of mazes which will take your sense of perception to the limit in this smash hit game. ', 'http://games.mochiads.com/c/g/shift/Shiftfla5_MOCHI3.swf', 1, 0, 0, 1, '0', '500', '500', 'http://thumbs.mochiads.com/c/g/shift/_thumb_100x100.png', '0', 'swf', 'Run with the arrow keys. Jump with the Space bar Shift with the Shift Key Pause with the P Key', 0, 0.0, 1, '2013-12-15 12:13:23', 1, 1, '0b396fea4f5a54f8', 'shift', 0, NULL),
(3, 'Monster High Lagoona blue at the classroom', 'Monster High Lagoona blue at the classroom', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/230_230_2.jpg', '0', 'swf', 'Monster High Lagoona blue at the classroom', 0, 0.0, 1, '2013-12-24 10:45:34', 0, 0, '', 'monster-high-lagoona-blue-at-the-classroom', 0, ''),
(4, 'Baby Hazel Halloween Party', 'Baby Hazel Halloween Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_5.jpg', '0', 'swf', 'Baby Hazel Halloween Party', 0, 0.0, 1, '2013-12-24 10:47:37', 1, 0, '', 'baby-hazel-halloween-party', 0, ''),
(5, 'Baby Hazel Halloween Party 1', 'Baby Hazel Halloween Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92.jpg', '0', 'swf', 'Baby Hazel Halloween Party', 0, 0.0, 1, '2013-12-24 10:49:06', 1, 0, '', 'baby-hazel-halloween-party-1', 0, ''),
(6, 'Baby Hazel Halloween Party 2', 'Baby Hazel Halloween Part', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_2.jpg', '0', 'swf', 'Baby Hazel Halloween Part', 0, 0.0, 1, '2013-12-24 10:50:07', 1, 0, '', 'baby-hazel-halloween-party-2', 0, ''),
(7, 'Baby Hazel Halloween Part 3', 'Baby Hazel Halloween Part', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_3.jpg', '0', 'swf', 'Baby Hazel Halloween Part', 0, 0.0, 1, '2013-12-24 10:50:39', 1, 0, '', 'baby-hazel-halloween-part-3', 0, ''),
(8, 'Baby Hazel Halloween Party 4', 'Baby Hazel Halloween Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_4.jpg', '0', 'swf', 'Baby Hazel Halloween Party', 0, 0.0, 1, '2013-12-24 10:51:00', 1, 0, '', 'baby-hazel-halloween-party-4', 0, ''),
(9, 'Baby Hazel Halloween Party 5', 'Baby Hazel Halloween Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_6.jpg', '0', 'swf', 'Baby Hazel Halloween Party', 0, 0.0, 1, '2013-12-24 10:51:56', 1, 0, '', 'baby-hazel-halloween-party-5', 0, ''),
(10, 'Baby Hazel Halloween Party 6', 'Baby Hazel Halloween Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_7.jpg', '0', 'swf', 'Baby Hazel Halloween Party', 0, 0.0, 1, '2013-12-24 10:52:28', 1, 0, '', 'baby-hazel-halloween-party-6', 0, ''),
(11, 'test action game', 'test game', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_9.jpg', '0', 'swf', 'test how to play', 0, 0.0, 1, '2013-12-24 10:53:08', 1, 0, '', 'test-action-game', 0, ''),
(12, 'Speed Bus Frenzy', 'Speed Bus Frenzy', 'http://localhost/game/games/110_110.gif', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110.gif', '0', 'gif', 'Speed Bus Frenzy', 0, 0.0, 1, '2014-01-02 17:11:46', 1, 1, '', 'speed-bus-frenzy', 0, ''),
(13, 'Zoombie Destroyer Rush', 'Zoombie Destroyer Rush', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110.jpg', '0', 'swf', 'Zoombie Destroyer Rush', 0, 0.0, 1, '2014-01-02 17:12:43', 1, 1, '', 'zoombie-destroyer-rush', 0, ''),
(14, 'illegal Night Racing', 'illegal Night Racing', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110_2.jpg', '0', 'swf', 'illegal Night Racing', 0, 0.0, 1, '2014-01-02 17:13:23', 1, 1, '', 'illegal-night-racing', 0, ''),
(15, 'Santa Fun Ride', 'Santa Fun Ride', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110_3.jpg', '0', 'swf', 'Santa Fun Ride', 0, 0.0, 1, '2014-01-02 17:13:55', 1, 1, '', 'santa-fun-ride', 0, ''),
(16, 'Christmas Jigsaw Puzzle', 'Christmas Jigsaw Puzzle', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110_4.jpg', '0', 'swf', 'Christmas Jigsaw Puzzle', 0, 0.0, 1, '2014-01-02 17:15:19', 1, 1, '', 'christmas-jigsaw-puzzle', 0, ''),
(17, 'Santa Mario Deliver', 'Santa Mario Deliver', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110_5.jpg', '0', 'swf', 'Santa Mario Deliver', 0, 0.0, 1, '2014-01-02 17:16:05', 1, 1, '', 'santa-mario-deliver', 0, ''),
(18, 'Winter Bike Stunt', 'Winter Bike Stunt', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110_6.jpg', '0', 'swf', 'Winter Bike Stunt', 0, 0.0, 0, '2014-01-04 08:56:36', 1, 0, '', 'winter-bike-stunt', 0, ''),
(19, 'Baby Carmen Dress Up', 'Baby Carmen Dress Up', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/230_230.jpg', '0', 'swf', 'Baby Carmen Dress Up', 0, 0.0, 0, '2014-01-04 08:57:32', 1, 0, '', 'baby-carmen-dress-up', 0, ''),
(20, 'Teacher Kissing', 'Teacher Kissing', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/230_230.jpg', '0', 'swf', 'Teacher Kissing', 0, 0.0, 0, '2014-01-04 08:58:06', 1, 0, '', 'teacher-kissing', 0, ''),
(21, 'Grand Thieft Shooter', 'Grand Thieft Shooter', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/230_230_3.jpg', '0', 'swf', 'Grand Thieft Shooter', 0, 0.0, 0, '2014-01-04 08:58:47', 1, 0, '', 'grand-thieft-shooter', 0, ''),
(22, 'Snail Bomb 6: Winter Story', 'Snail Bomb 6: Winter Story', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92.jpg', '0', 'swf', 'Snail Bomb 6: Winter Story', 0, 0.0, 0, '2014-01-04 08:59:51', 1, 0, '', 'snail-bomb-6-winter-story', 0, ''),
(23, 'Baby Hazel: Hallowen Party', 'Baby Hazel: Hallowen Party', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_2.jpg', '0', 'swf', 'Baby Hazel: Hallowen Party', 0, 0.0, 0, '2014-01-04 09:00:29', 1, 0, '', 'baby-hazel-hallowen-party', 0, ''),
(24, 'Monster High Lagoona blue at the classroom', 'Monster High Lagoona blue at the classroom', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/110_110.gif', '0', 'swf', 'Monster High Lagoona blue at the classroom', 0, 0.0, 0, '2014-01-04 09:01:19', 1, 0, '', 'monster-high-lagoona-blue-at-the-classroom-2', 0, ''),
(25, 'Funny Nurse', 'Funny Nurse', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_3.jpg', '0', 'swf', 'Funny Nurse', 0, 0.0, 0, '2014-01-04 09:01:43', 1, 0, '', 'funny-nurse', 0, ''),
(26, 'Super Car Road Trip', 'Super Car Road Trip', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_4.jpg', '0', 'swf', 'Super Car Road Trip', 0, 0.0, 0, '2014-01-04 09:02:11', 1, 0, '', 'super-car-road-trip', 0, ''),
(27, 'Babysister in Lover', 'Babysister in Lover', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_5.jpg', '0', 'swf', 'Babysister in Lover', 0, 0.0, 0, '2014-01-04 09:02:46', 1, 0, '', 'babysister-in-lover', 0, ''),
(28, 'Microcosmic Shooter', 'Microcosmic Shooter', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_6.jpg', '0', 'swf', 'Microcosmic Shooter', 0, 0.0, 0, '2014-01-04 09:03:14', 1, 0, '', 'microcosmic-shooter', 0, ''),
(29, 'Snailbob 5: Love story', 'Snailbob 5: Love story', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_7.jpg', '0', 'swf', 'Snailbob 5: Love story', 0, 0.0, 0, '2014-01-04 09:03:45', 1, 0, '', 'snailbob-5-love-story', 0, ''),
(30, 'Play Mad Trucker 4: Last Pursuit', 'Play Mad Trucker 4: Last Pursuit', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/92_92_9.jpg', '0', 'swf', 'Play Mad Trucker 4: Last Pursuit', 0, 0.0, 0, '2014-01-04 09:04:44', 1, 0, '', 'play-mad-trucker-4-last-pursuit', 0, ''),
(31, 'Bouncy Bird', 'Bouncy Bird', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/emzi-bouncy-bird.jpg', '0', 'swf', 'Bouncy Bird', 0, 0.0, 0, '2014-01-04 09:30:08', 1, 0, '', 'bouncy-bird', 0, ''),
(32, 'Bad Piggies', 'Bad Piggies', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/bad-piggies.jpg', '0', 'swf', 'Bad Piggies', 0, 0.0, 0, '2014-01-04 09:30:39', 1, 0, '', 'bad-piggies', 0, ''),
(33, 'Food Shoot', 'Food Shoot', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/emzi-food-shot.jpg', '0', 'swf', 'Food Shoot', 0, 0.0, 0, '2014-01-04 09:31:05', 1, 0, '', 'food-shoot', 0, ''),
(34, 'Zoobie Vs Penguins 2', 'Zoobie Vs Penguins 2', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/emzi-zombies-vs-penguins-2.jpg', '0', 'swf', 'Zoobie Vs Penguins 2', 0, 0.0, 0, '2014-01-04 09:31:44', 1, 0, '', 'zoobie-vs-penguins-2', 0, ''),
(35, 'Fashion Designer Newyork', 'Fashion Designer Newyork', '', 1, 0, 0, 1, '0', '', '', 'http://localhost/game/games/images/emzi-fashion-designer-newyork.jpg', '0', 'swf', 'Fashion Designer Newyork', 0, 0.0, 1, '2014-01-04 09:32:24', 1, 0, '', 'fashion-designer-newyork', 0, ''),
(36, 'Dragon Age Legends: Remix 01', 'Dragon Age Legends: Remix 01', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Dragon Age Legends: Remix 01', 0, 0.0, 0, '2014-04-07 11:40:36', 1, 0, '', 'dragon-age-legends-remix-01', 0, ''),
(37, 'Lego Star Wars: Yoda Chronicles', 'Lego Star Wars: Yoda Chronicles', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Lego Star Wars: Yoda Chronicles', 0, 0.0, 0, '2014-04-07 11:41:15', 1, 0, '', 'lego-star-wars-yoda-chronicles', 0, ''),
(38, 'Style Your Feet', 'Description: Use the beauty products and accessories to treat your feet to a marvelous makeover. - See more at: http://z6.com/style_your_feet#sthash.NFCs4zly.dpuf', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Game Source: girlsgogames.com.\nAll copyrights and trademarks of this game are held by owners and their use is allowed under the fair use clause of the Copyright Law. If you believe we violating your copyrights, please advise us at z6feedback(at)gmail.com in order that we can solve the problems. - See more at: http://z6.com/style_your_feet#sthash.NFCs4zly.dpuf', 0, 0.0, 0, '2014-04-07 11:42:13', 1, 0, '', 'style-your-feet', 0, ''),
(39, 'Gangblast 2', 'It''s time for the second round of the physics-based shootout fun game in which you have to blast all gang members off the platform at all costs. Use your pistol to bump off baddies and shoot barrels to cause a massive explosion. But don''t waste your ammo. Much fun.', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Game Source: flashgames247.com.\nAll copyrights and trademarks of this game are held by owners and their use is allowed under the fair use clause of the Copyright Law. If you believe we violating your copyrights, please advise us at z6feedback(at)gmail.com in order that we can solve the problems.', 0, 0.0, 0, '2014-04-07 12:01:29', 1, 0, '', 'gangblast-2', 0, ''),
(40, 'Truck Loader', 'Truck Loader is a simple physics-based puzzle game. Your mission is to load the waiting carrier as quickly as possible. Move boxes around with your magnetic arm and stack them in the labeled area of the truck.', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Game Source: flazm.com.\nAll copyrights and trademarks of this game are held by owners and their use is allowed under the fair use clause of the Copyright Law. If you believe we violating your copyrights, please advise us at z6feedback(at)gmail.com in order that we can solve the problems. - See more at: http://z6.com/truck_loader#sthash.ltPuuH7I.dpuf', 0, 0.0, 0, '2014-04-07 12:02:22', 1, 0, '', 'truck-loader', 0, ''),
(41, 'Plants vs. Zombies', 'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weaken and mulchify 26 types of zombies before they can reach your front door. Each zombie has its own special skills, so be careful how you use your limited supply of greens and seeds...Enjoy the game! - See more at: http://z6.com/plants_vs_zombies#sthash.Pz5KYiWJ.dpuf', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Game Source: Internet.\nAll copyrights and trademarks of this game are held by owners and their use is allowed under the fair use clause of the Copyright Law. If you believe we violating your copyrights, please advise us at z6feedback(at)gmail.com in order that we can solve the problems. - See more at: http://z6.com/plants_vs_zombies#sthash.Pz5KYiWJ.dpuf', 0, 0.0, 0, '2014-04-07 12:03:05', 1, 0, '', 'plants-vs-zombies', 0, ''),
(42, 'Defend Your Nuts 2', 'Defend Your Nuts 2', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Defend Your Nuts 2', 0, 0.0, 0, '2014-04-07 12:04:08', 1, 0, '', 'defend-your-nuts-2', 0, ''),
(43, 'Sushi Cat 2', 'Sushi Cat 2', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Sushi Cat 2', 0, 0.0, 0, '2014-04-07 12:04:30', 1, 0, '', 'sushi-cat-2', 0, ''),
(44, 'Gunblood', 'Gunblood', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Gunblood', 0, 0.0, 0, '2014-04-07 12:04:50', 1, 0, '', 'gunblood', 0, ''),
(45, 'Killstorm', 'Killstorm', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Killstorm', 0, 0.0, 0, '2014-04-07 12:05:08', 1, 0, '', 'killstorm', 0, ''),
(46, 'Sokoboom 2', 'Sokoboom 2', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Sokoboom 2', 0, 0.0, 0, '2014-04-07 12:05:25', 1, 0, '', 'sokoboom-2', 0, ''),
(47, 'Ninja Mu', 'Ninja Mu', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Ninja Mu', 0, 0.0, 0, '2014-04-07 12:05:41', 1, 0, '', 'ninja-mu', 0, ''),
(48, 'Baby Hazel Farm Tour', 'Baby Hazel Farm Tour', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Baby Hazel Farm Tour', 0, 0.0, 0, '2014-04-07 12:06:01', 1, 0, '', 'baby-hazel-farm-tour', 0, ''),
(49, 'Snow Cross', 'Snow Cross', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Snow Cross', 0, 0.0, 0, '2014-04-07 12:06:18', 1, 0, '', 'snow-cross', 0, ''),
(50, 'Graveyard Bustout', 'Graveyard Bustout', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Graveyard Bustout', 0, 0.0, 0, '2014-04-07 12:06:36', 1, 0, '', 'graveyard-bustout', 0, ''),
(51, 'Frenzy Babysitter', 'Frenzy Babysitter', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Frenzy Babysitter', 0, 0.0, 0, '2014-04-07 12:06:54', 1, 0, '', 'frenzy-babysitter', 0, ''),
(52, 'Dinosaur Killer 3D', 'Dinosaur Killer 3D', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Dinosaur Killer 3D', 0, 0.0, 0, '2014-04-07 12:07:24', 1, 0, '', 'dinosaur-killer-3d', 0, ''),
(53, 'Rats Invasion', 'Rats Invasion', '', 1, 0, 0, 1, '0', '', '', '', '0', 'swf', 'Rats Invasion', 0, 0.0, 0, '2014-04-07 12:07:43', 1, 0, '', 'rats-invasion', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ava_highscores`
--

CREATE TABLE IF NOT EXISTS `ava_highscores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game` int(5) DEFAULT NULL,
  `user` int(5) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `leaderboard` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game` (`game`),
  KEY `user` (`user`),
  KEY `leaderboard` (`leaderboard`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_kongregate`
--

CREATE TABLE IF NOT EXISTS `ava_kongregate` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `k_id` int(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`k_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_leaderboards`
--

CREATE TABLE IF NOT EXISTS `ava_leaderboards` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(5) NOT NULL,
  `leaderboard_id` varchar(120) NOT NULL,
  `leaderboard_name` varchar(30) NOT NULL,
  `data_type` varchar(10) NOT NULL,
  `order_by` char(4) NOT NULL,
  `label` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `leaderboard_id` (`leaderboard_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_links`
--

CREATE TABLE IF NOT EXISTS `ava_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `description` text NOT NULL,
  `sitewide` varchar(10) NOT NULL,
  `published` char(1) NOT NULL,
  `inbound` int(11) NOT NULL,
  `outbound` int(11) NOT NULL,
  `submitter` int(11) NOT NULL,
  `submitter_email` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ava_links`
--

INSERT INTO `ava_links` (`id`, `name`, `url`, `description`, `sitewide`, `published`, `inbound`, `outbound`, `submitter`, `submitter_email`) VALUES
(1, 'AV Scripts', '', 'The home of AV Arcade', '1', '1', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ava_messages`
--

CREATE TABLE IF NOT EXISTS `ava_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_name` text NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `date` text NOT NULL,
  `read` int(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `highscore_game_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_mochi`
--

CREATE TABLE IF NOT EXISTS `ava_mochi` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `gametag` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` varchar(4) NOT NULL,
  `height` varchar(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `author_link` varchar(255) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `highscores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`gametag`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_news`
--

CREATE TABLE IF NOT EXISTS `ava_news` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `user` int(5) NOT NULL,
  `date` text NOT NULL,
  `image` text NOT NULL,
  `seo_url` varchar(100) NOT NULL,
  `meta_tags` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ava_news`
--

INSERT INTO `ava_news` (`id`, `title`, `content`, `user`, `date`, `image`, `seo_url`, `meta_tags`) VALUES
(3, 'Welcome to our new arcade', '<p>Welcome to our new arcade website built with AV Arcade!</p>', 1, 'December 15 2013', 'site_news.png', 'welcome-to-our-new-arcade', 'new site, welcome, arcade news');

-- --------------------------------------------------------

--
-- Table structure for table `ava_news_comments`
--

CREATE TABLE IF NOT EXISTS `ava_news_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `link_id` varchar(10) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` char(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_pages`
--

CREATE TABLE IF NOT EXISTS `ava_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `page` text NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `seo_url` varchar(100) NOT NULL,
  `meta_tags` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_playtomic`
--

CREATE TABLE IF NOT EXISTS `ava_playtomic` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `gametag` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `author_link` varchar(255) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `highscores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`gametag`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_posts`
--

CREATE TABLE IF NOT EXISTS `ava_posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_content` text,
  `topic` int(11) DEFAULT NULL,
  `first_post` int(11) DEFAULT '0',
  `date` int(11) DEFAULT NULL,
  `edit_time` int(11) DEFAULT '0',
  `username` varchar(80) DEFAULT NULL,
  `edit_username` varchar(80) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic` (`topic`),
  FULLTEXT KEY `post_content` (`post_content`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_ratings`
--

CREATE TABLE IF NOT EXISTS `ava_ratings` (
  `game_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `rating` char(1) NOT NULL,
  `ip` char(15) NOT NULL,
  KEY `game_id` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ava_reported`
--

CREATE TABLE IF NOT EXISTS `ava_reported` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `report` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_seonames`
--

CREATE TABLE IF NOT EXISTS `ava_seonames` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `seo_name` varchar(255) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `uses` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `ava_seonames`
--

INSERT INTO `ava_seonames` (`id`, `seo_name`, `type`, `uses`) VALUES
(1, 'turn-based-battle', 'game', 1),
(2, 'shift', 'game', 1),
(3, 'default-category', 'category', 1),
(4, 'welcome-to-our-new-arcade', 'news', 1),
(5, 'test-cate', 'category', 1),
(6, 'action', 'category', 1),
(7, 'adventure', 'category', 1),
(8, 'girls', 'category', 1),
(9, 'puzzle', 'category', 1),
(10, 'racing', 'category', 1),
(11, 'strategy', 'category', 1),
(12, 'kids', 'category', 1),
(13, 'monster-high-lagoona-blue-at-the-classroom', 'game', 2),
(14, 'baby-hazel-halloween-party', 'game', 2),
(15, 'baby-hazel-halloween-party-1', 'game', 1),
(16, 'baby-hazel-halloween-part-2', 'game', 1),
(17, 'baby-hazel-halloween-party-2', 'game', 1),
(18, 'baby-hazel-halloween-part-3', 'game', 1),
(19, 'baby-hazel-halloween-part-4', 'game', 1),
(20, 'baby-hazel-halloween-party-4', 'game', 1),
(21, 'baby-hazel-halloween-party-5', 'game', 1),
(22, 'baby-hazel-halloween-party-6', 'game', 1),
(23, 'test-action-game', 'game', 1),
(24, 'speed-bus-frenzy', 'game', 1),
(25, 'zoombie-destroyer-rush', 'game', 1),
(26, 'illegal-night-racing', 'game', 1),
(27, 'santa-fun-ride', 'game', 1),
(28, 'christmas-jigsaw-puzzle', 'game', 1),
(29, 'santa-mario-deliver', 'game', 1),
(30, 'winter-bike-stunt', 'game', 1),
(31, 'baby-carmen-dress-up', 'game', 1),
(32, 'teacher-kissing', 'game', 1),
(33, 'grand-thieft-shooter', 'game', 1),
(34, 'snail-bomb-6-winter-story', 'game', 1),
(35, 'baby-hazel-hallowen-party', 'game', 1),
(36, 'funny-nurse', 'game', 1),
(37, 'super-car-road-trip', 'game', 1),
(38, 'babysister-in-lover', 'game', 1),
(39, 'microcosmic-shooter', 'game', 1),
(40, 'snailbob-5-love-story', 'game', 1),
(41, 'play-mad-trucker-4-last-pursuit', 'game', 1),
(42, 'bouncy-bird', 'game', 1),
(43, 'bad-piggies', 'game', 1),
(44, 'food-shoot', 'game', 1),
(45, 'zoobie-vs-penguins-2', 'game', 1),
(46, 'fashion-designer-newyork', 'game', 1),
(47, 'dragon-age-legends-remix-01', 'game', 1),
(48, 'lego-star-wars-yoda-chronicles', 'game', 1),
(49, 'style-your-feet', 'game', 1),
(50, 'gangblast-2', 'game', 1),
(51, 'truck-loader', 'game', 1),
(52, 'plants-vs-zombies', 'game', 1),
(53, 'defend-your-nuts-2', 'game', 1),
(54, 'sushi-cat-2', 'game', 1),
(55, 'gunblood', 'game', 1),
(56, 'killstorm', 'game', 1),
(57, 'sokoboom-2', 'game', 1),
(58, 'ninja-mu', 'game', 1),
(59, 'baby-hazel-farm-tour', 'game', 1),
(60, 'snow-cross', 'game', 1),
(61, 'graveyard-bustout', 'game', 1),
(62, 'frenzy-babysitter', 'game', 1),
(63, 'dinosaur-killer-3d', 'game', 1),
(64, 'rats-invasion', 'game', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ava_settings`
--

CREATE TABLE IF NOT EXISTS `ava_settings` (
  `name` varchar(20) NOT NULL,
  `value` varchar(240) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ava_settings`
--

INSERT INTO `ava_settings` (`name`, `value`) VALUES
('site_name', 'Game Arcade'),
('site_url', 'http://localhost/avarcade'),
('template_url', '/templates/z6'),
('facebook_on', '0'),
('adsense', '0'),
('cat_numbers', '0'),
('seo_on', '3'),
('email_on', '0'),
('add_to_site', '0'),
('plays', '10'),
('language', 'English'),
('featured_games', '1'),
('play_limit', '0'),
('site_description', 'Welcome to Game Arcade, home to all the best games!'),
('site_keywords', 'games, arcade'),
('admin_email', 'ngocdungdinh@gmail.com'),
('seo_extension', ''),
('default_ad', '0'),
('skip_ads', '1'),
('use_captcha', '0'),
('captcha_pubkey', ''),
('captcha_privkey', ''),
('points_play', '2'),
('points_rate', '5'),
('points_comment', '10'),
('points_refer', '50'),
('points_report', '15'),
('points_submission', '500'),
('points_highscore', '10'),
('points_challenge', '0'),
('facebook_appid', ''),
('facebook_secret', ''),
('user_ads', '3'),
('report_permissions', '1'),
('module_thumbs', '1'),
('default_leaderboard', '0'),
('default_banner', '0'),
('default_square', '0'),
('version', '5.7'),
('site_offline', '0'),
('offline_message', 'We are down for maintenance right now, back soon!'),
('fullscreen_mode', '1'),
('homepage_order', 'random'),
('submissions_folder', 'games/submissions'),
('allow_submissions', '1'),
('date_format', 'Y-m-d'),
('link_exchange', '1'),
('all_games', '1'),
('email_template', 'default'),
('abg_countdown', '30'),
('email_notifications', '1'),
('use_qa_captcha', '0'),
('qa_captcha_question', 'Captcha Question: What country is New York in?'),
('qa_captcha_answers', 'america, usa, united states, united states of america, 1'),
('use_mb_strlen', '0'),
('forums_installed', '0'),
('flood_control_time', '120'),
('points_forum_post', '10'),
('points_forum_topic', '20'),
('point_spam_time', '120'),
('allow_double_posts', '0'),
('double_post_time', '3600'),
('posts_per_page', '10'),
('topics_per_page', '20'),
('forum_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `ava_spil`
--

CREATE TABLE IF NOT EXISTS `ava_spil` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `spil_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `thumb_url` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `author` varchar(60) NOT NULL,
  `author_link` varchar(255) NOT NULL,
  `category` varchar(40) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '0',
  `instructions` text NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `highscores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gametag` (`spil_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_submissions`
--

CREATE TABLE IF NOT EXISTS `ava_submissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `instructions` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `width` int(3) NOT NULL,
  `height` int(3) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_tags`
--

CREATE TABLE IF NOT EXISTS `ava_tags` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(40) NOT NULL,
  `seo_url` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `ava_tags`
--

INSERT INTO `ava_tags` (`id`, `tag_name`, `seo_url`) VALUES
(1, 'Monster High', 'monster-high'),
(2, 'Lagoona ', 'lagoona-'),
(3, 'Baby Hazel', 'baby-hazel'),
(4, 'Halloween Party', 'halloween-party'),
(5, 'abc', 'abc'),
(6, 'def', 'def'),
(7, 'Speed Bus', 'speed-bus'),
(8, 'Frenzy', 'frenzy'),
(9, 'Zoombie', 'zoombie'),
(10, 'Destroyer', 'destroyer'),
(11, 'Rush', 'rush'),
(12, 'illegal', 'illegal'),
(13, 'Night Racing', 'night-racing'),
(14, 'Santa', 'santa'),
(15, 'Fun', 'fun'),
(16, 'Ride', 'ride'),
(17, 'Christmas', 'christmas'),
(18, 'Jigsaw', 'jigsaw'),
(19, 'Puzzle', 'puzzle'),
(20, 'Mario', 'mario'),
(21, 'Deliver', 'deliver'),
(22, 'Winter Bike', 'winter-bike'),
(23, 'Stunt', 'stunt'),
(24, 'Baby', 'baby'),
(25, 'Carmen', 'carmen'),
(26, 'Dress Up', 'dress-up'),
(27, 'Teacher', 'teacher'),
(28, 'Kissing', 'kissing'),
(29, 'Grand Thieft', 'grand-thieft'),
(30, 'Shooter', 'shooter'),
(31, 'Snail Bomb 6', 'snail-bomb-6'),
(32, 'Winter Story', 'winter-story'),
(33, 'Hallowen Party', 'hallowen-party'),
(34, 'blue at the classroom', 'blue-at-the-classroom'),
(35, 'Funny Nurse', 'funny-nurse'),
(36, 'Super Car', 'super-car'),
(37, 'Road Trip', 'road-trip'),
(38, 'Babysister', 'babysister'),
(39, 'Lover', 'lover'),
(40, 'Microcosmic', 'microcosmic'),
(41, 'Snailbob 5', 'snailbob-5'),
(42, 'Love story', 'love-story'),
(43, 'Play', 'play'),
(44, 'Mad Trucker 4', 'mad-trucker-4'),
(45, 'Last Pursuit', 'last-pursuit'),
(46, 'Bouncy Bird', 'bouncy-bird'),
(47, 'Bad Piggies', 'bad-piggies'),
(48, 'Food Shoot', 'food-shoot'),
(49, 'Zoobie Vs Penguins 2', 'zoobie-vs-penguins-2'),
(50, 'Fashion Designer Newyork', 'fashion-designer-newyork'),
(51, '3d action', '3d-action');

-- --------------------------------------------------------

--
-- Table structure for table `ava_tag_relations`
--

CREATE TABLE IF NOT EXISTS `ava_tag_relations` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(5) NOT NULL,
  `tag_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `ava_tag_relations`
--

INSERT INTO `ava_tag_relations` (`id`, `game_id`, `tag_id`) VALUES
(6, 3, 2),
(5, 3, 1),
(7, 4, 3),
(8, 4, 4),
(12, 5, 4),
(11, 5, 3),
(16, 6, 6),
(15, 6, 5),
(17, 7, 5),
(18, 7, 6),
(22, 8, 6),
(21, 8, 5),
(23, 9, 5),
(24, 9, 6),
(25, 10, 5),
(26, 10, 6),
(27, 11, 5),
(28, 11, 6),
(29, 12, 7),
(30, 12, 8),
(31, 13, 9),
(32, 13, 10),
(33, 13, 11),
(34, 14, 12),
(35, 14, 13),
(36, 15, 14),
(37, 15, 15),
(38, 15, 16),
(39, 16, 17),
(40, 16, 18),
(41, 16, 19),
(42, 17, 14),
(43, 17, 20),
(44, 17, 21),
(45, 18, 22),
(46, 18, 23),
(75, 19, 26),
(74, 19, 25),
(73, 19, 24),
(50, 20, 27),
(51, 20, 28),
(52, 21, 29),
(53, 21, 30),
(54, 22, 31),
(55, 22, 32),
(56, 23, 3),
(57, 23, 33),
(58, 24, 1),
(59, 24, 2),
(60, 24, 34),
(61, 25, 35),
(62, 26, 36),
(63, 26, 37),
(64, 27, 38),
(65, 27, 39),
(66, 28, 40),
(67, 28, 30),
(68, 29, 41),
(69, 29, 42),
(70, 30, 43),
(71, 30, 44),
(72, 30, 45),
(76, 31, 46),
(77, 32, 47),
(78, 33, 48),
(79, 34, 49),
(80, 35, 50),
(81, 36, 51),
(82, 37, 51),
(83, 38, 51),
(84, 39, 51),
(85, 40, 51),
(86, 41, 51),
(87, 42, 51),
(88, 43, 51),
(89, 44, 51),
(90, 45, 51),
(91, 46, 51),
(92, 47, 51),
(93, 48, 51),
(94, 49, 51),
(95, 50, 51),
(96, 51, 51),
(97, 52, 51),
(98, 53, 51);

-- --------------------------------------------------------

--
-- Table structure for table `ava_topics`
--

CREATE TABLE IF NOT EXISTS `ava_topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `last_post_time` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `topic_starter` varchar(80) DEFAULT NULL,
  `topic_starter_id` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT '0',
  `pinned` int(11) DEFAULT '0',
  `last_post_user` varchar(80) DEFAULT NULL,
  `last_post_user_id` int(11) DEFAULT NULL,
  `total_replies` int(11) DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '1',
  `seo_url` varchar(100) DEFAULT NULL,
  `first_post_content` text,
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`),
  KEY `forum_id` (`forum_id`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ava_users`
--

CREATE TABLE IF NOT EXISTS `ava_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `activate` char(1) NOT NULL DEFAULT '',
  `about` varchar(200) NOT NULL DEFAULT '',
  `group` varchar(40) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `interests` text NOT NULL,
  `msn` varchar(40) NOT NULL DEFAULT '',
  `website` varchar(200) NOT NULL DEFAULT '',
  `admin` char(2) NOT NULL DEFAULT '',
  `plays` varchar(20) NOT NULL DEFAULT '0',
  `joined` text NOT NULL,
  `favourites` text NOT NULL,
  `avatar` varchar(25) NOT NULL,
  `points` int(20) NOT NULL DEFAULT '0',
  `ratings` int(5) NOT NULL DEFAULT '0',
  `comments` int(5) NOT NULL DEFAULT '0',
  `messages` int(5) NOT NULL,
  `referrer` tinyint(5) NOT NULL DEFAULT '0',
  `facebook` tinyint(1) NOT NULL DEFAULT '0',
  `facebook_id` bigint(20) unsigned NOT NULL,
  `lastip` char(15) NOT NULL,
  `last_comment` datetime NOT NULL,
  `seo_url` varchar(100) NOT NULL,
  `last_activity` datetime NOT NULL,
  `friend_requests` int(11) NOT NULL DEFAULT '0',
  `email_friend_request` int(11) DEFAULT '1',
  `email_new_message` int(11) DEFAULT '1',
  `email_highscore_challenge` int(11) DEFAULT '1',
  `banned` int(11) NOT NULL DEFAULT '0',
  `last_pm` datetime NOT NULL,
  `forum_posts` int(11) NOT NULL DEFAULT '0',
  `forum_signature` text,
  `forum_last_post` int(11) NOT NULL DEFAULT '0',
  `last_points_time` int(11) DEFAULT NULL,
  `last_points_game` int(11) DEFAULT NULL,
  `new_pms` int(1) NOT NULL DEFAULT '0',
  `new_frs` int(1) NOT NULL DEFAULT '0',
  `new_topic` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `seo_url` (`seo_url`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activate` (`activate`),
  KEY `banned` (`banned`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ava_users`
--

INSERT INTO `ava_users` (`id`, `username`, `password`, `email`, `activate`, `about`, `group`, `location`, `interests`, `msn`, `website`, `admin`, `plays`, `joined`, `favourites`, `avatar`, `points`, `ratings`, `comments`, `messages`, `referrer`, `facebook`, `facebook_id`, `lastip`, `last_comment`, `seo_url`, `last_activity`, `friend_requests`, `email_friend_request`, `email_new_message`, `email_highscore_challenge`, `banned`, `last_pm`, `forum_posts`, `forum_signature`, `forum_last_post`, `last_points_time`, `last_points_game`, `new_pms`, `new_frs`, `new_topic`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@dungdn.net', '1', '', '', '', '', '', '', '1', '0', 'December 15 2013', '', '', 0, 0, 0, 0, 0, 0, 0, '127.0.0.1', '0000-00-00 00:00:00', 'admin', '2014-04-20 19:44:27', 0, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ava_usersonline`
--

CREATE TABLE IF NOT EXISTS `ava_usersonline` (
  `session_id` char(100) NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ava_usersonline`
--

INSERT INTO `ava_usersonline` (`session_id`, `time`, `user_id`) VALUES
('glg8gpuhkt14alfhda4944coc0', 1398015867, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
