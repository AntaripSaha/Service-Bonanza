-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 05:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worketic`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `banner`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Who Else Wants To Be Successful With Business', 'who-else-wants-to-be-successful-with-business', 'img-01.jpg', '<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed utem perspiciatis undesieu omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaqueiu ipsa quae ab illo inventore veritatisetm quasitea architecto beatae vitae dictaed quia consequuntur magni dolores eos quist ratione voluptatem sequei nesciunt. Neque porro quam est qui dolorem ipsum quia dolor sitem amet consectetur adipisci velit sed quianon numquam eius modi tempora incidunt ut labore etneise dolore magnam aliquam quaerat tatem dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>\r\n                    <blockquote class=\"wt-blockquotevone\"><span><i class=\"lnr lnr-bookmark\"></i></span> <q>&rdquo; Adipisicing elit, sed dote eiusmod tempor olak magna aliqua okaeine mikaru itniesce.&rdquo;</q></blockquote>\r\n                    <p>ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiate nulla pariatur. Excepteur sint occaecat cupidatat ainon proident sunt in culpa qui officia deserunt mollit anim id est laborum ut perspiciatis unde.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-articlessingleone\"><img class=\"test\" src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-02.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde omnis iste natus error sit voluptatem.</span></figcaption>\r\n                    </figure>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>Qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi quaerat voluptatem.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignleft\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-03.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque lum, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam voluptatem quia voluptas orem ipsum quia dolor sit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiuste modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et qaenuasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignright\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-04.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porrom quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia nonae numquam eius modi tempora incidunt labore.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasite architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <div class=\"wt-video\">\r\n                    <figure><a href=\"https://www.youtube.com/watch?v=J37W6DjqT3Q\" rel=\"prettyPhoto[video]\" data-rel=\"prettyPhoto[video]\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/video-img.jpg\" alt=\"image description\" /></a></figure>\r\n                    </div>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt.</p>', '2021-09-06 02:34:34', '2021-09-06 02:34:34', 1),
(2, '20 Top Tips For Business', '20-top-tips-for-business', 'img-02.jpg', '<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed utem perspiciatis undesieu omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaqueiu ipsa quae ab illo inventore veritatisetm quasitea architecto beatae vitae dictaed quia consequuntur magni dolores eos quist ratione voluptatem sequei nesciunt. Neque porro quam est qui dolorem ipsum quia dolor sitem amet consectetur adipisci velit sed quianon numquam eius modi tempora incidunt ut labore etneise dolore magnam aliquam quaerat tatem dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>\r\n                    <blockquote class=\"wt-blockquotevone\"><span><i class=\"lnr lnr-bookmark\"></i></span> <q>&rdquo; Adipisicing elit, sed dote eiusmod tempor olak magna aliqua okaeine mikaru itniesce.&rdquo;</q></blockquote>\r\n                    <p>ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiate nulla pariatur. Excepteur sint occaecat cupidatat ainon proident sunt in culpa qui officia deserunt mollit anim id est laborum ut perspiciatis unde.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-articlessingleone\"><img class=\"test\" src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-02.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde omnis iste natus error sit voluptatem.</span></figcaption>\r\n                    </figure>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>Qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi quaerat voluptatem.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignleft\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-03.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque lum, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam voluptatem quia voluptas orem ipsum quia dolor sit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiuste modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et qaenuasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignright\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-04.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porrom quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia nonae numquam eius modi tempora incidunt labore.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasite architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <div class=\"wt-video\">\r\n                    <figure><a href=\"https://www.youtube.com/watch?v=J37W6DjqT3Q\" rel=\"prettyPhoto[video]\" data-rel=\"prettyPhoto[video]\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/video-img.jpg\" alt=\"image description\" /></a></figure>\r\n                    </div>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt.</p>', '2021-09-06 02:34:34', '2021-09-06 02:34:34', 1),
(3, 'Clear And Unbiased Facts About Business (Without All The Hype)', 'clear-and-unbiased-facts-about-business-without-all-the-hype', 'img-04.jpg', '<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed utem perspiciatis undesieu omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaqueiu ipsa quae ab illo inventore veritatisetm quasitea architecto beatae vitae dictaed quia consequuntur magni dolores eos quist ratione voluptatem sequei nesciunt. Neque porro quam est qui dolorem ipsum quia dolor sitem amet consectetur adipisci velit sed quianon numquam eius modi tempora incidunt ut labore etneise dolore magnam aliquam quaerat tatem dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>\r\n                    <blockquote class=\"wt-blockquotevone\"><span><i class=\"lnr lnr-bookmark\"></i></span> <q>&rdquo; Adipisicing elit, sed dote eiusmod tempor olak magna aliqua okaeine mikaru itniesce.&rdquo;</q></blockquote>\r\n                    <p>ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiate nulla pariatur. Excepteur sint occaecat cupidatat ainon proident sunt in culpa qui officia deserunt mollit anim id est laborum ut perspiciatis unde.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-articlessingleone\"><img class=\"test\" src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-02.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde omnis iste natus error sit voluptatem.</span></figcaption>\r\n                    </figure>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>Qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi quaerat voluptatem.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignleft\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-03.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque lum, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam voluptatem quia voluptas orem ipsum quia dolor sit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eiuste modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et qaenuasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <figure class=\"wt-blogdetailimgvtwo wt-alignright\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/img-04.jpg\" alt=\"image description\" />\r\n                    <figcaption><span>As per current survey perspiciatis unde</span></figcaption>\r\n                    </figure>\r\n                    <p>Laborum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.</p>\r\n                    <ul class=\"wt-blogliststyle\">\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porrom quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia nonae numquam eius modi tempora incidunt labore.</p>\r\n                    <p class=\"wt-clear\">Excepteur sint eccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasite architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <div class=\"wt-video\">\r\n                    <figure><a href=\"https://www.youtube.com/watch?v=J37W6DjqT3Q\" rel=\"prettyPhoto[video]\" data-rel=\"prettyPhoto[video]\"><img src=\"http://www.amentotech.com/projects/worketic/images/article/articlessingle/video-img.jpg\" alt=\"image description\" /></a></figure>\r\n                    </div>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.</p>\r\n                    <ul>\r\n                    <li><span>Nemo enim ipsam voluptatem quia</span></li>\r\n                    <li><span>Adipisci velit, sed quia non numquam eius modi tempora</span></li>\r\n                    <li><span>Eaque ipsa quae ab illo inventore veritatis et quasi architecto</span></li>\r\n                    <li><span>qui dolorem ipsum quia dolor sit amet</span></li>\r\n                    </ul>\r\n                    <p>Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt.</p>', '2021-09-06 02:34:34', '2021-09-06 02:34:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `title`, `slug`, `abstract`, `image`, `created_at`, `updated_at`) VALUES
(1, 'PSD Web Template', 'psd-web-template', NULL, NULL, '2021-09-06 02:34:34', '2021-09-06 02:34:34'),
(2, 'Digital Marketing', 'digital-marketing', NULL, NULL, '2021-09-06 02:34:34', '2021-09-06 02:34:34'),
(3, 'PHP Development', 'php-development', NULL, NULL, '2021-09-06 02:34:34', '2021-09-06 02:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `article_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `article_category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 3),
(4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `title`, `slug`, `image`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 'gold', 'featured.png', '#f1c40f', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, 'Silver', 'silver', 'featured.png', '#e67e22', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, 'Bronze', 'Bronze', 'featured.png', '#2ecc71', '2021-09-06 02:34:32', '2021-09-06 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `catables`
--

CREATE TABLE `catables` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `catable_id` int(11) NOT NULL,
  `catable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catables`
--

INSERT INTO `catables` (`id`, `category_id`, `catable_id`, `catable_type`, `created_at`, `updated_at`) VALUES
(6, 6, 3, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(14, 6, 7, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(29, 6, 14, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(33, 7, 16, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(35, 5, 17, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(39, 2, 20, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(40, 1, 21, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(41, 5, 22, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(42, 4, 23, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(43, 3, 24, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(45, 5, 20, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(46, 6, 21, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(47, 7, 22, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(48, 8, 23, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(49, 1, 24, 'App\\Job', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(52, 6, 21, 'App\\Service', NULL, NULL),
(53, 6, 48, 'App\\Job', NULL, NULL),
(54, 1, 49, 'App\\Job', NULL, NULL),
(55, 6, 49, 'App\\Job', NULL, NULL),
(56, 6, 1, 'App\\Job', NULL, NULL),
(57, 6, 2, 'App\\Job', NULL, NULL),
(58, 6, 4, 'App\\Job', NULL, NULL),
(59, 6, 5, 'App\\Job', NULL, NULL),
(60, 6, 6, 'App\\Job', NULL, NULL),
(63, 6, 22, 'App\\Service', NULL, NULL),
(64, 6, 12, 'App\\Job', NULL, NULL),
(65, 6, 13, 'App\\Job', NULL, NULL),
(66, 6, 23, 'App\\Service', NULL, NULL),
(67, 6, 15, 'App\\Job', NULL, NULL),
(68, 6, 24, 'App\\Service', NULL, NULL),
(69, 3, 18, 'App\\Job', NULL, NULL),
(70, 6, 19, 'App\\Job', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `abstract`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'mobiles', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1633521700-4121-5.png', '2021-09-06 02:34:31', '2021-10-06 06:01:40'),
(2, 'Digital Marketing', 'digital-marketing', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003210-5878-2.png', '2021-09-06 02:34:31', '2021-09-07 00:26:50'),
(3, 'Writing & Translation', 'writing-translation', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003226-4839-3.png', '2021-09-06 02:34:31', '2021-09-07 00:27:06'),
(4, 'Video & Animation', 'video-animation', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003243-7120-4.png', '2021-09-06 02:34:31', '2021-09-07 00:27:23'),
(5, 'Music & Audio', 'music-audio', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003297-9098-8.png', '2021-09-06 02:34:31', '2021-09-07 00:28:17'),
(6, 'Programming & Tech', 'programming-tech', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003308-8789-5.png', '2021-09-06 02:34:31', '2021-09-07 00:28:28'),
(7, 'Business', 'business', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003323-3719-7.png', '2021-09-06 02:34:31', '2021-09-07 00:28:43'),
(8, 'Fun & Lifestyle', 'fun-lifestyle', 'Consectetur adipisicing elitaed eiusmod tempor incididuatna labore et dolore magna.', '1631003337-5947-6.png', '2021-09-06 02:34:31', '2021-09-07 00:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `child_location`
--

CREATE TABLE `child_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_pages`
--

CREATE TABLE `child_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_pages`
--

INSERT INTO `child_pages` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(4, 1, 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(5, 1, 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(6, 1, 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(7, 1, 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(8, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_times`
--

CREATE TABLE `delivery_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_times`
--

INSERT INTO `delivery_times` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1 Day', '1-day', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(2, '2 Days', '2-days', '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(3, '3 Days', '3-days', '2021-09-06 02:34:33', '2021-09-06 02:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Accounting and Finance', 'accounting-and-finance', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(2, 'Customer Service or Operations', 'customer-service-or-operations', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(3, 'Engineering or Product Management', 'engineering-or-product-management', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(4, 'Human Resource Management', 'human-resource-management', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(5, 'Marketing', 'marketing', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(6, 'Production', 'production', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(7, 'Purchasing', 'purchasing', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(8, 'Research And Development', 'research-and-development', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(9, 'Sales', 'sales', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_type_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `admin_email`, `email_type_id`, `title`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Registration', 'New User Registered', '<p>Hi <strong>%name%!</strong> Thanks for registering at Service Bazaar. You can now login to manage your account using the following credentials:<br /> <strong>Username:</strong> %name%<br /> <strong>Password:</strong> %password%<br /> <strong>Email:</strong> %email%<br /> %signature%</p>', '2021-09-06 02:34:32', '2021-09-23 03:32:15'),
(2, NULL, 2, 'Verification Code', 'Verification Code Received', '<p>Hi <strong>%name%!</strong> Thanks for registering at Service Bazaar.<br /> Here is your verification code to complete registration process<br /> <strong>Name :</strong> %name%<br /> <strong>Email :</strong> %email%<br /> <strong>Verification Code:</strong> %verification_code%<br /> %signature%</p>', '2021-09-06 02:34:32', '2021-09-23 03:32:42'),
(3, NULL, 3, 'Lost Password', 'Forgot Password', '<p>Hi <strong>%name%!</strong> <strong>Lost Password reset</strong></p>\r\n                    <p>Someone requested to reset the password of following account:<br /> <strong>Email Address:</strong> %account_email%<br /> If this was a mistake, just ignore this email and nothing will happen.<br /> To reset your password, click reset link below:<br /> <a href=\"%link%\"><strong>Reset</strong></a></p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, NULL, 4, 'Account Verification', 'Account Verification', '<p>Hi <strong>%name%</strong>! <strong>Verify Your Account</strong></p>\r\n                    <p>You account has created with below given email address:</p>\r\n                    <p><strong>Email Address:</strong> %account_email%</p>\r\n                    <p>If this was a mistake, just ignore this email and nothing will happen.</p>\r\n                    <p>To verifiy your account, click below link:</p>\r\n                    <p><strong><a href=\"%link%\">Verify</a> </strong></p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(5, NULL, 5, 'Invitation', 'Invitation', '<p>Hi,</p>\r\n                    <p><strong>%username%</strong> has invited you to signup at <strong>%link%</strong>.</p>\r\n                    <p>You have invitation message given below</p>\r\n                    <p><strong>%message% </strong></p>\r\n                    <p><strong>%signature%</strong></p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(6, NULL, 6, 'Contact Form Received', 'Contact Form Received', '<p>Hi,</p>\r\n                    <p>A person has contacted you,</p>\r\n                    <p>Description of message is given below.</p>\r\n                    <p><strong>Subject :</strong> %subject%</p>\r\n                    <p><strong>Name :</strong> %name%</p>\r\n                    <p><strong>Email :</strong> %email%</p>\r\n                    <p><strong>Phone Number :</strong> %phone%</p>\r\n                    <p><strong>Message :</strong> %message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(7, 'info@yourdomain.com', 7, 'Admin Email Content - Registration', 'New Registration!', '<p>Hey!</p>\r\n                    <p>A new user <strong>\"%username%\"</strong> with email address <strong>\"%email%\"</strong> has registered on your website.<br /> Please login to check user detail.<br /> You can check user detail at: <strong>%link% </strong></p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(8, 'info@yourdomain.com', 8, 'Admin Email Content - Account Delete', 'Account Delete', '<p>Hi, An existing user has deleted account due to following</p>\r\n                    <p><strong>Reason:</strong> %reason%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(9, 'info@yourdomain.com', 9, 'Admin Email Content - Report Employer', 'Employer Reported', '<p>Hello,</p>\r\n                    <p>An employer <strong><a href=\"%link%\"> %reported_employer% </a></strong> has been reported by <strong><a href=\"%report_by_link%\">%reported_by% </a></strong></p>\r\n                    <p>Message is given below.</p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(10, 'info@yourdomain.com', 10, 'Admin Email Content - Report Project', 'Project Reported', '<p>Hello,</p>\r\n                    <p>A project <strong><a href=\"%link\">%reported_project%</a></strong> has been reported by <strong><a href=\"%report_by_link%\">%reported_by% </a></strong></p>\r\n                    <p>Message is given below.</p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(11, 'info@yourdomain.com', 11, 'Admin Email Content - Report Freelancer', 'A freelancer has been reported!', '<p>Hello,</p>\r\n<p>A Service Provider&nbsp;<a href=\"https://sb.rezumestore.com/admin/email-templates/%link%\"><strong>%reported_freelancer%</strong></a> has been reported by<strong> <a href=\"https://sb.rezumestore.com/admin/email-templates/%report_by_link%\">%reported_by% </a></strong>&nbsp;</p>\r\n<p>Message is given below.</p>\r\n<p>%message%</p>\r\n<p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-23 03:34:28'),
(12, 'info@yourdomain.com', 12, 'Admin Email Content - Job Posted', 'New Job Posted', '<p>Hello,</p>\r\n                    <p>A new job is posted by <strong><a href=\"%employer_link%\">%employer_name%</a></strong>.</p>\r\n                    <p>Click to view the job link.</p>\r\n                    <p><a href=\"%job_link%\" target=\"_blank\" rel=\"noopener\"><strong>%job_title%</strong></a></p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(13, 'info@yourdomain.com', 13, 'Admin Email Content - Job Completed', 'Job Completed', '<p>Hello,</p>\r\n                    <p>The <a href=\"%freelancer_link%\"><strong>%freelancer_name%</strong></a> has completed the following project (<strong><a href=\"%project_link%\">%project_title%</a></strong>).</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(14, NULL, 14, 'Employer Email Content - Proposal Received', 'Proposal Received', '<p>Hello <strong>%employer_name%</strong>,</p>\r\n                    <p><strong> <a href=\"%freelancer_link%\">%freelancer_name%</a></strong> has sent a new proposal on the following project <a href=\"%project_link%\"><strong>%project_title%</strong></a>. Project Information is given below.</p>\r\n                    <p><strong>Proposal Amount :</strong> %proposal_amount%</p>\r\n                    <p><strong>Project Duration :</strong> %proposal_duration%</p>\r\n                    <p><strong>Message:</strong></p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(15, NULL, 15, 'Employer Email Content - New Job Posted', 'New Job Posted', '<p>Hello,</p>\r\n                    <p>A new job is posted by you <strong><a href=\"%employer_link%\">%employer_name%</a></strong>.</p>\r\n                    <p>Click to view the job link. <strong><a href=\"%job_link%\" target=\"_blank\" rel=\"noopener\">%job_title%</a></strong>&nbsp;</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(16, NULL, 16, 'Employer Email Content - Proposal Message', 'Proposal Message', '<p>Hello <strong><a href=\"%employer_link%\">%employer_name%</a></strong>,</p>\r\n                    <p>The <a href=\"%freelancer_link%\"><strong>%freelancer_name%</strong></a> have submitted the proposal message on this job <strong><a href=\"%project_link%\">%project_title%</a></strong>.</p>\r\n                    <p>Login to view your proposal message.</p>\r\n                    <p><strong>Message: </strong></p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(17, NULL, 17, 'Employer Email Content - Package Purchased', 'Package Purchased', '<p>Hello <a href=\"%employer_link%\"><strong>%employer_name%</strong></a>,</p>\r\n                    <p>You have subscribed to the following</p>\r\n                    <p><strong>%package_name%</strong> package at cost of <strong>%package_price%</strong> which will be expired on <strong>%package_expiry%</strong>.</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(18, NULL, 18, 'Freelancer Email Content - New Proposal Submitted', 'New Proposal Submitted', '<p>Hello <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>You have submitted the proposal against this job <strong><a href=\"%project_link%\">%project_title%</a></strong>. With the following details.</p>\r\n                    <p><strong>Project Proposal Amount :</strong> %proposal_amount%</p>\r\n                    <p><strong>Project Duration :</strong> %proposal_duration%</p>\r\n                    <p><strong>Message:</strong> %message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(19, NULL, 19, 'Freelancer Email Content - Hire Freelancer', 'Congratulation You are hired!', '<p>Hello <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>The <strong><a href=\"%employer_link%\">%employer_name%</a></strong> hired you for the following job <strong><a href=\"%project_link%\">%project_title%</a></strong>.</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(20, NULL, 20, 'Freelancer Email Content - Send Offer', 'Offer Received', '<p>Hi <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>The <a href=\"%employer_link%\"><strong>%employer_name%</strong></a> would like to invite you to consider working on the following project&nbsp;&nbsp;</p>\r\n                    <p><strong>Project Name :</strong> <strong><a href=\"%project_link%\">%project_title%</a> </strong></p>\r\n                    <p><strong>Message:</strong></p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(21, NULL, 21, 'Freelancer Email Content - Cancel Job', 'Job Cancelled', '<p>Hello <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>Unfortunately <strong><a href=\"%employer_link%\">%employer_name%</a></strong> cancelled the <strong><a href=\"%project_link%\">%project_title%</a></strong> due to following reasons.</p>\r\n                    <p>Job Cancel Reasons Below.</p>\r\n                    <p><strong>Message:</strong></p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(22, NULL, 22, 'Freelancer Email Content - Proposal Message', 'Proposal Message', '<p>Hello <strong><a href=\"%employer_link%\">%employer_name%</a></strong>,</p>\r\n                    <p>The <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>&nbsp;has submitted the proposal message on this job <strong><a href=\"%project_link%\">%project_title%</a></strong>.</p>\r\n                    <p>Login to view your proposal message.</p>\r\n                    <p><strong>Message:</strong></p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(23, NULL, 23, 'Freelancer Email Content - Package Subscribed', 'Package Purchased', '<p>Hello <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>You have subscribed to the following <strong>%package_name%</strong> package at cost of <strong>%package_price%</strong> which will be expired on <strong>%package_expiry%</strong>.</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(24, NULL, 24, 'Freelancer Email Content - Job Completed', 'Job Completed', '<p>Hello <strong><a href=\"%freelancer_link%\">%freelancer_name%</a></strong>,</p>\r\n                    <p>The <strong><a href=\"%employer_link%\">%employer_name%</a></strong>&nbsp;has confirmed that the following project (<a href=\"%project_link%\">\"<strong>%project_title%</strong>\"</a>) is completed.</p>\r\n                    <p>You have received the following ratings from employer.</p>\r\n                    <p><strong>Message: </strong></p>\r\n                    <p>%message%</p>\r\n                    <p><strong>Ratings:</strong> %rating%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(25, 'info@yourdomain.com', 25, 'Admin Email Content - Dispute Raised', 'A dispute has been rasied', '<p>Hello,</p>\r\n                    <p>A dispute has been raised by freelancer <strong><a href=\"%freelancer_link%\"> %freelancer_name% </a></strong> against <a href=\"%project_link%\">\"<strong>%project_title%</strong>\"</a>&nbsp;.</p>\r\n                    <p><strong>Reason:</strong> \"%reason%\"</p>\r\n                    <p>Message is given below.</p>\r\n                    <p>%message%</p>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(26, NULL, 26, 'Password Reset', 'Password Reset', '<p>Hello <strong>%name%</strong>,</p>\r\n                    <p>You password has been reset successfully.</p>\r\n                    <p>You can login to your account with new credentials</p>\r\n                    <p><strong>Email: </strong>%email%</p>\r\n                    <p><strong>Password: </strong>%password%</p><br>\r\n                    <p>%signature%</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(27, 'info@yourdomain.com', 27, 'Admin Email Content - Job Cancelled', 'Job Cancelled', '  <p>Hello,</p>\r\n                                    <p>An Employer <a href=\"%employer_link%\">%employer_name%</a> has cancelled his ongoing project <a href=\"%project_link%\">%project_title%</a> assigned to <a href=\"%freelancer_link%\"> %freelancer_name% </a></p>\r\n                                    <p>Job Cancel Reason is given below.</p>\r\n                                    <p>%message%</p>\r\n                                    <p>%signature%,</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `email_types`
--

CREATE TABLE `email_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email_type` enum('new_user','verification_code','lost_password','account_verification','invitation','contact_form_received','admin_email_registration','admin_email_delete_account','admin_email_report_employer','admin_email_report_project','admin_email_report_freelancer','admin_email_new_job_posted','admin_email_job_completed','employer_email_proposal_received','employer_email_new_job_posted','employer_email_proposal_message','employer_email_package_subscribed','freelancer_email_new_proposal_submitted','freelancer_email_hire_freelancer','freelancer_email_send_offer','freelancer_email_cancel_job','freelancer_email_proposal_message','freelancer_email_package_subscribed','freelancer_email_job_completed','admin_email_dispute_raised','reset_password_email','admin_email_cancel_job') COLLATE utf8mb4_unicode_ci NOT NULL,
  `variables` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_types`
--

INSERT INTO `email_types` (`id`, `role_id`, `email_type`, `variables`, `created_at`, `updated_at`) VALUES
(1, NULL, 'new_user', 'a:6:{i:0;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:1;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:2;a:2:{s:3:\"key\";s:8:\"username\";s:5:\"value\";s:10:\"%username%\";}i:3;a:2:{s:3:\"key\";s:8:\"password\";s:5:\"value\";s:10:\"%password%\";}i:4;a:2:{s:3:\"key\";s:17:\"verification_code\";s:5:\"value\";s:19:\"%verification_code%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, NULL, 'verification_code', 'a:4:{i:0;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:1;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:2;a:2:{s:3:\"key\";s:17:\"verification_code\";s:5:\"value\";s:19:\"%verification_code%\";}i:3;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, NULL, 'lost_password', 'a:3:{i:0;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:1;a:2:{s:3:\"key\";s:4:\"link\";s:5:\"value\";s:6:\"%link%\";}i:2;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, NULL, 'account_verification', 'a:3:{i:0;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:1;a:2:{s:3:\"key\";s:4:\"link\";s:5:\"value\";s:6:\"%link%\";}i:2;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(5, NULL, 'invitation', 'a:4:{i:0;a:2:{s:3:\"key\";s:8:\"username\";s:5:\"value\";s:10:\"%username%\";}i:1;a:2:{s:3:\"key\";s:4:\"link\";s:5:\"value\";s:6:\"%link%\";}i:2;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:3;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(6, NULL, 'contact_form_received', 'a:6:{i:0;a:2:{s:3:\"key\";s:7:\"subject\";s:5:\"value\";s:9:\"%subject%\";}i:1;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:2;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:3;a:2:{s:3:\"key\";s:5:\"phone\";s:5:\"value\";s:7:\"%phone%\";}i:4;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(7, 1, 'admin_email_registration', 'a:4:{i:0;a:2:{s:3:\"key\";s:8:\"username\";s:5:\"value\";s:10:\"%username%\";}i:1;a:2:{s:3:\"key\";s:4:\"link\";s:5:\"value\";s:6:\"%link%\";}i:2;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:3;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(8, 1, 'admin_email_delete_account', 'a:5:{i:0;a:2:{s:3:\"key\";s:6:\"reason\";s:5:\"value\";s:8:\"%reason%\";}i:1;a:2:{s:3:\"key\";s:8:\"username\";s:5:\"value\";s:10:\"%username%\";}i:2;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:3;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:4;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(9, 1, 'admin_email_report_employer', 'a:6:{i:0;a:2:{s:3:\"key\";s:17:\"reported_employer\";s:5:\"value\";s:19:\"%reported_employer%\";}i:1;a:2:{s:3:\"key\";s:17:\"reported_employer\";s:5:\"value\";s:19:\"%reported_employer%\";}i:2;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:3;a:2:{s:3:\"key\";s:9:\"user_link\";s:5:\"value\";s:11:\"%user_link%\";}i:4;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(10, 1, 'admin_email_report_project', 'a:6:{i:0;a:2:{s:3:\"key\";s:16:\"reported_project\";s:5:\"value\";s:18:\"%reported_project%\";}i:1;a:2:{s:3:\"key\";s:11:\"reported_by\";s:5:\"value\";s:13:\"%reported_by%\";}i:2;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:3;a:2:{s:3:\"key\";s:9:\"user_link\";s:5:\"value\";s:11:\"%user_link%\";}i:4;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(11, 1, 'admin_email_report_freelancer', 'a:6:{i:0;a:2:{s:3:\"key\";s:19:\"reported_freelancer\";s:5:\"value\";s:21:\"%reported_freelancer%\";}i:1;a:2:{s:3:\"key\";s:11:\"reported_by\";s:5:\"value\";s:13:\"%reported_by%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:3;a:2:{s:3:\"key\";s:9:\"user_link\";s:5:\"value\";s:11:\"%user_link%\";}i:4;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(12, 1, 'admin_email_new_job_posted', 'a:5:{i:0;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:1;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:2;a:2:{s:3:\"key\";s:9:\"job_title\";s:5:\"value\";s:11:\"%job_title%\";}i:3;a:2:{s:3:\"key\";s:8:\"job_link\";s:5:\"value\";s:10:\"%job_link%\";}i:4;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(13, 1, 'admin_email_job_completed', 'a:5:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:4;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(14, 2, 'employer_email_proposal_received', 'a:9:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:3;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:5;a:2:{s:3:\"key\";s:15:\"proposal_amount\";s:5:\"value\";s:17:\"%proposal_amount%\";}i:6;a:2:{s:3:\"key\";s:17:\"proposal_duration\";s:5:\"value\";s:19:\"%proposal_duration%\";}i:7;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:8;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(15, 2, 'employer_email_new_job_posted', 'a:5:{i:0;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:1;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:2;a:2:{s:3:\"key\";s:9:\"job_title\";s:5:\"value\";s:11:\"%job_title%\";}i:3;a:2:{s:3:\"key\";s:8:\"job_link\";s:5:\"value\";s:10:\"%job_link%\";}i:4;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(16, 2, 'employer_email_proposal_message', 'a:8:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(17, 2, 'employer_email_package_subscribed', 'a:6:{i:0;a:2:{s:3:\"key\";s:12:\"package_name\";s:5:\"value\";s:14:\"%package_name%\";}i:1;a:2:{s:3:\"key\";s:13:\"package_price\";s:5:\"value\";s:15:\"%package_price%\";}i:2;a:2:{s:3:\"key\";s:14:\"package_expiry\";s:5:\"value\";s:16:\"%package_expiry%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(18, 3, 'freelancer_email_new_proposal_submitted', 'a:8:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:4;a:2:{s:3:\"key\";s:15:\"proposal_amount\";s:5:\"value\";s:17:\"%proposal_amount%\";}i:5;a:2:{s:3:\"key\";s:17:\"proposal_duration\";s:5:\"value\";s:19:\"%proposal_duration%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(19, 3, 'freelancer_email_hire_freelancer', 'a:7:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(20, 3, 'freelancer_email_send_offer', 'a:8:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(21, 3, 'freelancer_email_cancel_job', 'a:8:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(22, 3, 'freelancer_email_proposal_message', 'a:8:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(23, 3, 'freelancer_email_package_subscribed', 'a:6:{i:0;a:2:{s:3:\"key\";s:12:\"package_name\";s:5:\"value\";s:14:\"%package_name%\";}i:1;a:2:{s:3:\"key\";s:13:\"package_price\";s:5:\"value\";s:15:\"%package_price%\";}i:2;a:2:{s:3:\"key\";s:14:\"package_expiry\";s:5:\"value\";s:16:\"%package_expiry%\";}i:3;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:4;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:5;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(24, 3, 'freelancer_email_job_completed', 'a:9:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:2;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:3;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:4;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:5;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:6;a:2:{s:3:\"key\";s:7:\"ratings\";s:5:\"value\";s:9:\"%ratings%\";}i:7;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:8;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(25, 1, 'admin_email_dispute_raised', 'a:7:{i:0;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:1;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:2;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:3;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:4;a:2:{s:3:\"key\";s:6:\"reason\";s:5:\"value\";s:8:\"%reason%\";}i:5;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:6;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(26, NULL, 'reset_password_email', 'a:3:{i:0;a:2:{s:3:\"key\";s:4:\"name\";s:5:\"value\";s:6:\"%name%\";}i:1;a:2:{s:3:\"key\";s:5:\"email\";s:5:\"value\";s:7:\"%email%\";}i:2;a:2:{s:3:\"key\";s:8:\"password\";s:5:\"value\";s:10:\"%password%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(27, NULL, 'admin_email_cancel_job', 'a:8:{i:0;a:2:{s:3:\"key\";s:13:\"employer_link\";s:5:\"value\";s:15:\"%employer_link%\";}i:1;a:2:{s:3:\"key\";s:13:\"employer_name\";s:5:\"value\";s:15:\"%employer_name%\";}i:2;a:2:{s:3:\"key\";s:12:\"project_link\";s:5:\"value\";s:14:\"%project_link%\";}i:3;a:2:{s:3:\"key\";s:13:\"project_title\";s:5:\"value\";s:15:\"%project_title%\";}i:4;a:2:{s:3:\"key\";s:15:\"freelancer_link\";s:5:\"value\";s:17:\"%freelancer_link%\";}i:5;a:2:{s:3:\"key\";s:15:\"freelancer_name\";s:5:\"value\";s:17:\"%freelancer_name%\";}i:6;a:2:{s:3:\"key\";s:7:\"message\";s:5:\"value\";s:9:\"%message%\";}i:7;a:2:{s:3:\"key\";s:9:\"signature\";s:5:\"value\";s:11:\"%signature%\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower`, `following`, `created_at`, `updated_at`) VALUES
(3, 1, 31, '2021-09-23 03:31:18', '2021-09-23 03:31:18'),
(4, 54, 48, '2021-10-04 05:58:33', '2021-10-04 05:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `payer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_tax` double NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_amount` double DEFAULT NULL,
  `handling_amount` double DEFAULT NULL,
  `insurance_amount` double DEFAULT NULL,
  `paypal_fee` double NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `type` enum('trial','package','project') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `title`, `price`, `payer_name`, `payer_email`, `seller_email`, `currency_code`, `payer_status`, `transaction_id`, `sales_tax`, `invoice_id`, `customer_id`, `shipping_amount`, `handling_amount`, `insurance_amount`, `paypal_fee`, `payment_mode`, `paid`, `type`, `created_at`, `updated_at`, `detail`, `transection_doc`) VALUES
(1, 'Invoice No. 1', 0, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'trial', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(2, 'Invoice No. 2', 90, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(3, 'Invoice No. 3', 120, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(4, 'Invoice No. 4', 180, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(5, 'Invoice No. 5', 60, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(6, 'Invoice No. 6', 90, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(7, 'Invoice No. 7', 120, 'Test Payer', 'payer@gmail.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'package', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(8, 'Invoice No. xxx-xx', 8000, 'Cooper White', 'white@amentotech.com', 'seller@gmail.com', 'USD', 'unverified', 'xxxx_xxxx_xxxx', 0, 'xxx_xxx', NULL, 0, 0, 0, 0, 'paypal', 1, 'project', '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL),
(15, 'Invoice', 90, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', '536975', 0, '94625869', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-09-27 00:23:04', '2021-09-27 00:23:04', NULL, NULL),
(16, 'Invoice', 90, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', '536978', 0, '78845415', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-09-27 00:32:42', '2021-09-27 00:32:42', NULL, NULL),
(17, 'Invoice', 120, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'sada', 0, '17744525', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-09-27 02:25:10', '2021-09-27 02:25:10', NULL, NULL),
(18, 'Invoice', 90, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'asdas', 0, '57182122', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-09-27 02:30:35', '2021-09-27 02:30:35', NULL, NULL),
(19, 'Invoice', 60, 'Md Sehirul Islam Rehi', 'rehi@gmail.com', 'test@email.com', 'BDT', '', 'dcgfdsfghfj', 0, '17566183', '48', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-09-29 22:14:50', '2021-09-29 22:14:50', NULL, NULL),
(20, 'Invoice', 120, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', '536975asd', 0, '25344971', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-02 00:25:58', '2021-10-02 00:25:58', NULL, NULL),
(21, 'Invoice', 120, 'Dip Shaha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'asdsadsadsa', 0, '32232695', '49', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-02 00:48:28', '2021-10-02 00:48:28', NULL, NULL),
(22, 'Invoice', 60, 'Md Sehirul Islam Rehi', 'rehi@gmail.com', 'test@email.com', 'BDT', '', 'asdasd', 0, '37584301', '48', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-02 00:56:37', '2021-10-02 00:56:37', NULL, NULL),
(23, 'Invoice', 90, 'Dip Saha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'asdsa', 0, '33871936', '54', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-04 00:26:54', '2021-10-04 00:26:54', NULL, NULL),
(24, 'Invoice', 120, 'Dip Saha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'dfg sfg', 0, '25144542', '54', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-06 21:32:23', '2021-10-06 21:32:23', NULL, NULL),
(25, 'Invoice', 180, 'Dip Saha', 'dip@gmail.com', 'test@email.com', 'BDT', '', 'sdfdfdfg', 0, '47811219', '54', 0, 0, 0, 0, 'Bkash', 1, 'package', '2021-10-06 21:39:18', '2021-10-06 21:39:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscriber` int(11) NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` double NOT NULL,
  `item_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `invoice_id`, `product_id`, `subscriber`, `item_name`, `item_price`, `item_qty`, `created_at`, `updated_at`, `type`) VALUES
(4, 1, 2, 50, 'Trial Provider', 0, 1, '2021-09-25 02:25:56', '2021-09-25 02:25:56', NULL),
(5, 19, 3, 48, 'Basic', 60, 1, '2021-09-27 06:22:29', '2021-09-29 22:14:50', NULL),
(12, 22, 3, 48, 'Basic', 60, 1, '2021-10-02 00:56:37', '2021-10-02 00:56:37', NULL),
(13, 1, 1, 54, 'Trial Seeker', 0, 1, '2021-10-03 23:49:21', '2021-10-03 23:49:21', NULL),
(14, 23, 6, 54, 'Paltinum', 90, 1, '2021-10-04 00:26:54', '2021-10-04 00:26:54', NULL),
(15, 1, 1, 55, 'Trial Seeker', 0, 1, '2021-10-04 02:41:29', '2021-10-04 02:41:29', NULL),
(16, 24, 7, 54, 'Silver', 120, 1, '2021-10-06 21:32:23', '2021-10-06 21:32:23', NULL),
(17, 25, 8, 54, 'Gold', 180, 1, '2021-10-06 21:39:18', '2021-10-06 21:39:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i_p_n_statuses`
--

CREATE TABLE `i_p_n_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('posted','hired','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'posted',
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_level` enum('basic','medium','expensive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `freelancer_type` enum('pro_independent','pro_agency','independent','agency','rising_talent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_level` enum('basic','conversational','fluent','native','professional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `service_type` enum('Online','Home Service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online',
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `slug`, `status`, `duration`, `project_level`, `freelancer_type`, `english_level`, `project_type`, `service_type`, `price`, `description`, `location_id`, `address`, `longitude`, `latitude`, `is_featured`, `show_attachments`, `attachments`, `code`, `created_at`, `updated_at`, `expiry_date`) VALUES
(12, 54, 'Laravel Developer Wanter', 'laravel-developer-wanter', 'completed', 'monthly', 'basic', 'independent', 'basic', 'fixed', 'Online', 150000, '<p>aaa</p>', NULL, '', '', '', 'false', 'false', NULL, 'KAHH65PG', '2021-10-03 23:51:29', '2021-10-06 05:55:29', '2021-10-13 00:00:00'),
(13, 54, 'Ac Servicing', 'ac-servicing', 'completed', 'weekly', 'basic', 'independent', 'basic', 'fixed', 'Home Service', 2000, '<h2 style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 400; line-height: 20px; font-size: 16px; color: #323232; text-transform: capitalize; font-family: Poppins, Arial, Helvetica, sans-serif;\">Job Details</h2>', NULL, '', '', '', 'false', 'false', NULL, 'J35Y3HRU', '2021-10-04 00:27:22', '2021-10-06 05:55:52', '2021-10-31 00:00:00'),
(14, 54, 'Toilet Cleaning', 'toilet-cleaning', 'hired', 'weekly', 'basic', 'independent', 'basic', 'fixed', 'Home Service', 500, '<p>hi</p>', NULL, '', '', '', 'false', 'false', NULL, 'H661VZBU', '2021-10-04 00:55:02', '2021-10-04 00:55:52', '2021-10-21 00:00:00'),
(15, 54, 'A', 'a', 'posted', 'weekly', 'basic', 'independent', 'basic', 'fixed', 'Online', 500, '<p>AA</p>', NULL, '', '', '', 'false', 'false', NULL, 'R1Z7XAEC', '2021-10-05 03:05:23', '2021-10-05 03:05:23', '2021-10-29 00:00:00'),
(16, 54, 'Kitchen Hood Cleaning', 'kitchen-hood-cleaning', 'hired', 'weekly', 'medium', 'independent', 'basic', 'fixed', 'Home Service', 2000, '<p>kitchen cleanning required</p>', 16, 'dhaka', '', '', 'true', 'false', NULL, 'K9CROJ00', '2021-10-27 01:05:14', '2021-10-27 01:53:47', '2021-10-31 00:00:00'),
(17, 54, 'AC service again', 'ac-service-again', 'posted', 'three_month', 'basic', 'agency', 'conversational', 'fixed', 'Home Service', 0, '<p>fg d</p>', 16, '', '', '', 'true', 'false', NULL, 'CFVBY323', '2021-10-27 02:24:37', '2021-10-27 02:43:30', '2021-10-31 00:00:00'),
(18, 54, 'new home service', 'new-home-service', 'completed', 'monthly', 'medium', 'agency', 'conversational', 'fixed', 'Home Service', 3000, '<p>dfedfd</p>', 16, '', '', '', 'false', 'false', NULL, 'TKYNQEN5', '2021-10-27 03:24:37', '2021-10-27 03:31:33', '2021-10-31 00:00:00'),
(19, 54, 'Node JS Developer', 'node-js-developer', 'completed', 'weekly', 'medium', 'agency', 'conversational', 'fixed', 'Online', 50000, '<p>fadsfas fasdf asdf adfa</p>', 16, 'Uttara Dhaka', '', '', 'true', 'false', NULL, 'HYD2EDKO', '2021-10-30 21:33:39', '2021-10-30 21:37:54', '2021-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE `job_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skill`
--

INSERT INTO `job_skill` (`id`, `job_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(14, 12, 1, NULL, NULL),
(15, 13, 1, NULL, NULL),
(16, 14, 1, NULL, NULL),
(17, 15, 1, NULL, NULL),
(18, 16, 1, NULL, NULL),
(20, 17, 1, NULL, NULL),
(23, 18, 1, NULL, NULL),
(24, 19, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_trasnactions`
--

CREATE TABLE `job_trasnactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('Bkash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_trasnactions`
--

INSERT INTO `job_trasnactions` (`id`, `job_id`, `proposal_id`, `user_id`, `transaction_id`, `phone`, `is_verified`, `type`, `created_at`, `updated_at`) VALUES
(10, 12, 9, 54, '536975', '01858361812', 1, 'Bkash', '2021-10-03 23:55:20', '2021-10-04 00:03:46'),
(15, 12, 9, 54, 'fasfgd', '01858361812', 1, 'Bkash', '2021-10-04 00:14:11', '2021-10-04 00:14:32'),
(16, 18, 14, 54, '525sdfd', '01713702979', 1, 'Bkash', '2021-10-27 03:28:14', '2021-10-27 03:30:42'),
(17, 19, 15, 54, '22500', '01713702979', 1, 'Bkash', '2021-10-30 21:35:55', '2021-10-30 21:36:38'),
(18, 19, 15, 54, 'xcbvdfhfhtr', '01713702979', 1, 'Bkash', '2021-10-30 21:37:05', '2021-10-30 21:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `langables`
--

CREATE TABLE `langables` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `langable_id` int(11) NOT NULL,
  `langable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langables`
--

INSERT INTO `langables` (`id`, `language_id`, `langable_id`, `langable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, 2, 2, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, 3, 3, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, 4, 3, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(5, 5, 4, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(6, 6, 4, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(7, 7, 5, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(8, 8, 6, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(9, 9, 6, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(10, 10, 7, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(11, 11, 8, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(12, 12, 9, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(13, 13, 10, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(14, 14, 11, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(15, 15, 12, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(16, 16, 13, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(17, 17, 14, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(18, 18, 15, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(19, 19, 16, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(20, 20, 17, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(21, 21, 18, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(22, 22, 18, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(23, 23, 19, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(24, 24, 20, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(25, 23, 21, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(26, 24, 22, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(27, 23, 23, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(28, 24, 24, 'App\\User', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(41, 7, 21, 'App\\Service', NULL, NULL),
(42, 7, 48, 'App\\Job', NULL, NULL),
(43, 7, 49, 'App\\Job', NULL, NULL),
(44, 7, 1, 'App\\Job', NULL, NULL),
(45, 7, 2, 'App\\Job', NULL, NULL),
(46, 7, 3, 'App\\Job', NULL, NULL),
(47, 7, 4, 'App\\Job', NULL, NULL),
(48, 7, 5, 'App\\Job', NULL, NULL),
(49, 7, 6, 'App\\Job', NULL, NULL),
(50, 7, 7, 'App\\Job', NULL, NULL),
(55, 7, 22, 'App\\Service', NULL, NULL),
(56, 7, 12, 'App\\Job', NULL, NULL),
(57, 7, 13, 'App\\Job', NULL, NULL),
(58, 7, 14, 'App\\Job', NULL, NULL),
(59, 7, 23, 'App\\Service', NULL, NULL),
(60, 7, 15, 'App\\Job', NULL, NULL),
(61, 7, 24, 'App\\Service', NULL, NULL),
(62, 7, 16, 'App\\Job', NULL, NULL),
(63, 4, 17, 'App\\Job', NULL, NULL),
(64, 4, 18, 'App\\Job', NULL, NULL),
(65, 7, 19, 'App\\Job', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Abkhazian', 'ab', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(2, 'Afar', 'aa', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(3, 'Arabic', 'arabic', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(4, 'Afrikaans', 'af', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(5, 'Akan', 'ak', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(6, 'Bambara', 'bm', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(7, 'Bengali', 'bn', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(8, 'Bulgarian', 'bg', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(9, 'Chamorro', 'ch', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(10, 'Chinese', 'zh', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(11, 'Danish', 'da', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(12, 'Dzongkha', 'dz', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(13, 'English', 'en', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(14, 'Esperanto', 'eo', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(15, 'Faroese', 'fo', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(16, 'Fulah', 'ff', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(17, 'Galician', 'gl', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(18, 'Hausa', 'ha', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(19, 'Hindi', 'hi', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(20, 'Irish', 'ga', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(21, 'Indonesian', 'id', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(22, 'Japanese', 'ja', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(23, 'Kannada', 'kn', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(24, 'Kanuri', 'kr', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(25, 'Bengali', 'bengali', NULL, '2021-09-07 01:41:17', '2021-09-07 01:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title`, `slug`, `parent`, `flag`, `description`, `created_at`, `updated_at`) VALUES
(16, 'Bangladesh', 'bangladesh', 0, 'ban.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(17, 'Australia', 'australia', 0, 'aus.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(18, 'Canada', 'canada', 0, 'can.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(19, 'England', 'england', 0, 'eng.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(20, 'India', 'india', 0, 'in.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(21, 'Turkey', 'turkey', 0, 'tu.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(22, 'United Emirates', 'united-emirates', 0, 'ue.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(23, 'United Kingdom', 'united-kingdom', 0, 'uk.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11'),
(24, 'United States', 'united-states', 0, 'us.png', NULL, '2021-10-05 04:54:11', '2021-10-05 04:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `receiver_id`, `body`, `status`, `created_at`, `updated_at`) VALUES
(38, 54, 48, 'Hi, The employer Dip Saha would like to invite you to consider working on the following project<br>Employer Link = http://localhost/service/public/profile/dip-saha<br>Project Title = Laravel Developer Wanter<br>Project Link = http://localhost/service/public/job/laravel-developer-wanter<br>Message: +6512', 1, '2021-10-05 03:15:48', '2021-10-05 03:15:48'),
(39, 54, 48, 'HI', 1, '2021-10-05 03:41:29', '2021-10-05 03:41:29'),
(40, 54, 50, 'Hi, The employer Dip Saha would like to invite you to consider working on the following project<br>Employer Link = http://localhost/service-bazar/public/profile/dip-saha<br>Project Title = Ac Servicing<br>Project Link = http://localhost/service-bazar/public/job/ac-servicing<br>Message: s', 0, '2021-10-27 02:22:06', '2021-10-27 02:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `meta_key`, `meta_value`, `metable_type`, `metable_id`, `created_at`, `updated_at`) VALUES
(8, 'freelancers3', 'a:6:{s:5:\"title\";s:15:\"Top Freelancers\";s:8:\"subtitle\";s:24:\"Start With Great Peoples\";s:11:\"description\";s:135:\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa.</span></p>\";s:2:\"id\";i:4;s:11:\"parentIndex\";i:3;s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(9, 'services1', 'a:6:{s:5:\"title\";s:20:\"Explore Top Services\";s:8:\"subtitle\";s:27:\"Picked Top Serviced For You\";s:11:\"description\";s:259:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa. Etiam placerat mattis pellentesque. Mauris eu mollis arcu. Nullam tincidunt auctor mattis. Donec pretium porta est ut ullamcorper.&nbsp;</p>\";s:2:\"id\";i:6;s:11:\"parentIndex\";i:1;s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(10, 'work_tabs2', 'a:15:{s:16:\"background_image\";s:21:\"1579165004-img-05.jpg\";s:14:\"first_tab_icon\";s:21:\"1579165004-img-01.png\";s:15:\"second_tab_icon\";s:21:\"1579165004-img-02.png\";s:14:\"third_tab_icon\";s:21:\"1579165004-img-03.png\";s:5:\"title\";s:12:\"How It Works\";s:8:\"subtitle\";s:15:\"We Made It Easy\";s:11:\"description\";s:163:\"<p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:15:\"first_tab_title\";s:12:\"Professional\";s:18:\"first_tab_subtitle\";s:18:\"Search Best Online\";s:16:\"second_tab_title\";s:11:\"Appointment\";s:19:\"second_tab_subtitle\";s:11:\"Get Instant\";s:15:\"third_tab_title\";s:8:\"Feedback\";s:18:\"third_tab_subtitle\";s:10:\"Leave Your\";s:2:\"id\";i:3;s:11:\"parentIndex\";i:2;}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(11, 'sliders0', 'a:14:{s:5:\"style\";s:6:\"style2\";s:12:\"slider_image\";a:4:{i:0;s:21:\"1579164321-img-01.jpg\";i:1;s:21:\"1579164321-img-02.jpg\";i:2;s:21:\"1579164321-img-03.jpg\";i:3;s:21:\"1579164321-img-04.jpg\";}s:5:\"title\";s:23:\"Hire expert freelancers\";s:8:\"subtitle\";s:19:\"for any job, Online\";s:11:\"description\";s:160:\"<p>Consectetur adipisicing elition sed dotem eiusmod tempor incuntes ut labore etdolore maigna aliqua enim adion minim veniam quistan neostrud exercitation.</p>\";s:10:\"video_link\";s:28:\"https://youtu.be/B-ph2g5o2K4\";s:11:\"video_title\";s:17:\"See For Yourself!\";s:17:\"video_description\";s:43:\"How it works & experience the ultimate joy.\";s:2:\"id\";i:1;s:11:\"parentIndex\";i:0;s:10:\"titleColor\";s:7:\"#ffffff\";s:13:\"subtitleColor\";s:7:\"#ffffff\";s:12:\"taglineColor\";s:7:\"#ffffff\";s:12:\"sectionColor\";s:7:\"#afafaf\";}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(12, 'app_section4', 'a:13:{s:5:\"title\";s:19:\"Introducing All New\";s:8:\"subtitle\";s:21:\"Our Native Mobile App\";s:11:\"description\";s:163:\"<p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:11:\"andriod_url\";s:1:\"#\";s:7:\"ios_url\";s:1:\"#\";s:5:\"style\";s:6:\"style2\";s:16:\"background_image\";s:21:\"1579165080-img-06.jpg\";s:9:\"app_image\";s:21:\"1579165080-img-05.png\";s:2:\"id\";i:5;s:11:\"parentIndex\";i:4;s:12:\"sectionColor\";s:7:\"#ffffff\";s:9:\"ios_image\";s:21:\"1590762784-img-02.png\";s:13:\"android_image\";s:21:\"1590762784-img-01.png\";}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(13, 'articles5', 'a:6:{s:5:\"title\";s:15:\"Latest Articles\";s:8:\"subtitle\";s:26:\"Stay Updated With Our News\";s:11:\"description\";s:164:\" <p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:2:\"id\";i:10;s:11:\"parentIndex\";i:5;s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(14, 'title', '0', 'App\\Page', 6, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(15, 'freelancers3', 'a:6:{s:5:\"title\";s:15:\"Top Freelancers\";s:8:\"subtitle\";s:24:\"Start With Great Peoples\";s:11:\"description\";s:135:\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa.</span></p>\";s:2:\"id\";i:4;s:11:\"parentIndex\";i:2;s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(16, 'services1', 'a:6:{s:5:\"title\";s:20:\"Explore Top Services\";s:8:\"subtitle\";s:27:\"Picked Top Serviced For You\";s:11:\"description\";s:259:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa. Etiam placerat mattis pellentesque. Mauris eu mollis arcu. Nullam tincidunt auctor mattis. Donec pretium porta est ut ullamcorper.&nbsp;</p>\";s:2:\"id\";i:5;s:11:\"parentIndex\";i:1;s:12:\"sectionColor\";s:7:\"#f7f7f7\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(17, 'work_videos2', 'a:8:{s:5:\"title\";s:13:\" How It Works\";s:8:\"subtitle\";s:15:\"We Made It Easy\";s:11:\"description\";s:163:\"<p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:2:\"id\";i:3;s:11:\"parentIndex\";i:3;s:5:\"video\";s:28:\"https://youtu.be/B-ph2g5o2K4\";s:12:\"video_poster\";s:21:\"1579689887-img-01.png\";s:12:\"sectionColor\";s:7:\"#f7f7f7\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(18, 'sliders0', 'a:16:{s:5:\"style\";s:6:\"style3\";s:12:\"slider_image\";a:2:{i:0;s:21:\"1579166079-img-04.jpg\";i:1;s:21:\"1579166079-img-05.jpg\";}s:5:\"title\";s:23:\"Buy expert’s Services\";s:8:\"subtitle\";s:19:\"for any job, Online\";s:11:\"description\";s:160:\"<p>Consectetur adipisicing elition sed dotem eiusmod tempor incuntes ut labore etdolore maigna aliqua enim adion minim veniam quistan neostrud exercitation.</p>\";s:10:\"video_link\";s:28:\"https://youtu.be/B-ph2g5o2K4\";s:11:\"video_title\";s:17:\"See For Yourself!\";s:17:\"video_description\";s:43:\"How it works & experience the ultimate joy.\";s:2:\"id\";i:1;s:11:\"parentIndex\";i:0;s:10:\"titleColor\";s:7:\"#ff5851\";s:13:\"subtitleColor\";s:7:\"#323232\";s:12:\"taglineColor\";s:7:\"#000000\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:16:\"floating_image01\";s:32:\"1590064417-1579166079-img-05.png\";s:16:\"floating_image02\";s:21:\"1590064417-img-06.png\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(19, 'app_section4', 'a:13:{s:5:\"title\";s:19:\"Introducing All New\";s:8:\"subtitle\";s:21:\"Our Native Mobile App\";s:11:\"description\";s:163:\"<p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:11:\"andriod_url\";s:1:\"#\";s:7:\"ios_url\";s:1:\"#\";s:5:\"style\";s:6:\"style2\";s:16:\"background_image\";s:21:\"1579591173-img-06.jpg\";s:9:\"app_image\";s:32:\"1579520549-1579165080-img-05.png\";s:2:\"id\";i:7;s:11:\"parentIndex\";i:4;s:12:\"sectionColor\";s:7:\"#ffffff\";s:9:\"ios_image\";s:21:\"1590762784-img-02.png\";s:13:\"android_image\";s:21:\"1590762784-img-01.png\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(20, 'articles5', 'a:6:{s:5:\"title\";s:15:\"Latest Articles\";s:8:\"subtitle\";s:26:\"Stay Updated With Our News\";s:11:\"description\";s:164:\" <p>Lorem ipsum dolor amet consectetur adipisicing eliteiuim sete eiusmod tempor incididunt ut labore etnalom dolore magna aliqua udiminimate veniam quis norud.</p>\";s:2:\"id\";i:6;s:11:\"parentIndex\";i:5;s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(21, 'title', '0', 'App\\Page', 7, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(22, 'app_section3', 'a:21:{s:5:\"title\";s:8:\"Download\";s:8:\"titleTwo\";s:18:\"Mobile Application\";s:8:\"subtitle\";s:22:\"Double Your Experience\";s:11:\"description\";s:698:\"<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore ete dolore magna aliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul class=\"wt-mobapp-listing\"><li><span>Duis aute irure dolor in reprehenderit</span></li><li><span>Voluptate velit esse cillum dolore</span></li><li><span>Fugiat nulla pariatur. Excepteur sint occaecat</span></li><li><span>Cupidatat non proident sunt in culpa</span></li><li><span>Qui officia deserunt mollit anim</span></li></ul><div class=\"wt-description\"><p>Laborum ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p></div>\";s:11:\"andriod_url\";s:1:\"#\";s:7:\"ios_url\";s:1:\"#\";s:16:\"background_image\";s:21:\"1588069315-img-05.png\";s:9:\"app_image\";s:21:\"1588069315-mobile.png\";s:5:\"style\";s:6:\"style3\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#f62b84\";s:13:\"subtitleColor\";s:7:\"#3d4461\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:4;s:11:\"parentIndex\";i:3;s:9:\"ios_image\";s:21:\"1590763420-img-02.png\";s:13:\"android_image\";s:21:\"1590763420-img-01.png\";}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(23, 'categoriesSecondVersion1', 'a:16:{s:5:\"title\";s:8:\"Trending\";s:8:\"subtitle\";s:14:\"Top Categories\";s:11:\"description\";s:75:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:13:\"backgroundImg\";s:21:\"1588069315-img-04.png\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"subtitleColor\";s:7:\"#f62b84\";s:13:\"showAllBtnUrl\";s:1:\"#\";s:12:\"lastTabTitle\";s:18:\"Explore Categories\";s:11:\"lastTabDesc\";s:59:\"Consectetur adipisicing elit deius temor incididunt utnenbo\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:2;s:11:\"parentIndex\";i:1;}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(24, 'freelancersSecondVersion4', 'a:13:{s:5:\"title\";s:3:\"Top\";s:8:\"titleTwo\";s:11:\"Freelancers\";s:11:\"description\";s:83:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita\";s:13:\"backgroundImg\";s:21:\"1588069315-img-03.png\";s:12:\"sectionColor\";s:7:\"#f5f7fa\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#f62b84\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:3:\"108\";s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:5;s:11:\"parentIndex\";i:4;}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(25, 'jobs2', 'a:13:{s:5:\"title\";s:6:\"Latest\";s:8:\"titleTwo\";s:12:\"Jobs Opening\";s:11:\"description\";s:83:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita\";s:13:\"backgroundImg\";s:21:\"1588069316-img-02.png\";s:12:\"sectionColor\";s:7:\"#f5f7fa\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#f62b84\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:3:\"108\";s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:3;s:11:\"parentIndex\";i:2;}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(26, 'packages5', 'a:13:{s:5:\"title\";s:3:\"Top\";s:8:\"titleTwo\";s:8:\"Packages\";s:11:\"description\";s:83:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:13:\"backgroundImg\";s:21:\"1588652284-img-04.png\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#f62b84\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:3:\"100\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";s:1:\"0\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:6;s:11:\"parentIndex\";i:5;}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(27, 'bannerFirstVersion0', 'a:17:{s:5:\"title\";s:23:\"Most Powerful Directory\";s:8:\"subtitle\";s:31:\"Available for Service Providers\";s:10:\"videoTitle\";s:17:\"See For Yourself!\";s:9:\"videoDesc\";s:43:\"How it works & experience the ultimate joy.\";s:8:\"videoUrl\";s:1:\"#\";s:13:\"backgroundImg\";s:21:\"1588069316-img-01.jpg\";s:8:\"frontImg\";s:32:\"1588069316-1587028317-img-01.png\";s:14:\"showSearchForm\";b:1;s:12:\"sectionColor\";s:7:\"#ffffff\";s:10:\"titleColor\";s:7:\"#ffffff\";s:13:\"subtitleColor\";s:7:\"#ffffff\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"96\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"96\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:1;s:11:\"parentIndex\";i:0;}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(28, 'header', 'style4', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(29, 'footer', 'style2', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(30, 'title', '0', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(31, 'app_section3', 'a:21:{s:5:\"title\";s:8:\"Download\";s:8:\"titleTwo\";s:18:\"Mobile Application\";s:8:\"subtitle\";s:22:\"Double Your Experience\";s:11:\"description\";s:664:\"<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore ete dolore magna aliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul class=\"wt-mobapp-listing\"><li><span>Duis aute irure dolor in reprehenderit</span></li><li><span>Voluptate velit esse cillum dolore</span></li><li><span>Fugiat nulla pariatur. Excepteur sint occaecat</span></li><li><span>Cupidatat non proident sunt in culpa</span></li><li><span>Qui officia deserunt mollit anim</span></li></ul><p>Laborum ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>\";s:11:\"andriod_url\";s:1:\"#\";s:7:\"ios_url\";s:1:\"#\";s:16:\"background_image\";s:21:\"1588246876-img-05.png\";s:9:\"app_image\";s:21:\"1588246876-mobile.png\";s:5:\"style\";s:6:\"style3\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#f62b84\";s:13:\"subtitleColor\";s:7:\"#3d4461\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:4;s:11:\"parentIndex\";i:3;s:9:\"ios_image\";s:21:\"1590763876-img-02.png\";s:13:\"android_image\";s:21:\"1590763876-img-01.png\";}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(32, 'freelancersSecondVersion4', 'a:13:{s:5:\"title\";s:3:\"Top\";s:8:\"titleTwo\";s:11:\"Freelancers\";s:11:\"description\";s:90:\"<p>Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita</p>\";s:13:\"backgroundImg\";s:21:\"1588246876-img-03.png\";s:12:\"sectionColor\";s:7:\"#f5f7fa\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#9013fe\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:3:\"108\";s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:5;s:11:\"parentIndex\";i:4;}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(33, 'jobs2', 'a:13:{s:5:\"title\";s:6:\"Latest\";s:8:\"titleTwo\";s:12:\"Jobs Opening\";s:11:\"description\";s:83:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita\";s:13:\"backgroundImg\";s:21:\"1588246877-img-02.png\";s:12:\"sectionColor\";s:7:\"#f5f7fa\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#9013f3\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"80\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:3:\"108\";s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:3;s:11:\"parentIndex\";i:2;}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(34, 'packages5', 'a:13:{s:5:\"title\";s:3:\"Top\";s:8:\"titleTwo\";s:8:\"Packages\";s:11:\"description\";s:83:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna alie enim poskina ilukita\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:13:\"backgroundImg\";s:21:\"1588246877-img-04.png\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#9013fe\";s:7:\"padding\";a:5:{s:3:\"top\";s:2:\"80\";s:5:\"right\";i:0;s:6:\"bottom\";s:3:\"100\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:6;s:11:\"parentIndex\";i:5;}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(35, 'sliders0', 'a:24:{s:5:\"style\";s:6:\"style4\";s:12:\"slider_image\";a:4:{i:0;s:21:\"1588246877-img-01.jpg\";i:1;s:21:\"1588246878-img-02.jpg\";i:2;s:21:\"1588246878-img-03.jpg\";i:3;s:21:\"1588246878-img-04.jpg\";}s:5:\"title\";s:15:\"Title Your Need\";s:8:\"subtitle\";s:16:\"We Have Everyone\";s:7:\"tagline\";s:25:\"Looking For Professional?\";s:11:\"description\";s:208:\"<p>Consectetur adipisicing elition sedames dotem iusmod temporei incuntes utnalo labore etdolore maina aliqua enim adion minim veniam quis nsitrud exercitation ullamco laboris nisiutaliquip ex ea commodo.</p>\";s:10:\"video_link\";N;s:11:\"video_title\";N;s:17:\"video_description\";s:0:\"\";s:12:\"taglineColor\";s:7:\"#ffffff\";s:10:\"titleColor\";s:7:\"#ffffff\";s:13:\"subtitleColor\";s:7:\"#ffffff\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:7:\"padding\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:1;s:11:\"parentIndex\";i:0;s:18:\"enable_search_form\";b:1;s:17:\"search_form_title\";s:25:\"That Help You To Go Ahead\";s:20:\"search_form_subtitle\";s:22:\"Best Service Providers\";s:17:\"price_range_title\";s:12:\"Price Range:\";s:15:\"listing_tagline\";s:33:\"more than 2500 listings available\";}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(36, 'categoriesThirdVersion1', 'a:16:{s:5:\"title\";s:9:\"Versatile\";s:8:\"titleTwo\";s:10:\"Categories\";s:8:\"subtitle\";s:16:\"Explore with our\";s:11:\"description\";s:200:\"<p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum dolore eunfugiat nulla pariatur lokaim urianewce sint.</p>\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:13:\"backgroundImg\";s:21:\"1588246878-img-01.png\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"titleTwoColor\";s:7:\"#9013fe\";s:13:\"subtitleColor\";s:7:\"#3d4461\";s:13:\"showAllBtnUrl\";s:1:\"#\";s:7:\"padding\";a:5:{s:3:\"top\";s:3:\"160\";s:5:\"right\";i:0;s:6:\"bottom\";s:3:\"160\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:2;s:11:\"parentIndex\";i:1;}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(37, 'header', 'style5', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(38, 'footer', 'style3', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(39, 'title', '0', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(40, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#ffffff\";s:14:\"menuHoverColor\";s:7:\"#fbde44\";s:5:\"color\";s:7:\"#ffffff\";}', 'App\\Page', 9, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(41, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#ffffff\";s:14:\"menuHoverColor\";s:7:\"#fbde44\";s:5:\"color\";s:7:\"#ffffff\";}', 'App\\Page', 8, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(57, 'parent_type', 'page', 'App\\Page', 1, '2021-09-06 02:42:08', '2021-09-06 02:42:08'),
(58, 'title', '0', 'App\\Page', 1, '2021-09-06 02:42:08', '2021-09-06 02:42:08'),
(59, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#000000\";s:14:\"menuHoverColor\";s:7:\"#000000\";s:5:\"color\";s:7:\"#000000\";}', 'App\\Page', 1, '2021-09-06 02:42:08', '2021-09-06 02:42:08'),
(543, 'parent_type', 'page', 'App\\Page', 2, '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(544, 'content0', 'a:4:{s:11:\"description\";s:1477:\"<div class=\'wt-greetingcontent\'>\r\n        <div class=\'wt-sectionhead\'>\r\n        <div class=\'wt-sectiontitle\'>\r\n        <h2>Greetings &amp; Welcome</h2>\r\n        <span>Start Today For a Great Future</span></div>\r\n        <div class=\'wt-description\'>\r\n        <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce anim id est laborumed.</p>\r\n        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa officia deserunt mollit anim id est laborumed perspiciatis unde omnis isteatus error aluptatem accusantium doloremque laudantium.</p>\r\n        </div>\r\n        </div>\r\n        <div id=\'wt-statistics\' class=\'wt-statistics\'>\r\n        <div class=\'wt-statisticcontent wt-countercolor1\'>\r\n        <h3 data-from=\'0\' data-to=\'1500\' data-speed=\'8000\' data-refresh-interval=\'50\'>1,500</h3>\r\n        <em>k</em>\r\n        <h4>Active Projects</h4>\r\n        </div>\r\n        <div class=\'wt-statisticcontent wt-countercolor2\'>\r\n        <h3 data-from=\'0\' data-to=\'99\' data-speed=\'8000\' data-refresh-interval=\'5.9\'>99</h3>\r\n        <em>%</em>\r\n        <h4>Great Feedback</h4>\r\n        </div>\r\n        <div class=\'wt-statisticcontent wt-countercolor3\'>\r\n        <h3 data-from=\'0\' data-to=\'5000\' data-speed=\'8000\' data-refresh-interval=\'100\'>5,000</h3>\r\n        <em>k</em>\r\n        <h4>Active Freelancers</h4>\r\n        </div>\r\n        </div>\r\n        </div>\";s:12:\"sectionColor\";s:7:\"#f7f7f7\";s:2:\"id\";i:4;s:11:\"parentIndex\";i:0;}', 'App\\Page', 2, '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(545, 'page_order', '6', 'App\\Page', 2, '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(546, 'title', '1', 'App\\Page', 2, '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(547, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#000000\";s:14:\"menuHoverColor\";s:7:\"#000000\";s:5:\"color\";s:7:\"#000000\";}', 'App\\Page', 2, '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(548, 'parent_type', 'page', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(549, 'headings0', 'a:15:{s:5:\"title\";s:15:\"You Can Call Us\";s:4:\"link\";N;s:3:\"url\";N;s:3:\"tag\";s:2:\"h2\";s:6:\"action\";N;s:9:\"alignment\";s:6:\"center\";s:5:\"color\";s:7:\"#000000\";s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:1:\"3\";s:5:\"right\";s:1:\"3\";s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}s:12:\"elementClass\";N;s:9:\"elementId\";N;s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:7;s:11:\"parentIndex\";i:0;}', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(550, 'headings1', 'a:15:{s:5:\"title\";s:6:\"Phone:\";s:4:\"link\";b:1;s:3:\"url\";s:5:\"tell:\";s:3:\"tag\";s:2:\"h4\";s:6:\"action\";b:0;s:9:\"alignment\";s:7:\"justify\";s:5:\"color\";s:7:\"#16aaff\";s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:12:\"elementClass\";N;s:9:\"elementId\";N;s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:19;s:11:\"parentIndex\";i:1;}', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(551, 'headings2', 'a:15:{s:5:\"title\";s:5:\"mail:\";s:4:\"link\";b:1;s:3:\"url\";s:6:\"maill:\";s:3:\"tag\";s:2:\"h4\";s:6:\"action\";N;s:9:\"alignment\";s:7:\"justify\";s:5:\"color\";s:7:\"#16a4ff\";s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:12:\"elementClass\";N;s:9:\"elementId\";N;s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:21;s:11:\"parentIndex\";i:2;}', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(552, 'headings3', 'a:15:{s:5:\"title\";s:8:\"Address:\";s:4:\"link\";N;s:3:\"url\";N;s:3:\"tag\";s:2:\"h4\";s:6:\"action\";N;s:9:\"alignment\";s:4:\"left\";s:5:\"color\";s:7:\"#2394e5\";s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}s:12:\"elementClass\";N;s:9:\"elementId\";N;s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:3;s:11:\"parentIndex\";i:3;}', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(553, 'header', 'style1', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(554, 'footer', 'style1', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(555, 'page_order', '7', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(556, 'title', '1', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(557, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#000000\";s:14:\"menuHoverColor\";s:7:\"#000000\";s:5:\"color\";s:7:\"#000000\";}', 'App\\Page', 10, '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(614, 'custom_link', NULL, 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(615, 'parent_type', 'custom_link', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(616, 'cat1', 'a:12:{s:5:\"title\";s:18:\"Explore Categories\";s:8:\"subtitle\";s:26:\"Professional by categories\";s:11:\"description\";s:135:\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa.</span></p>\";s:12:\"sectionColor\";s:7:\"#ffffff\";s:10:\"titleColor\";s:7:\"#3d4461\";s:13:\"subtitleColor\";s:7:\"#3d4461\";s:7:\"padding\";a:5:{s:3:\"top\";i:0;s:5:\"right\";i:0;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:6:\"margin\";a:5:{s:3:\"top\";s:2:\"50\";s:5:\"right\";i:0;s:6:\"bottom\";s:2:\"50\";s:4:\"left\";i:0;s:4:\"unit\";s:2:\"px\";}s:9:\"sectionId\";N;s:12:\"sectionClass\";N;s:2:\"id\";i:3;s:11:\"parentIndex\";i:1;}', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(617, 'app_section3', 'a:15:{s:5:\"title\";s:20:\"Limitless Experience\";s:8:\"subtitle\";s:30:\"Roam Around With Your Business\";s:11:\"description\";s:460:\"<p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum dolore eu fugiat nulla pariatur lokaim urianewce.</p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget leo rutrum, ullamcorper dolor eu, faucibus massa. Etiam placerat mattis pellentesque. Mauris eu mollis arcu. Nullam tincidunt auctor mattis. Donec pretium porta est ut ullamcorper.&nbsp;</p>\";s:11:\"andriod_url\";s:1:\"#\";s:7:\"ios_url\";s:1:\"#\";s:5:\"style\";s:6:\"style1\";s:16:\"background_image\";N;s:9:\"app_image\";s:79:\"1631001385-3944-1630924121-8341-1579153406-1558518016-1557484284-mobile-img.png\";s:2:\"id\";i:5;s:11:\"parentIndex\";i:3;s:12:\"sectionColor\";s:7:\"#ffffff\";s:9:\"ios_image\";s:37:\"1630924643-7203-1590762784-img-01.png\";s:13:\"android_image\";N;s:10:\"titleColor\";s:7:\"#000000\";s:13:\"subtitleColor\";s:7:\"#000000\";}', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(618, 'welcome_sections2', 'a:18:{s:18:\"welcome_background\";s:85:\"1631001857-6330-jumpingsilhouettegroupofpeoplecatseareflection-1631001736679-7843.jpg\";s:11:\"first_title\";s:23:\"Start As Service Seeker\";s:9:\"first_url\";s:37:\"register/login-register-user/employer\";s:16:\"first_url_button\";s:8:\"JOIN NOW\";s:17:\"first_description\";s:172:\"Consectetur adipisicing elit sed dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum.\";s:12:\"second_title\";s:25:\"Start As Service Provider\";s:10:\"second_url\";s:39:\"register/login-register-user/freelancer\";s:17:\"second_url_button\";s:8:\"JOIN NOW\";s:18:\"second_description\";s:172:\"Consectetur adipisicing elit sed dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum.\";s:2:\"id\";i:4;s:11:\"parentIndex\";i:2;s:15:\"firstTitleColor\";s:7:\"#000000\";s:14:\"firstDescColor\";s:7:\"#000000\";s:13:\"firstBtnColor\";s:7:\"#000000\";s:16:\"secondTitleColor\";s:7:\"#000000\";s:15:\"secondDescColor\";s:7:\"#000000\";s:14:\"secondBtnColor\";s:7:\"#000000\";s:12:\"sectionColor\";s:7:\"#ffffff\";}', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(619, 'sliders0', 'a:17:{s:5:\"style\";s:6:\"style1\";s:12:\"slider_image\";a:2:{i:0;s:50:\"1633521575-2537-photo-nic-Qu-dnz_Kqgw-unsplash.jpg\";i:1;s:24:\"1633521575-5681-home.jpg\";}s:18:\"inner_banner_image\";s:26:\"1579153511-img-01inner.png\";s:16:\"floating_image01\";s:24:\"1632398025-7390-last.jpg\";s:16:\"floating_image02\";s:24:\"1632398025-1322-last.jpg\";s:5:\"title\";s:26:\"Hire Best Service Provider\";s:8:\"subtitle\";s:19:\"for any job, Online\";s:11:\"description\";s:108:\"<p>Consectetur adipisicing elit sed dotem eiusmod tempor incuntes ut labore etdolore maigna aliqua enim.</p>\";s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=J37W6DjqT3Q\";s:11:\"video_title\";s:17:\"See For Yourself!\";s:17:\"video_description\";s:43:\"How it works & experience the ultimate joy.\";s:2:\"id\";i:1;s:11:\"parentIndex\";i:0;s:10:\"titleColor\";s:7:\"#ffffff\";s:13:\"subtitleColor\";s:7:\"#ffffff\";s:12:\"taglineColor\";s:7:\"#ffffff\";s:12:\"sectionColor\";s:7:\"#d1d1d1\";}', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(620, 'title', '0', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(621, 'header_styling', 'a:4:{s:4:\"logo\";N;s:9:\"menuColor\";s:7:\"#000000\";s:14:\"menuHoverColor\";s:7:\"#000000\";s:5:\"color\";s:7:\"#000000\";}', 'App\\Page', 5, '2021-10-27 21:30:09', '2021-10-27 21:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_21_082930_create_site_managements_table', 1),
(4, '2019_01_21_083223_create_categories_table', 1),
(5, '2019_01_21_083659_create_pages_table', 1),
(6, '2019_01_21_084005_child_pages', 1),
(7, '2019_01_21_084332_create_locations_table', 1),
(8, '2019_01_21_084630_create_skills_table', 1),
(9, '2019_01_21_084946_private_messages', 1),
(10, '2019_01_21_085428_private_messages_to', 1),
(11, '2019_01_21_103956_create_languages_table', 1),
(12, '2019_01_21_104105_create_jobs_table', 1),
(13, '2019_01_21_105235_create_proposals_table', 1),
(14, '2019_01_21_105802_proposal_documents', 1),
(15, '2019_01_23_063619_create_child_location_table', 1),
(16, '2019_01_23_064221_create_permission_tables', 1),
(17, '2019_01_25_070119_profile', 1),
(18, '2019_01_25_074332_departments', 1),
(19, '2019_01_29_113201_create_skill_user_table', 1),
(20, '2019_01_29_130030_create_catables_table', 1),
(21, '2019_02_01_140348_create_langables_table', 1),
(22, '2019_02_12_082928_create_job_skill_table', 1),
(23, '2019_02_16_103711_create_reports_table', 1),
(24, '2019_02_26_122204_followers', 1),
(25, '2019_02_28_115604_create_email_types_table', 1),
(26, '2019_02_28_115655_create_email_templates_table', 1),
(27, '2019_03_01_071107_create_review-options_table', 1),
(28, '2019_03_01_124110_create_reviews_table', 1),
(29, '2019_03_04_070237_create_packages_table', 1),
(30, '2019_03_04_085836_create_invoices_table', 1),
(31, '2019_03_04_112418_create_orders_table', 1),
(32, '2019_03_04_112537_create_items_table', 1),
(33, '2019_03_04_112635_create_i_p_n_statuses_table', 1),
(34, '2019_03_15_103524_create_messages_table', 1),
(35, '2019_03_19_125626_create_offers_table', 1),
(36, '2019_03_19_125645_create_disputes_table', 1),
(37, '2019_04_06_122330_create_badges_table', 1),
(38, '2019_04_10_131904_create_payouts_table', 1),
(39, '2019_06_17_080227_create_delivery_time_table', 1),
(40, '2019_06_17_080252_create_response_time_table', 1),
(41, '2019_06_17_084715_create_services_table', 1),
(42, '2019_06_18_113753_create_service_user_table', 1),
(43, '2019_06_25_121752_update_profile', 1),
(44, '2019_06_25_135732_update_private_messages', 1),
(45, '2019_06_26_070540_delete_profile_rating', 1),
(46, '2019_07_01_123323_update_reviews', 1),
(47, '2019_07_02_124918_update_payouts', 1),
(48, '2019_07_03_130706_update_packages', 1),
(49, '2019_07_31_080556_update_profile_payout', 1),
(50, '2019_08_01_095648_add_to_payout_type', 1),
(51, '2019_08_05_083823_add_is_active_to_users', 1),
(52, '2019_10_18_133239_add_paid_to_proposals', 1),
(53, '2019_10_18_133520_add_paid_to_service_user', 1),
(54, '2019_10_28_123201_add_videos_to_profiles_table', 1),
(55, '2019_10_31_083735_add_paid_progress_to_proposals', 1),
(56, '2019_10_31_085942_add_paid_progress_to_service_user', 1),
(57, '2019_10_31_104244_add_projects_ids_to_payouts', 1),
(58, '2019_12_17_080700_add_expiry_to_jobs_table', 1),
(59, '2019_12_18_150007_add_bank_column_to_invoices_table', 1),
(60, '2019_12_20_105734_add_type_to_orders_table', 1),
(61, '2019_12_20_142840_add_type_to_items_table', 1),
(62, '2019_12_24_140115_create_metas_table', 1),
(63, '2019_12_24_142522_add_sections_to_pages_table', 1),
(64, '2020_01_20_055407_create_article_categories_table', 1),
(65, '2020_01_20_061623_create_articles_table', 1),
(66, '2020_01_20_062131_create_article_category_table', 1),
(67, '2020_04_14_140545_add_image_to_packages_table', 1),
(68, '2019_01_21_104104_create_job_trasnactions_table', 2),
(69, '2021_09_26_041908_create_package_transactions_table', 3),
(70, '2021_10_04_063218_create_service_transactions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 36),
(2, 'App\\User', 54),
(2, 'App\\User', 55),
(3, 'App\\User', 13),
(3, 'App\\User', 14),
(3, 'App\\User', 15),
(3, 'App\\User', 16),
(3, 'App\\User', 17),
(3, 'App\\User', 18),
(3, 'App\\User', 19),
(3, 'App\\User', 20),
(3, 'App\\User', 21),
(3, 'App\\User', 22),
(3, 'App\\User', 23),
(3, 'App\\User', 24),
(3, 'App\\User', 29),
(3, 'App\\User', 32),
(3, 'App\\User', 41),
(3, 'App\\User', 42),
(3, 'App\\User', 44),
(3, 'App\\User', 47),
(3, 'App\\User', 48),
(3, 'App\\User', 50),
(3, 'App\\User', 51),
(3, 'App\\User', 52),
(3, 'App\\User', 53);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `user_id`, `freelancer_id`, `project_id`, `description`, `created_at`, `updated_at`) VALUES
(4, 36, 32, 48, 'i will give 1000 first then the rest', '2021-09-23 03:29:35', '2021-09-23 03:29:35'),
(8, 54, 48, 12, '+6512', '2021-10-05 03:15:48', '2021-10-05 03:15:48'),
(9, 54, 50, 13, 's', '2021-10-27 02:22:06', '2021-10-27 02:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `invoice_id`, `status`, `created_at`, `updated_at`, `type`) VALUES
(5, 49, 6, 15, 'completed', '2021-09-27 00:23:04', '2021-09-27 00:23:04', 'package'),
(6, 49, 6, 16, 'completed', '2021-09-27 00:32:42', '2021-09-27 00:32:42', 'package'),
(7, 49, 7, 17, 'completed', '2021-09-27 02:25:10', '2021-09-27 02:25:10', 'package'),
(8, 49, 6, 18, 'completed', '2021-09-27 02:30:35', '2021-09-27 02:30:35', 'package'),
(9, 48, 3, 19, 'completed', '2021-09-29 22:14:50', '2021-09-29 22:14:50', 'package'),
(10, 49, 7, 20, 'completed', '2021-10-02 00:25:58', '2021-10-02 00:25:58', 'package'),
(11, 49, 7, 21, 'completed', '2021-10-02 00:48:28', '2021-10-02 00:48:28', 'package'),
(12, 48, 3, 22, 'completed', '2021-10-02 00:56:37', '2021-10-02 00:56:37', 'package'),
(13, 54, 6, 23, 'completed', '2021-10-04 00:26:54', '2021-10-04 00:26:54', 'package'),
(14, 54, 7, 24, 'completed', '2021-10-06 21:32:23', '2021-10-06 21:32:23', 'package'),
(15, 54, 8, 25, 'completed', '2021-10-06 21:39:18', '2021-10-06 21:39:18', 'package');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `role_id` int(11) NOT NULL,
  `trial` tinyint(4) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `subtitle`, `slug`, `cost`, `role_id`, `trial`, `badge_id`, `options`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Trial Seeker', '30 Days Trial', 'trial-seeker', 0.00, 2, 1, 0, 'a:5:{s:4:\"jobs\";s:1:\"1\";s:13:\"featured_jobs\";s:1:\"2\";s:8:\"duration\";s:2:\"30\";s:13:\"banner_option\";s:5:\"false\";s:12:\"private_chat\";s:5:\"false\";}', '2021-09-06 02:34:32', '2021-09-25 05:55:00', NULL),
(2, 'Trial Provider', '30 Days Trial', 'trial-provider', 0.00, 3, 1, 0, 'a:7:{s:14:\"no_of_connects\";s:2:\"10\";s:12:\"no_of_skills\";s:1:\"3\";s:14:\"no_of_services\";s:1:\"5\";s:23:\"no_of_featured_services\";s:1:\"5\";s:8:\"duration\";s:2:\"10\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-14 20:15:38', NULL),
(3, 'Basic', 'Extended Plan For Managerial', 'basic', 60.00, 3, 0, 1, 'a:8:{s:14:\"no_of_connects\";s:2:\"60\";s:12:\"no_of_skills\";s:2:\"15\";s:14:\"no_of_services\";s:1:\"8\";s:23:\"no_of_featured_services\";s:1:\"5\";s:8:\"duration\";s:2:\"10\";s:5:\"badge\";s:1:\"1\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830253-img-01.jpg'),
(4, 'Plus Members', 'Starter Plan For Newbie', 'plus-member', 90.00, 3, 0, 2, 'a:8:{s:14:\"no_of_connects\";s:2:\"90\";s:12:\"no_of_skills\";s:2:\"20\";s:14:\"no_of_services\";s:2:\"10\";s:23:\"no_of_featured_services\";s:1:\"8\";s:8:\"duration\";s:2:\"10\";s:5:\"badge\";s:1:\"2\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830373-img-02.jpg'),
(5, 'Pro Members', 'Popular Plan For Professionals', 'pro-members', 120.00, 3, 0, 3, 'a:8:{s:14:\"no_of_connects\";s:3:\"120\";s:12:\"no_of_skills\";s:2:\"30\";s:14:\"no_of_services\";s:2:\"20\";s:23:\"no_of_featured_services\";s:2:\"10\";s:8:\"duration\";s:2:\"10\";s:5:\"badge\";s:1:\"3\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830460-img-03.jpg'),
(6, 'Paltinum', 'For Employers', 'paltinum', 90.00, 2, 0, 0, 'a:5:{s:4:\"jobs\";s:2:\"15\";s:13:\"featured_jobs\";s:1:\"5\";s:8:\"duration\";s:2:\"10\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830571-img-03.jpg'),
(7, 'Silver', 'Package for Employers', 'silver', 120.00, 2, 0, 0, 'a:5:{s:4:\"jobs\";s:1:\"5\";s:13:\"featured_jobs\";s:1:\"3\";s:8:\"duration\";s:2:\"30\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830532-img-01.jpg'),
(8, 'Gold', 'Package for Employers', 'gold', 180.00, 2, 0, 0, 'a:5:{s:4:\"jobs\";s:2:\"10\";s:13:\"featured_jobs\";s:1:\"5\";s:8:\"duration\";s:3:\"360\";s:13:\"banner_option\";s:4:\"true\";s:12:\"private_chat\";s:4:\"true\";}', '2021-09-06 02:34:32', '2021-09-06 02:34:32', '1588830552-img-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `package_transactions`
--

CREATE TABLE `package_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Bkash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_transactions`
--

INSERT INTO `package_transactions` (`id`, `user_id`, `item_id`, `order_id`, `phone`, `transaction_id`, `type`, `is_verified`, `created_at`, `updated_at`) VALUES
(3, 49, 6, 5, '01858361812', '536975', 'Bkash', 0, '2021-09-27 00:23:04', '2021-09-27 00:23:04'),
(4, 49, 6, 6, '01858361812', '536978', 'Bkash', 1, '2021-09-27 00:32:42', '2021-10-06 22:04:34'),
(5, 49, 6, 7, '01858361812', 'sada', 'Bkash', 0, '2021-09-27 02:25:10', '2021-09-27 02:25:10'),
(6, 49, 6, 8, '01858361812', 'asdas', 'Bkash', 0, '2021-09-27 02:30:35', '2021-09-27 02:30:35'),
(7, 48, 5, 9, '01537418355', 'dcgfdsfghfj', 'Bkash', 0, '2021-09-29 22:14:50', '2021-09-29 22:14:50'),
(8, 49, 10, 10, '01858361812', '536975asd', 'Bkash', 0, '2021-10-02 00:25:58', '2021-10-02 00:25:58'),
(9, 49, 11, 11, '01858361812', 'asdsadsadsa', 'Bkash', 1, '2021-10-02 00:48:28', '2021-10-28 00:33:50'),
(10, 48, 12, 12, '01858361812', 'asdasd', 'Bkash', 1, '2021-10-02 00:56:37', '2021-10-06 02:18:41'),
(11, 54, 14, 13, '01858361812', 'asdsa', 'Bkash', 1, '2021-10-04 00:26:54', '2021-10-06 22:05:01'),
(12, 54, 16, 14, '01875441599', 'dfg sfg', 'Bkash', 1, '2021-10-06 21:32:23', '2021-10-06 22:04:23'),
(13, 54, 17, 15, '01713702979', 'sdfdfdfg', 'Bkash', 1, '2021-10-06 21:39:18', '2021-10-06 22:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sections` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `relation_type`, `created_at`, `updated_at`, `sections`) VALUES
(1, 'Main', 'main', '<div class=\"col-12 col-sm-12 col-md-12 col-lg-12\">\r\n                    <div class=\"wt-greeting-holder\">\r\n                    <div class=\"row\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-left\">\r\n                    <div class=\"wt-greetingcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>Greetings &amp; Welcome</h2>\r\n                    Start Today For a Great Future</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce anim id est laborumed.</p>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa officia deserunt mollit anim id est laborumed perspiciatis unde omnis isteatus error aluptatem accusantium doloremque laudantium.</p>\r\n                    </div>\r\n                    </div>\r\n                    <div id=\"wt-statistics\" class=\"wt-statistics\">\r\n                    <div class=\"wt-statisticcontent wt-countercolor1\">\r\n                    <h3 data-from=\"0\" data-to=\"1500\" data-speed=\"8000\" data-refresh-interval=\"50\">1,500</h3>\r\n                    <em>k</em>\r\n                    <h4>Active Projects</h4>\r\n                    </div>\r\n                    <div class=\"wt-statisticcontent wt-countercolor2\">\r\n                    <h3 data-from=\"0\" data-to=\"99.6\" data-speed=\"8000\" data-refresh-interval=\"5.9\">75</h3>\r\n                    <em>%</em>\r\n                    <h4>Great Feedback</h4>\r\n                    </div>\r\n                    <div class=\"wt-statisticcontent wt-countercolor3\">\r\n                    <h3 data-from=\"0\" data-to=\"5000\" data-speed=\"8000\" data-refresh-interval=\"100\">5,000</h3>\r\n                    <em>k</em>\r\n                    <h4>Active Freelancers</h4>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-5 float-left\">\r\n                    <div class=\"wt-greetingvideo\">\r\n                    <figure><a href=\"https://www.youtube.com/watch?v=B-ph2g5o2K4\" rel=\"prettyPhoto[video]\" data-rel=\"prettyPhoto[video]\"><img src=\"http://www.amentotech.com/projects/worketic/images/video-img.png\" alt=\"video\" width=\"415\" height=\"450\" /> </a></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>', 1, '2021-09-06 02:34:33', '2021-09-06 02:42:08', NULL),
(2, 'About Us', 'about-us', 'null', 0, '2021-09-06 02:34:33', '2021-09-06 02:44:34', 'a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Description Section\";s:7:\"section\";s:15:\"content_section\";s:5:\"value\";s:7:\"content\";s:4:\"icon\";s:10:\"img-09.png\";s:2:\"id\";i:4;}}'),
(3, 'How It Works', 'how-it-works', '<div class=\"wt-contentwrappers\">\r\n                    <div class=\"container\">\r\n                    <div class=\"row\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-12 float-left\">\r\n                    <div class=\"wt-howitwork-hold wt-bgwhite wt-haslayout\">\r\n                    <ul class=\"wt-navarticletab wt-navarticletabvtwo nav navbar-nav\">\r\n                    <li class=\"nav-item\"><a id=\"all-tab\" class=\"active\" href=\"#forhiring\" data-toggle=\"tab\">For Hiring</a></li>\r\n                    <li class=\"nav-item\"><a id=\"business-tab\" href=\"#forfreelancing\" data-toggle=\"tab\">For Freelancing</a></li>\r\n                    <li class=\"nav-item\"><a id=\"trading-tab\" href=\"#faq\" data-toggle=\"tab\">FAQ</a></li>\r\n                    </ul>\r\n                    <div class=\"tab-content wt-haslayout\">\r\n                    <div id=\"forhiring\" class=\"wt-contentarticle tab-pane active fade show\">\r\n                    <div class=\"row\">\r\n                    <div class=\"wt-starthiringhold wt-innerspace wt-haslayout\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-left\">\r\n                    <div class=\"wt-starthiringcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>How To Start Hiring</h2>\r\n                    Start Today For a Great Future</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce animid <a>Learn more</a></p>\r\n                    </div>\r\n                    </div>\r\n                    <ul class=\"wt-accordionhold accordion\">\r\n                    <li>\r\n                    <div id=\"headingOne\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne\">Adipisicing elit, sed do eiusmod tempor incididunt?</div>\r\n                    <div id=\"collapseOne\" class=\"wt-accordiondetails collapse show\" aria-labelledby=\"headingOne\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore eta dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingtwo\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwo\">Dolore magna aliqua enim ad minim veniam?</div>\r\n                    <div id=\"collapsetwo\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwo\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingthreea\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsethree\">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo?</div>\r\n                    <div id=\"collapsethree\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingthreea\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-5 float-right\">\r\n                    <div class=\"wt-howtoworkimg\">\r\n                    <figure><img src=\"http://www.amentotech.com/projects/worketic/images/work/img-01.jpg\" alt=\"img description\" width=\"415\" height=\"386\" /></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"wt-starthiringhold wt-innerspace wt-haslayout\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-right\">\r\n                    <div class=\"wt-starthiringcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>Getting Into Business</h2>\r\n                    Focus on Your Work &amp; Team</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce animid learn <a>more</a></p>\r\n                    </div>\r\n                    </div>\r\n                    <ul class=\"wt-accordionhold accordion\">\r\n                    <li>\r\n                    <div id=\"headingtwo2\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwo2\">Nostrud exercitation ullamco laboris nisi ut aliquip?</div>\r\n                    <div id=\"collapsetwo2\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwo2\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingtwo4\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwo4\">Commodo consequat aute irure dolor in reprehenderit in voluptate velit?</div>\r\n                    <div id=\"collapsetwo4\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwo4\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingthree2\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsethree2\">Cillum dolore eu fugiat nulla pariatur?</div>\r\n                    <div id=\"collapsethree2\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingthree2\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-5 float-left\">\r\n                    <div class=\"wt-howtoworkimg\">\r\n                    <figure><img src=\"http://www.amentotech.com/projects/worketic/images/work/img-02.jpg\" alt=\"img description\" /></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"wt-starthiringhold wt-innerspace wt-haslayout\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-left\">\r\n                    <div class=\"wt-starthiringcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>Making Serious Profit</h2>\r\n                    Manage Your Profitable Account</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce animid learn <a>more</a></p>\r\n                    </div>\r\n                    </div>\r\n                    <ul class=\"wt-accordionhold accordion\">\r\n                    <li>\r\n                    <div id=\"headingOne3\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne3\">Excepteur sint occaecat cupidatat non proident?</div>\r\n                    <div id=\"collapseOne3\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingOne3\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingtwo3\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwo3\">Sunt in culpa qui officia deserunt mollit anim id est laborum?</div>\r\n                    <div id=\"collapsetwo3\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwo3\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingthree3\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsethree3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem?</div>\r\n                    <div id=\"collapsethree3\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingthree3\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-5 float-right\">\r\n                    <div class=\"wt-howtoworkimg\">\r\n                    <figure><img src=\"http://www.amentotech.com/projects/worketic/images/work/img-03.jpg\" alt=\"img description\" width=\"415\" height=\"386\" /></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    <div id=\"forfreelancing\" class=\"wt-contentarticle tab-pane fade\">\r\n                    <div class=\"row\">\r\n                    <div class=\"wt-starthiringhold wt-innerspace wt-haslayout\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-right\">\r\n                    <div class=\"wt-starthiringcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>How To Start Hiring</h2>\r\n                    Start Today For a Great Future</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce animid learn <a>more</a></p>\r\n                    </div>\r\n                    </div>\r\n                    <ul class=\"wt-accordionhold accordion\">\r\n                    <li>\r\n                    <div id=\"headingOneq\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOneq\">Adipisicing elit, sed do eiusmod tempor incididunt?</div>\r\n                    <div id=\"collapseOneq\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingOneq\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingtwoq\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwoq\">Dolore magna aliqua enim ad minim veniam?</div>\r\n                    <div id=\"collapsetwoq\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwoq\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingthreeq\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsethreeq\">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo?</div>\r\n                    <div id=\"collapsethreeq\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingthreeq\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-5 float-left\">\r\n                    <div class=\"wt-howtoworkimg\">\r\n                    <figure><img src=\"http://www.amentotech.com/projects/worketic/images/work/img-01.jpg\" alt=\"img description\" width=\"415\" height=\"386\" /></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    <div id=\"faq\" class=\"wt-contentarticle tab-pane fade\">\r\n                    <div class=\"row\">\r\n                    <div class=\"wt-starthiringhold wt-innerspace wt-haslayout\">\r\n                    <div class=\"col-12 col-sm-12 col-md-12 col-lg-7 float-left\">\r\n                    <div class=\"wt-starthiringcontent\">\r\n                    <div class=\"wt-sectionhead\">\r\n                    <div class=\"wt-sectiontitle\">\r\n                    <h2>How To Start Hiring</h2>\r\n                    Start Today For a Great Future</div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua eniina ilukita ylokem lokateise ination voluptate velite esse cillum dolore eu fugnulla pariatur lokaim urianewce animid learn <a>more</a></p>\r\n                    </div>\r\n                    </div>\r\n                    <ul class=\"wt-accordionhold accordion\">\r\n                    <li>\r\n                    <div id=\"headingOnea\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOnea\">Nostrud exercitation ullamco laboris nisi ut aliquip?</div>\r\n                    <div id=\"collapseOnea\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingOne\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingtwoa\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsetwoa\">Commodo consequat aute irure dolor in reprehenderit in voluptate velit?</div>\r\n                    <div id=\"collapsetwoa\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingtwoa\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    <li>\r\n                    <div id=\"headingthree\" class=\"wt-accordiontitle collapsed\" data-toggle=\"collapse\" data-target=\"#collapsethreea\">Cillum dolore eu fugiat nulla pariatur?</div>\r\n                    <div id=\"collapsethreea\" class=\"wt-accordiondetails collapse\" aria-labelledby=\"headingthree\">\r\n                    <div class=\"wt-title\">\r\n                    <h3>Digital Marketing</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit sed aeiusmisuod tempor incididunt labore dolore ma alaeiqua enim ade minim veniam quis nostr xecitation ullamcoaris nisi ut aliquipa extaea coedmmmodo equate irure dolawor in reprehenderit.</p>\r\n                    </div>\r\n                    <div class=\"wt-likeunlike\">Did you find this useful?</div>\r\n                    </div>\r\n                    </li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    <div class=\"col-12 col-sm-12 col-md-4 col-lg-5 float-right\">\r\n                    <div class=\"wt-howtoworkimg\">\r\n                    <figure><img src=\"http://www.amentotech.com/projects/worketic/images/work/img-01.jpg\" alt=\"img description\" width=\"415\" height=\"386\" /></figure>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>', 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', NULL),
(4, 'Privacy Policy', 'privacy-policy', '<div id=\"wt-twocolumns\" class=\"wt-twocolumns wt-haslayout\">\r\n                    <div class=\"col-xs-12 col-sm-12 col-md-5 col-lg-5 col-xl-4 float-left\">\r\n                    <aside id=\"wt-sidebar\" class=\"wt-sidebar\">\r\n                    <div class=\"wt-widget wt-effectiveholder\">\r\n                    <div class=\"wt-widgettitle\">\r\n                    <h2>Effective T&amp;C</h2>\r\n                    </div>\r\n                    <div class=\"wt-widgetcontent\">\r\n                    <ul class=\"wt-effectivecontent\">\r\n                    <li><a>Adipisicing elit sed do eiusmod</a></li>\r\n                    <li><a>Tempor incididunt</a></li>\r\n                    <li><a>How To Submit Claim Report</a></li>\r\n                    <li><a>Ut enim ad minim veniam</a></li>\r\n                    <li><a>Quis nostrud exercitation</a></li>\r\n                    <li><a>Ullamco laboris nisiut</a></li>\r\n                    <li><a>Aliquip ex ea commodo</a></li>\r\n                    <li><a>Consequat duis aute</a></li>\r\n                    <li><a>Irure dolorin</a></li>\r\n                    <li><a>Reprehenderit</a></li>\r\n                    <li><a>Voluptate velit esse cillum</a></li>\r\n                    </ul>\r\n                    </div>\r\n                    </div>\r\n                    </aside>\r\n                    </div>\r\n                    <div class=\"col-xs-12 col-sm-12 col-md-7 col-lg-7 col-xl-8 float-left\">\r\n                    <div class=\"wt-submitreportholder wt-bgwhite\">\r\n                    <div class=\"wt-titlebar\">\r\n                    <h2>How To Submit Claim Report</h2>\r\n                    </div>\r\n                    <div class=\"wt-reportdescription\">\r\n                    <div class=\"wt-description\">\r\n                    <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud <a href=\"javascrip:void(0);\"> exercitation ullamco laboris</a> nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut <a href=\"javascrip:void(0);\"> perspiciatis unde</a> omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n                    <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia magnam aliquam quaerat voluptatem.</p>\r\n                    </div>\r\n                    <div class=\"wt-title\">\r\n                    <h3>Step #01</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n                    <p>Voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n                    <p>Odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia magnam aliquam quaerat voluptatem.</p>\r\n                    </div>\r\n                    <div class=\"wt-title\">\r\n                    <h3>Step #02</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n                    <p>Consequuntur magni dolores eios qui ratione voluptatem sequi nesciunt. Nequerro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia magnam aliquam quaerat voluptatem.</p>\r\n                    </div>\r\n                    <div class=\"wt-title\">\r\n                    <h3>Step #03</h3>\r\n                    </div>\r\n                    <div class=\"wt-description\">\r\n                    <p>Dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur adipisci velit.</p>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>\r\n                    </div>', 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', NULL),
(5, 'Service Bazaar', 'service-bazaar', 'null', 0, '2021-09-06 02:34:33', '2021-09-07 00:22:10', 'a:4:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Slider Section\";s:7:\"section\";s:6:\"slider\";s:5:\"value\";s:7:\"sliders\";s:4:\"icon\";s:10:\"img-01.png\";s:2:\"id\";i:1;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"Category Section\";s:7:\"section\";s:8:\"category\";s:5:\"value\";s:3:\"cat\";s:4:\"icon\";s:10:\"img-02.png\";s:2:\"id\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Welcome Section\";s:7:\"section\";s:15:\"welcome_section\";s:5:\"value\";s:16:\"welcome_sections\";s:4:\"icon\";s:10:\"img-03.png\";s:2:\"id\";i:4;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"APP Section\";s:7:\"section\";s:11:\"app_section\";s:5:\"value\";s:11:\"app_section\";s:4:\"icon\";s:10:\"img-04.png\";s:2:\"id\";i:5;}}'),
(6, 'Home V2', 'home-v2', 'null', 1, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Slider Section\";s:7:\"section\";s:6:\"slider\";s:5:\"value\";s:7:\"sliders\";s:4:\"icon\";s:10:\"img-01.png\";s:2:\"id\";i:1;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Service Section\";s:7:\"section\";s:15:\"service_section\";s:5:\"value\";s:8:\"services\";s:4:\"icon\";s:10:\"img-05.png\";s:2:\"id\";i:6;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"How it work tab section\";s:7:\"section\";s:16:\"work_tab_section\";s:5:\"value\";s:9:\"work_tabs\";s:4:\"icon\";s:10:\"img-07.png\";s:2:\"id\";i:3;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Freelancer section\";s:7:\"section\";s:18:\"freelancer_section\";s:5:\"value\";s:11:\"freelancers\";s:4:\"icon\";s:10:\"img-08.png\";s:2:\"id\";i:4;}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"APP Section\";s:7:\"section\";s:11:\"app_section\";s:5:\"value\";s:11:\"app_section\";s:4:\"icon\";s:10:\"img-04.png\";s:2:\"id\";i:5;}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Article Section\";s:7:\"section\";s:15:\"article_section\";s:5:\"value\";s:8:\"articles\";s:4:\"icon\";s:10:\"img-10.png\";s:2:\"id\";i:10;}}'),
(7, 'Home v3', 'home-v3', 'null', 1, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Slider Section\";s:7:\"section\";s:6:\"slider\";s:5:\"value\";s:7:\"sliders\";s:4:\"icon\";s:10:\"img-01.png\";s:2:\"id\";i:1;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Service Section\";s:7:\"section\";s:15:\"service_section\";s:5:\"value\";s:8:\"services\";s:4:\"icon\";s:10:\"img-05.png\";s:2:\"id\";i:5;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Freelancer section\";s:7:\"section\";s:18:\"freelancer_section\";s:5:\"value\";s:11:\"freelancers\";s:4:\"icon\";s:10:\"img-08.png\";s:2:\"id\";i:4;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"How it work video section\";s:7:\"section\";s:18:\"work_video_section\";s:5:\"value\";s:11:\"work_videos\";s:4:\"icon\";s:10:\"img-06.png\";s:2:\"id\";i:3;}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"APP Section\";s:7:\"section\";s:11:\"app_section\";s:5:\"value\";s:11:\"app_section\";s:4:\"icon\";s:10:\"img-04.png\";s:2:\"id\";i:7;}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Article Section\";s:7:\"section\";s:15:\"article_section\";s:5:\"value\";s:8:\"articles\";s:4:\"icon\";s:10:\"img-09.png\";s:2:\"id\";i:6;}}'),
(8, 'Home V4', 'home-v4', 'null', 1, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"Banner Section V1\";s:7:\"section\";s:8:\"bannerV1\";s:5:\"value\";s:18:\"bannerFirstVersion\";s:4:\"icon\";s:10:\"img-12.png\";s:2:\"id\";i:1;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Category Section V2\";s:7:\"section\";s:10:\"categoryV2\";s:5:\"value\";s:23:\"categoriesSecondVersion\";s:4:\"icon\";s:10:\"img-07.png\";s:2:\"id\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Jobs Section\";s:7:\"section\";s:12:\"jobs_section\";s:5:\"value\";s:4:\"jobs\";s:4:\"icon\";s:10:\"img-11.png\";s:2:\"id\";i:3;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"APP Section\";s:7:\"section\";s:11:\"app_section\";s:5:\"value\";s:11:\"app_section\";s:4:\"icon\";s:10:\"img-04.png\";s:2:\"id\";i:4;}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Freelancer Section V2\";s:7:\"section\";s:21:\"freelancer_section_v2\";s:5:\"value\";s:24:\"freelancersSecondVersion\";s:4:\"icon\";s:10:\"img-08.png\";s:2:\"id\";i:5;}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Package Section\";s:7:\"section\";s:15:\"package_section\";s:5:\"value\";s:8:\"packages\";s:4:\"icon\";s:10:\"img-09.png\";s:2:\"id\";i:6;}}'),
(9, 'Home V5', 'home-v5', 'null', 1, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"Slider Section\";s:7:\"section\";s:6:\"slider\";s:5:\"value\";s:7:\"sliders\";s:4:\"icon\";s:10:\"img-01.png\";s:2:\"id\";i:1;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Category Section V3\";s:7:\"section\";s:10:\"categoryV3\";s:5:\"value\";s:22:\"categoriesThirdVersion\";s:4:\"icon\";s:10:\"img-12.png\";s:2:\"id\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Jobs Section\";s:7:\"section\";s:12:\"jobs_section\";s:5:\"value\";s:4:\"jobs\";s:4:\"icon\";s:10:\"img-11.png\";s:2:\"id\";i:3;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"APP Section\";s:7:\"section\";s:11:\"app_section\";s:5:\"value\";s:11:\"app_section\";s:4:\"icon\";s:10:\"img-04.png\";s:2:\"id\";i:4;}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Freelancer Section V2\";s:7:\"section\";s:21:\"freelancer_section_v2\";s:5:\"value\";s:24:\"freelancersSecondVersion\";s:4:\"icon\";s:10:\"img-08.png\";s:2:\"id\";i:5;}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Package Section\";s:7:\"section\";s:15:\"package_section\";s:5:\"value\";s:8:\"packages\";s:4:\"icon\";s:10:\"img-09.png\";s:2:\"id\";i:6;}}'),
(10, 'Contact Us', 'contact-us', 'null', 0, '2021-09-06 02:56:19', '2021-09-06 21:39:59', 'a:4:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Heading\";s:7:\"section\";s:7:\"heading\";s:5:\"value\";s:8:\"headings\";s:4:\"icon\";s:14:\"Heading-01.png\";s:2:\"id\";i:7;}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Heading\";s:7:\"section\";s:7:\"heading\";s:5:\"value\";s:8:\"headings\";s:4:\"icon\";s:14:\"Heading-01.png\";s:2:\"id\";i:19;}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Heading\";s:7:\"section\";s:7:\"heading\";s:5:\"value\";s:8:\"headings\";s:4:\"icon\";s:14:\"Heading-01.png\";s:2:\"id\";i:21;}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Heading\";s:7:\"section\";s:7:\"heading\";s:5:\"value\";s:8:\"headings\";s:4:\"icon\";s:14:\"Heading-01.png\";s:2:\"id\";i:3;}}');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `type` enum('job','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job',
  `bank_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `user_id`, `amount`, `payment_method`, `currency`, `paypal_id`, `status`, `created_at`, `updated_at`, `order_id`, `type`, `bank_details`, `projects_ids`) VALUES
(5, 54, '12000', 'bkash', 'BDT', '01858361812', 'completed', '2021-10-30 02:01:55', '2021-10-30 22:19:42', 12, 'job', 'dffdfdf', NULL),
(11, 54, '36000', 'bkash', 'BDT', '01858361812', 'completed', '2021-10-30 21:43:30', '2021-10-30 23:37:48', 19, 'job', '525sdfd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `private_messages`
--

CREATE TABLE `private_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_type` enum('job','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `private_messages`
--

INSERT INTO `private_messages` (`id`, `author_id`, `proposal_id`, `content`, `attachments`, `notify`, `created_at`, `updated_at`, `project_type`) VALUES
(1, 4, 1, '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus id mauris convallis sollicitudin. Etiam porta, massa finibus bibendum fermentum, velit diam hendrerit libero, eu consectetur sapien velit ac nibh. Ut in volutpat nisi, et suscipit libero.</span></p>', NULL, 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'job'),
(2, 21, 1, 'Donec placerat, massa eu tincidunt volutpat.', 'a:1:{i:0;s:52:\"1555913392-How-to-run-mysql-command-in-database.docx\";}', 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'job'),
(3, 4, 1, 'Donec placerat, massa eu tincidunt volutpat.', NULL, 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'job'),
(4, 21, 1, 'Donec placerat, massa eu tincidunt volutpat.', 'a:1:{i:0;s:52:\"1555913456-How-to-run-mysql-command-in-database.docx\";}', 0, '2021-09-06 02:34:33', '2021-09-06 02:34:33', 'job'),
(5, 49, 7, '<p>sada</p>', NULL, 0, '2021-10-03 06:04:41', '2021-10-03 06:04:41', 'job'),
(6, 1, 7, '<p>hhh</p>', NULL, 0, '2021-10-03 06:05:25', '2021-10-03 06:05:25', 'job'),
(7, 48, 7, '<p>asdsad</p>', 'a:1:{i:0;s:27:\"1633262764-worketic (1).sql\";}', 0, '2021-10-03 06:06:04', '2021-10-03 06:06:04', 'job'),
(8, 49, 7, '<p>hhh</p>', 'a:1:{i:0;s:23:\"1633262827-about-us.jpg\";}', 0, '2021-10-03 06:07:07', '2021-10-03 06:07:07', 'job'),
(9, 1, 7, '<p>Im Admin</p>', NULL, 0, '2021-10-03 06:08:19', '2021-10-03 06:08:19', 'job'),
(10, 48, 10, '<p>Im Going</p>', NULL, 0, '2021-10-04 00:54:05', '2021-10-04 00:54:05', 'job'),
(11, 48, 11, '<p>I\'m Going</p>', NULL, 0, '2021-10-04 00:56:20', '2021-10-04 00:56:20', 'job'),
(12, 1, 11, '<p>Okay go. After work send me the payment slip</p>', NULL, 0, '2021-10-04 00:57:08', '2021-10-04 00:57:08', 'job'),
(13, 48, 11, '<p>Okay come to my home. Adress : Uttara, Dhaka</p>', NULL, 0, '2021-10-04 00:58:21', '2021-10-04 00:58:21', 'job'),
(14, 54, 26, '<p>Hi</p>', NULL, 0, '2021-10-04 05:53:50', '2021-10-04 05:53:50', 'service'),
(15, 48, 27, '<p>HI</p>', NULL, 0, '2021-10-05 03:30:32', '2021-10-05 03:30:32', 'service'),
(16, 48, 28, '<p>hi</p>', NULL, 0, '2021-10-05 03:32:50', '2021-10-05 03:32:50', 'service'),
(17, 54, 26, '<p>Hey Rehi</p>', NULL, 0, '2021-10-05 03:33:27', '2021-10-05 03:33:27', 'service'),
(18, 48, 26, '<p>HI Dip</p>', NULL, 0, '2021-10-05 03:35:04', '2021-10-05 03:35:04', 'service'),
(19, 1, 28, '<p>HI Im</p>\n<p>&nbsp;</p>', NULL, 0, '2021-10-05 22:20:06', '2021-10-05 22:20:06', 'service'),
(20, 1, 28, '<p>Im Admin</p>', NULL, 0, '2021-10-05 22:23:02', '2021-10-05 22:23:02', 'service'),
(21, 48, 28, '<p>Im service provider rehi</p>', NULL, 0, '2021-10-05 22:33:09', '2021-10-05 22:33:09', 'service'),
(22, 54, 28, '<p><span>Im service seeker dip</span></p>', NULL, 0, '2021-10-05 22:34:29', '2021-10-05 22:34:29', 'service'),
(24, 1, 28, '<p>Admin</p>', NULL, 0, '2021-10-05 22:48:31', '2021-10-05 22:48:31', 'service'),
(25, 1, 31, '<p>Hi im admin</p>', NULL, 0, '2021-10-06 02:06:43', '2021-10-06 02:06:43', 'service'),
(26, 48, 31, '<p>HI im service provider</p>', NULL, 0, '2021-10-06 02:07:06', '2021-10-06 02:07:06', 'service'),
(27, 54, 31, '<p><span>\r\n<ul>\r\n<li id=\"collapseone-26\" class=\"wt-historydescription collapse show\" data-parent=\"#accordion\">\r\n<div class=\"wt-description\">\r\n<p>HI im service seeker</p>\r\n</div>\r\n</li>\r\n</ul>\r\n</span></p>', NULL, 0, '2021-10-06 02:07:29', '2021-10-06 02:07:29', 'service'),
(28, 54, 31, '<p><span>HI im service seeker</span></p>', NULL, 0, '2021-10-06 02:08:05', '2021-10-06 02:08:05', 'service'),
(29, 48, 31, '<p>Here is the project file</p>', NULL, 0, '2021-10-06 02:09:36', '2021-10-06 02:09:36', 'service'),
(30, 48, 31, '<p><span style=\"color: #767676; font-family: \'Open Sans\', Arial, Helvetica, sans-serif; white-space: nowrap;\">Here is the project file</span></p>', 'a:1:{i:0;s:21:\"1633507792-Seller.zip\";}', 0, '2021-10-06 02:09:52', '2021-10-06 02:09:52', 'service');

-- --------------------------------------------------------

--
-- Table structure for table `private_messages_to`
--

CREATE TABLE `private_messages_to` (
  `id` int(10) UNSIGNED NOT NULL,
  `private_message_id` int(11) DEFAULT NULL,
  `recipent_id` int(11) NOT NULL,
  `message_read` tinyint(4) NOT NULL,
  `read_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `private_messages_to`
--

INSERT INTO `private_messages_to` (`id`, `private_message_id`, `recipent_id`, `message_read`, `read_date`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 0, NULL, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(2, 2, 4, 0, NULL, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(3, 3, 21, 0, NULL, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(4, 4, 4, 0, NULL, '2021-09-06 02:34:33', '2021-09-06 02:34:33'),
(5, 5, 48, 0, NULL, '2021-10-03 06:04:41', '2021-10-03 06:04:41'),
(6, 6, 48, 0, NULL, '2021-10-03 06:05:25', '2021-10-03 06:05:25'),
(7, 7, 49, 0, NULL, '2021-10-03 06:06:04', '2021-10-03 06:06:04'),
(8, 8, 48, 0, NULL, '2021-10-03 06:07:07', '2021-10-03 06:07:07'),
(9, 9, 48, 0, NULL, '2021-10-03 06:08:19', '2021-10-03 06:08:19'),
(10, 10, 54, 0, NULL, '2021-10-04 00:54:05', '2021-10-04 00:54:05'),
(11, 11, 54, 0, NULL, '2021-10-04 00:56:20', '2021-10-04 00:56:20'),
(12, 12, 48, 0, NULL, '2021-10-04 00:57:08', '2021-10-04 00:57:08'),
(13, 13, 54, 0, NULL, '2021-10-04 00:58:21', '2021-10-04 00:58:21'),
(14, 14, 48, 0, NULL, '2021-10-04 05:53:50', '2021-10-04 05:53:50'),
(15, 15, 48, 0, NULL, '2021-10-05 03:30:32', '2021-10-05 03:30:32'),
(16, 16, 48, 0, NULL, '2021-10-05 03:32:50', '2021-10-05 03:32:50'),
(17, 17, 48, 0, NULL, '2021-10-05 03:33:27', '2021-10-05 03:33:27'),
(18, 18, 48, 0, NULL, '2021-10-05 03:35:04', '2021-10-05 03:35:04'),
(19, 19, 48, 0, NULL, '2021-10-05 22:20:06', '2021-10-05 22:20:06'),
(20, 20, 48, 0, NULL, '2021-10-05 22:23:02', '2021-10-05 22:23:02'),
(21, 21, 48, 0, NULL, '2021-10-05 22:33:09', '2021-10-05 22:33:09'),
(22, 22, 48, 0, NULL, '2021-10-05 22:34:29', '2021-10-05 22:34:29'),
(23, 23, 1, 0, NULL, '2021-10-05 22:46:51', '2021-10-05 22:46:51'),
(24, 24, 1, 0, NULL, '2021-10-05 22:48:31', '2021-10-05 22:48:31'),
(25, 25, 1, 0, NULL, '2021-10-06 02:06:43', '2021-10-06 02:06:43'),
(26, 26, 48, 0, NULL, '2021-10-06 02:07:06', '2021-10-06 02:07:06'),
(27, 27, 48, 0, NULL, '2021-10-06 02:07:29', '2021-10-06 02:07:29'),
(28, 28, 48, 0, NULL, '2021-10-06 02:08:05', '2021-10-06 02:08:05'),
(29, 29, 48, 0, NULL, '2021-10-06 02:09:36', '2021-10-06 02:09:36'),
(30, 30, 48, 0, NULL, '2021-10-06 02:09:52', '2021-10-06 02:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `freelancer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `english_level` enum('basic','conversational','fluent','native','professional') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_rate` int(11) DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awards` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projects` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saved_freelancer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saved_jobs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saved_employers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avater` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_searchable` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_blocked` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekly_alerts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_alerts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saved_services` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `department_id`, `no_of_employees`, `freelancer_type`, `english_level`, `hourly_rate`, `experience`, `education`, `awards`, `projects`, `saved_freelancer`, `offers`, `saved_jobs`, `saved_employers`, `address`, `longitude`, `latitude`, `avater`, `banner`, `gender`, `tagline`, `description`, `delete_reason`, `delete_description`, `payout_id`, `profile_searchable`, `profile_blocked`, `weekly_alerts`, `message_alerts`, `created_at`, `updated_at`, `saved_services`, `ratings`, `payout_settings`, `videos`) VALUES
(1, 1, NULL, NULL, 'Basic', NULL, 0, NULL, NULL, NULL, NULL, 'a:1:{i:0;i:31;}', NULL, NULL, NULL, '', '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-23 03:31:18', NULL, NULL, NULL, NULL),
(2, 2, 1, 1, 'agency', 'fluent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Larapinta Dr Alice Springs NT 0870 Australia', '133.368101', '-24.004758', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(3, 3, 2, 10, 'independent', 'conversational', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23 Multa Rd Haasts Bluff NT 0872 Australia', '131.881749629974', '23.4475749078235', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(4, 4, 3, 100, 'rising_talent', 'native', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lot 39 Anmatjere NT 0872 Australia', '132.609851360321', '-21.2475322804021', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(5, 5, 4, 500, 'independent', 'professional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AB-58 John D\'Or Prairie, AB Canada', '-115.151181221008', '58.4925724410151', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(6, 6, 5, 1000, 'independent', 'conversational', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10009 99 St High Level, AB T0H 1Z0 Canada', '-117.131303250789', '58.5168370527763', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(7, 7, 6, 5000, 'agency', 'fluent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9809 100 St High Level, AB T0H 1Z0 Canada', '-117.130516022443', '58.5191843284108', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(8, 8, 7, 1, 'rising_talent', 'native', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Unit 3, Paynes Lane Ind. Est 11 Paynes Ln Rugby CV21 2UH UK', '-1.28647327423095', '52.3749008022389', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(9, 9, 8, 10, 'agency', 'conversational', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12 Paynes Ln Rugby CV21 2UH UK', '-1.28587514162063', '52.3748533156522', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(10, 10, 9, 100, 'independent', 'native', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31 Bridget St Rugby CV21 2BH UK', '-1.27051681280136', '52.3737889477259', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(11, 11, 1, 500, 'independent', 'fluent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gate Chaurai, Madhya Pradesh 480115 India', '79.2477750778198', '22.0512229130773', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(12, 12, 2, 1000, 'independent', 'basic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Barkhudar Bava Badasab Bava. Dargah Mahelaj, Gujarat 387530 India', '72.5970500707626', '22.681497230492', 'a.jpg', 'b.jpg', NULL, 'Excepteur sint occaecat cupidatat non proident', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(13, 13, NULL, NULL, 'agency', 'conversational', 25, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Mahakali Temple Mahelaj, Gujarat 387530 India', '72.6193284988403', '22.69013144544', 'a.jpg', 'b.jpg', 'female', 'Pioneers Of ECommerce Data Entry', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(14, 14, NULL, NULL, 'rising_talent', 'basic', 12, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, 'a:1:{i:0;i:3;}', NULL, 'Yenidoğan Mahallesi İstanbul Cd. 71200 Kırıkkale Merkez/Kırıkkale Turkey', '33.5064741969108', '39.841945184348', 'a.jpg', 'b.jpg', 'male', 'SEO Expert & Consultant', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(15, 15, NULL, NULL, 'independent', 'conversational', 44, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Yaylacık Mahallesi 373. Sk. No:2 71100 Kırıkkale Merkez/Kırıkkale Turkey', '33.4971870481967', '39.8404170632178', 'a.jpg', 'b.jpg', 'female', 'Skilled Full Stack Web Developer', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(16, 16, NULL, NULL, 'agency', 'basic', 98, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Yaylacık Mahallesi 332. Sk. No:6 71100 Kırıkkale Merkez/Kırıkkale Turkey', '33.4949138760566', '39.8400257598855', 'a.jpg', 'b.jpg', 'male', 'SEO/PPC Social Media Marketing Expert', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(17, 17, NULL, NULL, 'rising_talent', 'conversational', 25, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Baqala Al Kamal Abu Dhabi United Arab Emirates', '53.6993788182735', '23.6520498992703', 'a.jpg', 'b.jpg', 'male', 'Classifieds Posting, Data Entry, Typing', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(18, 18, NULL, NULL, 'agency', 'professional', 32, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Western Souk & Mall Tarif - Liwa Rd Abu Dhabi United Arab Emirate', '53.7038487195968', '23.6499492330274', 'a.jpg', 'b.jpg', 'male', 'Driving the Communication Revolution', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(19, 19, NULL, NULL, 'independent', 'professional', 84, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Madinat Zayed Adult Education Center for Female Abu Dhabi United Arab Emirates', '53.704422712326', '23.6435928614812', 'a.jpg', 'b.jpg', 'female', 'Effortlessly manages all your information', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL);
INSERT INTO `profiles` (`id`, `user_id`, `department_id`, `no_of_employees`, `freelancer_type`, `english_level`, `hourly_rate`, `experience`, `education`, `awards`, `projects`, `saved_freelancer`, `offers`, `saved_jobs`, `saved_employers`, `address`, `longitude`, `latitude`, `avater`, `banner`, `gender`, `tagline`, `description`, `delete_reason`, `delete_description`, `payout_id`, `profile_searchable`, `profile_blocked`, `weekly_alerts`, `message_alerts`, `created_at`, `updated_at`, `saved_services`, `ratings`, `payout_settings`, `videos`) VALUES
(20, 20, NULL, NULL, 'independent', 'conversational', 55, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Thomas Sherriff & Co Ltd Old Bongate Mill Bongate Jedburgh TD8 6DU UK', '-2.54719734191894', '55.4847967166874', 'a.jpg', 'b.jpg', 'female', 'Experience IT', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(21, 21, NULL, NULL, 'rising_talent', 'professional', 12, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Jed Tyre & Exhaust Centre Friars Burn/High St Jedburgh TD8 6AG UK', '-2.55555510520935', '55.4785859361283', 'a.jpg', 'b.jpg', 'male', 'How Communication Happens', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(22, 22, NULL, NULL, 'rising_talent', 'fluent', 98, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Hassendean Station Cottage 2 Hassendean Station Hawick TD9 8PX UK', '-2.71619260311126', '55.4753116211057', 'a.jpg', 'b.jpg', 'male', 'High Performance Delivered', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(23, 23, NULL, NULL, 'agency', 'native', 47, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Christmas City Gifts 609 S Nance Ave Minden, NE 68959', '-98.95441532135', '40.4909568065246', 'a.jpg', 'b.jpg', 'female', 'Imagination at Work', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(24, 24, NULL, NULL, 'independent', 'basic', 25, 'a:2:{i:0;a:5:{s:9:\"job_title\";s:21:\"SEO Expert Consultant\";s:10:\"start_date\";s:10:\"2019-04-18\";s:8:\"end_date\";s:10:\"2019-04-20\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}i:1;a:5:{s:9:\"job_title\";s:13:\"Start & Sound\";s:10:\"start_date\";s:10:\"2019-04-26\";s:8:\"end_date\";s:10:\"2019-04-28\";s:13:\"company_title\";s:10:\"Amentotech\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:1:{i:0;a:5:{s:12:\"degree_title\";s:22:\"Information Technology\";s:10:\"start_date\";s:10:\"2019-04-09\";s:8:\"end_date\";s:10:\"2019-04-17\";s:15:\"institute_title\";s:35:\"Amento Tech Institute of Technology\";s:11:\"description\";s:461:\"Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\";}}', 'a:4:{i:0;a:3:{s:11:\"award_title\";s:10:\"Best Theme\";s:10:\"award_date\";s:8:\"12-12-31\";s:18:\"award_hidden_image\";s:22:\"15543822240-img-03.jpg\";}i:1;a:3:{s:11:\"award_title\";s:23:\"Monster Developer Award\";s:10:\"award_date\";s:8:\"12-01-14\";s:18:\"award_hidden_image\";s:22:\"15544736871-img-09.jpg\";}i:2;a:3:{s:11:\"award_title\";s:23:\"Best Communication 2015\";s:10:\"award_date\";s:8:\"19-02-01\";s:18:\"award_hidden_image\";s:22:\"15544736872-img-10.jpg\";}i:3;a:3:{s:11:\"award_title\";s:23:\"Best Logo Design Winner\";s:10:\"award_date\";s:8:\"20-10-09\";s:18:\"award_hidden_image\";s:22:\"15544736873-img-12.jpg\";}}', 'a:6:{i:0;a:3:{s:13:\"project_title\";s:8:\"Worketic\";s:11:\"project_url\";s:39:\"http://amentotech.com/projects/worketic\";s:20:\"project_hidden_image\";s:26:\"15543822240-banner-img.jpg\";}i:1;a:3:{s:13:\"project_title\";s:9:\"Videohive\";s:11:\"project_url\";s:17:\"www.videohive.net\";s:20:\"project_hidden_image\";s:10:\"img-01.jpg\";}i:2;a:3:{s:13:\"project_title\";s:10:\"Codecanyon\";s:11:\"project_url\";s:18:\"www.codecanyon.net\";s:20:\"project_hidden_image\";s:10:\"img-03.jpg\";}i:3;a:3:{s:13:\"project_title\";s:12:\"Graphicriver\";s:11:\"project_url\";s:20:\"www.graphicriver.net\";s:20:\"project_hidden_image\";s:10:\"img-04.jpg\";}i:4;a:3:{s:13:\"project_title\";s:9:\"Photodune\";s:11:\"project_url\";s:17:\"www.photodune.net\";s:20:\"project_hidden_image\";s:10:\"img-05.jpg\";}i:5;a:3:{s:13:\"project_title\";s:11:\"Audiojungle\";s:11:\"project_url\";s:19:\"www.audiojungle.net\";s:20:\"project_hidden_image\";s:10:\"img-06.jpg\";}}', NULL, NULL, NULL, NULL, 'Pioneer Aerial Applicators 886 W St Clair St Minden, NE 68959', '-98.9599245786666', '40.4894003885342', 'a.jpg', 'b.jpg', 'male', 'Innovation and Excellence', 'Excepteur sint occaecat cupidatat non proident, saeunt in culpa qui officia deserunt mollit anim laborum. Seden utem perspiciatis undesieu omnis voluptatem accusantium doque laudantium, totam rem aiam eaqueiu ipsa quae ab illoion inventore veritatisetm quasitea architecto beataea dictaed quia couuntur magni dolores eos aquist ratione vtatem seque nesnt. Neque porro quamest quioremas ipsum quiatem dolor sitem ameteism conctetur adipisci velit sedate quianon.\r\nLaborum sed ut perspiciatis unde omnis iste natus error sitems voluptatem accusantium doloremque laudantium, totam rem aiam eaque ipsa quae ab illo inventore veritatis etna quasi architecto beatae vitae dictation explicabo. nemo enim ipsam fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 02:34:32', '2021-09-06 02:34:32', NULL, NULL, NULL, NULL),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-07 01:16:17', '2021-09-07 01:16:17', NULL, NULL, NULL, NULL),
(31, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 02:55:57', '2021-09-23 02:55:57', NULL, NULL, NULL, NULL),
(33, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 03:04:08', '2021-09-23 03:04:08', NULL, NULL, NULL, NULL),
(34, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-24 22:53:22', '2021-09-24 22:53:22', NULL, NULL, NULL, NULL),
(35, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 00:01:06', '2021-09-25 00:01:06', NULL, NULL, NULL, NULL),
(36, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 02:18:14', '2021-09-25 02:18:14', NULL, NULL, NULL, NULL),
(37, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 02:23:29', '2021-09-25 02:23:29', NULL, NULL, NULL, NULL),
(38, 48, NULL, NULL, 'Basic', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '1633427018-3306-Abu Saeed Ainul Bari.jpg', NULL, 'male', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 02:24:50', '2021-10-28 00:52:56', NULL, 'a:1:{i:0;d:4;}', 'a:2:{s:4:\"type\";s:6:\"paypal\";s:12:\"paypal_email\";s:11:\"01858361812\";}', 'a:1:{i:0;a:1:{s:3:\"url\";N;}}'),
(40, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 02:25:56', '2021-09-25 02:25:56', NULL, NULL, NULL, NULL),
(41, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-29 03:28:16', '2021-09-29 03:28:16', NULL, NULL, NULL, NULL),
(42, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-29 03:29:24', '2021-09-29 03:29:24', NULL, NULL, NULL, NULL),
(43, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-29 03:31:18', '2021-09-29 03:31:18', NULL, NULL, NULL, NULL),
(44, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:0;i:48;}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-03 23:49:21', '2021-10-27 23:18:08', NULL, NULL, 'a:2:{s:4:\"type\";s:6:\"paypal\";s:12:\"paypal_email\";s:10:\"01713702979\";}', NULL),
(45, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-04 02:41:29', '2021-10-04 02:41:29', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(10) UNSIGNED NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `completion_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hired` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('pending','hired','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid` enum('pending','completed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_progress` enum('in-progress','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in-progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `freelancer_id`, `job_id`, `content`, `amount`, `completion_time`, `attachments`, `hired`, `status`, `created_at`, `updated_at`, `paid`, `paid_progress`) VALUES
(9, 48, 12, 'asdas', 15000, 'monthly', NULL, 1, 'completed', '2021-10-03 23:52:49', '2021-10-06 05:55:29', NULL, 'in-progress'),
(10, 48, 13, 'Hi', 1500, 'weekly', NULL, 1, 'completed', '2021-10-04 00:28:47', '2021-10-06 05:55:52', NULL, 'in-progress'),
(11, 48, 14, 'asas', 400, 'weekly', NULL, 1, 'hired', '2021-10-04 00:55:35', '2021-10-04 00:55:52', NULL, 'in-progress'),
(12, 48, 16, 'jkjjk', 0, 'weekly', NULL, 1, 'hired', '2021-10-27 01:30:31', '2021-10-27 01:59:49', NULL, 'in-progress'),
(13, 48, 17, 'dfdfd', 0, 'weekly', NULL, 0, 'pending', '2021-10-27 02:25:15', '2021-10-27 02:25:15', NULL, 'in-progress'),
(14, 48, 18, 'sdsd', 2800, 'weekly', NULL, 1, 'completed', '2021-10-27 03:25:26', '2021-10-27 03:31:33', NULL, 'in-progress'),
(15, 48, 19, 'weafa', 45000, 'weekly', NULL, 1, 'completed', '2021-10-30 21:34:31', '2021-10-30 21:37:54', NULL, 'in-progress');

-- --------------------------------------------------------

--
-- Table structure for table `proposal_documents`
--

CREATE TABLE `proposal_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reportable_id` int(11) NOT NULL,
  `reportable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `reason`, `description`, `reportable_id`, `reportable_type`, `created_at`, `updated_at`) VALUES
(1, 'proposal cancel', 'a', 10, 'App\\Job', '2021-10-02 21:29:05', '2021-10-02 21:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `response_times`
--

CREATE TABLE `response_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `response_times`
--

INSERT INTO `response_times` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, '1 Hour', '1-hour', '2021-09-06 02:34:34', '2021-09-06 02:34:34'),
(2, '2 Hours', '2-hours', '2021-09-06 02:34:34', '2021-09-06 02:34:34'),
(3, '3 Hours', '3-hours', '2021-09-06 02:34:34', '2021-09-06 02:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avg_rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_type` enum('job','service') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job',
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `receiver_id`, `job_id`, `feedback`, `rating`, `avg_rating`, `created_at`, `updated_at`, `project_type`, `service_id`) VALUES
(7, 54, 48, 26, 'NIce', 'a:4:{i:0;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:1;}i:1;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:2;}i:2;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:3;}i:3;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:4;}}', 5, '2021-10-05 03:40:37', '2021-10-05 03:40:37', 'service', 23),
(8, 54, 48, 31, '', 'a:4:{i:0;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:1;}i:1;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:2;}i:2;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:3;}i:3;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:4;}}', 5, '2021-10-06 02:10:28', '2021-10-06 02:10:28', 'service', 24),
(9, 54, 48, 12, '', 'a:1:{i:3;a:2:{s:6:\"rating\";i:2;s:6:\"reason\";i:4;}}', 2, '2021-10-06 05:55:29', '2021-10-06 05:55:29', 'job', NULL),
(10, 54, 48, 13, '', 'a:1:{i:2;a:2:{s:6:\"rating\";i:4;s:6:\"reason\";i:3;}}', 4, '2021-10-06 05:55:52', '2021-10-06 05:55:52', 'job', NULL),
(11, 54, 48, 18, 'fdgdf', 'a:2:{i:2;a:2:{s:6:\"rating\";i:3;s:6:\"reason\";i:3;}i:3;a:2:{s:6:\"rating\";i:1;s:6:\"reason\";i:4;}}', 2, '2021-10-27 03:31:33', '2021-10-27 03:31:33', 'job', NULL),
(12, 54, 48, 19, 'nice work', 'a:4:{i:0;a:2:{s:6:\"rating\";i:4;s:6:\"reason\";i:1;}i:1;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:2;}i:2;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:3;}i:3;a:2:{s:6:\"rating\";i:5;s:6:\"reason\";i:4;}}', 5, '2021-10-30 21:37:54', '2021-10-30 21:37:54', 'job', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_options`
--

CREATE TABLE `review_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_options`
--

INSERT INTO `review_options` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'How was my proffesional behaviour?', 'how-was-my-proffesional-behaviour?', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, 'How was my quality of work?', 'how-was-my-quality-of-work?', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, 'Was I focused to deadline?', 'was-i-focused-to-deadline?', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, 'Was it worth it having my services?', 'was-it-worth-it-having-my-services?', '2021-09-06 02:34:32', '2021-09-06 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_type`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'web', '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(2, 'employer', 'employer', 'web', '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(3, 'freelancer', 'freelancer', 'web', '2021-09-06 02:34:31', '2021-09-06 02:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `delivery_time_id` int(11) NOT NULL,
  `response_time_id` int(11) NOT NULL,
  `english_level` enum('basic','conversational','fluent','native','professional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `status`, `delivery_time_id`, `response_time_id`, `english_level`, `price`, `description`, `location_id`, `address`, `longitude`, `latitude`, `is_featured`, `show_attachments`, `attachments`, `code`, `views`, `created_at`, `updated_at`) VALUES
(24, 'I will create professional website', 'i-will-create-professional-website', 'published', 3, 1, 'basic', 15000, '<h2 style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 400; line-height: 20px; font-size: 16px; color: #323232; text-transform: capitalize; font-family: Poppins, Arial, Helvetica, sans-serif;\">Service Description</h2>', 16, '', '', '', 'false', 'false', NULL, '2SNGV384', 4, '2021-10-06 00:35:22', '2021-10-06 21:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `service_transactions`
--

CREATE TABLE `service_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('Bkash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_transactions`
--

INSERT INTO `service_transactions` (`id`, `service_id`, `service_user_id`, `phone`, `transaction_id`, `is_verified`, `type`, `created_at`, `updated_at`) VALUES
(7, 24, 31, '01858361812', 'sadsaasd', 1, 'Bkash', '2021-10-06 02:01:52', '2021-10-06 02:05:59'),
(8, 24, 31, '01858361812', 'fgsdfsda', 1, 'Bkash', '2021-10-06 02:08:45', '2021-10-06 02:09:10'),
(9, 24, 32, '01713702979', 'wqerr', 0, 'Bkash', '2021-10-06 21:33:07', '2021-10-06 21:33:07'),
(10, 24, 33, '01713702979', 'dffgrgrdgf', 0, 'Bkash', '2021-10-06 21:36:53', '2021-10-06 21:36:53'),
(11, 24, 34, '01713702979', 'dsfsdfsd', 0, 'Bkash', '2021-10-06 21:39:55', '2021-10-06 21:39:55'),
(12, 24, 35, '01875441599', 'dfg fadhg', 0, 'Bkash', '2021-10-06 21:43:47', '2021-10-06 21:43:47'),
(13, 24, 36, '01875441599', 'l\';kl;', 0, 'Bkash', '2021-10-06 21:44:56', '2021-10-06 21:44:56'),
(14, 24, 37, '01713702979', 'jklgl', 0, 'Bkash', '2021-10-06 21:45:55', '2021-10-06 21:45:55'),
(15, 24, 38, '01875441599', 'sadfgasdga', 0, 'Bkash', '2021-10-06 21:49:34', '2021-10-06 21:49:34'),
(16, 24, 39, '01713702979', 'sdfgdfgr', 0, 'Bkash', '2021-10-06 21:50:49', '2021-10-06 21:50:49'),
(17, 24, 40, '01875441599', 'dsagfdg', 0, 'Bkash', '2021-10-06 21:57:42', '2021-10-06 21:57:42'),
(18, 24, 41, '01713702979', 'dgfgfg', 0, 'Bkash', '2021-10-06 21:58:38', '2021-10-06 21:58:38'),
(19, 24, 42, '01713702979', 'dgfvdfdf', 0, 'Bkash', '2021-10-06 21:58:58', '2021-10-06 21:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `service_user`
--

CREATE TABLE `service_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `type` enum('seller','employer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'seller',
  `status` enum('hired','completed','cancelled','pending','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid` enum('pending','completed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_progress` enum('in-progress','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in-progress',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_user`
--

INSERT INTO `service_user` (`id`, `service_id`, `user_id`, `seller_id`, `type`, `status`, `paid`, `paid_progress`, `created_at`, `updated_at`) VALUES
(30, 24, 48, 48, 'seller', 'completed', 'completed', 'in-progress', NULL, NULL),
(31, 24, 54, 48, 'employer', 'completed', 'pending', 'in-progress', '2021-10-06 02:01:52', '2021-10-06 02:01:52'),
(32, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:33:07', '2021-10-06 21:33:07'),
(33, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:36:52', '2021-10-06 21:36:52'),
(34, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:39:55', '2021-10-06 21:39:55'),
(35, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:43:47', '2021-10-06 21:43:47'),
(36, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:44:56', '2021-10-06 21:44:56'),
(37, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:45:55', '2021-10-06 21:45:55'),
(38, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:49:34', '2021-10-06 21:49:34'),
(39, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:50:49', '2021-10-06 21:50:49'),
(40, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:57:42', '2021-10-06 21:57:42'),
(41, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:58:38', '2021-10-06 21:58:38'),
(42, 24, 54, 48, 'employer', 'hired', 'pending', 'in-progress', '2021-10-06 21:58:58', '2021-10-06 21:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `site_managements`
--

CREATE TABLE `site_managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_managements`
--

INSERT INTO `site_managements` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 'home_settings', 'a:1:{i:0;a:8:{s:11:\"home_banner\";s:14:\"banner-img.jpg\";s:17:\"home_banner_image\";s:10:\"img-01.png\";s:12:\"banner_title\";s:23:\"Hire expert freelancers\";s:15:\"banner_subtitle\";s:19:\"for any job, Online\";s:18:\"banner_description\";s:101:\"Consectetur adipisicing elit sed dotem eiusmod tempor incuntes ut labore etdolore maigna aliqua enim.\";s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=B-ph2g5o2K4\";s:11:\"video_title\";s:17:\"See For Yourself!\";s:10:\"video_desc\";s:43:\"How it works & experience the ultimate joy.\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, 'app_desc', '<p>Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum dolore eu fugiat nulla pariatur lokaim urianewce.</p>\r\n                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumed perspiciatis.</p>', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, 'app_android_link', 'https://play.google.com/store/apps/details?id=com.app.amento.worketic', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, 'app_ios_link', '#', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(12, 'section_settings', 'a:1:{i:0;a:12:{s:20:\"home_section_display\";s:4:\"true\";s:10:\"section_bg\";s:21:\"1557484284-banner.jpg\";s:13:\"company_title\";s:16:\"Start As Company\";s:12:\"company_desc\";s:172:\"Consectetur adipisicing elit sed dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum.\";s:11:\"company_url\";s:1:\"#\";s:16:\"freelancer_title\";s:19:\"Start As Freelancer\";s:15:\"freelancer_desc\";s:172:\"Consectetur adipisicing elit sed dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum.\";s:14:\"freelancer_url\";s:1:\"#\";s:19:\"app_section_display\";s:4:\"true\";s:16:\"download_app_img\";s:36:\"1558518016-1557484284-mobile-img.png\";s:9:\"app_title\";s:20:\"Limitless Experience\";s:12:\"app_subtitle\";s:30:\"Roam Around With Your Business\";}}', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(14, 'show-page-3', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(15, 'access_type', 'both', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(18, 'show-page-6', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(19, 'show-banner-6', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(20, 'show-page-7', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(21, 'show-banner-7', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(26, 'show-page-8', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(27, 'show-banner-8', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(28, 'show-page-9', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(29, 'show-banner-9', '0', '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(36, 'homepage', 'a:1:{s:4:\"home\";s:1:\"5\";}', '2021-09-06 02:40:58', '2021-09-06 02:40:58'),
(37, 'show-page-1', '0', '2021-09-06 02:42:08', '2021-09-06 02:42:08'),
(38, 'show-banner-1', '0', '2021-09-06 02:42:08', '2021-09-06 02:42:08'),
(49, 'menu_settings', 'a:4:{s:5:\"color\";s:7:\"#7b7474\";s:10:\"menu_color\";s:7:\"#767676\";s:16:\"menu_hover_color\";s:7:\"#ff5851\";s:5:\"pages\";a:4:{i:0;a:4:{s:2:\"id\";s:11:\"freelancers\";s:5:\"title\";s:16:\"View Freelancers\";s:4:\"type\";s:10:\"innerPages\";s:5:\"order\";s:1:\"1\";}i:1;a:4:{s:2:\"id\";s:9:\"employers\";s:5:\"title\";s:14:\"View Employers\";s:4:\"type\";s:10:\"innerPages\";s:5:\"order\";s:1:\"2\";}i:2;a:4:{s:2:\"id\";s:4:\"jobs\";s:5:\"title\";s:11:\"Browse Jobs\";s:4:\"type\";s:10:\"innerPages\";s:5:\"order\";s:1:\"3\";}i:3;a:4:{s:2:\"id\";s:8:\"services\";s:5:\"title\";s:15:\"Browse Services\";s:4:\"type\";s:10:\"innerPages\";s:5:\"order\";s:1:\"4\";}}}', '2021-09-06 03:09:24', '2021-09-06 03:09:24'),
(133, 'socials', 'a:5:{i:0;a:2:{s:5:\"title\";s:8:\"facebook\";s:3:\"url\";s:1:\"#\";}i:1;a:2:{s:5:\"title\";s:7:\"twitter\";s:3:\"url\";s:1:\"#\";}i:2;a:2:{s:5:\"title\";s:7:\"youtube\";s:3:\"url\";s:1:\"#\";}i:3;a:2:{s:5:\"title\";s:9:\"instagram\";s:3:\"url\";s:1:\"#\";}i:4;a:2:{s:5:\"title\";s:10:\"googleplus\";s:3:\"url\";s:1:\"#\";}}', '2021-09-06 21:47:12', '2021-09-06 21:47:12'),
(141, 'chat_settings', 'a:3:{s:6:\"_token\";s:40:\"nu6ME8R4uxJsa8hycq7RDTxybOQrSVsgvtLEMKfq\";s:4:\"host\";s:26:\"https://sb.rezumestore.com\";s:4:\"port\";s:4:\"8080\";}', '2021-09-06 20:30:37', '2021-09-06 20:30:37'),
(160, 'show_breadcrumb', 's:5:\"false\";', '2021-09-06 22:17:16', '2021-09-06 22:17:16'),
(162, 'email_data', 'a:1:{i:0;a:7:{s:10:\"from_email\";s:23:\"info@sb.rezumestore.com\";s:13:\"from_email_id\";s:23:\"info@sb.rezumestore.com\";s:11:\"sender_name\";s:14:\"Service Bazaar\";s:14:\"sender_tagline\";s:14:\"Service Bazaar\";s:10:\"sender_url\";s:27:\"https://sb.rezumestore.com/\";s:10:\"email_logo\";s:50:\"1630990681-6075-1630919403-9821-download-small.jpg\";s:12:\"email_banner\";s:21:\"1555743744-banner.jpg\";}}', '2021-09-06 22:37:14', '2021-09-06 22:37:14'),
(171, 'commision', 'a:1:{i:0;a:7:{s:9:\"commision\";s:2:\"20\";s:10:\"min_payout\";s:3:\"250\";s:14:\"payment_method\";a:2:{i:0;s:6:\"paypal\";i:1;s:6:\"stripe\";}s:8:\"currency\";s:3:\"BDT\";s:15:\"enable_packages\";s:4:\"true\";s:16:\"employer_package\";s:4:\"true\";s:12:\"payment_mode\";s:4:\"true\";}}', '2021-09-07 00:10:35', '2021-09-07 00:10:35'),
(193, 'reg_form_settings', 'a:1:{i:0;a:15:{s:17:\"registration_type\";s:6:\"single\";s:17:\"verification_type\";s:11:\"auto_verify\";s:11:\"step1-title\";s:12:\"Registration\";s:14:\"step1-subtitle\";s:28:\"Give The Correct Information\";s:20:\"show_reg_form_banner\";s:4:\"true\";s:15:\"reg_form_banner\";N;s:11:\"step2-title\";s:0:\"\";s:14:\"step2-subtitle\";s:0:\"\";s:15:\"step2-term-note\";s:0:\"\";s:11:\"step3-title\";s:0:\"\";s:14:\"step3-subtitle\";s:0:\"\";s:10:\"step3-page\";s:0:\"\";s:11:\"step4-title\";s:0:\"\";s:14:\"step4-subtitle\";s:0:\"\";s:19:\"show_emplyr_inn_sec\";s:0:\"\";}}', '2021-09-07 03:22:18', '2021-09-07 03:22:18'),
(195, 'show-page-2', '0', '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(196, 'show-banner-2', '1', '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(197, 'page-banner-2', '1630920526-9780-jonathan-borba-nwo8LzWa19I-unsplash.jpg', '2021-09-07 20:08:05', '2021-09-07 20:08:05'),
(198, 'show-page-10', '0', '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(199, 'show-banner-10', '1', '2021-09-07 20:08:16', '2021-09-07 20:08:16'),
(219, 'search_menu', 'a:4:{i:0;a:2:{s:5:\"title\";s:17:\"Services in Dhaka\";s:3:\"url\";s:1:\"#\";}i:1;a:2:{s:5:\"title\";s:18:\"Services in Banani\";s:3:\"url\";s:1:\"#\";}i:2;a:2:{s:5:\"title\";s:13:\"Jobs in Dhaka\";s:3:\"url\";s:1:\"#\";}i:3;a:2:{s:5:\"title\";s:9:\"Find Jobs\";s:3:\"url\";s:1:\"#\";}}', '2021-09-24 19:50:17', '2021-09-24 19:50:17'),
(220, 'menu_title', 'Explore More', '2021-09-24 19:50:17', '2021-09-24 19:50:17'),
(221, 'footer_settings', 'a:8:{s:11:\"footer_logo\";s:40:\"1632541822-6728-Service-bonanza-logo.jpg\";s:9:\"footer_bg\";s:11:\"8178-bg.png\";s:12:\"footer_style\";s:6:\"style3\";s:11:\"description\";s:187:\"Dotem eiusmod tempor incune utnaem labore etdolore maigna aliqua enim poskina ilukita ylokem lokateise ination voluptate velit esse cillum dolore eu fugiat nulla pariatur lokaim urianewce\";s:9:\"copyright\";s:57:\"Copyright © 2021 The Service Bazaar, All Right Reserved.\";s:12:\"menu_title_1\";s:7:\"Company\";s:12:\"menu_pages_1\";a:4:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:2:\"10\";}s:5:\"pages\";a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}}', '2021-09-24 19:50:22', '2021-09-24 19:50:22'),
(224, 'stripe_settings', 'a:1:{i:0;a:3:{s:10:\"stripe_key\";s:11:\"01713702979\";s:13:\"stripe_secret\";s:11:\"01858361812\";s:10:\"stripe_img\";s:24:\"1632540966-7531-logo.jpg\";}}', '2021-09-25 02:54:01', '2021-09-25 02:54:01'),
(225, 'settings', 'a:1:{i:0;a:13:{s:5:\"title\";s:14:\"Service Bazaar\";s:16:\"connects_per_job\";N;s:12:\"gmap_api_key\";N;s:12:\"chat_display\";s:4:\"true\";s:13:\"enable_loader\";s:4:\"true\";s:13:\"show_earnings\";s:4:\"true\";s:11:\"price_range\";N;s:18:\"enable_theme_color\";s:4:\"true\";s:12:\"header_style\";s:6:\"style1\";s:13:\"primary_color\";s:7:\"#1bb9ba\";s:4:\"logo\";s:40:\"1632542580-3613-Service-bonanza-logo.jpg\";s:8:\"language\";s:2:\"en\";s:15:\"body-lang-class\";s:7:\"lang-en\";}}', '2021-10-02 04:51:03', '2021-10-02 04:51:03'),
(230, 'show-page-5', '0', '2021-10-27 21:30:09', '2021-10-27 21:30:09'),
(231, 'show-banner-5', '0', '2021-10-27 21:30:09', '2021-10-27 21:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Android', 'android', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(2, 'API', 'api', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(3, 'C++', 'c', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(4, 'Content Writing', 'content-writing', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(5, 'CSS', 'css', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(6, 'Facebook API', 'facebook-api', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(7, 'Graphic Design', 'graphic-design', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(8, 'HTML 5', 'html-5', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(9, 'Java', 'java', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(10, 'Jquery', 'jquery', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(11, 'My SQL', 'my-sql', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(12, 'PHP', 'php', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(13, 'SEO', 'seo', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(14, 'Website Design', 'website-design', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31'),
(15, 'WordPress', 'wordpress', NULL, '2021-09-06 02:34:31', '2021-09-06 02:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `skill_user`
--

CREATE TABLE `skill_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_user`
--

INSERT INTO `skill_user` (`id`, `user_id`, `skill_id`, `skill_rating`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 100, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(2, 13, 3, 100, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(3, 14, 4, 90, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(4, 14, 5, 70, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(5, 14, 6, 80, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(6, 15, 7, 65, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(7, 16, 8, 75, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(8, 17, 9, 90, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(9, 17, 10, 50, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(10, 17, 4, 78, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(11, 18, 7, 69, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(12, 18, 8, 84, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(13, 19, 13, 100, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(14, 19, 14, 80, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(15, 20, 2, 15, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(16, 20, 3, 21, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(17, 20, 4, 99, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(18, 20, 5, 85, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(19, 21, 10, 14, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(20, 21, 11, 89, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(21, 22, 12, 23, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(22, 23, 15, 35, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(23, 19, 9, 72, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(24, 18, 13, 95, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(25, 23, 8, 45, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(26, 24, 8, 45, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(27, 24, 10, 45, '2021-09-06 02:34:32', '2021-09-06 02:34:32'),
(28, 15, 98, 80, '2021-09-06 02:34:32', '2021-09-06 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_verified` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_disabled` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `slug`, `email`, `phone`, `password`, `badge_id`, `expiry_date`, `location_id`, `verification_code`, `user_verified`, `remember_token`, `created_at`, `updated_at`, `is_disabled`) VALUES
(1, 'Super', 'Admin', 'super-admin', 'admin@servicebazaar.com', '', '$2y$10$1BFEi7fjtHkd9FMG5B3rmOAhFseiZFZTjIVQuyrqgOCPd20X46t82', NULL, NULL, NULL, 'L1ZN', 1, 'WfwnKhUNHJmFauGh164ayV6M952TtrkUSH1MAVKWkFwBTPzpxQKqB3Kp0pfc', '2021-09-06 02:34:29', '2021-09-06 20:51:30', 'false'),
(48, 'Md Sehirul Islam', 'Rehi', 'md-sehirul-islam-rehi', 'rehi@gmail.com', '01713702977', '$2y$10$qAXZWnNDP6KhXWiVcC4RCeYtYJSRrP6QRgf.4ZVQd1G/zLRoVHsDO', NULL, NULL, NULL, NULL, 1, 'jPgWf5IO1L1BDaGcC723m2Kkjm38J3yAXvzrQ23DbZt2bBjiQ6R1UGurADFY', '2021-09-25 02:24:50', '2021-11-05 22:00:40', 'false'),
(50, 'Shanta', 'Nur', 'shanta-nur', 'nur@gmail.com', '', '$2y$10$FTKD5Goab/7jpGoefn7Lx.DJZg7L/cLFHK0.QyDGc6sF3hB84Nhmq', NULL, NULL, 9, NULL, 1, 'YOZhQoAn0BbU1MrfybSGa77ZCvI0jjw7gAMfEXyzO4dT4sN8N5pGJUp8sJNB', '2021-09-25 02:25:55', '2021-09-25 02:25:55', 'false'),
(54, 'Dip', 'Saha', 'dip-saha', 'dip@gmail.com', '01537418355', '$2y$10$88TY1d5f4PUsx/gUPSRzK.fPOm.sQx6A/aBzN50nS/bfkFs5SqNnm', NULL, NULL, 9, NULL, 1, '1JQfTR9AqFsFv4vmVasRfTrXXR0ElrRALdZvi3GzVyZ9pjyRizURLVLTluHn', '2021-10-03 23:49:21', '2021-10-03 23:49:21', 'false'),
(55, 'Emraz', 'gazi', 'emraz-gazi', 'emran@gmail.com', '01608728677', '$2y$10$iK.zBqa0aQau0AER0XCne.Zp311T0Q8kY4sJgMGLY/m/yjvws/ym2', NULL, NULL, 9, NULL, 1, 'uJwdnCFm5DwaUCXkc78C8aVfaiYqnlpqwxv0tpRd14SyYOqSGvC4uHwZT1mI', '2021-10-04 02:41:29', '2021-10-04 02:41:29', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_category_article_id_foreign` (`article_id`),
  ADD KEY `article_category_article_category_id_foreign` (`article_category_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catables`
--
ALTER TABLE `catables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_location`
--
ALTER TABLE `child_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_pages`
--
ALTER TABLE `child_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_times`
--
ALTER TABLE `delivery_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_types`
--
ALTER TABLE `email_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `i_p_n_statuses`
--
ALTER TABLE `i_p_n_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobs_slug_unique` (`slug`),
  ADD KEY `jobs_user_id_index` (`user_id`);

--
-- Indexes for table `job_skill`
--
ALTER TABLE `job_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_trasnactions`
--
ALTER TABLE `job_trasnactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_trasnactions_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `langables`
--
ALTER TABLE `langables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_slug_unique` (`slug`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_index` (`user_id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metas_metable_type_metable_id_index` (`metable_type`,`metable_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`);

--
-- Indexes for table `package_transactions`
--
ALTER TABLE `package_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `package_transactions_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payouts_user_id_index` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_messages_to`
--
ALTER TABLE `private_messages_to`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_documents`
--
ALTER TABLE `proposal_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response_times`
--
ALTER TABLE `response_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_index` (`user_id`);

--
-- Indexes for table `review_options`
--
ALTER TABLE `review_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `service_transactions`
--
ALTER TABLE `service_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_transactions_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `service_user`
--
ALTER TABLE `service_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_managements`
--
ALTER TABLE `site_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skills_slug_unique` (`slug`);

--
-- Indexes for table `skill_user`
--
ALTER TABLE `skill_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catables`
--
ALTER TABLE `catables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `child_location`
--
ALTER TABLE `child_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `child_pages`
--
ALTER TABLE `child_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `delivery_times`
--
ALTER TABLE `delivery_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `email_types`
--
ALTER TABLE `email_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `i_p_n_statuses`
--
ALTER TABLE `i_p_n_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `job_skill`
--
ALTER TABLE `job_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `job_trasnactions`
--
ALTER TABLE `job_trasnactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `langables`
--
ALTER TABLE `langables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_transactions`
--
ALTER TABLE `package_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `private_messages_to`
--
ALTER TABLE `private_messages_to`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `proposal_documents`
--
ALTER TABLE `proposal_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `response_times`
--
ALTER TABLE `response_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `review_options`
--
ALTER TABLE `review_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `service_transactions`
--
ALTER TABLE `service_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_user`
--
ALTER TABLE `service_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `site_managements`
--
ALTER TABLE `site_managements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `skill_user`
--
ALTER TABLE `skill_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_article_category_id_foreign` FOREIGN KEY (`article_category_id`) REFERENCES `article_categories` (`id`),
  ADD CONSTRAINT `article_category_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
