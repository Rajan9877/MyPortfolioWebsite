-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 11:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'Rajanjoriya000000@gmail.com', 'Rajan@123');

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `img` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`id`, `title`, `description`, `img`, `date`) VALUES
(1, 'The Dynamic World of Web Development', 'Web development is an ever-evolving field that plays a crucial role in shaping the digital landscape we interact with daily.<br> From the early days of static HTML pages to today\'s dynamic web applications, web development has come a long way. In this blog post, we\'ll explore the fascinating world of web development, its key components, and its impact on our modern lives.<br><br>\n\n<h3 style=\"color: #0BCEAF;\">1. The Building Blocks of Web Development</h3><br><br>\n\nAt its core, web development involves creating and maintaining websites and web applications. It comprises two fundamental components: front-end development and back-end development.<br><br>\n\nFront-end Development: Also known as client-side development, this aspect deals with the visual elements users see and interact with on a website. Front-end developers use HTML, CSS, and JavaScript to craft the user interface (UI) and enhance user experience (UX). They work to ensure the site is visually appealing, responsive, and user-friendly.\n<br><br>\nBack-end Development: Also referred to as server-side development, this part involves handling the behind-the-scenes functionality of a website. Back-end developers work with server-side languages such as PHP, Python, Ruby, and databases to manage data, handle user requests, and enable website functionality.<br><br>\n\n<h3 style=\"color: #0BCEAF;\">2. The Evolution of Web Development</h3><br><br>\n\nWeb development has seen remarkable advancements over the years, driven by the growing demands of users and technological innovations. The transition from static HTML pages to dynamic web applications has revolutionized the way we interact with the internet.\n<br><br>\nThe introduction of frameworks and libraries, like React, Angular, and Vue.js, has expedited development processes, enabling developers to build powerful and interactive front-end experiences efficiently.\n<br><br>\nMoreover, the rise of serverless architecture and cloud computing has reshaped back-end development, making it more scalable, cost-effective, and easier to manage.\n<br><br>\n<h3 style=\"color: #0BCEAF;\">3. The Impact on Modern Life</h3><br><br>\n\nWeb development has profoundly impacted our daily lives, transforming the way we access information, conduct business, and communicate with others.\n<br><br>\nE-Commerce: Online shopping has become a norm, and web development has enabled the creation of seamless and secure e-commerce platforms, empowering businesses to reach global audiences.\n<br><br>\nSocial Media: The rise of social media platforms owes its success to web development, facilitating real-time interactions, content sharing, and networking across the globe.\n<br><br>\nRemote Work and Learning: The COVID-19 pandemic accelerated the adoption of remote work and online education. Web development played a vital role in making virtual collaboration and learning possible.\n<br><br>\n<h3 style=\"color: #0BCEAF;\">4. Embracing the Future</h3><br><br>\n\nWeb development continues to evolve, and developers must stay updated with emerging technologies and trends. Mobile-first development, progressive web apps (PWAs), voice interfaces, and augmented reality are some of the exciting frontiers awaiting exploration.\n<br><br>\nAs the digital landscape expands, ethical considerations, data security, and web accessibility will play an increasingly critical role in web development.\n<br><br>\nIn conclusion, web development has revolutionized the way we interact with the digital world. From static pages to dynamic applications, it has adapted to the ever-changing needs of users. As technology advances, web developers will continue to shape the future of digital experiences, making the web even more accessible and user-friendly for all.\n<br><br>\nWhether you\'re a developer or a user, understanding the dynamics of web development empowers you to make the most of the digital age we live in.', 'ferenc-almasi-eYpcLDXHVb0-unsplash.jpg', '2023-07-21 06:00:07'),
(2, 'Unleashing the Power of SEO: Your Path to Online Success', 'Search Engine Optimization (SEO) is a game-changer in the digital world, and its impact on online visibility cannot be underestimated. In this blog post, we\'ll explore the basics of SEO, its significance for businesses, and some essential tips to enhance your online presence.\n<br><br>\n<h3 style=\"color: #0BCEAF;\">1. Understanding SEO\n</h3><br><br>\nSEO is the art and science of optimizing a website to rank higher on search engine results pages (SERPs). It involves tailoring your website\'s content, structure, and user experience to meet the requirements of search engines like Google, Bing, and others. The goal is to improve organic (non-paid) traffic and attract relevant visitors to your site.\n<br><br>\n<h3 style=\"color: #0BCEAF;\">2. The Significance of SEO</h3><br><br>\n\nWith billions of websites on the internet, getting noticed can be challenging. Here\'s why SEO is critical for any online endeavor:\n<br><br>\nIncreased Visibility: Appearing on the first page of search results increases your chances of being seen by potential customers. Users tend to click on the top results, making SEO a crucial factor for attracting organic traffic.\n<br><br>\nCredibility and Trust: High rankings on SERPs build trust and credibility among users. Being associated with authority and relevance positions your brand as a reliable source of information or products.\n<br><br>\nTargeted Traffic: SEO allows you to target specific keywords and phrases relevant to your business. This ensures that users actively searching for your offerings are more likely to find you.\n<br><br>\nCost-Effectiveness: Compared to paid advertising, SEO can be a cost-effective long-term strategy. Once you achieve higher rankings, maintaining them requires less investment.\n<br><br>\n<h3 style=\"color: #0BCEAF;\">3. SEO Best Practices\n</h3><br><br>\nWhile SEO is a multifaceted field, here are some fundamental practices to get you started:\n<br><br>\nKeyword Research: Identify relevant keywords and phrases your target audience is likely to use. Tools like Google\'s Keyword Planner can assist in finding popular and valuable keywords.\n<br><br>\nQuality Content: Create engaging, informative, and unique content that addresses your audience\'s needs. High-quality content attracts both readers and search engines.\n<br><br>\nOn-Page Optimization: Ensure your website\'s meta tags, headings, and URLs are optimized with relevant keywords. Optimize images and use descriptive alt tags.\n<br><br>\nSite Speed and Mobile Friendliness: Page speed and mobile responsiveness are crucial ranking factors. Make sure your website loads quickly and works well on various devices.\n<br><br>\nLink Building: Acquire high-quality backlinks from reputable websites. Quality links signal authority and relevance to search engines.\n<br><br>\nUser Experience: Design your website with a focus on user experience. Easy navigation, clear call-to-action, and a visually appealing layout enhance user engagement.\n<br><br>\n<h3 style=\"color:#0BCEAF;\">4. Evolving with the Algorithm Updates</h3><br><br>\n\nSearch engines continuously update their algorithms to provide the best user experience. As such, staying informed about the latest SEO trends and updates is vital. Keep track of industry blogs, follow SEO experts, and remain adaptable to changes.\n<br><br>\nIn conclusion, SEO is a powerful tool that can unlock the full potential of your online presence. By understanding its principles and implementing best practices, you can pave the way to higher rankings, increased traffic, and sustainable online success.\n<br><br>\nRemember, SEO is a journey, and with dedication and patience, your efforts will undoubtedly yield positive results.', 'nisonco-pr-and-seo-yIRdUr6hIvQ-unsplash.jpg', '2023-07-22 06:18:06'),
(3, 'Mastering Video Editing: A Comprehensive Guide for Beginners', '<h2 style=\"color: #0BCEAF;\">Introduction:</h2>\r\n    <p>\r\n        Video editing is a crucial skill in the world of digital content creation. Whether you\'re a content creator, a\r\n        vlogger, or simply looking to make memorable home videos, mastering video editing can take your creations to\r\n        the next level. In this blog, we\'ll cover the essential aspects of video editing for beginners, giving you a\r\n        solid foundation to start your journey in this exciting field.\r\n    </p>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">1. Choosing the Right Video Editing Software:</h2>\r\n    <ul>\r\n        <li>Explore popular video editing software options like Adobe Premiere Pro, Final Cut Pro, and DaVinci Resolve.</li>\r\n        <li>Consider your needs, budget, and system requirements before making a decision.</li>\r\n        <li>Many software providers offer free trials, allowing you to test the tools before committing.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">2. Understanding Video Formats and Resolutions:</h2>\r\n    <ul>\r\n        <li>Learn about different video formats (MP4, AVI, MOV, etc.) and their specific uses.</li>\r\n        <li>Understand resolution options (1080p, 4K, etc.) and their impact on video quality and file size.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">3. Importing and Organizing Footage:</h2>\r\n    <ul>\r\n        <li>Discover how to import video clips, audio files, and other media into your editing software.</li>\r\n        <li>Create a well-structured folder system to keep your assets organized.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">4. Basic Editing Techniques:</h2>\r\n    <ul>\r\n        <li>Trim and cut clips to remove unwanted footage.</li>\r\n        <li>Master the art of sequencing clips to create a coherent and engaging narrative.</li>\r\n        <li>Add transitions to smoothen cuts between scenes.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">5. Enhancing Video with Effects and Filters:</h2>\r\n    <ul>\r\n        <li>Apply visual effects, such as color correction and grading, to improve the overall look of your video.</li>\r\n        <li>Use filters and overlays to add creative elements and style to your content.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">6. Incorporating Audio:</h2>\r\n    <ul>\r\n        <li>Learn how to adjust audio levels and balance the sound for a professional result.</li>\r\n        <li>Add background music or voiceovers to enhance the emotional impact of your video.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">7. Titles and Text:</h2>\r\n    <ul>\r\n        <li>Use text overlays to introduce scenes, provide context, or add credits.</li>\r\n        <li>Experiment with various font styles and animations to make your titles visually appealing.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">8. Exporting and Publishing:</h2>\r\n    <ul>\r\n        <li>Understand different export settings for various platforms (YouTube, Instagram, etc.).</li>\r\n        <li>Compress video files without compromising quality for faster upload and streaming.</li>\r\n    </ul>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">Conclusion:</h2>\r\n    <p>\r\n        Video editing is an art that requires practice and creativity. As you dive into the world of video editing,\r\n        don\'t be afraid to experiment with different techniques and styles. With dedication and passion, you\'ll soon\r\n        master the craft and create captivating videos that resonate with your audience. So, grab your footage, fire up\r\n        your editing software, and let your creativity shine! Happy editing!\r\n    </p>', 'alan-alves-zEabW3zTygc-unsplash.jpg', '2023-07-23 06:25:10'),
(4, 'Latest ChatGPT: Revolutionizing AI Language Models', '<h1 style=\"color: #0BCEAF;\">Latest Chatgpt: Revolutionizing AI Language Models</h1>\r\n    <p>\r\n        Artificial Intelligence (AI) has come a long way, and one of the recent breakthroughs is Chatgpt, the latest\r\n        version of the GPT (Generative Pre-trained Transformer) language model series. Developed by OpenAI, Chatgpt is\r\n        designed to understand, generate, and respond to human language with exceptional accuracy and creativity.\r\n    </p>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">Understanding Chatgpt</h2>\r\n    <p>\r\n        Chatgpt is built upon the innovative GPT architecture, a neural network model that has shown remarkable success\r\n        in various natural language processing tasks. By training on vast amounts of textual data, Chatgpt has acquired\r\n        an astonishing ability to comprehend the intricacies of language, making it incredibly effective in tasks like\r\n        text generation, translation, summarization, and more.\r\n    </p>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">Advancements and Enhancements</h2>\r\n    <p>\r\n        The latest version, Chatgpt, boasts numerous advancements and enhancements over its predecessors. It has a\r\n        significantly larger model size, which allows it to capture even more context and context-dependent meanings in\r\n        language. Additionally, Chatgpt is pre-trained on diverse datasets, making it more adaptable to a wide range of\r\n        applications and domains.\r\n    </p>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">Applications in Various Industries</h2>\r\n    <p>\r\n        Chatgpt\'s versatility has led to its integration into various industries. From improving customer service and\r\n        chatbots to aiding content creation and enhancing language translation, Chatgpt is playing a crucial role in\r\n        transforming how we interact with technology and access information.\r\n    </p>\r\n\r\n    <h2 style=\"color: #0BCEAF;\">The Future of Language Models</h2>\r\n    <p>\r\n        As AI technology continues to evolve, Chatgpt serves as an exciting glimpse into the future of language models.\r\n        Its advancements have paved the way for even more sophisticated AI systems that will undoubtedly revolutionize\r\n        the way we communicate and interact with machines.\r\n    </p>\r\n\r\n    <h3 style=\"color: #0BCEAF;\">In Conclusion</h3>\r\n    <p>\r\n        Chatgpt stands as a testament to the rapid progress in AI research and development. Its ability to understand\r\n        and generate human language has far-reaching implications across various industries and signifies a major step\r\n        forward in the realm of artificial intelligence.\r\n    </p>', 'rolf-van-root-LyI1T85Lry8-unsplash.jpg', '2023-07-24 06:46:16'),
(5, 'Digital Marketing: Reaching New Heights in the Online World', '  <h1 style=\"color: #0BCEAF;\">The Power of Digital Marketing: Reaching New Heights in the Online World</h1>\r\n\r\n  <p>In today\'s fast-paced digital age, the <span style=\"color: #0BCEAF;\">key to business success</span> lies in embracing innovative marketing strategies that can captivate and engage a vast online audience. Digital marketing has emerged as a <span style=\"color: #0BCEAF;\">game-changer for businesses</span> of all sizes, opening up new avenues to connect with potential customers and drive growth. In this blog, we\'ll explore the significance of digital marketing and how it is reshaping the business landscape.</p>\r\n\r\n  <h2 style=\"color: #0BCEAF;\">Understanding Digital Marketing</h2>\r\n\r\n  <p>Digital marketing refers to the use of digital channels, platforms, and technologies to promote products and services to a target audience. Unlike traditional marketing methods, digital marketing offers a myriad of opportunities to connect with customers in real-time, gain insights into their preferences, and measure the effectiveness of campaigns.</p>\r\n\r\n  <h2 style=\"color: #0BCEAF;\">The Core Elements of Digital Marketing</h2>\r\n\r\n  <ol>\r\n    <li><strong>Search Engine Optimization (SEO):</strong> SEO is all about enhancing a website\'s visibility in search engine results. By optimizing content and using relevant keywords, businesses can attract organic traffic and improve their online presence.</li>\r\n    <li><strong>Social Media Marketing:</strong> Social media platforms have become powerful tools for businesses to engage with their audience. By creating compelling content and running targeted ads, brands can build a loyal following and increase brand awareness.</li>\r\n    <li><strong>Content Marketing:</strong> Content is king in the digital realm. Sharing valuable and relevant content through blogs, videos, infographics, and more can establish a brand as an authority in its industry and attract potential customers.</li>\r\n    <li><strong>Email Marketing:</strong> Email remains one of the most effective ways to communicate with customers. Personalized and engaging email campaigns can nurture leads and drive conversions.</li>\r\n    <li><strong>Pay-Per-Click (PPC) Advertising:</strong> With PPC advertising, businesses can display their ads on various online platforms and pay only when a user clicks on the ad. This targeted approach ensures a higher return on investment (ROI).</li>\r\n  </ol>\r\n\r\n  <h2 style=\"color: #0BCEAF;\">The Impact of Digital Marketing on Business Growth</h2>\r\n\r\n  <p>Digital marketing has revolutionized the way businesses interact with their customers and has significantly impacted their growth trajectory. Some of the key benefits include:</p>\r\n\r\n  <ul>\r\n    <li><strong>Global Reach:</strong> Digital marketing allows even small businesses to reach a global audience without the need for physical stores in different locations.</li>\r\n    <li><strong>Cost-Effectiveness:</strong> Compared to traditional advertising, digital marketing is more affordable and provides better tracking of expenses and results.</li>\r\n    <li><strong>Real-Time Analytics:</strong> With digital marketing tools, businesses can access real-time analytics and insights, enabling them to make data-driven decisions and optimize their strategies on the go.</li>\r\n    <li><strong>Better Customer Engagement:</strong> Through social media and interactive content, businesses can create meaningful connections with their customers, resulting in increased loyalty and retention.</li>\r\n  </ul>\r\n\r\n  <h2 style=\"color: #0BCEAF;\">Conclusion</h2>\r\n\r\n  <p>As the world continues to embrace the digital era, digital marketing has become an indispensable tool for businesses striving to thrive in a highly competitive landscape. By leveraging the power of SEO, social media, content marketing, email campaigns, and PPC advertising, companies can reach new heights and secure their position in the vast online marketplace.</p>\r\n\r\n  <p><strong>Remember to always stay updated with the latest trends and technologies in digital marketing to stay ahead of the competition and connect with your audience effectively. Happy marketing!</strong></p>', 'diggity-marketing-SB0WARG16HI-unsplash.jpg', '2023-07-26 08:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blogid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `date`, `blogid`) VALUES
(4, 'Rajan', 'Rajan@gmail.com', 'Nice Post!', '2023-07-24 05:48:35', '1'),
(5, 'Sanjeet', 'Sanjeet@gmail.com', 'Nice Blog!', '2023-07-24 05:48:38', '1'),
(7, 'Priya', 'Priya@gmail.com', 'Nice Post On Web Development.', '2023-07-24 02:46:55', '1'),
(8, 'Rajan', 'Rajan@gmail.com', 'Nice Post On SEO.', '2023-07-24 02:48:09', '2'),
(9, 'Srijan', 'Srijan@gmail.com', 'Nice Brother.', '2023-07-24 03:02:09', '2');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Rajan', 'Rajan@kuroit.in', 'Hello', 'How are you?'),
(2, 'Priya', 'Priya@gmail.com', 'Awesome Website', 'This is very awesome website.'),
(3, 'Srijan', 'Srijan@gmail.com', 'Nice', 'Nice work!'),
(4, 'Pawan', 'Pawan@gmail.com', 'Nice ', 'Nice work!'),
(5, 'Aman', 'Aman@gmail.com', 'Nice ', 'Nice Work!'),
(6, 'Abhinav', 'Abhinav@gmail.com', 'good', 'good work'),
(7, 'Sarwan', 'Sarwan@gmail.com', 'good', 'good work'),
(8, 'Krishan', 'Krishan@gmail.com', 'awesome', 'awesome work!'),
(9, 'Harpreet', 'Harpreet@gmail.com', 'good', 'good website'),
(10, 'Karan', 'Karan@gmail.com', 'good', 'good website'),
(11, 'Rahul', 'Rahul@gmail.com', 'Very Good', 'Nice Work!'),
(12, 'Sameer', 'Sameer@gmail.com', 'Nice', 'Nice Work.'),
(13, 'Sameer', 'Sameer@gmail.com', 'Nice', 'Nice Work.'),
(14, 'Sameer', 'Sameer@gmail.com', 'Nice', 'Nice Work.'),
(15, 'Sameer', 'Sameer@gmail.com', 'Nice', 'Nice Work.'),
(17, 'Sam', 'Sam@gmail.com', 'Nice', 'Nice Work!'),
(22, '', 'Abhinav@gmail.com', 'You are best.', 'You are amazing.');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `profession` text NOT NULL,
  `review` text NOT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `profession`, `review`, `image`) VALUES
(4, 'Mahinder', 'App Developer', 'He is very amazing person in his field.', 'img/989271user.png'),
(5, 'Sameer', 'Marketting', 'He is inspiring as well.', 'img/792593user.png');

-- --------------------------------------------------------

--
-- Table structure for table `uploading`
--

CREATE TABLE `uploading` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploading`
--

INSERT INTO `uploading` (`id`, `name`, `email`, `file_name`) VALUES
(1, 'Rajan', 'Rajan@gmail.com', 'uploads/666369rajan.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploading`
--
ALTER TABLE `uploading`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploading`
--
ALTER TABLE `uploading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
