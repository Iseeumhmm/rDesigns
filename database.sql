-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 28, 2019 at 06:58 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reddingdesigns`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/ReddingDesigns', 'yes'),
(2, 'home', 'http://localhost:8888/ReddingDesigns', 'yes'),
(3, 'blogname', 'Redding Designs', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rick@reddingdesigns.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:138:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"Service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"Service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"Service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"Service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"Service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"Service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:36:\"Service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"Service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"Service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"Service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"Service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"Service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"Service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:25:\"team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:40:\"team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:29:\"team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:21:\"team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:48:\"advanced-custom-fields-table-field/acf-table.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'redding-designs', 'yes'),
(41, 'stylesheet', 'redding-designs-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1572289570;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572325570;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572368770;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572368776;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572368777;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.4-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.4-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-rollback-2.zip\";}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1572282425;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566580112;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Redding Designs Child', 'yes'),
(141, 'theme_mods_redding-designs', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567519094;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572282426;s:7:\"checked\";a:2:{s:21:\"redding-designs-child\";s:5:\"1.0.0\";s:15:\"redding-designs\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(144, 'category_children', 'a:0:{}', 'yes'),
(149, 'WPLANG', '', 'yes'),
(150, 'new_admin_email', 'rick@reddingdesigns.com', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'acf_version', '5.8.4', 'yes'),
(196, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5Tnprd016ZDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxUQTBMVEEySURJd09qRTBPakV6IjtzOjM6InVybCI7czozNjoiaHR0cDovL2xvY2FsaG9zdDo4ODg4L1JlZGRpbmdEZXNpZ25zIjt9', 'yes'),
(202, 'theme_mods_redding-designs-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(507, '_site_transient_timeout_browser_6f5d6c105f7059d99e985293bc7834a0', '1572617103', 'no'),
(508, '_site_transient_browser_6f5d6c105f7059d99e985293bc7834a0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(509, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1572617103', 'no'),
(510, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(546, '_transient_timeout_acf_plugin_updates', '1572284004', 'no'),
(547, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.2.4\";s:7:\"package\";s:255:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU56a3dNemQ4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEEwTFRBMklESXdPakUwT2pFeiIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4ODg4XC9SZWRkaW5nRGVzaWducyJ9\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.4\";}}', 'no'),
(569, '_site_transient_timeout_theme_roots', '1572284226', 'no'),
(570, '_site_transient_theme_roots', 'a:2:{s:21:\"redding-designs-child\";s:7:\"/themes\";s:15:\"redding-designs\";s:7:\"/themes\";}', 'no'),
(571, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572282426;s:7:\"checked\";a:4:{s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:5:\"1.3.8\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.4\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.2.4\";s:7:\"package\";s:255:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU56a3dNemQ4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEEwTFRBMklESXdPakUwT2pFeiIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4ODg4XC9SZWRkaW5nRGVzaWducyJ9\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:48:\"advanced-custom-fields-table-field/acf-table.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/advanced-custom-fields-table-field\";s:4:\"slug\";s:34:\"advanced-custom-fields-table-field\";s:6:\"plugin\";s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:11:\"new_version\";s:5:\"1.3.8\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/advanced-custom-fields-table-field/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-table-field.1.3.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-256x256.png?rev=1962986\";s:2:\"1x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-128x128.png?rev=1962986\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-table-field/assets/banner-772x250.png?rev=1962986\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1572011019:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1572284179:1'),
(18, 16, '_wp_attached_file', '2019/08/comingsoon.png'),
(19, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2950;s:6:\"height\";i:2950;s:4:\"file\";s:22:\"2019/08/comingsoon.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"comingsoon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"comingsoon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"comingsoon-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"comingsoon-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 8, '_edit_last', '1'),
(21, 8, 'desktop', '16'),
(22, 8, '_desktop', 'field_5d602b02ecb80'),
(23, 8, 'laptop', '16'),
(24, 8, '_laptop', 'field_5d602b7e50cee'),
(25, 8, 'tablet', '16'),
(26, 8, '_tablet', 'field_5d602b3e2dc15'),
(27, 8, 'phone', '16'),
(28, 8, '_phone', 'field_5d602b7d50ced'),
(29, 17, 'desktop', '16'),
(30, 17, '_desktop', 'field_5d602b02ecb80'),
(31, 17, 'laptop', ''),
(32, 17, '_laptop', 'field_5d602b7e50cee'),
(33, 17, 'tablet', ''),
(34, 17, '_tablet', 'field_5d602b3e2dc15'),
(35, 17, 'phone', ''),
(36, 17, '_phone', 'field_5d602b7d50ced'),
(37, 18, 'desktop', '16'),
(38, 18, '_desktop', 'field_5d602b02ecb80'),
(39, 18, 'laptop', '16'),
(40, 18, '_laptop', 'field_5d602b7e50cee'),
(41, 18, 'tablet', '16'),
(42, 18, '_tablet', 'field_5d602b3e2dc15'),
(43, 18, 'phone', '16'),
(44, 18, '_phone', 'field_5d602b7d50ced'),
(45, 20, '_edit_lock', '1571317419:1'),
(46, 23, '_edit_lock', '1572284927:1'),
(47, 25, '_edit_lock', '1572017203:1'),
(48, 27, '_edit_lock', '1571666567:1'),
(50, 32, '_edit_lock', '1570734119:1'),
(51, 8, 'client_name', 'Redding Designs'),
(52, 8, '_client_name', 'field_5da71b366276c'),
(53, 8, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(54, 8, '_description', 'field_5da71b4c6276d'),
(55, 8, 'website', 'https://reddingdesigns.com/'),
(56, 8, '_website', 'field_5da71b5b6276e'),
(57, 38, 'desktop', '16'),
(58, 38, '_desktop', 'field_5d602b02ecb80'),
(59, 38, 'laptop', '16'),
(60, 38, '_laptop', 'field_5d602b7e50cee'),
(61, 38, 'tablet', '16'),
(62, 38, '_tablet', 'field_5d602b3e2dc15'),
(63, 38, 'phone', '16'),
(64, 38, '_phone', 'field_5d602b7d50ced'),
(65, 38, 'client_name', 'Redding Designs'),
(66, 38, '_client_name', 'field_5da71b366276c'),
(67, 38, 'description', ''),
(68, 38, '_description', 'field_5da71b4c6276d'),
(69, 38, 'website', ''),
(70, 38, '_website', 'field_5da71b5b6276e'),
(71, 39, 'desktop', '16'),
(72, 39, '_desktop', 'field_5d602b02ecb80'),
(73, 39, 'laptop', '16'),
(74, 39, '_laptop', 'field_5d602b7e50cee'),
(75, 39, 'tablet', '16'),
(76, 39, '_tablet', 'field_5d602b3e2dc15'),
(77, 39, 'phone', '16'),
(78, 39, '_phone', 'field_5d602b7d50ced'),
(79, 39, 'client_name', 'Redding Designs'),
(80, 39, '_client_name', 'field_5da71b366276c'),
(81, 39, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(82, 39, '_description', 'field_5da71b4c6276d'),
(83, 39, 'website', 'https://reddingdesigns.com/'),
(84, 39, '_website', 'field_5da71b5b6276e'),
(85, 40, '_edit_last', '1'),
(86, 40, '_edit_lock', '1571252500:1'),
(87, 49, '_edit_last', '1'),
(88, 49, 'client_name', 'Paul Lafrance, HGTV'),
(89, 49, '_client_name', 'field_5da71d25878bc'),
(90, 49, 'tag_line', 'Exceeded beyond my own creative vision.'),
(91, 49, '_tag_line', 'field_5da71d0d878ba'),
(92, 49, 'testimonial_content', 'I have worked with a number of different website companies over the years and have always been left wanting, until I worked with Redding Designs. Their personal service and ability to exceed beyond my own creative vision makes Redding Designs a very rare company that I feel very fortunate to have found.'),
(93, 49, '_testimonial_content', 'field_5da71d18878bb'),
(94, 49, 'website', 'https://paullafrancedesign.com/'),
(95, 49, '_website', 'field_5da71d39878bd'),
(96, 49, 'modern_image', '51'),
(97, 49, '_modern_image', 'field_5da71f19732c4'),
(98, 49, 'victorian_image', '52'),
(99, 49, '_victorian_image', 'field_5da71f3dc4f0b'),
(100, 49, '80s_image', '16'),
(101, 49, '_80s_image', 'field_5da71f3cc4f0a'),
(102, 49, 'monochrome_image', '16'),
(103, 49, '_monochrome_image', 'field_5da71f39c4f09'),
(104, 49, '_edit_lock', '1571236304:1'),
(105, 51, '_wp_attached_file', '2019/10/paul-lafrance.jpg'),
(106, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2019/10/paul-lafrance.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"paul-lafrance-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 52, '_wp_attached_file', '2019/10/paul-lafrance-1.jpg'),
(108, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2019/10/paul-lafrance-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"paul-lafrance-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 53, '_edit_last', '1'),
(110, 53, '_edit_lock', '1571236394:1'),
(111, 54, '_wp_attached_file', '2019/10/kate-campbell.jpg'),
(112, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2019/10/kate-campbell.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"kate-campbell-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 55, '_wp_attached_file', '2019/10/kate-campbell-1.jpg'),
(114, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2019/10/kate-campbell-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"kate-campbell-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 53, 'tag_line', 'Extremely responsive, creative &amp; attentive.'),
(116, 53, '_tag_line', 'field_5da71d0d878ba'),
(117, 53, 'testimonial_content', 'Rob Redding and his team are the real deal. Not only are they complete professionals, they\'re extremely responsive, creative and attentive. I\'ve felt totally at ease throughout the whole website design and logo design process which is no small feat because my website and logo are integral to my business.'),
(118, 53, '_testimonial_content', 'field_5da71d18878bb'),
(119, 53, 'website', 'https://katebuilds.ca/'),
(120, 53, '_website', 'field_5da71d39878bd'),
(121, 53, 'modern_image', '54'),
(122, 53, '_modern_image', 'field_5da71f19732c4'),
(123, 53, 'victorian_image', '55'),
(124, 53, '_victorian_image', 'field_5da71f3dc4f0b'),
(125, 53, '80s_image', '16'),
(126, 53, '_80s_image', 'field_5da71f3cc4f0a'),
(127, 53, 'monochrome_image', '16'),
(128, 53, '_monochrome_image', 'field_5da71f39c4f09'),
(129, 49, '_wp_old_date', '2019-10-16'),
(130, 53, '_wp_old_date', '2019-10-16'),
(131, 56, '_edit_lock', '1571254598:1'),
(132, 56, '_edit_last', '1'),
(133, 65, '_edit_last', '1'),
(134, 65, '_edit_lock', '1571255310:1'),
(135, 65, 'title', 'President'),
(136, 65, '_title', 'field_5da769a96cbf7'),
(137, 65, 'bio', 'Founder, President, Chief Executive Officer, Cheeseburger Enthusiast, Beard Legend, That Guy Who Tells Us What To Do. These are just a few of the titles bestowed upon Rob, and he does all of them very, very well. When he isn’t brainstorming ways to make his clients lives easier, he can be found playing the drums, dominating his enemies in Call of Duty or volunteering at his Church.'),
(138, 65, '_bio', 'field_5da769a96cc03'),
(139, 65, 'modern_image', '77'),
(140, 65, '_modern_image', 'field_5da769a96cc11'),
(141, 65, 'victorian_image', '77'),
(142, 65, '_victorian_image', 'field_5da769a96cc19'),
(143, 65, '80s_image', '77'),
(144, 65, '_80s_image', 'field_5da769a96cc21'),
(145, 65, 'monochrome_image', '77'),
(146, 65, '_monochrome_image', 'field_5da769a96cc29'),
(149, 67, '_edit_last', '1'),
(150, 67, '_edit_lock', '1571317353:1'),
(151, 67, 'title', 'Office Administrator'),
(152, 67, '_title', 'field_5da769a96cbf7'),
(153, 67, 'bio', 'Mary is probably the singlest best candidate for a job that we\'ve ever had. With years of experience handling secretarial and administrative work to benefit pre-adolescent children, she has all the interpersonal skills needed to work with notorious man-child Bernie Quiring. While she can\'t grow a beard, we don\'t hold that against her (much). Mary enjoys going on dates with her better, bearded half, spending time with her family, and hopes to one day visit Italy.'),
(154, 67, '_bio', 'field_5da769a96cc03'),
(155, 67, 'modern_image', '75'),
(156, 67, '_modern_image', 'field_5da769a96cc11'),
(157, 67, 'victorian_image', '78'),
(158, 67, '_victorian_image', 'field_5da769a96cc19'),
(159, 67, '80s_image', '75'),
(160, 67, '_80s_image', 'field_5da769a96cc21'),
(161, 67, 'monochrome_image', '75'),
(162, 67, '_monochrome_image', 'field_5da769a96cc29'),
(164, 68, '_wp_attached_file', '2019/10/seinfeld.html'),
(165, 69, '_wp_attached_file', '2019/10/ana-paula.jpg'),
(166, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2019/10/ana-paula.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ana-paula-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 70, '_wp_attached_file', '2019/10/brad-yates.jpg'),
(168, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2019/10/brad-yates.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"brad-yates-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 71, '_wp_attached_file', '2019/10/corny-bartsch.jpg'),
(170, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2019/10/corny-bartsch.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"corny-bartsch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 72, '_wp_attached_file', '2019/10/david-arthur.jpg'),
(172, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2019/10/david-arthur.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"david-arthur-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 73, '_wp_attached_file', '2019/10/david-ferguson.jpg'),
(174, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2019/10/david-ferguson.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"david-ferguson-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 74, '_wp_attached_file', '2019/10/holly-jasvins.jpg'),
(176, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2019/10/holly-jasvins.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"holly-jasvins-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 75, '_wp_attached_file', '2019/10/mary-blatz.jpg'),
(178, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2019/10/mary-blatz.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"mary-blatz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 76, '_wp_attached_file', '2019/10/rick-heffren.jpg'),
(180, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2019/10/rick-heffren.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"rick-heffren-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 77, '_wp_attached_file', '2019/10/rob-redding.jpg'),
(182, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:23:\"2019/10/rob-redding.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"rob-redding-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 78, '_wp_attached_file', '2019/10/tina-knelsen.jpg'),
(184, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2019/10/tina-knelsen.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"tina-knelsen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 79, '_wp_attached_file', '2019/10/vera-chen.jpg'),
(186, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2019/10/vera-chen.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vera-chen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 67, '_wp_old_slug', 'rob-redding'),
(188, 80, '_edit_last', '1'),
(189, 80, '_edit_lock', '1571255258:1'),
(190, 80, 'title', 'Developer'),
(191, 80, '_title', 'field_5da769a96cbf7'),
(192, 80, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(193, 80, '_bio', 'field_5da769a96cc03'),
(194, 80, 'modern_image', '72'),
(195, 80, '_modern_image', 'field_5da769a96cc11'),
(196, 80, 'victorian_image', '72'),
(197, 80, '_victorian_image', 'field_5da769a96cc19'),
(198, 80, '80s_image', '72'),
(199, 80, '_80s_image', 'field_5da769a96cc21'),
(200, 80, 'monochrome_image', '72'),
(201, 80, '_monochrome_image', 'field_5da769a96cc29'),
(203, 80, '_wp_old_slug', 'rob-redding'),
(204, 81, '_edit_last', '1'),
(205, 81, '_edit_lock', '1571254808:1'),
(206, 81, 'title', 'Developer'),
(207, 81, '_title', 'field_5da769a96cbf7'),
(208, 81, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(209, 81, '_bio', 'field_5da769a96cc03'),
(210, 81, 'modern_image', '76'),
(211, 81, '_modern_image', 'field_5da769a96cc11'),
(212, 81, 'victorian_image', '76'),
(213, 81, '_victorian_image', 'field_5da769a96cc19'),
(214, 81, '80s_image', '76'),
(215, 81, '_80s_image', 'field_5da769a96cc21'),
(216, 81, 'monochrome_image', '76'),
(217, 81, '_monochrome_image', 'field_5da769a96cc29'),
(219, 81, '_wp_old_slug', 'rob-redding-3'),
(220, 82, '_edit_last', '1'),
(221, 82, '_edit_lock', '1571254835:1'),
(222, 82, 'title', 'Developer'),
(223, 82, '_title', 'field_5da769a96cbf7'),
(224, 82, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(225, 82, '_bio', 'field_5da769a96cc03'),
(226, 82, 'modern_image', '76'),
(227, 82, '_modern_image', 'field_5da769a96cc11'),
(228, 82, 'victorian_image', '76'),
(229, 82, '_victorian_image', 'field_5da769a96cc19'),
(230, 82, '80s_image', '76'),
(231, 82, '_80s_image', 'field_5da769a96cc21'),
(232, 82, 'monochrome_image', '76'),
(233, 82, '_monochrome_image', 'field_5da769a96cc29'),
(235, 82, '_wp_trash_meta_status', 'draft'),
(236, 82, '_wp_trash_meta_time', '1571254984'),
(237, 82, '_wp_desired_post_slug', 'rob-redding-3-2'),
(238, 81, '_wp_trash_meta_status', 'publish'),
(239, 81, '_wp_trash_meta_time', '1571254986'),
(240, 81, '_wp_desired_post_slug', 'rob-redding-3-2'),
(241, 83, '_edit_last', '1'),
(242, 83, '_edit_lock', '1571255251:1'),
(243, 83, 'title', 'Developer'),
(244, 83, '_title', 'field_5da769a96cbf7'),
(245, 83, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(246, 83, '_bio', 'field_5da769a96cc03'),
(247, 83, 'modern_image', '79'),
(248, 83, '_modern_image', 'field_5da769a96cc11'),
(249, 83, 'victorian_image', '79'),
(250, 83, '_victorian_image', 'field_5da769a96cc19'),
(251, 83, '80s_image', '79'),
(252, 83, '_80s_image', 'field_5da769a96cc21'),
(253, 83, 'monochrome_image', '79'),
(254, 83, '_monochrome_image', 'field_5da769a96cc29'),
(256, 83, '_wp_old_slug', 'rob-redding-3'),
(257, 84, '_edit_last', '1'),
(258, 84, '_edit_lock', '1571255246:1'),
(259, 84, 'title', 'London Branch Manager / Developer'),
(260, 84, '_title', 'field_5da769a96cbf7'),
(261, 84, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(262, 84, '_bio', 'field_5da769a96cc03'),
(263, 84, 'modern_image', '70'),
(264, 84, '_modern_image', 'field_5da769a96cc11'),
(265, 84, 'victorian_image', '70'),
(266, 84, '_victorian_image', 'field_5da769a96cc19'),
(267, 84, '80s_image', '70'),
(268, 84, '_80s_image', 'field_5da769a96cc21'),
(269, 84, 'monochrome_image', '70'),
(270, 84, '_monochrome_image', 'field_5da769a96cc29'),
(272, 84, '_wp_old_slug', 'rob-redding-3-2'),
(273, 85, '_edit_last', '1'),
(274, 85, '_edit_lock', '1571255241:1'),
(275, 85, 'title', 'Office Manager / Graphic Designer / Developer'),
(276, 85, '_title', 'field_5da769a96cbf7'),
(277, 85, 'bio', 'Lorem ipsum dolor sit amet, consectetur adipisc- ing elit. Curabitur interdum et quam aliquet laoreet. Vestibulum egestas volutpat tempus. Cras quis auctor diam. Quisque at commodo diam. Duis pre- tium tincidunt mauris, at placerat lorem ornare lac- inia. Nam elementum nisi quam, vitae rutrum felis consequat ac. Quisque urna nulla, ornare vitae arcu sed, lacinia varius eros.'),
(278, 85, '_bio', 'field_5da769a96cc03'),
(279, 85, 'modern_image', '71'),
(280, 85, '_modern_image', 'field_5da769a96cc11'),
(281, 85, 'victorian_image', '71'),
(282, 85, '_victorian_image', 'field_5da769a96cc19'),
(283, 85, '80s_image', '71'),
(284, 85, '_80s_image', 'field_5da769a96cc21'),
(285, 85, 'monochrome_image', '71'),
(286, 85, '_monochrome_image', 'field_5da769a96cc29'),
(288, 85, '_wp_old_slug', 'rob-redding-3-2-2'),
(289, 65, '_wp_old_date', '2019-10-16'),
(290, 67, '_wp_old_date', '2019-10-16'),
(291, 85, '_wp_old_date', '2019-10-16'),
(292, 84, '_wp_old_date', '2019-10-16'),
(293, 83, '_wp_old_date', '2019-10-16'),
(294, 80, '_wp_old_date', '2019-10-16'),
(295, 67, '_wp_old_date', '2019-10-15'),
(296, 65, '_wp_old_date', '2019-10-14'),
(297, 86, '_edit_last', '1'),
(298, 86, '_edit_lock', '1571317447:1'),
(299, 20, '_wp_trash_meta_status', 'publish'),
(300, 20, '_wp_trash_meta_time', '1571317567'),
(301, 20, '_wp_desired_post_slug', 'about'),
(302, 88, '_wp_attached_file', '2019/10/beard-seal-of-approval.png'),
(303, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:477;s:6:\"height\";i:478;s:4:\"file\";s:34:\"2019/10/beard-seal-of-approval.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"beard-seal-of-approval-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"beard-seal-of-approval-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 27, '_edit_last', '1'),
(305, 27, 'beard_logo', '88'),
(306, 27, '_beard_logo', 'field_5da8670419252'),
(307, 89, 'beard_logo', '88'),
(308, 89, '_beard_logo', 'field_5da8670419252'),
(309, 91, '_edit_last', '1'),
(310, 91, '_edit_lock', '1571749810:1'),
(311, 91, '_wp_trash_meta_status', 'publish'),
(312, 91, '_wp_trash_meta_time', '1571749961'),
(313, 91, '_wp_desired_post_slug', 'group_5daefeb7e49be'),
(314, 92, '_wp_trash_meta_status', 'publish'),
(315, 92, '_wp_trash_meta_time', '1571749961'),
(316, 92, '_wp_desired_post_slug', 'field_5daefede5ab64'),
(317, 93, '_wp_trash_meta_status', 'publish'),
(318, 93, '_wp_trash_meta_time', '1571749961'),
(319, 93, '_wp_desired_post_slug', 'field_5daeffc95ab65'),
(320, 94, '_edit_last', '1'),
(321, 94, '_edit_lock', '1572017197:1'),
(322, 98, '_edit_last', '1'),
(323, 98, '_edit_lock', '1572017332:1'),
(324, 98, 'sub_heading', 'Virtual Presence'),
(325, 98, '_sub_heading', 'field_5daf15b7ab7f1'),
(326, 98, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(327, 98, '_services', 'field_5daf15369a97e'),
(328, 98, 'link_button_text', 'let\'s get started'),
(329, 98, '_link_button_text', 'field_5daf15d7ab7f2'),
(330, 99, '_edit_last', '1'),
(331, 99, '_edit_lock', '1571758222:1'),
(332, 99, 'sub_heading', 'Virtual Presence'),
(333, 99, '_sub_heading', 'field_5daf15b7ab7f1'),
(334, 99, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(335, 99, '_services', 'field_5daf15369a97e'),
(336, 99, 'link_button_text', 'let\'s get started'),
(337, 99, '_link_button_text', 'field_5daf15d7ab7f2'),
(345, 99, '_wp_old_slug', 'web-design-development'),
(346, 98, 'icon', 'webDevelopmentLarge'),
(347, 98, '_icon', 'field_5daf1dfa3e8cb'),
(348, 99, '_wp_trash_meta_status', 'publish'),
(349, 99, '_wp_trash_meta_time', '1571758388'),
(350, 99, '_wp_desired_post_slug', 'web-design-development-2'),
(351, 98, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:28:\"Web Design &amp; Development\";}i:2;a:1:{s:1:\"c\";s:529:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:23:\"Custom Wordpress Design\";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:501:\" Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(352, 98, '_sub_descriptions', 'field_5daf15369a97e'),
(353, 101, '_edit_last', '1'),
(354, 101, '_edit_lock', '1572010218:1'),
(355, 101, 'sub_heading', 'Spider Work'),
(356, 101, '_sub_heading', 'field_5daf15b7ab7f1'),
(357, 101, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(358, 101, '_services', 'field_5daf15369a97e'),
(359, 101, 'link_button_text', 'see for yourself'),
(360, 101, '_link_button_text', 'field_5daf15d7ab7f2'),
(361, 101, 'icon', 'internetServices'),
(362, 101, '_icon', 'field_5daf1dfa3e8cb'),
(363, 101, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:18:\"domainRegistration\";}i:1;a:1:{s:1:\"c\";s:32:\"Domain Search &amp; Registration\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:10:\"webHosting\";}i:1;a:1:{s:1:\"c\";s:11:\"Web Hosting\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:12:\"emailHosting\";}i:1;a:1:{s:1:\"c\";s:13:\"Email Hosting\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"sharedVps\";}i:1;a:1:{s:1:\"c\";s:24:\"Shared &amp; VPS Servers\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}}}'),
(364, 101, '_sub_descriptions', 'field_5daf15369a97e'),
(368, 101, '_wp_old_slug', 'web-design-development'),
(369, 102, '_edit_last', '1'),
(370, 102, '_edit_lock', '1572016031:1'),
(371, 102, 'sub_heading', 'Raise the Bar'),
(372, 102, '_sub_heading', 'field_5daf15b7ab7f1'),
(373, 102, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(374, 102, '_services', 'field_5daf15369a97e'),
(375, 102, 'link_button_text', 'get the data'),
(376, 102, '_link_button_text', 'field_5daf15d7ab7f2'),
(377, 102, 'icon', 'digitalMarketing'),
(378, 102, '_icon', 'field_5daf1dfa3e8cb');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(379, 102, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:11:\"googleStuff\";}i:1;a:1:{s:1:\"c\";s:12:\"Google Stuff\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"contentWriting\";}i:1;a:1:{s:1:\"c\";s:15:\"Content Writing\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:11:\"socialMedia\";}i:1;a:1:{s:1:\"c\";s:23:\"Social Media Management\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}}}'),
(380, 102, '_sub_descriptions', 'field_5daf15369a97e'),
(384, 102, '_wp_old_slug', 'web-design-development-2'),
(385, 103, '_edit_last', '1'),
(386, 103, '_edit_lock', '1571928886:1'),
(387, 103, 'sub_heading', 'High Quality Media'),
(388, 103, '_sub_heading', 'field_5daf15b7ab7f1'),
(389, 103, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(390, 103, '_services', 'field_5daf15369a97e'),
(391, 103, 'link_button_text', 'get started'),
(392, 103, '_link_button_text', 'field_5daf15d7ab7f2'),
(393, 103, 'icon', 'photographyVideography'),
(394, 103, '_icon', 'field_5daf1dfa3e8cb'),
(395, 103, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:27:\"interiorExteriorPhotography\";}i:1;a:1:{s:1:\"c\";s:31:\"Interior / Exterior Photography\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:18:\"productPhotography\";}i:1;a:1:{s:1:\"c\";s:19:\"Product Photography\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:12:\"talkingHeads\";}i:1;a:1:{s:1:\"c\";s:19:\"Talking Head Videos\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:5:\"drone\";}i:1;a:1:{s:1:\"c\";s:13:\"Drone Footage\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}}}'),
(396, 103, '_sub_descriptions', 'field_5daf15369a97e'),
(400, 103, '_wp_old_slug', 'web-design-development-2-2'),
(401, 104, '_edit_last', '1'),
(402, 104, '_edit_lock', '1571928951:1'),
(403, 104, 'sub_heading', 'Making a Name'),
(404, 104, '_sub_heading', 'field_5daf15b7ab7f1'),
(405, 104, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(406, 104, '_services', 'field_5daf15369a97e'),
(407, 104, 'link_button_text', 'discover more'),
(408, 104, '_link_button_text', 'field_5daf15d7ab7f2'),
(409, 104, 'icon', 'logoDesign'),
(410, 104, '_icon', 'field_5daf1dfa3e8cb'),
(411, 104, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:8:\"identity\";}i:1;a:1:{s:1:\"c\";s:12:\"New Identity\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:16:\"consistantDesign\";}i:1;a:1:{s:1:\"c\";s:17:\"Consistant Design\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:13:\"readyForPrint\";}i:1;a:1:{s:1:\"c\";s:15:\"Ready for Print\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:11:\"readyForWeb\";}i:1;a:1:{s:1:\"c\";s:13:\"Ready for Web\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}}}'),
(412, 104, '_sub_descriptions', 'field_5daf15369a97e'),
(416, 104, '_wp_old_slug', 'web-design-development-2-2-2'),
(417, 105, '_edit_last', '1'),
(418, 105, '_edit_lock', '1572017161:1'),
(419, 105, 'sub_heading', 'Tangible is Nice'),
(420, 105, '_sub_heading', 'field_5daf15b7ab7f1'),
(421, 105, 'services', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:25:\"	\nSub Description Heading\";}i:2;a:1:{s:1:\"c\";s:21:\"Sub Description Text\n\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Web Development\";}i:2;a:1:{s:1:\"c\";s:1202:\"Your website speaks volumes about your business. In a world of hyper competition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that meets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.Your website speaks volumes about your business. In a world of hyper\ncompetition, an unattractive or unusable website means less money in your pocket. Our development process is simple and effective: first, we work with you to determine your goals. Second, we design a \"look\" for the site, from scratch, that\nneeds.\nIf you are not a current client and would like to know if your website could use some improvement,\n click here for a free website audit.\nmeets those goals. Third, we program the site using the highest quality coding standards, and optimize the website for search engines. Lastly, we launch it, leaving you with an attractive, reliable and effective website.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}i:1;a:1:{s:1:\"c\";s:17:\"Custom Wordpress \";}i:2;a:1:{s:1:\"c\";s:304:\"WordPress is the most popular website platform in the world today. It\'s ease-of-use, convenience and customization are unparalleled. When you purchase a WordPress website from Redding Designs, you\'ll get an attractive, fully customizable and secure website designed to be maintained by you or your staff.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}i:1;a:1:{s:1:\"c\";s:20:\"E-Commerce Solutions\";}i:2;a:1:{s:1:\"c\";s:507:\"Selling online allows you to do business with potentially millions of new customers. But it can also be a tremendous challenge for those without the required expertise. While there are tons of free online storefronts and templates, we believe that a Redding Designs e-commerce site will not only look better and work better, it\'ll also get you better results. At the end of the day, the bottom line is what matters - at Redding Designs, we design e-commerce sites to serve that bottom line, day in, day out.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}i:1;a:1:{s:1:\"c\";s:3:\"CMS\";}i:2;a:1:{s:1:\"c\";s:500:\"Having a website with regularly updated content, that is well-designed and well-executed, is the key to online success. Search engines will pay you more attention, and as a result, you\'ll get more visitors. Not every business owner or organization has time to do this - they are focused on growing their business elsewhere. Luckily, we can do it for you! Let Redding Designs produce high-quality, informative and popular content for your website, and we think you\'ll be very pleased with the results.\";}}}}'),
(422, 105, '_services', 'field_5daf15369a97e'),
(423, 105, 'link_button_text', 'see for yourself'),
(424, 105, '_link_button_text', 'field_5daf15d7ab7f2'),
(425, 105, 'icon', 'printMedia'),
(426, 105, '_icon', 'field_5daf1dfa3e8cb'),
(427, 105, 'sub_descriptions', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:3:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:3:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Sub Heading\";}i:2;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:4:{i:0;a:3:{i:0;a:1:{s:1:\"c\";s:13:\"businessCards\";}i:1;a:1:{s:1:\"c\";s:32:\"Business Cards &amp; Letterheads\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:1;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"flyersBrochures\";}i:1;a:1:{s:1:\"c\";s:22:\"Flyers &amp; Brochures\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:2;a:3:{i:0;a:1:{s:1:\"c\";s:15:\"cataloguesMenus\";}i:1;a:1:{s:1:\"c\";s:22:\"Catalogues &amp; Menus\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}i:3;a:3:{i:0;a:1:{s:1:\"c\";s:7:\"signage\";}i:1;a:1:{s:1:\"c\";s:7:\"Signage\";}i:2;a:1:{s:1:\"c\";s:574:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";}}}}'),
(428, 105, '_sub_descriptions', 'field_5daf15369a97e'),
(432, 105, '_wp_old_slug', 'web-design-development-2-2-2-2'),
(433, 103, '_wp_old_date', '2019-10-22'),
(434, 101, '_wp_old_date', '2019-10-22'),
(435, 104, '_wp_old_date', '2019-10-22'),
(436, 105, '_wp_old_date', '2019-10-22'),
(437, 102, '_wp_old_date', '2019-10-22'),
(444, 107, '_edit_lock', '1572010915:1'),
(445, 107, '_edit_last', '1'),
(446, 107, 'desktop', '16'),
(447, 107, '_desktop', 'field_5d602b02ecb80'),
(448, 107, 'laptop', '16'),
(449, 107, '_laptop', 'field_5d602b7e50cee'),
(450, 107, 'tablet', '16'),
(451, 107, '_tablet', 'field_5d602b3e2dc15'),
(452, 107, 'phone', '16'),
(453, 107, '_phone', 'field_5d602b7d50ced'),
(454, 107, 'client_name', 'Redding Designs'),
(455, 107, '_client_name', 'field_5da71b366276c'),
(456, 107, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(457, 107, '_description', 'field_5da71b4c6276d'),
(458, 107, 'website', 'https://reddingdesigns.com/'),
(459, 107, '_website', 'field_5da71b5b6276e'),
(475, 108, 'desktop', '16'),
(476, 108, '_desktop', 'field_5d602b02ecb80'),
(477, 108, 'laptop', '16'),
(478, 108, '_laptop', 'field_5d602b7e50cee'),
(479, 108, 'tablet', '16'),
(480, 108, '_tablet', 'field_5d602b3e2dc15'),
(481, 108, 'phone', '16'),
(482, 108, '_phone', 'field_5d602b7d50ced'),
(483, 108, 'client_name', 'Redding Designs'),
(484, 108, '_client_name', 'field_5da71b366276c'),
(485, 108, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(486, 108, '_description', 'field_5da71b4c6276d'),
(487, 108, 'website', 'https://reddingdesigns.com/'),
(488, 108, '_website', 'field_5da71b5b6276e'),
(489, 107, '_wp_trash_meta_status', 'publish'),
(490, 107, '_wp_trash_meta_time', '1572011052'),
(491, 107, '_wp_desired_post_slug', 'home-2'),
(492, 23, '_edit_last', '1'),
(493, 23, 'desktop', '16'),
(494, 23, '_desktop', 'field_5d602b02ecb80'),
(495, 23, 'laptop', '16'),
(496, 23, '_laptop', 'field_5d602b7e50cee'),
(497, 23, 'tablet', '16'),
(498, 23, '_tablet', 'field_5d602b3e2dc15'),
(499, 23, 'phone', '16'),
(500, 23, '_phone', 'field_5d602b7d50ced'),
(501, 23, 'client_name', 'Redding Designs'),
(502, 23, '_client_name', 'field_5da71b366276c'),
(503, 23, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(504, 23, '_description', 'field_5da71b4c6276d'),
(505, 23, 'website', 'http://reddingdesigns.com'),
(506, 23, '_website', 'field_5da71b5b6276e'),
(507, 109, 'desktop', '16'),
(508, 109, '_desktop', 'field_5d602b02ecb80'),
(509, 109, 'laptop', '16'),
(510, 109, '_laptop', 'field_5d602b7e50cee'),
(511, 109, 'tablet', '16'),
(512, 109, '_tablet', 'field_5d602b3e2dc15'),
(513, 109, 'phone', '16'),
(514, 109, '_phone', 'field_5d602b7d50ced'),
(515, 109, 'client_name', ''),
(516, 109, '_client_name', 'field_5da71b366276c'),
(517, 109, 'description', ''),
(518, 109, '_description', 'field_5da71b4c6276d'),
(519, 109, 'website', ''),
(520, 109, '_website', 'field_5da71b5b6276e'),
(521, 110, 'desktop', '16'),
(522, 110, '_desktop', 'field_5d602b02ecb80'),
(523, 110, 'laptop', '16'),
(524, 110, '_laptop', 'field_5d602b7e50cee'),
(525, 110, 'tablet', '16'),
(526, 110, '_tablet', 'field_5d602b3e2dc15'),
(527, 110, 'phone', '16'),
(528, 110, '_phone', 'field_5d602b7d50ced'),
(529, 110, 'client_name', 'Redding Designs'),
(530, 110, '_client_name', 'field_5da71b366276c'),
(531, 110, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(532, 110, '_description', 'field_5da71b4c6276d'),
(533, 110, 'website', 'http://reddingdesigns.com'),
(534, 110, '_website', 'field_5da71b5b6276e'),
(535, 111, '_edit_last', '1'),
(536, 111, '_edit_lock', '1572011954:1'),
(537, 111, '_wp_trash_meta_status', 'publish'),
(538, 111, '_wp_trash_meta_time', '1572012099'),
(539, 111, '_wp_desired_post_slug', 'group_5db300132f5d2'),
(540, 112, '_edit_last', '1'),
(541, 112, '_edit_lock', '1572012040:1'),
(542, 112, '_wp_trash_meta_status', 'publish'),
(543, 112, '_wp_trash_meta_time', '1572012184'),
(544, 112, '_wp_desired_post_slug', 'group_5db300831dd03'),
(545, 113, '_edit_last', '1'),
(546, 113, '_edit_lock', '1572012086:1'),
(548, 113, '_wp_trash_meta_status', 'acf-disabled'),
(549, 113, '_wp_trash_meta_time', '1572012231'),
(550, 113, '_wp_desired_post_slug', 'group_5d602abdc6d46'),
(551, 114, '_edit_last', '1'),
(552, 114, '_edit_lock', '1572027513:1'),
(554, 127, '_edit_last', '1'),
(555, 127, '_edit_lock', '1572019929:1'),
(556, 128, '_wp_attached_file', '2019/10/Screen-Shot-2019-10-25-at-10.20.37-AM.jpg'),
(557, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:452;s:4:\"file\";s:49:\"2019/10/Screen-Shot-2019-10-25-at-10.20.37-AM.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-10-25-at-10.20.37-AM-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-10-25-at-10.20.37-AM-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Screen-Shot-2019-10-25-at-10.20.37-AM-768x434.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(558, 127, 'client_name', ''),
(559, 127, '_client_name', 'field_5db301dcf07a0'),
(560, 127, 'image', '128'),
(561, 127, '_image', 'field_5db3025abeabc'),
(562, 127, 'website', 'https://bradshaws.ca/'),
(563, 127, '_website', 'field_5db301f4f07a1'),
(564, 127, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(565, 127, '_bullet_points', 'field_5db302003f0e5'),
(566, 129, '_edit_last', '1'),
(567, 129, '_edit_lock', '1572283471:1'),
(568, 127, 'sub_heading', 'Website Redesign'),
(569, 127, '_sub_heading', 'field_5db31ce87122f'),
(570, 132, '_edit_last', '1'),
(571, 132, '_edit_lock', '1572019942:1'),
(572, 132, 'client_name', ''),
(573, 132, '_client_name', 'field_5db301dcf07a0'),
(574, 132, 'image', '128'),
(575, 132, '_image', 'field_5db3025abeabc'),
(576, 132, 'website', 'https://bradshaws.ca/'),
(577, 132, '_website', 'field_5db301f4f07a1'),
(578, 132, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(579, 132, '_bullet_points', 'field_5db302003f0e5'),
(580, 132, 'sub_heading', 'Website Redesign'),
(581, 132, '_sub_heading', 'field_5db31ce87122f'),
(585, 132, '_wp_old_slug', 'bradshaws'),
(586, 133, '_edit_last', '1'),
(587, 133, '_edit_lock', '1572019957:1'),
(588, 133, 'client_name', ''),
(589, 133, '_client_name', 'field_5db301dcf07a0'),
(590, 133, 'image', '128'),
(591, 133, '_image', 'field_5db3025abeabc'),
(592, 133, 'website', 'https://bradshaws.ca/'),
(593, 133, '_website', 'field_5db301f4f07a1'),
(594, 133, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(595, 133, '_bullet_points', 'field_5db302003f0e5'),
(596, 133, 'sub_heading', 'Website Redesign'),
(597, 133, '_sub_heading', 'field_5db31ce87122f'),
(601, 133, '_wp_old_slug', 'bradshaws'),
(602, 134, '_edit_last', '1'),
(603, 134, '_edit_lock', '1572019963:1'),
(604, 134, 'client_name', ''),
(605, 134, '_client_name', 'field_5db301dcf07a0'),
(606, 134, 'image', '128'),
(607, 134, '_image', 'field_5db3025abeabc'),
(608, 134, 'website', 'https://bradshaws.ca/'),
(609, 134, '_website', 'field_5db301f4f07a1'),
(610, 134, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(611, 134, '_bullet_points', 'field_5db302003f0e5'),
(612, 134, 'sub_heading', 'Website Redesign'),
(613, 134, '_sub_heading', 'field_5db31ce87122f'),
(617, 134, '_wp_old_slug', 'bradshaws'),
(618, 135, '_edit_last', '1'),
(619, 135, '_edit_lock', '1572019969:1'),
(620, 135, 'client_name', ''),
(621, 135, '_client_name', 'field_5db301dcf07a0'),
(622, 135, 'image', '128'),
(623, 135, '_image', 'field_5db3025abeabc'),
(624, 135, 'website', 'https://bradshaws.ca/'),
(625, 135, '_website', 'field_5db301f4f07a1'),
(626, 135, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(627, 135, '_bullet_points', 'field_5db302003f0e5'),
(628, 135, 'sub_heading', 'Website Redesign'),
(629, 135, '_sub_heading', 'field_5db31ce87122f'),
(633, 135, '_wp_old_slug', 'bradshaws-2'),
(634, 136, '_edit_last', '1'),
(635, 136, '_edit_lock', '1572027494:1'),
(636, 136, 'client_name', ''),
(637, 136, '_client_name', 'field_5db301dcf07a0'),
(638, 136, 'image', '128'),
(639, 136, '_image', 'field_5db3025abeabc'),
(640, 136, 'website', 'https://bradshaws.ca/'),
(641, 136, '_website', 'field_5db301f4f07a1'),
(642, 136, 'bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:1:{i:0;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:1:{i:0;a:1:{s:1:\"c\";s:6:\"Points\";}}s:1:\"b\";a:4:{i:0;a:1:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}}i:1;a:1:{i:0;a:1:{s:1:\"c\";s:15:\"customWordpress\";}}i:2;a:1:{i:0;a:1:{s:1:\"c\";s:9:\"eCommerce\";}}i:3;a:1:{i:0;a:1:{s:1:\"c\";s:3:\"cms\";}}}}'),
(643, 136, '_bullet_points', 'field_5db302003f0e5'),
(644, 136, 'sub_heading', 'Website Redesign'),
(645, 136, '_sub_heading', 'field_5db31ce87122f'),
(649, 136, '_wp_old_slug', 'bradshaws'),
(650, 139, '_edit_last', '1'),
(651, 139, '_edit_lock', '1572031060:1'),
(652, 142, '_edit_last', '1'),
(653, 142, '_edit_lock', '1572031192:1'),
(654, 142, 'heading', ''),
(655, 142, '_heading', 'field_5db33d27dac35'),
(656, 142, 'description', '<span>Main Office</span>\r\nOur main Cave of Beards is surrounded by a horde of delicious eateries in the heart of Aylmer, Ontario on the main street at 48 Talbot St. E.\r\n\r\n<span>London Office</span>\r\nOur Beards have begun infecting the City of London, Ontario at 932 Leathorne Street.\r\n'),
(657, 142, '_description', 'field_5db33d4585c96'),
(658, 142, 'icon', 'location'),
(659, 142, '_icon', 'field_5db33d27dac35'),
(660, 143, '_edit_last', '1'),
(661, 143, '_edit_lock', '1572033165:1'),
(662, 143, 'icon', 'talkingHeads'),
(663, 143, '_icon', 'field_5db33d27dac35'),
(664, 143, 'description', 'Get an in-person touch on quotes for services we offer via email or by calling 226-667-5952'),
(665, 143, '_description', 'field_5db33d4585c96'),
(666, 144, '_edit_last', '1'),
(667, 144, '_edit_lock', '1572033172:1'),
(668, 144, 'icon', 'internetServices'),
(669, 144, '_icon', 'field_5db33d27dac35'),
(670, 144, 'description', 'If you’re having issues with your hosting or email, call us at 226-667-5945 or 226-667-5952'),
(671, 144, '_description', 'field_5db33d4585c96'),
(672, 145, '_edit_last', '1'),
(673, 145, '_edit_lock', '1572033198:1'),
(674, 145, 'icon', 'logoDesign'),
(675, 145, '_icon', 'field_5db33d27dac35'),
(676, 145, 'description', 'Interesting in our graphic design services? Send us an email or call us at 226-667-5949'),
(677, 145, '_description', 'field_5db33d4585c96'),
(678, 146, '_edit_last', '1'),
(679, 146, '_edit_lock', '1572033202:1'),
(680, 146, 'icon', 'invoicingAdministration'),
(681, 146, '_icon', 'field_5db33d27dac35'),
(682, 146, 'description', 'For any info about invoicing and other administrative needs, please call 226-667-5947'),
(683, 146, '_description', 'field_5db33d4585c96'),
(684, 147, '_edit_last', '1'),
(685, 147, '_edit_lock', '1572283398:1'),
(686, 147, 'icon', 'hours'),
(687, 147, '_icon', 'field_5db33d27dac35'),
(688, 147, 'description', 'Our beards are hard at work from Monday - Friday: 9am - 5pm\r\n\r\nHowever, on Saturdays and Sundays, the beards must rest.'),
(689, 147, '_description', 'field_5db33d4585c96'),
(691, 142, '_wp_old_date', '2019-10-24'),
(692, 129, '_wp_trash_meta_status', 'publish'),
(693, 129, '_wp_trash_meta_time', '1572283615'),
(694, 129, '_wp_desired_post_slug', 'group_5db305e749a82'),
(695, 130, '_wp_trash_meta_status', 'publish'),
(696, 130, '_wp_trash_meta_time', '1572283615'),
(697, 130, '_wp_desired_post_slug', 'field_5db305fbd5e82'),
(698, 23, 'portfolio_page_only_bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:1;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:2:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:2:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:2:{i:0;a:1:{s:1:\"c\";s:10:\"logoDesign\";}i:1;a:1:{s:1:\"c\";s:13:\"Modern design\";}}i:1;a:2:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Mobile friendly\";}}i:2;a:2:{i:0;a:1:{s:1:\"c\";s:8:\"location\";}i:1;a:1:{s:1:\"c\";s:16:\"Easy to navigate\";}}}}'),
(699, 23, '_portfolio_page_only_bullet_points', 'field_5db72514d5a48'),
(700, 150, 'desktop', '16'),
(701, 150, '_desktop', 'field_5d602b02ecb80'),
(702, 150, 'laptop', '16'),
(703, 150, '_laptop', 'field_5d602b7e50cee'),
(704, 150, 'tablet', '16'),
(705, 150, '_tablet', 'field_5d602b3e2dc15'),
(706, 150, 'phone', '16'),
(707, 150, '_phone', 'field_5d602b7d50ced'),
(708, 150, 'client_name', 'Redding Designs'),
(709, 150, '_client_name', 'field_5da71b366276c'),
(710, 150, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(711, 150, '_description', 'field_5da71b4c6276d'),
(712, 150, 'website', 'http://reddingdesigns.com'),
(713, 150, '_website', 'field_5da71b5b6276e'),
(714, 150, 'portfolio_page_only_bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"1\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:2:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:2:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:2:{i:0;a:1:{s:1:\"c\";s:12:\"logoBranding\";}i:1;a:1:{s:1:\"c\";s:13:\"Modern design\";}}i:1;a:2:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Mobile friendly\";}}i:2;a:2:{i:0;a:1:{s:1:\"c\";s:8:\"location\";}i:1;a:1:{s:1:\"c\";s:16:\"Easy to navigate\";}}}}'),
(715, 150, '_portfolio_page_only_bullet_points', 'field_5db72514d5a48'),
(716, 151, 'desktop', '16'),
(717, 151, '_desktop', 'field_5d602b02ecb80'),
(718, 151, 'laptop', '16'),
(719, 151, '_laptop', 'field_5d602b7e50cee'),
(720, 151, 'tablet', '16'),
(721, 151, '_tablet', 'field_5d602b3e2dc15'),
(722, 151, 'phone', '16'),
(723, 151, '_phone', 'field_5d602b7d50ced'),
(724, 151, 'client_name', 'Redding Designs'),
(725, 151, '_client_name', 'field_5da71b366276c'),
(726, 151, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(727, 151, '_description', 'field_5da71b4c6276d'),
(728, 151, 'website', 'http://reddingdesigns.com'),
(729, 151, '_website', 'field_5da71b5b6276e'),
(730, 151, 'portfolio_page_only_bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"1\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:2:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:2:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:2:{i:0;a:1:{s:1:\"c\";s:12:\"logoBranding\";}i:1;a:1:{s:1:\"c\";s:13:\"Modern design\";}}i:1;a:2:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Mobile friendly\";}}i:2;a:2:{i:0;a:1:{s:1:\"c\";s:8:\"location\";}i:1;a:1:{s:1:\"c\";s:16:\"Easy to navigate\";}}}}'),
(731, 151, '_portfolio_page_only_bullet_points', 'field_5db72514d5a48'),
(732, 152, 'desktop', '16'),
(733, 152, '_desktop', 'field_5d602b02ecb80'),
(734, 152, 'laptop', '16'),
(735, 152, '_laptop', 'field_5d602b7e50cee'),
(736, 152, 'tablet', '16'),
(737, 152, '_tablet', 'field_5d602b3e2dc15'),
(738, 152, 'phone', '16'),
(739, 152, '_phone', 'field_5d602b7d50ced'),
(740, 152, 'client_name', 'Redding Designs'),
(741, 152, '_client_name', 'field_5da71b366276c'),
(742, 152, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(743, 152, '_description', 'field_5da71b4c6276d'),
(744, 152, 'website', 'http://reddingdesigns.com'),
(745, 152, '_website', 'field_5da71b5b6276e'),
(746, 152, 'portfolio_page_only_bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"1\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:2:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:2:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:2:{i:0;a:1:{s:1:\"c\";s:13:\"logo-branding\";}i:1;a:1:{s:1:\"c\";s:13:\"Modern design\";}}i:1;a:2:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Mobile friendly\";}}i:2;a:2:{i:0;a:1:{s:1:\"c\";s:8:\"location\";}i:1;a:1:{s:1:\"c\";s:16:\"Easy to navigate\";}}}}'),
(747, 152, '_portfolio_page_only_bullet_points', 'field_5db72514d5a48'),
(748, 153, 'desktop', '16'),
(749, 153, '_desktop', 'field_5d602b02ecb80'),
(750, 153, 'laptop', '16'),
(751, 153, '_laptop', 'field_5d602b7e50cee'),
(752, 153, 'tablet', '16'),
(753, 153, '_tablet', 'field_5d602b3e2dc15'),
(754, 153, 'phone', '16'),
(755, 153, '_phone', 'field_5d602b7d50ced'),
(756, 153, 'client_name', 'Redding Designs'),
(757, 153, '_client_name', 'field_5da71b366276c'),
(758, 153, 'description', 'We cover a wide range of services from anything to do with developing or updating your website to all your printing needs. If you are a current client and are having issues with your website, click here for updates and fixes.'),
(759, 153, '_description', 'field_5da71b4c6276d'),
(760, 153, 'website', 'http://reddingdesigns.com'),
(761, 153, '_website', 'field_5da71b5b6276e'),
(762, 153, 'portfolio_page_only_bullet_points', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.8\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"1\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:2:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:2:{i:0;a:1:{s:1:\"c\";s:4:\"Icon\";}i:1;a:1:{s:1:\"c\";s:11:\"Description\";}}s:1:\"b\";a:3:{i:0;a:2:{i:0;a:1:{s:1:\"c\";s:10:\"logoDesign\";}i:1;a:1:{s:1:\"c\";s:13:\"Modern design\";}}i:1;a:2:{i:0;a:1:{s:1:\"c\";s:14:\"webDevelopment\";}i:1;a:1:{s:1:\"c\";s:15:\"Mobile friendly\";}}i:2;a:2:{i:0;a:1:{s:1:\"c\";s:8:\"location\";}i:1;a:1:{s:1:\"c\";s:16:\"Easy to navigate\";}}}}'),
(763, 153, '_portfolio_page_only_bullet_points', 'field_5db72514d5a48');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2019-08-23 17:09:48', '2019-08-23 17:09:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-16 13:33:46', '2019-10-16 13:33:46', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-08-23 17:09:48', '2019-08-23 17:09:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-23 17:09:48', '2019-08-23 17:09:48', '', 8, 'http://localhost:8888/ReddingDesigns/2019/08/23/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-08-23 18:06:52', '2019-08-23 18:06:52', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Latest Adventure (Home Page & Portfolio Page)', 'latest-adventure-home-page-portfolio-page', 'publish', 'closed', 'closed', '', 'group_5d602abdc6d46', '', '', '2019-10-28 17:29:50', '2019-10-28 17:29:50', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2019-08-23 18:06:52', '2019-08-23 18:06:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"This is the image on the screen of the desktop\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Desktop', 'desktop', 'publish', 'closed', 'closed', '', 'field_5d602b02ecb80', '', '', '2019-08-23 18:06:52', '2019-08-23 18:06:52', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2019-08-23 18:07:32', '2019-08-23 18:07:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:19:\"Tablet screen image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Tablet', 'tablet', 'publish', 'closed', 'closed', '', 'field_5d602b3e2dc15', '', '', '2019-08-23 18:08:45', '2019-08-23 18:08:45', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=12', 2, 'acf-field', '', 0),
(13, 1, '2019-08-23 18:08:18', '2019-08-23 18:08:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:19:\"Laptop screen image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Laptop', 'laptop', 'publish', 'closed', 'closed', '', 'field_5d602b7e50cee', '', '', '2019-08-23 18:08:45', '2019-08-23 18:08:45', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=13', 1, 'acf-field', '', 0),
(14, 1, '2019-08-23 18:08:18', '2019-08-23 18:08:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:18:\"Phone screen image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_5d602b7d50ced', '', '', '2019-08-23 18:08:36', '2019-08-23 18:08:36', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=14', 3, 'acf-field', '', 0),
(16, 1, '2019-08-23 18:10:05', '2019-08-23 18:10:05', '', 'comingsoon', '', 'inherit', 'open', 'closed', '', 'comingsoon', '', '', '2019-08-23 18:10:05', '2019-08-23 18:10:05', '', 8, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/08/comingsoon.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2019-08-23 18:10:43', '2019-08-23 18:10:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-23 18:10:43', '2019-08-23 18:10:43', '', 8, 'http://localhost:8888/ReddingDesigns/2019/08/23/8-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-08-23 18:27:22', '2019-08-23 18:27:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-08-23 18:27:22', '2019-08-23 18:27:22', '', 8, 'http://localhost:8888/ReddingDesigns/2019/08/23/8-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-03 14:15:36', '2019-09-03 14:15:36', '', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2019-10-17 13:06:07', '2019-10-17 13:06:07', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-09-03 14:15:36', '2019-09-03 14:15:36', '', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-09-03 14:15:36', '2019-09-03 14:15:36', '', 20, 'http://localhost:8888/ReddingDesigns/2019/09/03/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-10-07 17:39:33', '2019-10-07 17:39:33', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-10-28 17:40:23', '2019-10-28 17:40:23', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-10-07 17:39:33', '2019-10-07 17:39:33', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-07 17:39:33', '2019-10-07 17:39:33', '', 23, 'http://localhost:8888/ReddingDesigns/2019/10/07/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-10-08 19:02:28', '2019-10-08 19:02:28', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-10-08 19:02:28', '2019-10-08 19:02:28', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-10-08 19:02:28', '2019-10-08 19:02:28', '', 'Services', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-08 19:02:28', '2019-10-08 19:02:28', '', 25, 'http://localhost:8888/ReddingDesigns/2019/10/08/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-10-10 01:24:59', '2019-10-10 01:24:59', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-10-17 13:08:01', '2019-10-17 13:08:01', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=27', 0, 'page', '', 0),
(28, 1, '2019-10-10 01:24:59', '2019-10-10 01:24:59', '', 'About-us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-10-10 01:24:59', '2019-10-10 01:24:59', '', 27, 'http://localhost:8888/ReddingDesigns/2019/10/10/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-10-10 01:32:28', '2019-10-10 01:32:28', '', 'About-Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-10-10 01:32:28', '2019-10-10 01:32:28', '', 27, 'http://localhost:8888/ReddingDesigns/2019/10/10/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-10-10 01:32:33', '2019-10-10 01:32:33', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-10-10 01:32:33', '2019-10-10 01:32:33', '', 27, 'http://localhost:8888/ReddingDesigns/2019/10/10/27-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-10-10 02:19:22', '2019-10-10 02:19:22', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-10-10 02:19:22', '2019-10-10 02:19:22', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-10-10 02:19:22', '2019-10-10 02:19:22', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-10-10 02:19:22', '2019-10-10 02:19:22', '', 32, 'http://localhost:8888/ReddingDesigns/2019/10/10/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-10-16 13:30:26', '2019-10-16 13:30:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Client Name', 'client_name', 'publish', 'closed', 'closed', '', 'field_5da71b366276c', '', '', '2019-10-16 13:30:26', '2019-10-16 13:30:26', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&p=35', 4, 'acf-field', '', 0),
(36, 1, '2019-10-16 13:30:26', '2019-10-16 13:30:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5da71b4c6276d', '', '', '2019-10-16 13:33:02', '2019-10-16 13:33:02', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=36', 5, 'acf-field', '', 0),
(37, 1, '2019-10-16 13:30:26', '2019-10-16 13:30:26', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Website', 'website', 'publish', 'closed', 'closed', '', 'field_5da71b5b6276e', '', '', '2019-10-16 13:30:26', '2019-10-16 13:30:26', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&p=37', 6, 'acf-field', '', 0),
(38, 1, '2019-10-16 13:32:49', '2019-10-16 13:32:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-10-16 13:32:49', '2019-10-16 13:32:49', '', 8, 'http://localhost:8888/ReddingDesigns/2019/10/16/8-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-10-16 13:33:46', '2019-10-16 13:33:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-10-16 13:33:46', '2019-10-16 13:33:46', '', 8, 'http://localhost:8888/ReddingDesigns/2019/10/16/8-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-10-16 13:38:12', '2019-10-16 13:38:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonials (Home Page)', 'testimonials-home-page', 'publish', 'closed', 'closed', '', 'group_5da71cfc3e658', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2019-10-16 13:38:12', '2019-10-16 13:38:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tag Line', 'tag_line', 'publish', 'closed', 'closed', '', 'field_5da71d0d878ba', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2019-10-16 13:38:12', '2019-10-16 13:38:12', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Testimonial Content', 'testimonial_content', 'publish', 'closed', 'closed', '', 'field_5da71d18878bb', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(44, 1, '2019-10-16 13:38:12', '2019-10-16 13:38:12', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Website', 'website', 'publish', 'closed', 'closed', '', 'field_5da71d39878bd', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=44', 2, 'acf-field', '', 0),
(45, 1, '2019-10-16 13:46:31', '2019-10-16 13:46:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Modern Image', 'modern_image', 'publish', 'closed', 'closed', '', 'field_5da71f19732c4', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=45', 3, 'acf-field', '', 0),
(46, 1, '2019-10-16 13:47:53', '2019-10-16 13:47:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Victorian Image', 'victorian_image', 'publish', 'closed', 'closed', '', 'field_5da71f3dc4f0b', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=46', 4, 'acf-field', '', 0),
(47, 1, '2019-10-16 13:47:53', '2019-10-16 13:47:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '80s Image', '80s_image', 'publish', 'closed', 'closed', '', 'field_5da71f3cc4f0a', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=47', 5, 'acf-field', '', 0),
(48, 1, '2019-10-16 13:47:53', '2019-10-16 13:47:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Monochrome Image', 'monochrome_image', 'publish', 'closed', 'closed', '', 'field_5da71f39c4f09', '', '', '2019-10-16 13:50:02', '2019-10-16 13:50:02', '', 40, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=48', 6, 'acf-field', '', 0),
(49, 1, '2019-10-15 13:49:44', '2019-10-15 13:49:44', '', 'Paul Lafrance, HGTV', '', 'publish', 'closed', 'closed', '', 'exceeded-beyond-my-own-creative-vision', '', '', '2019-10-16 14:31:44', '2019-10-16 14:31:44', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=testimonial&#038;p=49', 0, 'testimonial', '', 0),
(50, 1, '2019-10-16 13:51:07', '2019-10-16 13:51:07', '', 'Paul Lafrance, HGTV', '', 'inherit', 'closed', 'closed', '', '49-autosave-v1', '', '', '2019-10-16 13:51:07', '2019-10-16 13:51:07', '', 49, 'http://localhost:8888/ReddingDesigns/2019/10/16/49-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2019-10-16 13:52:57', '2019-10-16 13:52:57', '', 'paul-lafrance', '', 'inherit', 'open', 'closed', '', 'paul-lafrance', '', '', '2019-10-16 13:52:57', '2019-10-16 13:52:57', '', 49, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/paul-lafrance.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-10-16 13:53:48', '2019-10-16 13:53:48', '', 'paul-lafrance', '', 'inherit', 'open', 'closed', '', 'paul-lafrance-2', '', '', '2019-10-16 13:53:48', '2019-10-16 13:53:48', '', 49, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/paul-lafrance-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-10-14 13:56:25', '2019-10-14 13:56:25', '', 'Kate Campbell, HGTV', '', 'publish', 'closed', 'closed', '', 'kate-campbell-hgtv', '', '', '2019-10-16 14:33:14', '2019-10-16 14:33:14', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=testimonial&#038;p=53', 0, 'testimonial', '', 0),
(54, 1, '2019-10-16 13:55:48', '2019-10-16 13:55:48', '', 'kate-campbell', '', 'inherit', 'open', 'closed', '', 'kate-campbell', '', '', '2019-10-16 13:55:48', '2019-10-16 13:55:48', '', 53, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/kate-campbell.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-10-16 13:56:08', '2019-10-16 13:56:08', '', 'kate-campbell', '', 'inherit', 'open', 'closed', '', 'kate-campbell-2', '', '', '2019-10-16 13:56:08', '2019-10-16 13:56:08', '', 53, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/kate-campbell-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"team\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Team Members', 'team-members', 'publish', 'closed', 'closed', '', 'group_5da769a968790', '', '', '2019-10-16 19:08:10', '2019-10-16 19:08:10', '', 0, 'http://localhost:8888/ReddingDesigns/?p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5da769a96cbf7', '', '', '2019-10-16 19:05:57', '2019-10-16 19:05:57', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Bio', 'bio', 'publish', 'closed', 'closed', '', 'field_5da769a96cc03', '', '', '2019-10-16 19:06:28', '2019-10-16 19:06:28', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=58', 1, 'acf-field', '', 0),
(60, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Modern Image', 'modern_image', 'publish', 'closed', 'closed', '', 'field_5da769a96cc11', '', '', '2019-10-16 19:06:28', '2019-10-16 19:06:28', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=60', 2, 'acf-field', '', 0),
(61, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Victorian Image', 'victorian_image', 'publish', 'closed', 'closed', '', 'field_5da769a96cc19', '', '', '2019-10-16 19:06:28', '2019-10-16 19:06:28', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=61', 3, 'acf-field', '', 0),
(62, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '80s Image', '80s_image', 'publish', 'closed', 'closed', '', 'field_5da769a96cc21', '', '', '2019-10-16 19:06:28', '2019-10-16 19:06:28', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=62', 4, 'acf-field', '', 0),
(63, 1, '2019-10-16 19:04:09', '2019-10-16 19:04:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Monochrome Image', 'monochrome_image', 'publish', 'closed', 'closed', '', 'field_5da769a96cc29', '', '', '2019-10-16 19:06:28', '2019-10-16 19:06:28', '', 56, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=63', 5, 'acf-field', '', 0),
(65, 1, '2019-10-15 19:09:25', '2019-10-15 19:09:25', '', 'Rob Redding', '', 'publish', 'closed', 'closed', '', 'rob-redding', '', '', '2019-10-16 19:48:30', '2019-10-16 19:48:30', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=65', 0, 'team', '', 0),
(67, 1, '2019-10-14 19:24:01', '2019-10-14 19:24:01', '', 'Mary Blatz', '', 'publish', 'closed', 'closed', '', 'rob-redding-2', '', '', '2019-10-16 20:06:45', '2019-10-16 20:06:45', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=67', 0, 'team', '', 0),
(68, 1, '2019-10-16 19:19:32', '2019-10-16 19:19:32', '', 'seinfeld', '', 'inherit', 'open', 'closed', '', 'seinfeld', '', '', '2019-10-16 19:19:32', '2019-10-16 19:19:32', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/seinfeld.html', 0, 'attachment', 'text/html', 0),
(69, 1, '2019-10-16 19:23:22', '2019-10-16 19:23:22', '', 'ana-paula', '', 'inherit', 'open', 'closed', '', 'ana-paula', '', '', '2019-10-16 19:23:22', '2019-10-16 19:23:22', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/ana-paula.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-10-16 19:23:22', '2019-10-16 19:23:22', '', 'brad-yates', '', 'inherit', 'open', 'closed', '', 'brad-yates', '', '', '2019-10-16 19:23:22', '2019-10-16 19:23:22', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/brad-yates.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 'corny-bartsch', '', 'inherit', 'open', 'closed', '', 'corny-bartsch', '', '', '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/corny-bartsch.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 'david-arthur', '', 'inherit', 'open', 'closed', '', 'david-arthur', '', '', '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/david-arthur.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 'david-ferguson', '', 'inherit', 'open', 'closed', '', 'david-ferguson', '', '', '2019-10-16 19:23:23', '2019-10-16 19:23:23', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/david-ferguson.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-10-16 19:23:24', '2019-10-16 19:23:24', '', 'holly-jasvins', '', 'inherit', 'open', 'closed', '', 'holly-jasvins', '', '', '2019-10-16 19:23:24', '2019-10-16 19:23:24', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/holly-jasvins.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-10-16 19:23:24', '2019-10-16 19:23:24', '', 'mary-blatz', '', 'inherit', 'open', 'closed', '', 'mary-blatz', '', '', '2019-10-16 19:23:24', '2019-10-16 19:23:24', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/mary-blatz.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 'rick-heffren', '', 'inherit', 'open', 'closed', '', 'rick-heffren', '', '', '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/rick-heffren.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 'rob-redding', '', 'inherit', 'open', 'closed', '', 'rob-redding-2', '', '', '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/rob-redding.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 'tina-knelsen', '', 'inherit', 'open', 'closed', '', 'tina-knelsen', '', '', '2019-10-16 19:23:25', '2019-10-16 19:23:25', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/tina-knelsen.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-10-16 19:23:26', '2019-10-16 19:23:26', '', 'vera-chen', '', 'inherit', 'open', 'closed', '', 'vera-chen', '', '', '2019-10-16 19:23:26', '2019-10-16 19:23:26', '', 67, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/vera-chen.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-10-01 19:41:03', '2019-10-01 19:41:03', '', 'David Arthur', '', 'publish', 'closed', 'closed', '', 'rob-redding-3', '', '', '2019-10-16 19:47:38', '2019-10-16 19:47:38', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=80', 0, 'team', '', 0),
(81, 1, '2019-10-16 19:42:26', '2019-10-16 19:42:26', '', 'Rick Heffren', '', 'trash', 'closed', 'closed', '', 'rob-redding-3-2__trashed-2', '', '', '2019-10-16 19:43:06', '2019-10-16 19:43:06', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=81', 0, 'team', '', 0),
(82, 1, '2019-10-16 19:43:04', '2019-10-16 19:43:04', '', 'Rick Heffren', '', 'trash', 'closed', 'closed', '', 'rob-redding-3-2__trashed', '', '', '2019-10-16 19:43:04', '2019-10-16 19:43:04', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=82', 0, 'team', '', 0),
(83, 1, '2019-10-01 19:43:58', '2019-10-01 19:43:58', '', 'Vera Chen', '', 'publish', 'closed', 'closed', '', 'rob-redding-3-2', '', '', '2019-10-16 19:47:31', '2019-10-16 19:47:31', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=83', 0, 'team', '', 0),
(84, 1, '2019-10-01 19:44:52', '2019-10-01 19:44:52', '', 'Brad Yates', '', 'publish', 'closed', 'closed', '', 'rob-redding-3-2-2', '', '', '2019-10-16 19:47:26', '2019-10-16 19:47:26', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=84', 0, 'team', '', 0),
(85, 1, '2019-10-01 19:45:58', '2019-10-01 19:45:58', '', 'Corny Bartsch', '', 'publish', 'closed', 'closed', '', 'rob-redding-3-2-2-2', '', '', '2019-10-16 19:47:21', '2019-10-16 19:47:21', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=team&#038;p=85', 0, 'team', '', 0),
(86, 1, '2019-10-17 13:05:21', '2019-10-17 13:05:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Us Page', 'about-us-page', 'publish', 'closed', 'closed', '', 'group_5da866ff108cf', '', '', '2019-10-17 13:06:29', '2019-10-17 13:06:29', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=86', 0, 'acf-field-group', '', 0),
(87, 1, '2019-10-17 13:05:21', '2019-10-17 13:05:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Beard Logo', 'beard_logo', 'publish', 'closed', 'closed', '', 'field_5da8670419252', '', '', '2019-10-17 13:05:21', '2019-10-17 13:05:21', '', 86, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&p=87', 0, 'acf-field', '', 0),
(88, 1, '2019-10-17 13:07:53', '2019-10-17 13:07:53', '', 'beard-seal-of-approval', '', 'inherit', 'open', 'closed', '', 'beard-seal-of-approval', '', '', '2019-10-17 13:07:53', '2019-10-17 13:07:53', '', 27, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/beard-seal-of-approval.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2019-10-17 13:08:01', '2019-10-17 13:08:01', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-10-17 13:08:01', '2019-10-17 13:08:01', '', 27, 'http://localhost:8888/ReddingDesigns/2019/10/17/27-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-10-22 13:05:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 13:05:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2019-10-22 13:06:05', '2019-10-22 13:06:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sevices', 'sevices', 'trash', 'closed', 'closed', '', 'group_5daefeb7e49be__trashed', '', '', '2019-10-22 13:12:41', '2019-10-22 13:12:41', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=91', 0, 'acf-field-group', '', 0),
(92, 1, '2019-10-22 13:10:46', '2019-10-22 13:10:46', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:58:\"Select the large main icon that displays above the heading\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:24:\"Web Design & Development\";s:24:\"Web Design & Development\";s:17:\"Digital Marketing\";s:17:\"Digital Marketing\";s:18:\"Print Media Design\";s:18:\"Print Media Design\";s:22:\"Logo Design & Branding\";s:22:\"Logo Design & Branding\";s:17:\"Internet Services\";s:17:\"Internet Services\";s:25:\"Photography & Videography\";s:25:\"Photography & Videography\";}s:13:\"default_value\";a:1:{i:0;s:24:\"Web Design & Development\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Icon', 'icon', 'trash', 'closed', 'closed', '', 'field_5daefede5ab64__trashed', '', '', '2019-10-22 13:12:41', '2019-10-22 13:12:41', '', 91, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=92', 0, 'acf-field', '', 0),
(93, 1, '2019-10-22 13:10:46', '2019-10-22 13:10:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'trash', 'closed', 'closed', '', 'field_5daeffc95ab65__trashed', '', '', '2019-10-22 13:12:41', '2019-10-22 13:12:41', '', 91, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=93', 1, 'acf-field', '', 0),
(94, 1, '2019-10-22 14:40:17', '2019-10-22 14:40:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'group_5daf14c705c8c', '', '', '2019-10-25 15:28:59', '2019-10-25 15:28:59', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2019-10-22 14:44:06', '2019-10-22 14:44:06', 'a:7:{s:4:\"type\";s:5:\"table\";s:12:\"instructions\";s:139:\"Please fill out this table from left to right as: A - the icon to use, B - the sub heading to be displayed, C - the actual text description\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"use_header\";i:1;s:11:\"use_caption\";i:2;}', 'Sub descriptions', 'sub_descriptions', 'publish', 'closed', 'closed', '', 'field_5daf15369a97e', '', '', '2019-10-22 15:37:53', '2019-10-22 15:37:53', '', 94, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=95', 2, 'acf-field', '', 0),
(96, 1, '2019-10-22 14:44:51', '2019-10-22 14:44:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_5daf15b7ab7f1', '', '', '2019-10-22 15:20:13', '2019-10-22 15:20:13', '', 94, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=96', 1, 'acf-field', '', 0),
(97, 1, '2019-10-22 14:44:51', '2019-10-22 14:44:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Button Text', 'link_button_text', 'publish', 'closed', 'closed', '', 'field_5daf15d7ab7f2', '', '', '2019-10-22 15:20:13', '2019-10-22 15:20:13', '', 94, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=97', 3, 'acf-field', '', 0),
(98, 1, '2019-10-22 14:49:46', '2019-10-22 14:49:46', '', 'Web Design & Development', '', 'publish', 'closed', 'closed', '', 'web-design-development', '', '', '2019-10-25 15:29:27', '2019-10-25 15:29:27', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=98', 0, 'service', '', 0),
(99, 1, '2019-10-22 15:08:03', '2019-10-22 15:08:03', '', 'Web Design & Development', '', 'trash', 'closed', 'closed', '', 'web-design-development-2__trashed', '', '', '2019-10-22 15:33:08', '2019-10-22 15:33:08', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=99', 0, 'service', '', 0),
(100, 1, '2019-10-22 15:20:07', '2019-10-22 15:20:07', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:25:\"Main Icon to be displayed\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:19:\"webDevelopmentLarge\";s:19:\"webDevelopmentLarge\";s:16:\"digitalMarketing\";s:16:\"digitalMarketing\";s:16:\"internetServices\";s:16:\"internetServices\";s:10:\"logoDesign\";s:10:\"logoDesign\";s:10:\"printMedia\";s:10:\"printMedia\";s:22:\"photographyVideography\";s:22:\"photographyVideography\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5daf1dfa3e8cb', '', '', '2019-10-25 15:28:59', '2019-10-25 15:28:59', '', 94, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=100', 0, 'acf-field', '', 0),
(101, 1, '2019-10-02 16:36:56', '2019-10-02 16:36:56', '', 'Internet Services', '', 'publish', 'closed', 'closed', '', 'web-design-development-2', '', '', '2019-10-24 14:58:43', '2019-10-24 14:58:43', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=101', 0, 'service', '', 0),
(102, 1, '2019-10-05 16:59:15', '2019-10-05 16:59:15', '', 'Digital Marketing', '', 'publish', 'closed', 'closed', '', 'web-design-development-2-2', '', '', '2019-10-24 14:57:28', '2019-10-24 14:57:28', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=102', 0, 'service', '', 0),
(103, 1, '2019-10-01 17:01:38', '2019-10-01 17:01:38', '', 'Photography & Videography', '', 'publish', 'closed', 'closed', '', 'web-design-development-2-2-2', '', '', '2019-10-24 14:56:33', '2019-10-24 14:56:33', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=103', 0, 'service', '', 0),
(104, 1, '2019-10-03 17:03:39', '2019-10-03 17:03:39', '', 'Logo Design & Branding', '', 'publish', 'closed', 'closed', '', 'web-design-development-2-2-2-2', '', '', '2019-10-24 14:58:13', '2019-10-24 14:58:13', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=104', 0, 'service', '', 0),
(105, 1, '2019-10-04 17:05:21', '2019-10-04 17:05:21', '', 'Print Media Design', '', 'publish', 'closed', 'closed', '', 'web-design-development-2-2-2-2-2', '', '', '2019-10-24 14:57:56', '2019-10-24 14:57:56', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=service&#038;p=105', 0, 'service', '', 0),
(106, 1, '2019-10-25 13:36:56', '2019-10-25 13:36:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2019-10-25 13:36:56', '2019-10-25 13:36:56', '', 8, 'http://localhost:8888/ReddingDesigns/2019/10/25/8-autosave-v1/', 0, 'revision', '', 0),
(107, 1, '2019-10-25 13:41:11', '2019-10-25 13:41:11', '', 'Portfolio', '', 'trash', 'closed', 'closed', '', 'home-2__trashed', '', '', '2019-10-25 13:44:12', '2019-10-25 13:44:12', '', 0, 'http://localhost:8888/ReddingDesigns/?page_id=107', 0, 'page', '', 0),
(108, 1, '2019-10-25 13:41:11', '2019-10-25 13:41:11', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2019-10-25 13:41:11', '2019-10-25 13:41:11', '', 107, 'http://localhost:8888/ReddingDesigns/2019/10/25/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-10-25 13:45:47', '2019-10-25 13:45:47', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-25 13:45:47', '2019-10-25 13:45:47', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-10-25 13:46:28', '2019-10-25 13:46:28', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-25 13:46:28', '2019-10-25 13:46:28', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-10-25 14:01:14', '2019-10-25 14:01:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Latest Adventure (Additional fields for Portfolio Page)', 'latest-adventure-additional-fields-for-portfolio-page', 'trash', 'closed', 'closed', '', 'group_5db300132f5d2__trashed', '', '', '2019-10-25 14:01:39', '2019-10-25 14:01:39', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(112, 1, '2019-10-25 14:02:53', '2019-10-25 14:02:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Portfolio', 'portfolio', 'trash', 'closed', 'closed', '', 'group_5db300831dd03__trashed', '', '', '2019-10-25 14:03:04', '2019-10-25 14:03:04', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2019-10-25 14:03:33', '2019-10-25 14:03:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Portfolio', 'portfolio', 'trash', 'closed', 'closed', '', 'group_5d602abdc6d46__trashed', '', '', '2019-10-25 14:03:51', '2019-10-25 14:03:51', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=113', 0, 'acf-field-group', '', 0),
(114, 1, '2019-10-25 14:04:37', '2019-10-25 14:04:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Portfolios', 'portfolios', 'publish', 'closed', 'closed', '', 'group_5d602abdc6d46', '', '', '2019-10-25 18:19:51', '2019-10-25 18:19:51', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2019-10-25 14:05:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-25 14:05:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?p=115', 0, 'post', '', 0),
(121, 1, '2019-10-25 14:09:01', '2019-10-25 14:09:01', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Website', 'website', 'publish', 'closed', 'closed', '', 'field_5db301f4f07a1', '', '', '2019-10-25 16:04:14', '2019-10-25 16:04:14', '', 114, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=121', 2, 'acf-field', '', 0),
(122, 1, '2019-10-25 14:09:44', '2019-10-25 14:09:44', 'a:7:{s:4:\"type\";s:5:\"table\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"use_header\";i:1;s:11:\"use_caption\";i:2;}', 'Bullet Points', 'bullet_points', 'publish', 'closed', 'closed', '', 'field_5db302003f0e5', '', '', '2019-10-25 16:04:14', '2019-10-25 16:04:14', '', 114, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=122', 3, 'acf-field', '', 0),
(123, 1, '2019-10-25 14:11:11', '2019-10-25 14:11:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5db3025abeabc', '', '', '2019-10-25 14:25:35', '2019-10-25 14:25:35', '', 114, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=123', 0, 'acf-field', '', 0),
(124, 1, '2019-10-25 14:11:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 14:11:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&p=124', 0, 'portfolio', '', 0),
(125, 1, '2019-10-25 14:12:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 14:12:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&p=125', 0, 'portfolio', '', 0),
(126, 1, '2019-10-25 14:13:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 14:13:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&p=126', 0, 'portfolio', '', 0),
(127, 1, '2019-10-25 14:24:36', '2019-10-25 14:24:36', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws', '', '', '2019-10-25 16:14:13', '2019-10-25 16:14:13', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=127', 0, 'portfolio', '', 0),
(128, 1, '2019-10-25 14:24:00', '2019-10-25 14:24:00', '', 'Screen Shot 2019-10-25 at 10.20.37 AM', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-10-25-at-10-20-37-am', '', '', '2019-10-25 14:24:00', '2019-10-25 14:24:00', '', 127, 'http://localhost:8888/ReddingDesigns/wp-content/uploads/2019/10/Screen-Shot-2019-10-25-at-10.20.37-AM.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-10-25 14:26:52', '2019-10-25 14:26:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Latest Adventure (Portfolio additional fields)', 'latest-adventure-portfolio-additional-fields', 'trash', 'closed', 'closed', '', 'group_5db305e749a82__trashed', '', '', '2019-10-28 17:26:55', '2019-10-28 17:26:55', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2019-10-25 14:26:52', '2019-10-25 14:26:52', 'a:7:{s:4:\"type\";s:5:\"table\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"use_header\";i:1;s:11:\"use_caption\";i:2;}', 'Bullet Points', 'bullet_points', 'trash', 'closed', 'closed', '', 'field_5db305fbd5e82__trashed', '', '', '2019-10-28 17:26:55', '2019-10-28 17:26:55', '', 129, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=130', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(131, 1, '2019-10-25 16:04:14', '2019-10-25 16:04:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_5db31ce87122f', '', '', '2019-10-25 16:04:14', '2019-10-25 16:04:14', '', 114, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(132, 1, '2019-10-25 16:14:44', '2019-10-25 16:14:44', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws-2', '', '', '2019-10-25 16:14:44', '2019-10-25 16:14:44', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=132', 0, 'portfolio', '', 0),
(133, 1, '2019-10-25 16:15:00', '2019-10-25 16:15:00', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws-3', '', '', '2019-10-25 16:15:00', '2019-10-25 16:15:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=133', 0, 'portfolio', '', 0),
(134, 1, '2019-10-25 16:15:06', '2019-10-25 16:15:06', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws-4', '', '', '2019-10-25 16:15:06', '2019-10-25 16:15:06', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=134', 0, 'portfolio', '', 0),
(135, 1, '2019-10-25 16:15:12', '2019-10-25 16:15:12', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws-2-2', '', '', '2019-10-25 16:15:12', '2019-10-25 16:15:12', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=135', 0, 'portfolio', '', 0),
(136, 1, '2019-10-25 16:15:18', '2019-10-25 16:15:18', '', 'Bradshaw\'s', '', 'publish', 'closed', 'closed', '', 'bradshaws-5', '', '', '2019-10-25 16:15:18', '2019-10-25 16:15:18', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=portfolio&#038;p=136', 0, 'portfolio', '', 0),
(137, 1, '2019-10-25 18:15:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-25 18:15:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&p=137', 0, 'acf-field-group', '', 0),
(138, 1, '2019-10-25 18:17:36', '2019-10-25 18:17:36', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:29:{s:14:\"webDevelopment\";s:14:\"webDevelopment\";s:19:\"webDevelopmentLarge\";s:19:\"webDevelopmentLarge\";s:16:\"digitalMarketing\";s:16:\"digitalMarketing\";s:16:\"internetServices\";s:16:\"internetServices\";s:10:\"logoDesign\";s:10:\"logoDesign\";s:10:\"printMedia\";s:10:\"printMedia\";s:22:\"photographyVideography\";s:22:\"photographyVideography\";s:15:\"customWordpress\";s:15:\"customWordpress\";s:9:\"eCommerce\";s:9:\"eCommerce\";s:3:\"cms\";s:3:\"cms\";s:11:\"googleStuff\";s:11:\"googleStuff\";s:14:\"contentWriting\";s:14:\"contentWriting\";s:11:\"socialMedia\";s:11:\"socialMedia\";s:13:\"businessCards\";s:13:\"businessCards\";s:15:\"flyersBrochures\";s:15:\"flyersBrochures\";s:15:\"cataloguesMenus\";s:15:\"cataloguesMenus\";s:7:\"signage\";s:7:\"signage\";s:8:\"identity\";s:8:\"identity\";s:16:\"consistantDesign\";s:16:\"consistantDesign\";s:13:\"readyForPrint\";s:13:\"readyForPrint\";s:11:\"readyForWeb\";s:11:\"readyForWeb\";s:18:\"domainRegistration\";s:18:\"domainRegistration\";s:10:\"webHosting\";s:10:\"webHosting\";s:12:\"emailHosting\";s:12:\"emailHosting\";s:9:\"sharedVps\";s:9:\"sharedVps\";s:27:\"interiorExteriorPhotography\";s:27:\"interiorExteriorPhotography\";s:18:\"productPhotography\";s:18:\"productPhotography\";s:12:\"talkingHeads\";s:12:\"talkingHeads\";s:5:\"drone\";s:5:\"drone\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Bullet Points2', '', 'publish', 'closed', 'closed', '', 'field_5db33c34dd266', '', '', '2019-10-25 18:19:51', '2019-10-25 18:19:51', '', 114, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=138', 4, 'acf-field', '', 0),
(139, 1, '2019-10-25 18:21:55', '2019-10-25 18:21:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"contact\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contacts', 'contacts', 'publish', 'closed', 'closed', '', 'group_5db33d1d2b6e5', '', '', '2019-10-25 19:19:47', '2019-10-25 19:19:47', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&#038;p=139', 0, 'acf-field-group', '', 0),
(140, 1, '2019-10-25 18:21:55', '2019-10-25 18:21:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5db33d27dac35', '', '', '2019-10-25 18:25:22', '2019-10-25 18:25:22', '', 139, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=140', 0, 'acf-field', '', 0),
(141, 1, '2019-10-25 18:22:40', '2019-10-25 18:22:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5db33d4585c96', '', '', '2019-10-25 19:19:47', '2019-10-25 19:19:47', '', 139, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=141', 1, 'acf-field', '', 0),
(142, 1, '2019-10-25 18:40:22', '2019-10-25 18:40:22', '', 'Redding Designs Locations', '', 'publish', 'closed', 'closed', '', 'redding-designs-locations', '', '', '2019-10-25 19:20:17', '2019-10-25 19:20:17', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=142', 0, 'contact', '', 0),
(143, 1, '2019-10-25 18:29:48', '2019-10-25 18:29:48', '', 'Sales', '', 'publish', 'closed', 'closed', '', 'sales', '', '', '2019-10-25 19:55:08', '2019-10-25 19:55:08', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=143', 0, 'contact', '', 0),
(144, 1, '2019-10-25 18:30:22', '2019-10-25 18:30:22', '', 'Email / Hosting Services', '', 'publish', 'closed', 'closed', '', 'email-hosting-services', '', '', '2019-10-25 19:33:28', '2019-10-25 19:33:28', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=144', 0, 'contact', '', 0),
(145, 1, '2019-10-25 18:31:01', '2019-10-25 18:31:01', '', 'Graphic Design', '', 'publish', 'closed', 'closed', '', 'graphic-design', '', '', '2019-10-25 19:55:29', '2019-10-25 19:55:29', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=145', 0, 'contact', '', 0),
(146, 1, '2019-10-25 18:31:37', '2019-10-25 18:31:37', '', 'Invoicing / Administration', '', 'publish', 'closed', 'closed', '', 'invoicing-administration', '', '', '2019-10-25 19:32:25', '2019-10-25 19:32:25', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=146', 0, 'contact', '', 0),
(147, 1, '2019-10-25 18:37:49', '2019-10-25 18:37:49', '', 'Office Hours', '', 'publish', 'closed', 'closed', '', 'office-hours', '', '', '2019-10-25 19:20:40', '2019-10-25 19:20:40', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=contact&#038;p=147', 0, 'contact', '', 0),
(148, 1, '2019-10-28 17:27:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:27:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field-group&p=148', 0, 'acf-field-group', '', 0),
(149, 1, '2019-10-28 17:28:42', '2019-10-28 17:28:42', 'a:7:{s:4:\"type\";s:5:\"table\";s:12:\"instructions\";s:48:\"These fields only display on the portfolio page.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"use_header\";i:1;s:11:\"use_caption\";i:2;}', 'Portfolio Page ONLY (Bullet points)', 'portfolio_page_only_bullet_points', 'publish', 'closed', 'closed', '', 'field_5db72514d5a48', '', '', '2019-10-28 17:29:50', '2019-10-28 17:29:50', '', 10, 'http://localhost:8888/ReddingDesigns/?post_type=acf-field&#038;p=149', 7, 'acf-field', '', 0),
(150, 1, '2019-10-28 17:33:39', '2019-10-28 17:33:39', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 17:33:39', '2019-10-28 17:33:39', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-10-28 17:33:41', '2019-10-28 17:33:41', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 17:33:41', '2019-10-28 17:33:41', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2019-10-28 17:39:28', '2019-10-28 17:39:28', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 17:39:28', '2019-10-28 17:39:28', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-10-28 17:40:23', '2019-10-28 17:40:23', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-28 17:40:23', '2019-10-28 17:40:23', '', 23, 'http://localhost:8888/ReddingDesigns/23-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(56, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'redding-design'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '115'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1566583827'),
(20, 1, 'session_tokens', 'a:1:{s:64:\"2f66a27d3cdc4764192c9d27d0e72a84861f47fd295b90ae7166af3035a15305\";a:4:{s:10:\"expiration\";i:1572456336;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572283536;}}'),
(21, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(22, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'closedpostboxes_team', 'a:0:{}'),
(24, 1, 'metaboxhidden_team', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5db305e749a82\";}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'redding-design', '$P$BeGv0izGakGjJGcU0/FU6Z0BFqJxN00', 'redding-design', 'rick@reddingdesigns.com', '', '2019-08-23 17:06:10', '', 0, 'redding-design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
