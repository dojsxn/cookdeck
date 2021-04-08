-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 08:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookdeck`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `emailAddress` varchar(200) NOT NULL,
  `lifeStyle` set('student','professional','family','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`firstName`, `lastName`, `emailAddress`, `lifeStyle`) VALUES
('Baby', 'Yoda', 'theforce@gmail.com', 'family'),
('Test', 'Tester', 'test123@gmail.com', 'professional'),
('Jason', 'Do', 'doja@gmail.com', 'student'),
('Final', 'Test', 'ftest@gmail.com', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `homeId` int(11) NOT NULL,
  `about` text NOT NULL,
  `benefit1` text NOT NULL,
  `benefit2` text NOT NULL,
  `benefit3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`homeId`, `about`, `benefit1`, `benefit2`, `benefit3`) VALUES
(1, 'explore recipes based on your lifestyle choices. cookdeck helps you stay organized, so you can focus on cooking & eating.', 'we focus on your health & well-being, so you can enjoy your favourite meals no matter your lifestyle.', 'busy? lazy? no life? explore cooking recipes based on your lifestyle. cookdeck provides recipes for most lifestyles...even yours.', 'submit or suggest your recipes to cookdeck! make sure to include your recipe lifestyle! users of cookdeck are able to view your recipes!');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `personId` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `lifeStyle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`personId`, `email`, `password`, `username`, `firstName`, `lastName`, `lifeStyle`) VALUES
(1, 'jasondo@gmail.com', '12345', 'jswoozie', 'Jason', 'Do', 'student'),
(2, 'ironman@gmail.com', '123', 'ironman', 'Tony', 'Stark', 'professional'),
(3, 'red@gmail.com', '12345', 'vader', 'Darth', 'Vader', 'professional'),
(4, 'dojason@gmail.com', '12345', 'doja', 'Jason', 'Do', 'student'),
(5, 'test123@gmail.com', '123', 'test', 'Test', 'Tester', 'family'),
(6, 'ftest@gmail.com', '123', 'final', 'Final', 'Test', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipeId` int(11) NOT NULL,
  `lifeStyle` set('student','professional','family','') NOT NULL,
  `recipeTitle` varchar(85) NOT NULL,
  `preview` text NOT NULL,
  `ingredients` text NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(10) NOT NULL,
  `link` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipeId`, `lifeStyle`, `recipeTitle`, `preview`, `ingredients`, `content`, `date`, `image`, `link`) VALUES
(1, 'student', 'Grilled Cheese Sandwich', 'Bread, butter and Cheddar cheese - here\'s a way to make this classic sandwich! Perfect for every student on a tight schedule. ', '4 slices white bread, 3 tablespoons butter, 2 slices Cheddar cheese.', 'Preheat skillet over medium heat. Generously butter one side of a slice of bread. Place bread butter-side-down onto skillet bottom and add 1 slice of cheese. Butter a second slice of bread on one side and place butter-side-up on top of sandwich. Grill until lightly browned and flip over; continue grilling until cheese is melted. Repeat with remaining 2 slices of bread, butter and slice of cheese.', '2020-11-28', 'image1.jpg', 'https://www.allrecipes.com/recipe/23891/grilled-cheese-sandwich/'),
(2, 'professional', 'Grilled Garlic Chicken', 'Perfect Grilled Garlic Chicken for every busy Professional! This recipe is quick and easy to make with only a few ingredients. ', '3 tablespoons butter, 4 boneless chicken breast halves, 2 teaspoons garlic powder, 1 teaspoon seasoning salt, 1 teaspoon onion powder.', 'Melt butter in a large skillet over medium high heat. Add chicken and sprinkle with garlic powder, seasoning salt and onion powder. Grill for about 10 to 15 minutes on each side, or until chicken is cooked through and juices run clear.', '2020-11-18', 'image6.jpg', 'https://www.allrecipes.com/recipe/23998/a-good-easy-garlic-chicken/'),
(3, 'family', 'Baked Garlic Parmesan Chicken', 'Perfect for every family! This recipe is easy and quick to make for your hungry hungry family!', '2 tablespoons olive oil, 1 clove garlic, minced, 1 cup dry bread crumbs, 1 cup grated Parmesan cheese, 1 teaspoon dried basil leaves, 1 teaspoon ground black pepper, 6 boneless chicken breast halves.', 'Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish.\r\n\r\nIn a bowl, blend the olive oil and garlic. In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper. Dip each chicken breast in the oil mixture, then in the bread crumb mixture. Arrange the coated chicken breasts in the prepared baking dish, and top with any remaining bread crumb mixture.\r\n\r\nBake 30 minutes in the preheated oven, or until chicken is no longer pink and juices run clear.', '2020-11-11', 'image7.jpg', 'https://www.allrecipes.com/recipe/55860/baked-garlic-parmesan-chicken/'),
(4, 'student', 'Simple Mac and Cheese', 'A very quick and easy recipe. Mac and Cheese should be cheap and tasty, and this recipe shows that! A student perfect meal for when exams are piling up. ', '1 (8 ounce) box elbow macaroni, 1 cup butter, 1 cup all-purpose flour, 1 teaspoon salt, ground black pepper to taste, 2 cups milk, 2 cups shredded Cheddar cheese.', 'Bring a large pot of lightly salted water to a boil. Cook elbow macaroni in the boiling water, stirring occasionally until cooked through but firm to the bite, 8 minutes. Drain.\r\n\r\nMelt butter in a saucepan over medium heat; stir in flour, salt, and pepper until smooth, about 5 minutes. Slowly pour milk into butter-flour mixture while continuously stirring until mixture is smooth and bubbling, about 5 minutes. Add Cheddar cheese to milk mixture and stir until cheese is melted, 2 to 4 minutes.\r\n\r\nFold macaroni into cheese sauce until coated.', '2020-11-17', 'image2.jpg', 'https://www.allrecipes.com/recipe/238691/simple-macaroni-and-cheese/'),
(5, 'professional', 'Fettuccine Alfredo', 'Easy after-work dinner, with this tasty Fettuccine Alfredo recipe. Enjoy the recipe for dinner, and pack it up for lunch the next morning! ', '24 ounces dry fettuccini pasta, 1 cup butter, 1 pint heavy cream, salt and pepper to taste, 1 dash garlic salt, 1 cup grated Romano cheese, 1 cup grated Parmesan cheese.', 'Bring a large pot of lightly salted water to a boil. Add fettuccini and cook for 8 to 10 minutes or until al dente; drain.\r\n\r\nIn a large saucepan, melt butter into cream over low heat. Add salt, pepper and garlic salt. Stir in cheese over medium heat until melted; this will thicken the sauce.\r\n\r\nAdd pasta to sauce. Use enough of the pasta so that all of the sauce is used and the pasta is thoroughly coated. Serve immediately.', '2020-11-10', 'image5.jpg', 'https://www.allrecipes.com/recipe/23431/to-die-for-fettuccine-alfredo/'),
(6, 'family', 'Baked Lasagna', 'Who doesn\'t love Lasagna? This recipe is perfect for any family dinner from any regular dinner to special occasions. ', '1 (16 ounce) package lasagna noodles, 1 pound lean ground beef, 1 (8 ounce) can tomato sauce, 1 tablespoon chopped fresh parsley, 1 clove garlic, crushed, 1 teaspoon dried oregano, 1 cup minced onion, 1 teaspoon white sugar, 1 teaspoons dried basil, 1 teaspoons salt, 3 eggs, 1 cup grated Parmesan cheese, 2 teaspoons salt, 1 teaspoon ground black pepper, 1 pound shredded mozzarella cheese.', 'Preheat oven to 375 degrees F (190 degrees C). Bring a large pot of lightly salted water to a boil. Add noodles and cook for 8 to 10 minutes or until al dente; drain and set aside.\r\n\r\nPlace pork and beef in a large, deep skillet. Cook over medium high heat until evenly brown. Stir in tomato sauce, crushed tomatoes, parsley, garlic, oregano, onion, sugar, basil and salt. Simmer over medium-low heat for 30 minutes, stirring occasionally.\r\n\r\nIn a large bowl, combine cottage cheese, eggs, Parmesan cheese, parsley, salt and pepper.\r\n\r\nIn a 9x13 inch baking dish, place 2 layers of noodles on the bottom of dish; layer 1/2 of the cheese mixture, 1/2 of the mozzarella cheese and 1/2 of the sauce; repeat layers.\r\n\r\nCover with aluminum foil and bake in preheated oven for 30 to 40 minutes. Remove foil and bake for another 5 to 10 minutes; let stand for 10 minutes before cutting; serve.', '2020-11-11', 'image8.jpg', 'https://www.allrecipes.com/recipe/19344/homemade-lasagna/'),
(7, 'student', 'Cheeseburgers', 'Friday night? Finished class? This cheeseburger recipe is perfect for every student looking to relax after a long week! ', '1 egg, 1 teaspoon salt, 1 teaspoon ground black pepper, 1 pound ground beef, 1 cup fine dry bread crumbs.', 'Preheat a pan for high heat and lightly oil.\r\n\r\nIn a medium bowl, whisk together egg, salt and pepper. Place ground beef and bread crumbs into the mixture. With hands or a fork, mix until well blended. Form into 4 patties approximately 3/4 inch thick.\r\n\r\nPlace patties on the prepared pan. Cover and cook 6 to 8 minutes per side, or to desired doneness.', '2020-11-02', 'image3.jpg', 'https://www.allrecipes.com/recipes/473/main-dish/burgers/hamburgers/'),
(8, 'professional', 'Beef Stir-Fry', 'Beef Stir-Fry...a recipe to celebrate those little workplace victories! A perfect dinner dish for professionals looking to change things up! ', '2 tablespoons vegetable oil, 1 pound beef sirloin, cut into 2-inch strips, 1 red bell pepper, cut into matchsticks, 2 carrots, thinly sliced, 1 green onion, chopped, 1 teaspoon minced garlic, 2 tablespoons soy sauce, 2 tablespoons sesame seeds, toasted.', 'Heat vegetable oil in a large wok or skillet over medium-high heat; cook and stir beef until browned, 3 to 4 minutes. Move beef to the side of the wok and add broccoli, bell pepper, carrots, green onion, and garlic to the center of the wok. Cook and stir vegetables for 2 minutes.\r\n\r\nStir beef into vegetables and season with soy sauce and sesame seeds. Continue to cook and stir until vegetables are tender, about 2 more minutes.', '2020-12-01', 'image4.jpg', 'https://www.allrecipes.com/recipe/228823/quick-beef-stir-fry/'),
(9, 'family', 'Grilled Tilapia Fillets ', 'This recipe will take your family dinner into the deep-end! Quick, easy and healthy for all family members to enjoy. ', '1 cup grated Parmesan cheese, 2 teaspoons paprika, 1 tablespoon chopped fresh parsley, salt and ground black pepper to taste, 4 tilapia fillets, olive oil.', 'Preheat oven to 400 degrees F (200 degrees C). Line a baking sheet with aluminum foil.\r\n\r\nWhisk Parmesan cheese, paprika, parsley, salt, and pepper together in a shallow dish.\r\n\r\nCoat tilapia fillets with olive oil and press into the Parmesan cheese mixture. Arrange coated fillets on the prepared baking sheet.\r\n\r\nBake in preheated oven until the fish flakes easily with a fork, 10 to 12 minutes.', '2020-10-12', 'image9.jpg', 'https://www.allrecipes.com/recipe/228056/parmesan-crusted-tilapia-fillets/');

-- --------------------------------------------------------

--
-- Table structure for table `suggest`
--

CREATE TABLE `suggest` (
  `recipeId` int(11) NOT NULL,
  `recipeName` text NOT NULL,
  `recipeIng` text NOT NULL,
  `content` text NOT NULL,
  `emailAddress` text NOT NULL,
  `lifeStyle` set('student','professional','family','') NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggest`
--

INSERT INTO `suggest` (`recipeId`, `recipeName`, `recipeIng`, `content`, `emailAddress`, `lifeStyle`, `image`) VALUES
(1, 'Sheridan Tomato Soup', 'tomatoes, chicken broth, cream garnish', 'combine tomatoes with chicken broth in a pot, season to your own liking and serve with cream garnish.', 'sheridanchef@gmail.com', 'student', 'maxresdefault.jpg'),
(2, 'Baby Yoda Pancakes', 'flour, pancake mix, sugar, maple syrup', 'Start by mixing the batter together, and cook on a hot pan. Serve these Baby Yoda pancakes with syrup.', 'themando@gmail.com', 'professional', 'yoda-pancakes_TALL.jpg'),
(3, 'Surviving Exam Cookies', 'cookie dough, eggs, flour, sugar, chocolate chip', 'Mix ingredients together in a large bowl, place cookie dough into hot oven. Let cookies bake for 15 minutes. ', 'thebaker@hotmail.com', 'student', 'cookies.jpg'),
(4, 'Christmas Brownies ', 'brownie mix, chocolate fudge, sprinkles', 'Mix brownie mix in a large bowl, place brownies in a baking tray and place into oven. ', 'thebaker@hotmail.com', 'family', 'brownies.jpg'),
(5, 'Crème Brulee', 'cream, vanilla extract, sugar', 'Mix vanilla extract and cream into a small baking bowl, bake and cool for 30 minutes. ', 'sweetchef@gmail.com', 'professional', '15COOKING-CREME-BRULEE1-articleLarge.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`homeId`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`personId`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipeId`);

--
-- Indexes for table `suggest`
--
ALTER TABLE `suggest`
  ADD PRIMARY KEY (`recipeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `homeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `personId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suggest`
--
ALTER TABLE `suggest`
  MODIFY `recipeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
