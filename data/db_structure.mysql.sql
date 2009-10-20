DROP TABLE IF EXISTS `jos_aeons_link`;
CREATE TABLE IF NOT EXISTS `jos_aeons_link` (
  `fabrik_internal_id` int(6) NOT NULL auto_increment,
  `time_date` datetime default NULL,
  `language` varchar(255) default NULL,
  `ordering` int(3) default NULL,
  `link` varchar(255) default NULL,
  `type` varchar(255) NOT NULL,
  `tags` varchar(255) default NULL,
  `saint_id` int(6) default NULL,
  `date` varchar(255) default NULL,
  PRIMARY KEY  (`fabrik_internal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aeons_location`
--

DROP TABLE IF EXISTS `jos_aeons_location`;
CREATE TABLE IF NOT EXISTS `jos_aeons_location` (
  `fabrik_internal_id` int(6) NOT NULL auto_increment,
  `time_date` datetime default NULL,
  `map` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `geohack` text,
  PRIMARY KEY  (`fabrik_internal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aeons_lookup`
--

DROP TABLE IF EXISTS `jos_aeons_lookup`;
CREATE TABLE IF NOT EXISTS `jos_aeons_lookup` (
  `id` int(6) NOT NULL auto_increment,
  `calendar` varchar(10) NOT NULL default 'old',
  `easter_month` int(11) NOT NULL default '3',
  `easter_day` int(11) NOT NULL,
  `week` int(11) NOT NULL default '10',
  `year` int(11) NOT NULL default '0',
  `month` int(11) default NULL,
  `day` int(11) default NULL,
  `delta` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=741 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aeons_saint`
--

DROP TABLE IF EXISTS `jos_aeons_saint`;
CREATE TABLE IF NOT EXISTS `jos_aeons_saint` (
  `fabrik_internal_id` int(6) NOT NULL auto_increment,
  `time_date` datetime default NULL,
  `date_start` varchar(255) default NULL,
  `date_end` varchar(255) default NULL,
  `duration` varchar(255) default 'false',
  `formula_start` varchar(255) NOT NULL,
  `formula_end` varchar(255) NOT NULL,
  `title` varchar(255) character set utf8 default NULL,
  `description_eno` text character set utf8,
  `stem2` varchar(3) default NULL,
  `stem3` varchar(4) default NULL,
  `ident` varchar(255) NOT NULL,
  `tags` text NOT NULL,
  `image` varchar(255) default NULL,
  `link` varchar(255) default NULL,
  `location` int(6) default NULL,
  `layer` varchar(255) default NULL,
  `user` int(11) default NULL,
  `date_ruo` varchar(255) default NULL,
  `ordering_ruo` int(2) default NULL,
  `description_ruo` text character set utf8 NOT NULL,
  `date_rono` varchar(255) NOT NULL,
  `date_roo` varchar(255) NOT NULL,
  `ordering_roo` int(2) NOT NULL,
  `description_roo` text character set utf8 NOT NULL,
  `date_elo` varchar(255) NOT NULL,
  `ordering_elo` int(2) NOT NULL,
  `description_elo` text character set utf8 NOT NULL,
  PRIMARY KEY  (`fabrik_internal_id`),
  KEY `fb_tableorder_date_start_INDEX` (`date_start`(10)),
  KEY `fb_groupby_date_roo_INDEX` (`date_roo`(10)),
  KEY `fb_filter_date_start_INDEX` (`date_start`(10)),
  KEY `fb_prefilter_date_start_INDEX` (`date_start`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11016 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aeons_story`
--

DROP TABLE IF EXISTS `jos_aeons_story`;
CREATE TABLE IF NOT EXISTS `jos_aeons_story` (
  `id` int(6) NOT NULL auto_increment,
  `saint_id` int(6) default NULL,
  `title` varchar(255) default NULL,
  `story` mediumtext,
  `type` varchar(255) NOT NULL default 'typikon',
  `date` varchar(255) NOT NULL,
  `ordering` int(2) NOT NULL default '1',
  `language` varchar(255) default 'ro',
  `extra` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40494 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aeons_vocabulary`
--

DROP TABLE IF EXISTS `jos_aeons_vocabulary`;
CREATE TABLE IF NOT EXISTS `jos_aeons_vocabulary` (
  `id` int(11) NOT NULL auto_increment,
  `word_type` varchar(10) NOT NULL,
  `token` varchar(255) default NULL,
  `tag` varchar(100) NOT NULL,
  `en` varchar(255) default NULL,
  `ro` varchar(255) default NULL,
  `ru` varchar(255) default NULL,
  `el` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;
