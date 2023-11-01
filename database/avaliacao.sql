SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `departments` (`id`, `name`, `status`) VALUES
(1, 'Technical', 1),
(2, 'Testing', 1),
(3, 'Automation', 1),
(4, 'Design', 1),
(5, 'Programming', 1),
(7, 'Security', 1);


CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,        
  `title` varchar(250) NOT NULL, 
  `protocol` varchar(20) NOT NULL, 
  `user_id` int(11) NOT NULL, 
  `init_msg` text NOT NULL, 
  `department` int(11) NOT NULL, 
  `date` varchar(250) NOT NULL,
  `last_reply` int(11) NOT NULL,
  `user_read` int(11) NOT NULL,
  `admin_read` int(11) NOT NULL,
  `resolved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tickets` (`id`, `title`, `protocol`, `user_id`,  `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
(1, '617181b83c1e7', 1, 'Sistema não funciona', 'O sistema da firma não abre AJUDA!!!', 1, '1634828728', 1, 0, 1, 1),
(2, '61718394c0ad5', 2, 'Problema com delete!!!!', 'Esse é o quarto ticket que eu abro a respeito disto.', 1, '1634829204', 2, 1, 0, 1),
(3, '617bfaa5ce86d', 1, 'zfsafsaf', 'zfsafsaf', 2, '1635515045', 1, 0, 0, 0),
(4, '617bfc35a93af', 2, 'There some glitches', 'There some glitches', 3, '1635515445', 2, 1, 0, 0),
(5, '617c0a73661fd', 1, 'there are secirty glitches!!!', 'there are secirty glitches', 1, '1635519091', 1, 0, 1, 0),
(6, '617c0ba6d462b', 2, 'there some issues', 'there some issues', 1, '1635519398', 2, 1, 0, 0);



CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `ticket_replies` (`id`, `user`, `text`, `ticket_id`, `date`) VALUES
(1, 1, 'This is fixed', '1', '1634829030'),
(2, 1, 'Please check it.', '1', '1634829129'),
(3, 1, 'The issue is fixed, you can check at your end. Thanks', '2', '1634829404'),
(4, 2, 'fixed', '2', '1635515403'),
(5, 2, 'this is fixed!', '4', '1635517083'),
(6, 1, 'I am looking into this', '5', '1635519340'),
(7, 2, 'ewtewt', '6', '1635519418');





CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_type` enum('admin', 'support', 'user' ) NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `status`, `create_at`, `update_at` ) VALUES
(1, 'Super User', 'admin@something.com','202cb962ac59075b964b07152d234b70', 'admin', 1, '2023-10-30 12:00:00', '2023-10-30 12:00:01'),
(2, 'Caiã Ceron', 'caiaceron@something.com', '202cb962ac59075b964b07152d234b70', 'support', 1, '2023-10-30 12:01:00', '2023-10-30 12:01:01' ),
(3, 'Marcella Macedo', 'marcellamacedo@something.com', '202cb962ac59075b964b07152d234b70', 'user', 1, '2023-10-30 12:02:00', '2023-10-30 12:02:02' );


ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
