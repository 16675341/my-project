SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `online_book_store_db`
---------   ----------    ------------    -------------  -------------
-- Table structure for table `admin`

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- insert  data for table `admin`

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'mostafa ahmed mostafa', 'mostafaahmed55545@gmail.com', '$2y$10$okROL94rih6gGhR7qKrixeP6uHOxt1XmSyl9dNOPSltoK3VqlLSF2');

-------   -------------     ---------------    -----------   ------------
-- Table structure for table `authors`

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- -----------  ---------------  ----------------  --------------
-- Table structure for table `books`

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- ------------  -----------   --------------------  -------------
-- Table structure for table `categories`

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

