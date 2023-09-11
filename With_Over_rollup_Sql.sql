use Learning_Sql

Create table Sales_Data(ID int,year_sales int, month_sales char(3), product varchar(20), amount decimal(7,2))


insert into Sales_Data(ID ,year_sales , month_sales , product , amount ) values
(0,1983,'Jan','Product1',546),
(1,1998,'Jul','Product17',201),
(2,2005,'Mar','Product10',733),
(3,2003,'Aug','Product13',543),
(4,2012,'Dec','Product5',655),
(5,1983,'Jan','Product11',420),
(6,2015,'Mar','Product10',349),
(7,1996,'Aug','Product6',667),
(8,2000,'Sep','Product12',302),
(9,2015,'Jun','Product16',369),
(10,1982,'May','Product11',388),
(11,1992,'Feb','Product6',796),
(12,2001,'Jan','Product10',333),
(13,1984,'Aug','Product12',156),
(14,1997,'Apr','Product11',405),
(15,2017,'Aug','Product3',223),
(16,2007,'Jan','Product7',850),
(17,2000,'Aug','Product2',282),
(18,2018,'Mar','Product17',44),
(19,1989,'Jul','Product5',780),
(20,1980,'Apr','Product19',431),
(21,2006,'May','Product2',811),
(22,2011,'Feb','Product19',208),
(23,1995,'Apr','Product11',129),
(24,1997,'Jan','Product16',99),
(25,2017,'Sep','Product17',697),
(26,2015,'May','Product12',320),
(27,2016,'Feb','Product5',333),
(28,1986,'Dec','Product13',246),
(29,1998,'May','Product9',49),
(30,2019,'Aug','Product13',910),
(31,2007,'Nov','Product12',752),
(32,1993,'Dec','Product12',1),
(33,1988,'Oct','Product9',127),
(34,2003,'Nov','Product17',368),
(35,1980,'Aug','Product8',110),
(36,2010,'Dec','Product7',110),
(37,2003,'Oct','Product17',283),
(38,2011,'Mar','Product2',868),
(39,1986,'Nov','Product14',152),
(40,2015,'Sep','Product2',562),
(41,1990,'Mar','Product5',531),
(42,1981,'Jun','Product3',709),
(43,1995,'Jan','Product9',701),
(44,2003,'Aug','Product13',678),
(45,1994,'Jun','Product15',788),
(46,2018,'May','Product2',92),
(47,1988,'Jun','Product9',341),
(48,1995,'May','Product2',657),
(49,2003,'May','Product17',162),
(50,2013,'Apr','Product5',683),
(51,1980,'May','Product12',208),
(52,1999,'Nov','Product18',62),
(53,1980,'Mar','Product4',44),
(54,1989,'Nov','Product8',842),
(55,2014,'Jul','Product10',321),
(56,1985,'Sep','Product9',748),
(57,1987,'Mar','Product10',933),
(58,2003,'Nov','Product14',481),
(59,1985,'Aug','Product18',490),
(60,2015,'Nov','Product7',355),
(61,1993,'Aug','Product7',940),
(62,2000,'Jun','Product13',786),
(63,1991,'Mar','Product15',21),
(64,1988,'Mar','Product13',143),
(65,2005,'Jun','Product8',468),
(66,2013,'Nov','Product19',691),
(67,2006,'Jun','Product12',833),
(68,2013,'Nov','Product8',843),
(69,2015,'Feb','Product17',470),
(70,2013,'Jan','Product11',821),
(71,2008,'Mar','Product17',698),
(72,1995,'Jun','Product7',858),
(73,2008,'May','Product7',333),
(74,1992,'May','Product2',375),
(75,2012,'Oct','Product12',184),
(76,2002,'Aug','Product5',650),
(77,1991,'Dec','Product16',231),
(78,1996,'Sep','Product1',104),
(79,1981,'Apr','Product11',285),
(80,1995,'Mar','Product1',273),
(81,1989,'May','Product3',189),
(82,2014,'Jan','Product4',111),
(83,2006,'Oct','Product3',523),
(84,2018,'Dec','Product8',873),
(85,1982,'Mar','Product15',788),
(86,2000,'Sep','Product12',221),
(87,1990,'Dec','Product6',204),
(88,1983,'Jan','Product2',531),
(89,2018,'Jan','Product15',513),
(90,2002,'Sep','Product1',426),
(91,1992,'Apr','Product5',946),
(92,1988,'Aug','Product6',294),
(93,2017,'Aug','Product7',760),
(94,1998,'Jan','Product12',46),
(95,2014,'May','Product4',283),
(96,2001,'Apr','Product12',259),
(97,1991,'Jan','Product5',115),
(98,1997,'May','Product15',277),
(99,1997,'Mar','Product11',333),
(100,2002,'Jun','Product1',864),
(101,2015,'May','Product14',568),
(102,1996,'Mar','Product18',746),
(103,2007,'Oct','Product16',612),
(104,2003,'Feb','Product11',166),
(105,1997,'Aug','Product2',796),
(106,2008,'Apr','Product7',756),
(107,2005,'Feb','Product13',642),
(108,1995,'Mar','Product7',741),
(109,2011,'Aug','Product7',581),
(110,2005,'Jun','Product13',430),
(111,2013,'Jul','Product4',484),
(112,1980,'Jul','Product16',543),
(113,1980,'Sep','Product14',666),
(114,1981,'Sep','Product4',546),
(115,2007,'Jul','Product10',862),
(116,2014,'Mar','Product9',908),
(117,2016,'Jun','Product16',381),
(118,1992,'Dec','Product7',943),
(119,2018,'Oct','Product19',798),
(120,2014,'Nov','Product17',958),
(121,2003,'Oct','Product12',78),
(122,2008,'Oct','Product11',836),
(123,1991,'Feb','Product14',919),
(124,1986,'Oct','Product1',759),
(125,2001,'Sep','Product3',71),
(126,1986,'May','Product16',957),
(127,1981,'Sep','Product9',85),
(128,1987,'Jul','Product3',565),
(129,1988,'Feb','Product2',706),
(130,2008,'Jul','Product6',89),
(131,1982,'Mar','Product14',969),
(132,1992,'Sep','Product7',161),
(133,2014,'Sep','Product7',479),
(134,1984,'May','Product12',512),
(135,2003,'Aug','Product11',807),
(136,1984,'May','Product2',418),
(137,1999,'Feb','Product19',512),
(138,1981,'May','Product2',292),
(139,1999,'Nov','Product16',442),
(140,2017,'Oct','Product3',500),
(141,1986,'Sep','Product4',575),
(142,1999,'Feb','Product13',94),
(143,2016,'Oct','Product2',464),
(144,2002,'Oct','Product1',237),
(145,2010,'Oct','Product9',996),
(146,1995,'Feb','Product15',601),
(147,2005,'Sep','Product18',171),
(148,2016,'Mar','Product9',56),
(149,2008,'Oct','Product5',680),
(150,2002,'Aug','Product6',231),
(151,1997,'Mar','Product12',6),
(152,1983,'Jul','Product13',548),
(153,2012,'Jan','Product5',152),
(154,1996,'Jul','Product15',55),
(155,2008,'Feb','Product16',568),
(156,1990,'May','Product4',371),
(157,2019,'Sep','Product18',50),
(158,1980,'Feb','Product10',389),
(159,1999,'Jan','Product19',307),
(160,1988,'Jan','Product6',155),
(161,2012,'Feb','Product16',925),
(162,1996,'Mar','Product8',818),
(163,2018,'Dec','Product14',246),
(164,1982,'Aug','Product13',683),
(165,2012,'Jul','Product17',76),
(166,2014,'Nov','Product11',755),
(167,2006,'Apr','Product15',623),
(168,1997,'Aug','Product16',859),
(169,2012,'Aug','Product10',215),
(170,2005,'May','Product19',630),
(171,2010,'Apr','Product4',60),
(172,2008,'Aug','Product1',289),
(173,1995,'Mar','Product16',169),
(174,2015,'May','Product19',276),
(175,1982,'Aug','Product4',690),
(176,1993,'Aug','Product3',542),
(177,1994,'Apr','Product7',833),
(178,2017,'Feb','Product9',942),
(179,2006,'Sep','Product13',846),
(180,1992,'Aug','Product6',747),
(181,1987,'Feb','Product7',854),
(182,2002,'Jun','Product1',522),
(183,1999,'Aug','Product7',840),
(184,1994,'Jul','Product2',808),
(185,1983,'Dec','Product5',376),
(186,2019,'Oct','Product11',962),
(187,1980,'Aug','Product1',342),
(188,1989,'Jul','Product2',116),
(189,1980,'Jan','Product12',221),
(190,2015,'Feb','Product19',209),
(191,1986,'Feb','Product2',890),
(192,1990,'Jan','Product3',976),
(193,2007,'May','Product6',38),
(194,1985,'Aug','Product16',430),
(195,1984,'Mar','Product18',965),
(196,1989,'Apr','Product13',119),
(197,2012,'Jun','Product6',854),
(198,2009,'Feb','Product5',845),
(199,1982,'Jun','Product14',946),
(200,1997,'Feb','Product10',771),
(201,1988,'Apr','Product19',843),
(202,2019,'Aug','Product11',581),
(203,1980,'Jun','Product13',586),
(204,2015,'Mar','Product16',835),
(205,1990,'Apr','Product13',325),
(206,1983,'Apr','Product9',845),
(207,1982,'May','Product9',651),
(208,1996,'May','Product2',41),
(209,1990,'Dec','Product8',401),
(210,2016,'Nov','Product15',101),
(211,2005,'Jan','Product6',553),
(212,1984,'Oct','Product12',582),
(213,1981,'Jan','Product19',926),
(214,1984,'Feb','Product12',739),
(215,2001,'Aug','Product4',742),
(216,2004,'Jan','Product3',692),
(217,2002,'Apr','Product3',341),
(218,2011,'Aug','Product18',239),
(219,1991,'Jul','Product1',239),
(220,1996,'Jan','Product17',483),
(221,1983,'Feb','Product4',701),
(222,2014,'Mar','Product8',242),
(223,1984,'Jul','Product3',21),
(224,2013,'Jul','Product12',626),
(225,2018,'Dec','Product12',552),
(226,1983,'Jan','Product19',768),
(227,1995,'Sep','Product1',85),
(228,2005,'Aug','Product2',602),
(229,1996,'May','Product17',645),
(230,1988,'Mar','Product8',641),
(231,1991,'Jan','Product1',602),
(232,1997,'Oct','Product16',75),
(233,2007,'Feb','Product17',432),
(234,1994,'Apr','Product5',595),
(235,1990,'Sep','Product16',270),
(236,1980,'Oct','Product5',537),
(237,1997,'Feb','Product5',89),
(238,1986,'Dec','Product13',318),
(239,2017,'Feb','Product15',602),
(240,1986,'Jul','Product16',484),
(241,2011,'Jul','Product6',301),
(242,1985,'Sep','Product17',177),
(243,2011,'Mar','Product18',609),
(244,1994,'Sep','Product18',278),
(245,2019,'Dec','Product11',181),
(246,1986,'Nov','Product13',608),
(247,2015,'May','Product9',188),
(248,2007,'Jan','Product12',145),
(249,1995,'Jun','Product15',376),
(250,2001,'Apr','Product11',871),
(251,2013,'Jul','Product5',227),
(252,2009,'Apr','Product2',216),
(253,1989,'May','Product2',156),
(254,2004,'Aug','Product13',519),
(255,2013,'Oct','Product12',713),
(256,2008,'Apr','Product16',456),
(257,1997,'Apr','Product7',353),
(258,1993,'Oct','Product19',351),
(259,1992,'Jun','Product19',967),
(260,1997,'Nov','Product4',393),
(261,2002,'Oct','Product12',772),
(262,1983,'Feb','Product10',410),
(263,1981,'Aug','Product3',912),
(264,2015,'Apr','Product1',849),
(265,1983,'Apr','Product2',836),
(266,2015,'Apr','Product13',67),
(267,1996,'Nov','Product16',125),
(268,2004,'Jan','Product16',858),
(269,2018,'Mar','Product2',988),
(270,1988,'May','Product18',909),
(271,1989,'Dec','Product5',433),
(272,1999,'Oct','Product7',380),
(273,1998,'Feb','Product8',493),
(274,1999,'Mar','Product6',126),
(275,1987,'May','Product5',276),
(276,1991,'Jan','Product7',400),
(277,2001,'Nov','Product7',33),
(278,2018,'Nov','Product9',120),
(279,1991,'Apr','Product19',982),
(280,2015,'Nov','Product10',462),
(281,2017,'Nov','Product17',168),
(282,2004,'Feb','Product10',825),
(283,2013,'Jul','Product5',597),
(284,1996,'May','Product8',501),
(285,2003,'Jul','Product10',86),
(286,2008,'Oct','Product19',793),
(287,1980,'Sep','Product17',265),
(288,2000,'Aug','Product18',923),
(289,1981,'Oct','Product10',369),
(290,2015,'Feb','Product7',858),
(291,1990,'Jul','Product14',636),
(292,2007,'Aug','Product17',897),
(293,1993,'Dec','Product8',25),
(294,2001,'Jun','Product17',740),
(295,2018,'Aug','Product17',405),
(296,1984,'Feb','Product11',201),
(297,1988,'May','Product16',706),
(298,2018,'Jan','Product4',421),
(299,2000,'Feb','Product9',584),
(300,2008,'Nov','Product11',347),
(301,2001,'Jan','Product3',689),
(302,1998,'Jun','Product13',583),
(303,1986,'Dec','Product5',530),
(304,1985,'May','Product3',476),
(305,2018,'Apr','Product17',388),
(306,2019,'Aug','Product13',663),
(307,1986,'Jul','Product18',264),
(308,1997,'Feb','Product9',937),
(309,1988,'Dec','Product14',367),
(310,1980,'Dec','Product9',742),
(311,1998,'May','Product7',377),
(312,2019,'Nov','Product16',148),
(313,1993,'Nov','Product17',260),
(314,2002,'Dec','Product3',900),
(315,2008,'Jan','Product8',345),
(316,1987,'Apr','Product19',580),
(317,1992,'Jun','Product9',322),
(318,1993,'Oct','Product13',38),
(319,1984,'Jun','Product5',840),
(320,2019,'Jan','Product9',911),
(321,2010,'Apr','Product4',353),
(322,2011,'Jan','Product16',892),
(323,2012,'Dec','Product18',695),
(324,1980,'May','Product19',132),
(325,1996,'May','Product9',755),
(326,1981,'Jul','Product7',275),
(327,1981,'Oct','Product11',912),
(328,2012,'May','Product1',762),
(329,1987,'Oct','Product19',695),
(330,1995,'Feb','Product11',136),
(331,1987,'May','Product6',250),
(332,2005,'Aug','Product7',812),
(333,1992,'Feb','Product13',723),
(334,2004,'Aug','Product10',192),
(335,2018,'Jan','Product12',605),
(336,2007,'Dec','Product16',476),
(337,1983,'Jul','Product8',80),
(338,1985,'Feb','Product12',430),
(339,2015,'Sep','Product16',252),
(340,2001,'Sep','Product1',848),
(341,2009,'Nov','Product17',835),
(342,1998,'Sep','Product16',580),
(343,2010,'Nov','Product11',164),
(344,2011,'Apr','Product16',805),
(345,1990,'Oct','Product4',706),
(346,1980,'Aug','Product18',291),
(347,2007,'Feb','Product10',219),
(348,1989,'Jan','Product1',226),
(349,2007,'Jul','Product2',17),
(350,1984,'Feb','Product3',584),
(351,2012,'Apr','Product14',245),
(352,2012,'Nov','Product16',940),
(353,2004,'Mar','Product11',192),
(354,2010,'Mar','Product2',553),
(355,1995,'Apr','Product18',858),
(356,2003,'Jan','Product2',263),
(357,1990,'Sep','Product15',750),
(358,2007,'Jun','Product8',429),
(359,2012,'Aug','Product3',474),
(360,2009,'Aug','Product1',489),
(361,2019,'May','Product1',998),
(362,2019,'Jun','Product9',958),
(363,2012,'Feb','Product1',821),
(364,2002,'Nov','Product15',57),
(365,1985,'Feb','Product4',241),
(366,1982,'Jul','Product7',644),
(367,1984,'Feb','Product16',762),
(368,1990,'May','Product9',814),
(369,2007,'Dec','Product13',559),
(370,1989,'Feb','Product18',698),
(371,2001,'Jun','Product5',786),
(372,1998,'Jul','Product7',527),
(373,2007,'Apr','Product6',46),
(374,1997,'Jan','Product16',8),
(375,2008,'Feb','Product2',731),
(376,1980,'Sep','Product14',500),
(377,2008,'Apr','Product7',205),
(378,1989,'Sep','Product6',778),
(379,1993,'May','Product7',743),
(380,1986,'Jun','Product15',997),
(381,2017,'May','Product8',195),
(382,2008,'Dec','Product3',3),
(383,2003,'Oct','Product12',549),
(384,2007,'Feb','Product3',693),
(385,1994,'Jan','Product2',978),
(386,1993,'Jul','Product18',260),
(387,2001,'Jul','Product16',960),
(388,1980,'Jan','Product17',167),
(389,2017,'Feb','Product16',637),
(390,2012,'Nov','Product19',771),
(391,1984,'Nov','Product4',81),
(392,1997,'Dec','Product17',176),
(393,2015,'Sep','Product11',363),
(394,1999,'Oct','Product8',136),
(395,2005,'Mar','Product7',79),
(396,1989,'Jul','Product3',217),
(397,1999,'Jan','Product11',458),
(398,1989,'Jun','Product17',95),
(399,2009,'Sep','Product13',958),
(400,1988,'Jun','Product7',258),
(401,1980,'Dec','Product12',317),
(402,1986,'Jul','Product1',738),
(403,2005,'May','Product3',786),
(404,2011,'Jun','Product19',139),
(405,2013,'Feb','Product8',74),
(406,2014,'Feb','Product7',316),
(407,1995,'Nov','Product16',227),
(408,2007,'Feb','Product1',675),
(409,2018,'Jan','Product14',443),
(410,2015,'Apr','Product7',683),
(411,2004,'Jun','Product12',92),
(412,2013,'Dec','Product13',535),
(413,2018,'Nov','Product12',744),
(414,2005,'Oct','Product8',7),
(415,1995,'Aug','Product12',259),
(416,1990,'Nov','Product9',526),
(417,1998,'Mar','Product10',400),
(418,1984,'May','Product15',787),
(419,1994,'Sep','Product12',155),
(420,2006,'Oct','Product14',315),
(421,1993,'Jul','Product9',473),
(422,2019,'Jun','Product7',491),
(423,2003,'Jun','Product12',332),
(424,2013,'Dec','Product4',148),
(425,1998,'Aug','Product7',371),
(426,2008,'Oct','Product4',15),
(427,1985,'Sep','Product15',40),
(428,2014,'Feb','Product3',164),
(429,2017,'Sep','Product8',43),
(430,1996,'Jul','Product19',517),
(431,1989,'Aug','Product6',432),
(432,2005,'Jan','Product6',54),
(433,1996,'Jun','Product9',806),
(434,2014,'Sep','Product7',113),
(435,2016,'Feb','Product5',260),
(436,1996,'Feb','Product9',110),
(437,2014,'Nov','Product6',518),
(438,2015,'Oct','Product18',267),
(439,2006,'Nov','Product1',469),
(440,2005,'Aug','Product1',953),
(441,1980,'Jul','Product17',992),
(442,2005,'Sep','Product14',973),
(443,1990,'Jul','Product4',946),
(444,2008,'May','Product16',735),
(445,1999,'Jul','Product3',965),
(446,2013,'Aug','Product5',932),
(447,2005,'Jun','Product1',805),
(448,1991,'Mar','Product8',461),
(449,2017,'Apr','Product7',743),
(450,1991,'Aug','Product15',14),
(451,2016,'May','Product3',380),
(452,2018,'Jun','Product7',579),
(453,1995,'Sep','Product9',476),
(454,2015,'Sep','Product6',498),
(455,1999,'Mar','Product13',345),
(456,2016,'Apr','Product19',974),
(457,2000,'Aug','Product10',596),
(458,1996,'Jul','Product9',252),
(459,1988,'Nov','Product7',468),
(460,2005,'Jul','Product4',96),
(461,2005,'Jul','Product9',722),
(462,2013,'Jan','Product2',479),
(463,2006,'Jun','Product14',445),
(464,1983,'Nov','Product2',482),
(465,2002,'Oct','Product18',710),
(466,1981,'May','Product2',445),
(467,2014,'Jun','Product4',580),
(468,2005,'Feb','Product9',976),
(469,2009,'Feb','Product12',249),
(470,2000,'Jan','Product13',650),
(471,1987,'Sep','Product11',442),
(472,2009,'Mar','Product9',808),
(473,2014,'Nov','Product16',80),
(474,1987,'Mar','Product9',168),
(475,1982,'May','Product15',486),
(476,1989,'Aug','Product15',522),
(477,2012,'Mar','Product2',572),
(478,2006,'May','Product14',9),
(479,1991,'Jul','Product19',354),
(480,2000,'Mar','Product7',274),
(481,2013,'Aug','Product19',619),
(482,1990,'Oct','Product9',593),
(483,2002,'Jul','Product4',822),
(484,1991,'Oct','Product14',676),
(485,1992,'Jun','Product19',466),
(486,2019,'Oct','Product18',239),
(487,1980,'Jun','Product15',122),
(488,2007,'Nov','Product2',352),
(489,1983,'Feb','Product15',845),
(490,1997,'Oct','Product15',383),
(491,1992,'Apr','Product15',751),
(492,1988,'May','Product9',662),
(493,2012,'Jul','Product9',746),
(494,1982,'Mar','Product6',772),
(495,1982,'Sep','Product1',356),
(496,2013,'Mar','Product19',744),
(497,2004,'Feb','Product14',967),
(498,1998,'Jul','Product2',986),
(499,1988,'May','Product8',602),
(500,1987,'Jun','Product13',897),
(501,1996,'Jul','Product6',164),
(502,2001,'Jan','Product2',475),
(503,2005,'Aug','Product14',1),
(504,1992,'Feb','Product7',627),
(505,2018,'Nov','Product3',981),
(506,2010,'Jul','Product14',850),
(507,2010,'Feb','Product12',13),
(508,2014,'Jul','Product8',69),
(509,1981,'Dec','Product12',256),
(510,2005,'Apr','Product8',222),
(511,1995,'Sep','Product3',966),
(512,1988,'May','Product1',528),
(513,1982,'Apr','Product7',872),
(514,1989,'Nov','Product2',790),
(515,1989,'Sep','Product18',294),
(516,1990,'Jul','Product4',555),
(517,2012,'Jul','Product2',964),
(518,2017,'Apr','Product7',287),
(519,2017,'Jul','Product10',877),
(520,1990,'Apr','Product8',358),
(521,1980,'Mar','Product7',659),
(522,2002,'Oct','Product19',891),
(523,2012,'Nov','Product2',178),
(524,1991,'Oct','Product2',392),
(525,1999,'Feb','Product7',394),
(526,1989,'Feb','Product9',338),
(527,1987,'Feb','Product11',148),
(528,2014,'Dec','Product18',684),
(529,2018,'Feb','Product17',565),
(530,1984,'Nov','Product14',656),
(531,2007,'Jun','Product13',119),
(532,1992,'Sep','Product18',430),
(533,1985,'Jul','Product5',370),
(534,1993,'Dec','Product14',655),
(535,2007,'Mar','Product14',744),
(536,1988,'Jun','Product13',514),
(537,1984,'Sep','Product7',928),
(538,1983,'Jul','Product18',61),
(539,1988,'Nov','Product6',569),
(540,2010,'Dec','Product13',698),
(541,2019,'Jul','Product4',538),
(542,2017,'Jun','Product4',457),
(543,1994,'Mar','Product5',605),
(544,2006,'Jul','Product3',110),
(545,1980,'Dec','Product8',531),
(546,2015,'Oct','Product10',956),
(547,1994,'Oct','Product18',382),
(548,2007,'Apr','Product10',905),
(549,2009,'Jun','Product16',534),
(550,1980,'Nov','Product12',812),
(551,1990,'Apr','Product15',740),
(552,2006,'Apr','Product16',538),
(553,1994,'Dec','Product13',134),
(554,2005,'Apr','Product3',442),
(555,2010,'Jun','Product8',255),
(556,2005,'Jul','Product9',835),
(557,2004,'Sep','Product2',539),
(558,2005,'Mar','Product10',591),
(559,1991,'Aug','Product6',844),
(560,1989,'Oct','Product8',80),
(561,2002,'Oct','Product13',668),
(562,2010,'Aug','Product4',148),
(563,2012,'Jun','Product15',959),
(564,1983,'Sep','Product19',519),
(565,1980,'Feb','Product12',359),
(566,1985,'Jul','Product1',530),
(567,2008,'Aug','Product14',700),
(568,1995,'Apr','Product14',410),
(569,1994,'Aug','Product4',185),
(570,2009,'Sep','Product8',837),
(571,2009,'Feb','Product16',748),
(572,2017,'Dec','Product17',526),
(573,2003,'Apr','Product13',219),
(574,1990,'Apr','Product15',235),
(575,2005,'May','Product11',131),
(576,1986,'Jul','Product8',992),
(577,2016,'Apr','Product16',657),
(578,2016,'Oct','Product15',291),
(579,2000,'May','Product13',286),
(580,1981,'Apr','Product10',170),
(581,2018,'Sep','Product19',16),
(582,1989,'Sep','Product5',674),
(583,1994,'Jan','Product18',429),
(584,1987,'Sep','Product4',326),
(585,2010,'Nov','Product19',271),
(586,1992,'Dec','Product14',989),
(587,2018,'Nov','Product2',866),
(588,2002,'Nov','Product10',54),
(589,1991,'Dec','Product10',13),
(590,1985,'Mar','Product12',251),
(591,2004,'Sep','Product17',500),
(592,1985,'Mar','Product7',801),
(593,1988,'Oct','Product3',648),
(594,2010,'Feb','Product15',544),
(595,1986,'Dec','Product5',683),
(596,1988,'Jan','Product7',743),
(597,1997,'May','Product15',887),
(598,2000,'Apr','Product5',152),
(599,2011,'Mar','Product8',958),
(600,1997,'May','Product17',456),
(601,2006,'Oct','Product5',238),
(602,2016,'Jul','Product19',579),
(603,1988,'Aug','Product18',616),
(604,1998,'Sep','Product9',883),
(605,2003,'Dec','Product14',595),
(606,2010,'Nov','Product18',45),
(607,1993,'Aug','Product17',785),
(608,2006,'Oct','Product13',166),
(609,1994,'Sep','Product17',282),
(610,2010,'Oct','Product6',905),
(611,1987,'Nov','Product5',523),
(612,2008,'Jun','Product10',603),
(613,1980,'Sep','Product4',403),
(614,1986,'Nov','Product16',938),
(615,2003,'May','Product9',407),
(616,1989,'Aug','Product8',15),
(617,2015,'Jul','Product19',189),
(618,2007,'Nov','Product2',221),
(619,2007,'Dec','Product2',551),
(620,1982,'Apr','Product12',393),
(621,1996,'Sep','Product12',313),
(622,1995,'Jun','Product15',214),
(623,1996,'May','Product3',490),
(624,1998,'Jun','Product11',242),
(625,2000,'Dec','Product5',549),
(626,1995,'Feb','Product13',201),
(627,2001,'Dec','Product12',777),
(628,2011,'Dec','Product17',252),
(629,1980,'Dec','Product7',777),
(630,1985,'Jul','Product12',355),
(631,2014,'Feb','Product18',606),
(632,2001,'Oct','Product14',472),
(633,1983,'Dec','Product17',610),
(634,2011,'Oct','Product14',989),
(635,2002,'Mar','Product9',572),
(636,1985,'Mar','Product16',571),
(637,1981,'Jul','Product19',112),
(638,1993,'May','Product5',301),
(639,1982,'Jul','Product9',344),
(640,2004,'Dec','Product16',333),
(641,2001,'Jul','Product1',21),
(642,1993,'Dec','Product1',205),
(643,2010,'Jan','Product11',769),
(644,1997,'Oct','Product5',764),
(645,1988,'Nov','Product15',499),
(646,1982,'May','Product8',263),
(647,1980,'Nov','Product10',150),
(648,1980,'Jan','Product13',235),
(649,2017,'Aug','Product2',580),
(650,2019,'Feb','Product16',675),
(651,1995,'Jun','Product18',622),
(652,1990,'Feb','Product2',127),
(653,2004,'Jan','Product15',541),
(654,2016,'Feb','Product16',898),
(655,2002,'Aug','Product13',26),
(656,2017,'Aug','Product4',731),
(657,1982,'Dec','Product2',628),
(658,2003,'Nov','Product9',748),
(659,1981,'Sep','Product6',430),
(660,1989,'Feb','Product14',398),
(661,2012,'Dec','Product7',420),
(662,1986,'Jan','Product13',171),
(663,1995,'Dec','Product6',200),
(664,2004,'Jun','Product10',495),
(665,1985,'Apr','Product4',817),
(666,2012,'Apr','Product17',415),
(667,1989,'Nov','Product14',541),
(668,2018,'Jan','Product1',932),
(669,2015,'Aug','Product14',188),
(670,2013,'Jun','Product18',8),
(671,2015,'Nov','Product14',713),
(672,2015,'Jun','Product19',108),
(673,2015,'Jun','Product14',929),
(674,2009,'May','Product4',36),
(675,1986,'Jul','Product5',783),
(676,2011,'Sep','Product6',880),
(677,2014,'Apr','Product14',205),
(678,1981,'Nov','Product9',552),
(679,2002,'Feb','Product10',863),
(680,1991,'Mar','Product1',595),
(681,2011,'Dec','Product7',486),
(682,2011,'Dec','Product16',977),
(683,1997,'Apr','Product13',525),
(684,1982,'Jul','Product9',163),
(685,1984,'Jun','Product5',103),
(686,1995,'Oct','Product15',116),
(687,1980,'Oct','Product12',425),
(688,2016,'Dec','Product17',998),
(689,1996,'Jun','Product18',756),
(690,1994,'Sep','Product11',897),
(691,1988,'Sep','Product18',788),
(692,1982,'Feb','Product19',435),
(693,2016,'Nov','Product16',664),
(694,1994,'Dec','Product9',915),
(695,2014,'Jan','Product9',684),
(696,2014,'May','Product9',910),
(697,2001,'Mar','Product19',266),
(698,2010,'Sep','Product17',897),
(699,1993,'Apr','Product14',908),
(700,2005,'Jul','Product1',547),
(701,1999,'Apr','Product13',944),
(702,2015,'Dec','Product15',197),
(703,2013,'Jan','Product13',197),
(704,2012,'Nov','Product17',546),
(705,1982,'Mar','Product18',570),
(706,1982,'Jan','Product14',75),
(707,2011,'Nov','Product14',756),
(708,1990,'Dec','Product15',476),
(709,1999,'Feb','Product19',557),
(710,1999,'May','Product10',231),
(711,1995,'Oct','Product18',450),
(712,2013,'Mar','Product1',63),
(713,1996,'Aug','Product7',39),
(714,1982,'Oct','Product7',752),
(715,1993,'Apr','Product10',393),
(716,2009,'Dec','Product18',167),
(717,2001,'Jan','Product4',150),
(718,2013,'Nov','Product3',417),
(719,1994,'Mar','Product5',308),
(720,2008,'Jul','Product17',793),
(721,1990,'Oct','Product5',147),
(722,1980,'Dec','Product14',359),
(723,1982,'Jan','Product4',382),
(724,2009,'Jul','Product9',274),
(725,2004,'Sep','Product6',202),
(726,1992,'Nov','Product6',993),
(727,2008,'Jun','Product19',652),
(728,1985,'Jul','Product17',481),
(729,1994,'Nov','Product11',338),
(730,2002,'Aug','Product16',219),
(731,2018,'Aug','Product15',241),
(732,2012,'Jan','Product11',266),
(733,1993,'Mar','Product16',511),
(734,2009,'Jul','Product9',974),
(735,1996,'Mar','Product16',308),
(736,2005,'Jan','Product9',765),
(737,2019,'Oct','Product1',904),
(738,1981,'Jan','Product16',507),
(739,2018,'Apr','Product15',823),
(740,2011,'Jul','Product13',885),
(741,1980,'Feb','Product8',497),
(742,1998,'Jan','Product3',26),
(743,1987,'Jun','Product13',140),
(744,1985,'May','Product9',270),
(745,1992,'Oct','Product3',26),
(746,1986,'Sep','Product13',893),
(747,2004,'Jul','Product9',1),
(748,1994,'Jan','Product13',130),
(749,1989,'Aug','Product6',568),
(750,2000,'Aug','Product3',699),
(751,1986,'Apr','Product14',169),
(752,1992,'Nov','Product4',777),
(753,2005,'Dec','Product5',396),
(754,1999,'Nov','Product12',217),
(755,2010,'Jun','Product14',553),
(756,1988,'Nov','Product19',384),
(757,1997,'Oct','Product3',505),
(758,1993,'Aug','Product18',933),
(759,1999,'Dec','Product5',570),
(760,1986,'May','Product19',150),
(761,1991,'Jan','Product18',375),
(762,1998,'Jun','Product1',468),
(763,2008,'Jul','Product15',289),
(764,1986,'Apr','Product15',72),
(765,2003,'Sep','Product5',919),
(766,2008,'Mar','Product15',618),
(767,2009,'Sep','Product16',290),
(768,1993,'May','Product18',970),
(769,2015,'Sep','Product9',543),
(770,2017,'Aug','Product6',67),
(771,2016,'Jan','Product2',560),
(772,2012,'Jul','Product18',82),
(773,2007,'Jul','Product3',997),
(774,1990,'May','Product17',622),
(775,2011,'Mar','Product19',747),
(776,1981,'Dec','Product6',528),
(777,2005,'Aug','Product9',784),
(778,1988,'Dec','Product8',70),
(779,2016,'Dec','Product17',575),
(780,1990,'Mar','Product10',935),
(781,2000,'Apr','Product12',245),
(782,2010,'Dec','Product10',775),
(783,2000,'Oct','Product10',326),
(784,1998,'Mar','Product9',843),
(785,1993,'Sep','Product4',514),
(786,1985,'Feb','Product17',316),
(787,2010,'Sep','Product19',341),
(788,1994,'Feb','Product14',348),
(789,2006,'Mar','Product13',113),
(790,1999,'Nov','Product4',651),
(791,2018,'Jul','Product15',32),
(792,1988,'Apr','Product3',732),
(793,2014,'Dec','Product8',637),
(794,1995,'Apr','Product17',249),
(795,1989,'Sep','Product5',475),
(796,1993,'Apr','Product16',540),
(797,1988,'Jun','Product14',447),
(798,1984,'Oct','Product13',828),
(799,2006,'Oct','Product19',559),
(800,2013,'Nov','Product6',223),
(801,1988,'Nov','Product17',386),
(802,1985,'Mar','Product18',971),
(803,1999,'Sep','Product14',935),
(804,2012,'Sep','Product17',12),
(805,2015,'Nov','Product4',993),
(806,2004,'Sep','Product13',894),
(807,1987,'Aug','Product2',932),
(808,2019,'Dec','Product13',903),
(809,1984,'Jun','Product10',407),
(810,2019,'Sep','Product7',440)

insert into Sales_Data(ID ,year_sales , month_sales , product , amount ) values
(811,2014,'Oct','Product8',818),
(812,1995,'Mar','Product10',798),
(813,1998,'Mar','Product10',737),
(814,2017,'Dec','Product9',951),
(815,1998,'Apr','Product1',682),
(816,1986,'Feb','Product3',76),
(817,2004,'Jan','Product17',674),
(818,1982,'Mar','Product2',865),
(819,1995,'Jan','Product9',132),
(820,2011,'Jul','Product1',763),
(821,2014,'Aug','Product2',148),
(822,2012,'Jun','Product18',957),
(823,2010,'Mar','Product9',414),
(824,1986,'Aug','Product16',817),
(825,1991,'Nov','Product8',736),
(826,2005,'Jul','Product3',800),
(827,1987,'May','Product10',457),
(828,2004,'May','Product16',859),
(829,2016,'Oct','Product13',378),
(830,2016,'May','Product17',911),
(831,1995,'Jan','Product1',380),
(832,2003,'Nov','Product16',45),
(833,1983,'Aug','Product9',816),
(834,1985,'Feb','Product5',466),
(835,2013,'Mar','Product8',618),
(836,2007,'Jan','Product7',665),
(837,2013,'Sep','Product10',350),
(838,2007,'Mar','Product19',479),
(839,2019,'Nov','Product18',857),
(840,2004,'Feb','Product3',187),
(841,1995,'May','Product8',40),
(842,1985,'Oct','Product19',651),
(843,1987,'Aug','Product2',331),
(844,1993,'Aug','Product4',77),
(845,1982,'Aug','Product15',756),
(846,1987,'Nov','Product4',559),
(847,1991,'May','Product14',457),
(848,1986,'Jan','Product5',269),
(849,1997,'Feb','Product2',659),
(850,2012,'Apr','Product15',707),
(851,1984,'Mar','Product12',942),
(852,2018,'May','Product11',120),
(853,1999,'Nov','Product3',129),
(854,1994,'Dec','Product7',818),
(855,1991,'Oct','Product9',368),
(856,2006,'Feb','Product3',948),
(857,1989,'Aug','Product6',92),
(858,1996,'Oct','Product18',173),
(859,1992,'Apr','Product13',388),
(860,2014,'Jul','Product7',27),
(861,2003,'May','Product2',898),
(862,2005,'Dec','Product1',629),
(863,2016,'Sep','Product4',382),
(864,2015,'Oct','Product8',877),
(865,2009,'Feb','Product1',556),
(866,2015,'Mar','Product16',309),
(867,1991,'Oct','Product14',912),
(868,2004,'Apr','Product15',910),
(869,2013,'Nov','Product2',390),
(870,2014,'Oct','Product11',121),
(871,2006,'May','Product16',262),
(872,2006,'Apr','Product16',693),
(873,2006,'Nov','Product10',294),
(874,1997,'Sep','Product17',853),
(875,1998,'Jun','Product19',518),
(876,1998,'Apr','Product16',215),
(877,1987,'Oct','Product17',511),
(878,1985,'Feb','Product13',348),
(879,1998,'Jan','Product10',835),
(880,1986,'Jul','Product3',53),
(881,1991,'Aug','Product4',973),
(882,1995,'Apr','Product2',296),
(883,2010,'Sep','Product11',3),
(884,1981,'Mar','Product16',716),
(885,1990,'Dec','Product14',837),
(886,2000,'May','Product8',630),
(887,1986,'Jan','Product4',653),
(888,1986,'Sep','Product1',490),
(889,2007,'Aug','Product12',142),
(890,1999,'Oct','Product19',952),
(891,1993,'Sep','Product2',94),
(892,1985,'May','Product19',750),
(893,2016,'Sep','Product4',654),
(894,2000,'Apr','Product5',76),
(895,2005,'Dec','Product4',181),
(896,2003,'Feb','Product2',174),
(897,1991,'Mar','Product6',665),
(898,1982,'Aug','Product16',36),
(899,1994,'Oct','Product11',110),
(900,1996,'Apr','Product17',277),
(901,1986,'Jun','Product16',301),
(902,2001,'Aug','Product5',939),
(903,2009,'Dec','Product17',953),
(904,1995,'Dec','Product6',986),
(905,2009,'Aug','Product19',105),
(906,2004,'Nov','Product17',513),
(907,1983,'Oct','Product6',523),
(908,2010,'Sep','Product19',220),
(909,1986,'Feb','Product18',952),
(910,1996,'May','Product14',111),
(911,1987,'Mar','Product1',651),
(912,1990,'Dec','Product9',270),
(913,2019,'Sep','Product16',639),
(914,2012,'Apr','Product3',789),
(915,1985,'Dec','Product9',963),
(916,1991,'Aug','Product14',841),
(917,1980,'Sep','Product16',87),
(918,1992,'Dec','Product14',559),
(919,1981,'May','Product18',729),
(920,2010,'Jun','Product6',655),
(921,2007,'Sep','Product7',997),
(922,2009,'Jan','Product14',293),
(923,1983,'Mar','Product13',405),
(924,2015,'Mar','Product14',304),
(925,1986,'Jun','Product3',236),
(926,2013,'Dec','Product13',726),
(927,1996,'Feb','Product2',173),
(928,1991,'Oct','Product17',244),
(929,1982,'Jul','Product3',907),
(930,1992,'Apr','Product13',460),
(931,2002,'Sep','Product3',548),
(932,1985,'Jan','Product12',839),
(933,1981,'Dec','Product13',267),
(934,1990,'Feb','Product13',133),
(935,2008,'Jan','Product14',549),
(936,1980,'Mar','Product6',377),
(937,1982,'Feb','Product9',529),
(938,1993,'Oct','Product17',978),
(939,2003,'Oct','Product8',552),
(940,2013,'May','Product13',408),
(941,1996,'Feb','Product17',118),
(942,2018,'Jan','Product18',496),
(943,1989,'Oct','Product19',358),
(944,2016,'Sep','Product16',537),
(945,2004,'Dec','Product11',168),
(946,1981,'Nov','Product14',30),
(947,1984,'Jun','Product6',62),
(948,1997,'Dec','Product14',139),
(949,1992,'Sep','Product1',235),
(950,2003,'Sep','Product3',382),
(951,2006,'Nov','Product8',251),
(952,1984,'Jan','Product4',772),
(953,2000,'Jul','Product14',945),
(954,1984,'Jul','Product19',5),
(955,1990,'Jan','Product16',955),
(956,1996,'Sep','Product3',40),
(957,1988,'Jan','Product3',448),
(958,1982,'Jan','Product15',467),
(959,1997,'Apr','Product19',740),
(960,2011,'Jul','Product11',167),
(961,2012,'Jul','Product18',666),
(962,1988,'Apr','Product16',956),
(963,1999,'Apr','Product3',234),
(964,1983,'Apr','Product15',898),
(965,2008,'Nov','Product14',502),
(966,1995,'Jun','Product5',296),
(967,1990,'Dec','Product3',496),
(968,2014,'Jan','Product2',201),
(969,1992,'May','Product2',426),
(970,1987,'Aug','Product1',933),
(971,2009,'Dec','Product13',950),
(972,1991,'Jun','Product7',127),
(973,1998,'Oct','Product16',494),
(974,2007,'Jun','Product11',611),
(975,2016,'Jun','Product19',898),
(976,2001,'Jul','Product1',466),
(977,1995,'Aug','Product14',884),
(978,1991,'Dec','Product2',875),
(979,2000,'Aug','Product3',506),
(980,1986,'May','Product6',481),
(981,2019,'May','Product5',432),
(982,2019,'Nov','Product10',629),
(983,1999,'Feb','Product19',946),
(984,2011,'Jun','Product12',366),
(985,2013,'Apr','Product8',551),
(986,1989,'Aug','Product1',601),
(987,1995,'Mar','Product2',893),
(988,2012,'Jul','Product5',852),
(989,2001,'Oct','Product14',303),
(990,2005,'Feb','Product9',923),
(991,1989,'Jun','Product17',107),
(992,1981,'Sep','Product13',678),
(993,1995,'Dec','Product16',123),
(994,1987,'Feb','Product7',577),
(995,1988,'Mar','Product7',944),
(996,2016,'Jun','Product5',394),
(997,2014,'Sep','Product9',206),
(998,1994,'Mar','Product12',780),
(999,2018,'Oct','Product9',937)
