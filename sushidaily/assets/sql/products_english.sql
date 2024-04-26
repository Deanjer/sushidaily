-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2024 at 09:00 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sushi_daily`
--

-- --------------------------------------------------------

--
-- Table structure for table `products_english`
--

CREATE TABLE `products_english` (
  `id` int(4) NOT NULL,
  `name` varchar(64) NOT NULL,
  `line_disc` varchar(256) NOT NULL,
  `price` float NOT NULL,
  `attributes` json NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `drink` tinyint(1) NOT NULL,
  `catagory` varchar(16) NOT NULL,
  `warm` tinyint(1) NOT NULL,
  `pieces` int(4) NOT NULL,
  `img_path` varchar(64) NOT NULL,
  `suggestions` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_english`
--

INSERT INTO `products_english` (`id`, `name`, `line_disc`, `price`, `attributes`, `menu`, `drink`, `catagory`, `warm`, `pieces`, `img_path`, `suggestions`) VALUES
(1, 'Salmon Nigiri', 'Savor Nigiri Salmon Sushi: fresh salmon atop sushi rice, customizable with ginger, wasabi, and soy sauce.', 7.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'nigiri-salmon.webp', '{\"suggestions\": [\"Nigiri Duo\", \"Tuna Nigiri\", \"Menu One\"]}'),
(2, 'Nigiri Duo', 'Enjoy a mix of three Salmon and three Tuna nigiri, each atop our signature sushi rice for a perfect blend.', 7.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'nigiri-duo-salmon-tuna.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Tuna Nigiri\", \"Menu Three\"]}'),
(3, 'Tuna Nigiri', 'Savor our standout Tuna nigiri: fresh fish atop sushi rice, ready for your personal touch with ginger, wasabi, and soy sauce.', 7.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'nigiri-tuna.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Nigiri Duo\", \"Nagoya Mix\"]}'),
(4, 'Salmon Sashimi', 'Savor our premium Salmon sashimi: expertly sourced, rice-free slices of the finest quality fish.', 9.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 12, 'salmon-sashimi.webp', '{\"catagories\": [\"Salmon Nigiri\", \"Sashimi Duo\", \"Nara Party\"]}'),
(5, 'Sashimi Duo', 'Enjoy our top-tier Salmon and Tuna sashimi: rice-free, expertly sourced slices reflecting our artisans\' care.', 9.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 14, 'duo-sashimi.webp', '{\"suggestions\": [\"Nigiri Duo\", \"Tuna Nigiri\", \"Salmon Nigiri\"]}'),
(6, 'Combo Veggie', 'Enjoy our veggie sushi platter: Crunch Rolls, Verde Maki, Avocado Nigiri, and edamame, for sharing or solo.', 7.55, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 1, 0, 'n/a', 0, 12, 'combo-veggie', '{\"suggestions\": [\"Veggie Mix\", \"Vegan Variety\", \"Avocado Maki\"]}'),
(7, 'Combo One', 'Combo One: 10 sushi pieces—2 Cali Crunch Rolls, 3 Salmon Maki, 3 Cucumber Maki, and 2 Salmon Nigiri. Enjoy solo or share!', 12.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 10, 'combo-one.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Maxi Maki\", \"Menu Duo Salmon\"]}'),
(8, 'Combo Two', 'Combo Two: 8 sushi pieces—2 Roll’in salmon cheese, 4 Cali Crunch Roll, 1 Salmon Nigiri, 1 Tuna Nigiri. Enjoy solo or share!', 12.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 12, 'combo-two.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Tuna Nigiri\", \"Menu Three\"]}'),
(9, 'Maki Mix', '12-piece maki sharing platter: 4 salmon, 4 cucumber, and 4 tuna. Perfect for sharing or solo enjoyment. Classic choice.', 12.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 12, 'maki-mix.webp', '{\"suggestions\": [\"Combo One\", \"Maki Fun Mix\", \"Nagoya Mix\"]}'),
(10, 'Menu One', 'Menu One: 9 pieces—3 salmon nigiri, 2 tuna nigiri, 1 prawn nigiri, 3 California maki. Perfect for sharing or solo enjoyment.', 12.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 9, 'menu-one-min.webp', '{\"suggestions\": [\"Menu Three\", \"Nara Party\", \"Prawn Maki\"]}'),
(11, 'Maxi Maki', 'Large maki platter: 18 pieces—6 California, 6 Salmon, 6 Salmon Verde. Perfect for salmon lovers!', 19.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 18, 'maxi-maki-min.webp', '{\"suggestions\": [\"Nigiri Duo\", \"Maxi Party\", \"Cali Crunch Roll\"]}'),
(12, 'Menu Three', 'Menu Three: 14 pieces—4 salmon nigiri, 4 tuna nigiri, 2 California roll, 2 tuna maki, 2 salmon maki. Enjoy the variety!', 19.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 14, 'menu-three-min.webp', '{\"suggestions\": [\"Spicy Salmon Roll\", \"Tuna Maki\", \"Chirashi Salmon\"]}'),
(13, 'Menu Duo Salmon', 'Salmon platter: 2 avocado maki, 2 salmon maki, 2 salmon nigiri, 4 salmon verde maki, 4 spicy salmon, 4 salmon crunch rolls.\r\n', 22.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 18, 'menu-duo-salmon-min.webp', '{\"suggestions\": [\"Salmon Crunch Roll\", \"Shrimp Gyoza\", \"Combo One\"]}'),
(14, 'Mega Maki', 'Maki sharing platter: 6 California, 6 Roll’in salmon cheese, 6 cucumber, 6 salmon cucumber California. Plenty for all!', 19.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 24, 'mega-maki-min.webp', '{\"suggestions\": [\"Maki Mix\", \"Nigiri Duo\", \"Salmon Verde Maki\"]}'),
(15, 'Veggie Mix', 'Veggie mix: 4 crunch rolls, 4 Wakame rolls, 6 avocado, 6 cucumber, 6 verde, 9 California.', 29.95, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 1, 0, 'n/a', 0, 35, 'veggie-mix.webp', '{\"suggestions\": [\"Combo Veggie\", \"Cheese Maki\", \"Cabbage Salad\"]}'),
(16, 'Maki Fun Mix', 'Maki Fun Mix: 3 California, 6 tuna mayo, 6 salmon, 6 cucumber, 6 avocado, 6 salmon verde, 6 tuna mayo verde, 6 roll’in cheese.', 34.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 45, 'maki-fun-mix.webp', '{\"suggestions\": [\"Maki Party\", \"Hanabi Party\", \"Triple Roll\"]}'),
(17, 'Hikari Mix', 'Hikari platter: 4 avocado, 6 salmon, 6 roll’in cheese, 3 salmon nigiri, 3 tuna nigiri, 8 veggie crunch, 6 California.', 29.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 36, 'hikari-mix.webp', '{\"catagories\": [\"Chicken Crunch Roll\", \"Wakame Cali Roll\", \"Chicken Gyoza\"]}'),
(18, 'Nagoya Mix', 'Nagoya mix: 3 salmon nigiri, 3 tuna nigiri, 4 salmon sashimi, 4 tuna sashimi, 6 salmon maki, 6 tuna maki, 6 avocado maki.', 34.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 32, 'nagoya_mix_1200x800.webp', '{\"suggestions\": [\"Nara Party\", \"Menu Three\", \"Chirashi Duo\"]}'),
(19, 'Vegan Variety', 'Vegan platter: 6 avocado nigiri, 6 cucumber maki, 8 classic veggie, 8 spicy veggie, 12 verde maki, side of edamame.', 34.95, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 1, 0, 'n/a', 0, 46, 'vegan-variety.webp', '{\"suggestions\": [\"Cheese Maki\", \"Combo Veggie\", \" Veggie Verde Maki\"]}'),
(20, 'Maki Party', '6 cucumber, 6 salmon, 6 tuna, 12 avocado, 6 tuna mayo, 6 salmon verde, 6 veggie verde, 6 Cali, 6 veggie Cali, 6 tuna mayo Cali.', 47.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 67, 'maki-party.webp', '{\"suggestions\": [\"Nagoya Mix\", \"Cheese Maki\", \"Spicy Salmon Roll\"]}'),
(21, 'Sakura Party', 'Sakura platter: 6 tuna mayo, 6 Cali, 6 roll’in salmon, 6 salmon verde, 8 veggie crunch, 8 wakame veggie, 4 avocado, 4 salmon dragon, 3 salmon sashimi, 3 tuna sashimi.', 47.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 54, 'sakura-party.webp', '{\"suggestions\": [\"Nara Party\", \"Cali Crunch Roll\", \"Triple Roll\"]}'),
(22, 'Nara Party', 'Nara platter: 12 salmon nigiri, 6 tuna nigiri, 6 prawn nigiri, 6 salmon maki, 6 tuna maki, 4 salmon sashimi, 4 tuna sashimi.', 49.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 54, 'nara_party_indigo_1200x800.webp', '{\"suggestions\": [\"Kyoto Party\", \"Prawn Maki\", \"Tempura Classic\"]}'),
(23, 'Hanabi Party', 'Hanabi Party: 4 salmon nigiri, 2 tuna nigiri, 8 veggie crunch, 8 wakame veggie, 9 spicy salmon, 9 salmon cheese, 6 Cali, 6 salmon verde, 6 roll’in cheese, 6 avocado.', 55.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 64, 'hanabi-party.webp', '{\"suggestions\": [\"Hikari Mix\", \"Menu Three\", \"Spicy Salmon Roll\"]}'),
(24, 'Kyoto Party', '10 salmon nigiri, 8 tuna nigiri, 4 prawn nigiri, 6 salmon maki, 6 tuna maki, 6 avocado maki, 6 cucumber maki, 6 Cali maki, 3 salmon sashimi, 3 tuna sashimi.', 59.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 1, 0, 'n/a', 0, 58, 'kyoto_party_1200x800.webp', '{\"suggestions\": [\"Nagoya Mix\", \"Salmon Tartare\", \"Spicy Tuna Roll\"]}'),
(25, 'Avocado Maki', '6 Avocado Maki', 2.95, '{\"catagories\": [\"Vegan\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'avocado-maki.webp', '{\"suggestions\": [\"Veggie Verde Maki\", \"California Maki\", \"Mega Maki\"]}'),
(26, 'Cheese Maki', '6 Cheese Maki', 2.95, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'maki-cheese.webp', '{\"suggestions\": [\"Salmon Verde Maki\", \"Tuna Maki\", \"Tempura Classic\"]}'),
(27, 'Salmon Maki', '6 Salmon Maki', 2.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'maki-salmon.webp', '{\"suggestions\": [\"Cali Crunch Roll\", \"Chirashi Salmon\", \"Mega Maki\"]}'),
(28, ' Veggie Verde Maki', '6 Veggie Verde Maki', 2.95, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'verde-maki-veggie.webp', '{\"suggestions\": [\"Combo Veggie\", \"Veggie Mix\", \"Avocado Maki\"]}'),
(29, 'Prawn Maki', '6 Prawn Maki', 2.95, '{\"catagories\": [\"Cold\", \"Shellfish\"]}', 0, 0, 'n/a', 0, 6, 'maki-shrimp.webp', '{\"suggestions\": [\"Salmon Dragon Roll\", \"California Maki\", \"Tuna Maki\"]}'),
(30, 'California Maki', '6 California Maki', 2.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'maki-cali-salmon.webp', '{\"suggestions\": [\"Tuna Maki\", \"Avocado Maki\", \"Salmon Crunch Roll\"]}'),
(31, 'Salmon Verde Maki', '6 Salmon Verde Maki', 2.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 6, 'verde-maki-salmon.webp', '{\"suggestions\": [\"Nagoya Mix\", \"Menu One\", \"Nagoya Mix\"]}'),
(32, 'Tuna Maki', '6 Tuna Maki', 2.95, '{\"catagories\": [\"Cold\"]}', 0, 0, 'n/a', 0, 6, 'tuna-maki.webp', '{\"suggestions\": [\"Tuna Nigiri\", \"Sashimi Duo\", \"Spicy Tuna Roll\"]}'),
(33, 'Tempura Classic', 'Tempura Classic Maki: Black rice, lettuce, avocado, wasabi mayo, crispy shrimp. Skilfully crafted.', 5.95, '{\"catagories\": [\"Cold\", \"Shellfish\"]}', 0, 0, 'n/a', 0, 9, 'tempura-classic-min.webp', '{\"suggestions\": [\"Shrimp Gyoza\", \"Triple Roll\", \"Tuna Maki\"]}'),
(34, 'Cali Crunch Roll', 'Crunchy Cali Roll: Rice, surimi, avocado, cucumber, crispy fried onions. Generously topped.', 5.95, '{\"catagories\": []}', 0, 0, 'n/a', 0, 8, 'crunch-cali-roll-min.webp', '{\"suggestions\": [\"Maki Fun Mix\", \"California Maki\", \"Prawn Maki\"]}'),
(35, 'Chicken Crunch Roll', 'Crunchy Chicken Roll: Rice, chicken, avocado, cucumber, crispy onions. Absolutely delicious.', 5.95, '{\"catagories\": [\"Meat\"]}', 0, 0, 'n/a', 0, 8, 'crunch-chicken-roll-min.webp', '{\"suggestions\": [\"Chicken Katsu Curry\", \"Chicken Gyoza\", \"Salmon Crunch Roll\"]}'),
(36, 'Salmon Crunch Roll', 'Crunchy Salmon Roll: Rice, salmon, avocado, cucumber, crispy onions. Everything you crave.', 5.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 8, 'crunch-salmon-roll-min.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Menu 3\", \"Spicy Salmon Roll\"]}'),
(37, 'Salmon Dragon Roll', 'Salmon Dragon Roll: Surimi, avocado, cucumber inside; avocado, salmon on top. Flavor explosion!', 5.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 8, 'dragon-salmon-roll.webp', '{\"suggestions\": [\"Salmon Verde Maki\", \"Spicy Salmon Roll\", \"Menu Duo Salmon\"]}'),
(38, 'Wakame Cali Roll', 'Wakame Cali Roll: Surimi, avocado, cucumber inside; coated in wakame salad. Special dragon roll.', 6.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 8, 'wakame-cali-roll.webp', '{\"suggestions\": [\"Veggie Mix\", \"Wakame Salmon Roll\", \"Maki Party\"]}'),
(39, 'Wakame Salmon Roll', 'Wakame Salmon Roll: Salmon, avocado, cucumber inside; coated in wakame salad. Bold taste, stunning plate.', 6.55, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 8, 'wakame-salmon-roll.webp', '{\"suggestions\": [\"Wakame Cali Roll\", \"Shrimp Gyoza\", \"Salmon Nigiri\"]}'),
(40, 'Spicy Salmon Roll', 'Spicy Salmon Roll: Signature rice, quality salmon, avocado, cucumber, rolled in shichimi chilli pepper.', 8.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'n/a', 0, 9, 'spicy-salmon-roll.webp', '{\"suggestions\": [\"Chirashi Salmon\", \"Salmon Tartare\", \"Hikari Mix\"]}'),
(41, 'Spicy Tuna Roll', 'Spicy Tuna Roll: Signature rice, quality tuna, avocado, cucumber, rolled in shichimi chilli pepper.', 8.95, '{\"catagories\": [\"Cold\"]}', 0, 0, 'n/a', 0, 9, 'spicy-tuna-roll.webp', '{\"suggestions\": [\"Tuna Maki\", \"Spicy Salmon Roll\", \"Tempura Classic\"]}'),
(42, 'Veggie Roll', 'Veggie Maki: Inside-out roll with signature rice, cucumber, avocado, carrot, toasted sesame seeds.', 8.95, '{\"catagories\": [\"Vegetarian\", \"Cold\"]}', 0, 0, 'n/a', 0, 9, 'veggie-roll-min.webp', '{\"suggestions\": [\"Combo Veggie\", \"Veggie Mix\", \"Salmon Verde Maki\"]}'),
(43, 'Triple Roll', 'Triple Maki Roll: Classic California, Cheese Cali, Crunch Cali. Signature rice, artisan-made. Perfect for Cali lovers!', 8.95, '{\"catagories\": [\"Cold\", \"Shellfish\"]}', 0, 0, 'n/a', 0, 9, 'triple-roll-min.webp', '{\"suggestions\": [\"Prawn Maki\", \"Combo Two\", \"Cali Crunch Roll\"]}'),
(44, 'Chirashi Salmon', 'Chirashi Salmon Bowl: Signature rice, layers of salmon, sesame seeds. Customize with ginger, wasabi, soy sauce. Enjoy!', 7.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'bowl', 0, 1, 'chirashi-salmon.webp', '{\"suggestions\": [\"Salmon Nigiri\", \"Menu Three\", \"Spicy Tuna Roll\"]}'),
(45, ' Salmon Tartare', 'Salmon Tartare Bowl: Sushi rice, salmon tartare, avocado, mint, coriander. Enjoy with chopsticks or fork.', 7.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'bowl', 0, 1, 'chirashi-salmon-tartare.webp', '{\"suggestions\": [\"Chirashi Salmon\", \"Spicy Salmon Roll\", \"Hikari Mix\"]}'),
(46, 'Chirashi Duo', 'Chirashi Bowl: Signature rice pressed, salmon around edge, raw tuna in center, sesame seeds. Precision in every step.', 7.95, '{\"catagories\": [\"Raw Fish\", \"Cold\"]}', 0, 0, 'bowl', 0, 1, 'chirashi-duo.webp', '{\"suggestions\": [\"Chirashi Salmon\", \"Nigiri Duo\", \"Menu Three\"]}'),
(47, 'Bulgogi Veggie Bibimbap', 'Katsu rice, bulgogi veggies, green onions, sesame seeds, spinach, kimchi, pickled carrots, sriracha, sesame sprouts.', 14.95, '{\"catagories\": [\"Heat up\", \"vegetarian\"]}', 1, 0, 'meal', 1, 1, 'bulgogi-veggie-bibimbap.webp', '{\"suggestions\": [\"Bulgogi Veggie Kimchi Noodles\", \"Veggie Verde Maki\", \"Combo Veggie\"]}'),
(48, 'Bulgogi Veggie Kimchi Noodles', 'Bulgogi veggies, kimchi noodles, sesame sprouts, green onions, sesame seeds, soy sauce. Quick, tasty option for busy days.', 14.95, '{\"catagories\": [\"Heat up\", \"vegetarian\"]}', 1, 0, 'meal', 1, 1, 'bulgogi-veggie-kimchi-noodles.webp', '{\"suggestions\": [\"Bulgogi Veggie Bibimbap\", \"Veggie Verde Maki\", \"Veggie Mix\"]}'),
(49, 'Chicken Katsu Curry', 'Chicken katsu curry: crispy chicken, katsu sauce, katsu rice. Enjoy simplicity or add sides.', 14.95, '{\"catagories\": [\"Heat up\"]}', 1, 0, 'meal', 1, 1, 'chicken-katsu-curry-min.webp', '{\"suggestions\": [\"Chicken Gyoza\", \"Nagoya Mix\", \"Combo Two\"]}'),
(50, 'Chicken Yakisoba', 'Chicken yakisoba: soba noodles, cabbage, edamame, mushrooms, yakisoba sauce, spring onions, sesame seeds, chicken.', 14.95, '{\"catagories\": [\"Heat up\"]}', 1, 0, 'meal', 1, 1, 'chicken-yakisoba.webp', '{\"suggestions\": [\"Chicken Gyoza\", \"Chicken Katsu Curry\", \"Chicken Crunch Roll\"]}'),
(51, 'Prawn Yakisoba', 'Prawn yakisoba: noodles, cabbage, edamame, mushrooms, yakisoba sauce, spring onions, sesame seeds, prawns. Mix and enjoy!', 14.95, '{\"catagories\": [\"Heat up\"]}', 1, 0, 'meal', 1, 1, 'prawn-yakisoba.webp', '{\"suggestions\": [\"Prawn Maki\", \"Triple Roll\", \"Maki Fun Mix\"]}'),
(52, 'Spicy Chicken Bibimbap', 'Spicy chicken katsu rice: spring onion, sesame, stir-fry spinach, kimchi, pickled carrots, bean sprouts, Sriracha, sesame oil.', 14.95, '{\"catagories\": [\"Heat up\"]}', 1, 0, 'meal', 1, 1, 'spicy-chicken-bibimbap-min.webp', '{\"suggestions\": [\"Spicy Chicken Kimchi Noodles\", \"Chicken Katsu Curry\", \"Menu Duo Salmon\"]}'),
(53, 'Spicy Chicken Kimchi Noodles', 'Spicy kimchi chicken noodles: tender chicken, kimchi noodles, spring onion, sesame seeds, bean sprouts.', 14.95, '{\"catagories\": [\"Heat up\"]}', 1, 0, 'meal', 1, 1, 'spicy-chicken-kimchi-noodles-min.webp', '{\"suggestions\": [\"Chicken Gyoza\", \"Cheese Maki\", \"Salmon Crunch Roll\"]}'),
(54, 'Chicken Gyoza', 'Ready-to-go chicken gyoza: chicken, cabbage, ginger, garlic, tamari. Heat and enjoy!', 7.95, '{\"catagories\": [\"Heat up\", \"meat\"]}', 0, 0, 'n/a', 1, 7, 'chicken-gyoza.webp', '{\"suggestions\": [\"Shrimp Gyoza\", \"Chicken Crunch Roll\", \"Chicken Katsu Curry\"]}'),
(55, 'Shrimp Gyoza', 'Ready-to-go shrimp gyoza: shrimp, cabbage, ginger, garlic, tamari. Heat and enjoy with soy sauce!', 7.95, '{\"catagories\": [\"Heat up\"]}', 0, 0, 'n/a', 1, 7, 'shrimp-gyoza.webp', '{\"suggestions\": [\"Tempura Classic\", \"Combo Two\", \"Cali Crunch Roll\"]}'),
(56, 'Cabbage Salad', 'Cabbage salad: Thinly sliced cabbage, red onion, mayo, sushi su, sugar, salt, sesame oil. Fresh, crunchy, delicious!', 2.95, '{\"catagories\": [\"Cold\"]}', 0, 0, 'salad', 0, 1, 'cabbage-salad', '{\"suggestions\": [\"Edamame\", \"Wakame Cali Roll\", \"Maki Mix\"]}'),
(57, 'Edamame', 'Edamame: Nature\'s superfood, boiled, served in pod, sprinkled with salt. Perfect starter or side.', 2.95, '{\"catagories\": [\"Vegan\", \"Cold\"]}', 0, 0, 'salad', 0, 1, 'edamame.webp', '{\"suggestions\": [\"Chirashi Duo\", \"California Maki\", \"Veggie Mix\"]}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_english`
--
ALTER TABLE `products_english`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_english`
--
ALTER TABLE `products_english`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
