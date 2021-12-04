/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : crawldb

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 09/11/2020 22:27:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_crawled
-- ----------------------------
DROP TABLE IF EXISTS `tbl_crawled`;
CREATE TABLE `tbl_crawled`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail_default` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail_medium` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail_high` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `channel_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published_at` datetime(0) NULL DEFAULT NULL,
  `channel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fullpath` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idx`) USING BTREE,
  UNIQUE INDEX `tbl_crawled_video_id_unique`(`video_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_crawled
-- ----------------------------
INSERT INTO `tbl_crawled` VALUES (9, 'gdZLi9oWNZg', 'bts 39 dynamite 39 official mv', NULL, 'https://i.ytimg.com/vi/gdZLi9oWNZg/default.jpg', 'https://i.ytimg.com/vi/gdZLi9oWNZg/mqdefault.jpg', 'https://i.ytimg.com/vi/gdZLi9oWNZg/hqdefault.jpg', 'Big Hit Labels', '2020-08-21 03:58:10', 'UC3IZKseVpdzPSBaWxBxundA', 'bts dynamite', 'bts 39 dynamite 39 official mv.mp4', 'bts dynamite/bts 39 dynamite 39 official mv.mp4', '2020-09-12 06:05:38', '2020-09-12 06:05:38');
INSERT INTO `tbl_crawled` VALUES (11, '5Fyl0LSQlBM', 'chihaya kisaragi shizuka mogami alive factor [eng sub]', NULL, 'https://i.ytimg.com/vi/5Fyl0LSQlBM/default.jpg', 'https://i.ytimg.com/vi/5Fyl0LSQlBM/mqdefault.jpg', 'https://i.ytimg.com/vi/5Fyl0LSQlBM/hqdefault.jpg', 'SSブリス', '2020-07-30 09:59:17', 'UCn1CwRN47ZbDjtbJLN5xjNw', 'idolmaster alive factor', 'chihaya kisaragi shizuka mogami alive factor [eng sub].mp4', 'idolmaster alive factor/chihaya kisaragi shizuka mogami alive factor [eng sub].mp4', '2020-09-12 06:28:34', '2020-09-12 06:28:34');
INSERT INTO `tbl_crawled` VALUES (15, 'US65CJG1-4c', 'SIDSound 조각나비  Lyrics', NULL, 'https://i.ytimg.com/vi/US65CJG1-4c/default.jpg', 'https://i.ytimg.com/vi/US65CJG1-4c/mqdefault.jpg', 'https://i.ytimg.com/vi/US65CJG1-4c/hqdefault.jpg', 'LunaticPenguin', '2012-05-04 08:42:42', 'UCdc5npXVPYxOPfHds0KZOLA', '조각나비', 'SIDSound 조각나비  Lyrics.mp4', '조각나비/SIDSound 조각나비  Lyrics.mp4', '2020-09-12 06:58:24', '2020-09-12 06:58:24');
INSERT INTO `tbl_crawled` VALUES (18, 'dFU1Rt3iZxU', '한글화 반드시 민트초코를 먹는 아오이짱', NULL, 'https://i.ytimg.com/vi/dFU1Rt3iZxU/default.jpg', 'https://i.ytimg.com/vi/dFU1Rt3iZxU/mqdefault.jpg', 'https://i.ytimg.com/vi/dFU1Rt3iZxU/hqdefault.jpg', '요하네', '2019-09-03 15:04:53', 'UCcVVCHWapqkymd3G3GG6iXA', '초코민트 아이스', '한글화 반드시 민트초코를 먹는 아오이짱.mp4', '초코민트 아이스/한글화 반드시 민트초코를 먹는 아오이짱.mp4', '2020-09-12 07:04:23', '2020-09-12 07:04:23');
INSERT INTO `tbl_crawled` VALUES (19, 'pzknCujJLKk', '한글화 아무말이나 해도 다 들어주는 아카네짱', NULL, 'https://i.ytimg.com/vi/pzknCujJLKk/default.jpg', 'https://i.ytimg.com/vi/pzknCujJLKk/mqdefault.jpg', 'https://i.ytimg.com/vi/pzknCujJLKk/hqdefault.jpg', '요하네', '2018-01-08 16:53:58', 'UCcVVCHWapqkymd3G3GG6iXA', '아무말이다 다 들어주는', '한글화 아무말이나 해도 다 들어주는 아카네짱.mp4', '아무말이다 다 들어주는/한글화 아무말이나 해도 다 들어주는 아카네짱.mp4', '2020-09-12 07:11:00', '2020-09-12 07:11:00');
INSERT INTO `tbl_crawled` VALUES (20, 'gPFC_JcVBAM', '복면가왕 스페셜 ★국카스텐 하현우 무대 모음집★ 음악대장', NULL, 'https://i.ytimg.com/vi/gPFC_JcVBAM/default.jpg', 'https://i.ytimg.com/vi/gPFC_JcVBAM/mqdefault.jpg', 'https://i.ytimg.com/vi/gPFC_JcVBAM/hqdefault.jpg', 'MBCkpop', '2019-09-24 08:22:02', 'UCe52oeb7Xv_KaJsEzcKXJJg', '하현우 라젠카', '복면가왕 스페셜 ★국카스텐 하현우 무대 모음집★ 음악대장.mp4', '하현우 라젠카/복면가왕 스페셜 ★국카스텐 하현우 무대 모음집★ 음악대장.mp4', '2020-09-12 07:16:10', '2020-09-12 07:16:10');
INSERT INTO `tbl_crawled` VALUES (21, '_FtU9XMuFfU', 'Key Plus WordsPersona 4 The Animation Opening 2', NULL, 'https://i.ytimg.com/vi/_FtU9XMuFfU/default.jpg', 'https://i.ytimg.com/vi/_FtU9XMuFfU/mqdefault.jpg', 'https://i.ytimg.com/vi/_FtU9XMuFfU/hqdefault.jpg', 'jfielding95', '2013-03-03 15:24:25', 'UCG-8e7mDwWy62L8kXRN2CNw', 'persona key plus words', 'Key Plus WordsPersona 4 The Animation Opening 2.mp4', 'persona key plus words/Key Plus WordsPersona 4 The Animation Opening 2.mp4', '2020-09-12 07:23:53', '2020-09-12 07:23:53');
INSERT INTO `tbl_crawled` VALUES (29, '2N4tXf3Ensw', 'BEAST IN BLACK - Blind And Frozen (OFFICIAL VIDEO)', 'Official video for BEAST IN BLACK\'s \'Blind And Frozen\', off debut album \'BERSERKER\'. Order: http://nuclearblast.com/beastinblack-berserker. SUBSCRIBE to ...', 'https://i.ytimg.com/vi/2N4tXf3Ensw/default.jpg', 'https://i.ytimg.com/vi/2N4tXf3Ensw/mqdefault.jpg', 'https://i.ytimg.com/vi/2N4tXf3Ensw/hqdefault.jpg', 'Nuclear Blast Records', '2017-09-08 11:24:28', 'UCoxg3Kml41wE3IPq-PC-LQw', 'beast in black-blind and frozen', 'BEAST IN BLACK - Blind And Frozen (OFFICIAL VIDEO).mp4', 'beast in black-blind and frozen/BEAST IN BLACK - Blind And Frozen (OFFICIAL VIDEO).mp4', '2020-09-12 08:38:39', '2020-09-12 08:38:39');
INSERT INTO `tbl_crawled` VALUES (30, '8S6WqYbXFNo', 'Nightcore Top 20 Songs Of NEFFEX ⚡ Best of NEFFEX ⚡ NEFFEX Nightcore', 'Nightcore Top 20 Songs Of NEFFEX ⚡ Best of NEFFEX ⚡ NEFFEX Nightcore Nightcore Mix Nightcore Nightcore 1 Hour Nightcore 2020 Nightcore Gaming Mix ...', 'https://i.ytimg.com/vi/8S6WqYbXFNo/default.jpg', 'https://i.ytimg.com/vi/8S6WqYbXFNo/mqdefault.jpg', 'https://i.ytimg.com/vi/8S6WqYbXFNo/hqdefault.jpg', 'Kurumi', '2020-03-29 12:00:04', 'UCN1UX97MkTb-nuiqJaBPRTA', 'ightcore Top 20 Songs Of NEFFEX', 'Nightcore Top 20 Songs Of NEFFEX ⚡ Best of NEFFEX ⚡ NEFFEX Nightcore.mp4', 'ightcore Top 20 Songs Of NEFFEX/Nightcore Top 20 Songs Of NEFFEX ⚡ Best of NEFFEX ⚡ NEFFEX Nightcore.mp4', '2020-09-12 08:41:07', '2020-09-12 08:41:07');
INSERT INTO `tbl_crawled` VALUES (31, 'iR-K2rUP86M', 'DAGOTHWAVE', 'SOUNDCLOUD: https://soundcloud.com/youngscrolls/dagothwave BANDCAMP: https://youngscrolls.bandcamp.com/track/dagothwave MERCH: ...', 'https://i.ytimg.com/vi/iR-K2rUP86M/default.jpg', 'https://i.ytimg.com/vi/iR-K2rUP86M/mqdefault.jpg', 'https://i.ytimg.com/vi/iR-K2rUP86M/hqdefault.jpg', 'young scrolls', '2017-10-26 17:31:49', 'UCXzmcdy3BVCnLqwOx2JERMg', 'dagoth wave high quality', 'DAGOTHWAVE.mp4', 'dagoth wave high quality/DAGOTHWAVE.mp4', '2020-09-12 09:00:21', '2020-09-12 09:00:21');
INSERT INTO `tbl_crawled` VALUES (32, 'iaBlKyNrmYQ', 'Ophelia - Aimer', 'Ophelia by aimer Lyrics by aimerrythm Music by Kousuke Noma Arranged by MAURA © TYPE-MOON - ufotable - FSNPC.', 'https://i.ytimg.com/vi/iaBlKyNrmYQ/default.jpg', 'https://i.ytimg.com/vi/iaBlKyNrmYQ/mqdefault.jpg', 'https://i.ytimg.com/vi/iaBlKyNrmYQ/hqdefault.jpg', 'Patrick Lee', '2016-01-08 15:05:39', 'UCgyb0mjdCbwo9V12gFg9VTg', 'Ophelia - Aimer', 'Ophelia - Aimer.mp4', 'Ophelia - Aimer/Ophelia - Aimer.mp4', '2020-09-12 09:25:26', '2020-09-12 09:25:26');
INSERT INTO `tbl_crawled` VALUES (34, 'L2QTtdeL3dE', 'Disturbed - Indestructible Full album HQ', 'one of the greatest album and band EVER. 1. Indestructible - 0:00 2. Inside the Fire - 4:38 3. Deceiver - 8:29 4. The Night - 12:19 5. Haunted - 17:05 6. Perfect ...', 'https://i.ytimg.com/vi/L2QTtdeL3dE/default.jpg', 'https://i.ytimg.com/vi/L2QTtdeL3dE/mqdefault.jpg', 'https://i.ytimg.com/vi/L2QTtdeL3dE/hqdefault.jpg', 'Mr. MusicmanTV', '2018-01-08 01:12:00', 'UCZ5eLwVvfIJzDvdrEwsxK6Q', 'indestructable full HQ', 'Disturbed - Indestructible Full album HQ.mp4', 'indestructable full HQ/Disturbed - Indestructible Full album HQ.mp4', '2020-09-12 09:46:50', '2020-09-12 09:46:50');
INSERT INTO `tbl_crawled` VALUES (35, 'C5uhP8TEkIQ', 'Nightcore - Kimi ga Iru Kara', 'Thanks For Watching ====================================== Nightcore Mix By Mr.BewttyBuss •Fanpage ...', 'https://i.ytimg.com/vi/C5uhP8TEkIQ/default.jpg', 'https://i.ytimg.com/vi/C5uhP8TEkIQ/mqdefault.jpg', 'https://i.ytimg.com/vi/C5uhP8TEkIQ/hqdefault.jpg', 'HaruSana Nightcore', '2016-08-07 12:18:07', 'UC0A-xMeNao8YRoJtAjOldNw', 'Nightcore - Kimi ga Iru Kara', 'Nightcore - Kimi ga Iru Kara.mp4', 'Nightcore - Kimi ga Iru Kara/Nightcore - Kimi ga Iru Kara.mp4', '2020-09-12 10:57:31', '2020-09-12 10:57:31');
INSERT INTO `tbl_crawled` VALUES (36, 'Ul0sp782hIQ', 'Pursuing My True Self FULL w lyrics', 'The full opening theme of Persona 4 with lyrics added for you to sing along this superbly catchy song. This song could be found in Never More ...', 'https://i.ytimg.com/vi/Ul0sp782hIQ/default.jpg', 'https://i.ytimg.com/vi/Ul0sp782hIQ/mqdefault.jpg', 'https://i.ytimg.com/vi/Ul0sp782hIQ/hqdefault.jpg', 'Adhitya Alkautsar', '2015-03-17 13:30:50', 'UCua2sHBL7ozlVzl2bz4CmgA', 'Pursuing My True Self', 'Pursuing My True Self FULL w lyrics.mp4', 'Pursuing My True Self/Pursuing My True Self FULL w lyrics.mp4', '2020-09-13 01:40:55', '2020-09-13 01:40:55');
INSERT INTO `tbl_crawled` VALUES (37, 'YK9Y1EqjDpY', 'Persona 4 Golden  Time to Make History REAL Lyrics', 'EDIT- Are you serious?! Over 200k views and here i thought nobody liked this song Since i couldnt find ANY video on youtube that had the real lyrics to this ...', 'https://i.ytimg.com/vi/YK9Y1EqjDpY/default.jpg', 'https://i.ytimg.com/vi/YK9Y1EqjDpY/mqdefault.jpg', 'https://i.ytimg.com/vi/YK9Y1EqjDpY/hqdefault.jpg', 'xPervertedkida', '2013-06-24 21:23:45', 'UCOCFwxphY9T59NpNFh5F89A', 'persona time to make history', 'Persona 4 Golden  Time to Make History REAL Lyrics.mp4', 'persona time to make history/Persona 4 Golden  Time to Make History REAL Lyrics.mp4', '2020-09-13 01:42:10', '2020-09-13 01:42:10');
INSERT INTO `tbl_crawled` VALUES (38, 'Mk0A5uFoG3c', 'Persona 4  Reach Out To The Truth Lyrics amp; Subtitles', 'Watch in 720p and Expand to see the text alot easier. Shin Megami Tensei: Persona 4 Song: Reach Out To The Truth Composed by: Shoji Meguro Arranged by: ...', 'https://i.ytimg.com/vi/Mk0A5uFoG3c/default.jpg', 'https://i.ytimg.com/vi/Mk0A5uFoG3c/mqdefault.jpg', 'https://i.ytimg.com/vi/Mk0A5uFoG3c/hqdefault.jpg', 'Numbbi', '2009-04-05 14:53:05', 'UCuYYA5TP93ZgMyZrd53BwyQ', 'persona reach out to the truth', 'Persona 4  Reach Out To The Truth Lyrics amp; Subtitles.mp4', 'persona reach out to the truth/Persona 4  Reach Out To The Truth Lyrics amp; Subtitles.mp4', '2020-09-13 01:42:54', '2020-09-13 01:42:54');
INSERT INTO `tbl_crawled` VALUES (39, 'BetFWIeMZ_0', '[한글화] 끝없이 칭찬해주는 하루노 소라 쌤', '하루노 소라 판권을 가진 AHS사: \"작품 만들어 줬으면 좋겠는데...\" GYARI: \"알겠어 (천하무쌍)\" ----------------------------------------------------------------- 원본 ...', 'https://i.ytimg.com/vi/BetFWIeMZ_0/default.jpg', 'https://i.ytimg.com/vi/BetFWIeMZ_0/mqdefault.jpg', 'https://i.ytimg.com/vi/BetFWIeMZ_0/hqdefault.jpg', '요하네', '2019-01-07 21:34:42', 'UCcVVCHWapqkymd3G3GG6iXA', '하루노 소라 쌤', '[한글화] 끝없이 칭찬해주는 하루노 소라 쌤.mp4', '하루노 소라 쌤/[한글화] 끝없이 칭찬해주는 하루노 소라 쌤.mp4', '2020-09-13 03:23:33', '2020-09-13 03:23:33');
INSERT INTO `tbl_crawled` VALUES (40, 'zB447eVGaTs', 'LISA  증표 シルシ 소드 아트 온라인 2기 2쿨 ED', '이번 곡은 소드 아트 온라인 2기 2쿨 ED인 LISA님의 증표 (シルシ)입니다! 다른 합창 영상 작업으로 인해, 업로드가 늦어졌습니다! 진심으로 죄송합니다 ㅜ 좋은 영상 ...', 'https://i.ytimg.com/vi/zB447eVGaTs/default.jpg', 'https://i.ytimg.com/vi/zB447eVGaTs/mqdefault.jpg', 'https://i.ytimg.com/vi/zB447eVGaTs/hqdefault.jpg', 'J - Anthology', '2016-02-21 16:32:02', 'UCzqF_192ia15XHswC9QqEkQ', 'LISA - 증표 (シルシ) 소드 아트 온라인 2기 2쿨 ED', 'LISA  증표 シルシ 소드 아트 온라인 2기 2쿨 ED.mp4', 'LISA - 증표 (シルシ) 소드 아트 온라인 2기 2쿨 ED/LISA  증표 シルシ 소드 아트 온라인 2기 2쿨 ED.mp4', '2020-09-13 03:36:08', '2020-09-13 03:36:08');
INSERT INTO `tbl_crawled` VALUES (41, 'kqDVc56O9l0', '데레스테  Nation Blue デレステ Nation Blue MV', '아이돌마스터 신데렐라 걸즈 스타라이트 스테이지 - Nation Blue MV (アイドルマスター シンデレラガールズ スターライトステージ - Nation Blue MV) info: ...', 'https://i.ytimg.com/vi/kqDVc56O9l0/default.jpg', 'https://i.ytimg.com/vi/kqDVc56O9l0/mqdefault.jpg', 'https://i.ytimg.com/vi/kqDVc56O9l0/hqdefault.jpg', 'PerfumeTripper', '2017-02-21 07:47:14', 'UCgWip1SpHWpQxhlHMlJlm1A', '데레스테 - Nation Blue (デレステ- Nation Blue) MV', '데레스테  Nation Blue デレステ Nation Blue MV.mp4', '데레스테 - Nation Blue (デレステ- Nation Blue) MV/데레스테  Nation Blue デレステ Nation Blue MV.mp4', '2020-09-13 03:51:36', '2020-09-13 03:51:36');
INSERT INTO `tbl_crawled` VALUES (42, 'NVFvxOFU2q8', '스즈미야 하루히의 우울  God Knows 풀버전', '오랜만에 찾아 뵙네용 ㅎ 전부터 올리고 싶었던 곡입니당 ㅎ 음원 출처 : https://youtu.be/GtAjY7WMYW4.', 'https://i.ytimg.com/vi/NVFvxOFU2q8/default.jpg', 'https://i.ytimg.com/vi/NVFvxOFU2q8/mqdefault.jpg', 'https://i.ytimg.com/vi/NVFvxOFU2q8/hqdefault.jpg', 'Rudolf', '2019-11-13 08:45:53', 'UCLvH0zUVRjU34t6Ekf8-UeA', '스즈미야 하루히의 우울 - God Knows', '스즈미야 하루히의 우울  God Knows 풀버전.mp4', '스즈미야 하루히의 우울 - God Knows/스즈미야 하루히의 우울  God Knows 풀버전.mp4', '2020-09-13 03:57:41', '2020-09-13 03:57:41');
INSERT INTO `tbl_crawled` VALUES (43, 'EzSL38lwUCQ', 'The Melancholy of Haruhi Suzumiya  Bouken Desho Desho Full [HDHQ] {Opening 1}', 'Suzumiya Haruhi no Yūutsu - Bouken Desho Desho (Full) [HD/HQ] {Opening #1} The Melancholy of Haruhi Suzumiya - Bouken Desho Desho (Full) [HD/HQ] ...', 'https://i.ytimg.com/vi/EzSL38lwUCQ/default.jpg', 'https://i.ytimg.com/vi/EzSL38lwUCQ/mqdefault.jpg', 'https://i.ytimg.com/vi/EzSL38lwUCQ/hqdefault.jpg', 'HDAnimeMusic', '2012-06-27 15:51:03', 'UCoHoPaupKpv9QAeHBumSrOA', 'The Melancholy of Haruhi Suzumiya - Bouken Desho Desho (Full) [HD/HQ]', 'The Melancholy of Haruhi Suzumiya  Bouken Desho Desho Full [HDHQ] {Opening 1}.mp4', 'The Melancholy of Haruhi Suzumiya - Bouken Desho Desho (Full) [HD/HQ]/The Melancholy of Haruhi Suzumiya  Bouken Desho Desho Full [HDHQ] {Opening 1}.mp4', '2020-09-13 03:58:39', '2020-09-13 03:58:39');
INSERT INTO `tbl_crawled` VALUES (44, 'XbGs_qK2PQA', 'Eminem  Rap God Explicit [Official Video]', 'Download Eminem\'s \'MMLP2\' Album on iTunes now:http://smarturl.it/MMLP2 Credits below Video Director: Rich Lee Video Producer: Justin Diener Video ...', 'https://i.ytimg.com/vi/XbGs_qK2PQA/default.jpg', 'https://i.ytimg.com/vi/XbGs_qK2PQA/mqdefault.jpg', 'https://i.ytimg.com/vi/XbGs_qK2PQA/hqdefault.jpg', 'EminemVEVO', '2013-11-27 16:50:00', 'UC20vb-R_px4CguHzzBPhoyQ', 'rap god', 'Eminem  Rap God Explicit [Official Video].mp4', 'rap god/Eminem  Rap God Explicit [Official Video].mp4', '2020-09-13 04:15:47', '2020-09-13 04:15:47');
INSERT INTO `tbl_crawled` VALUES (45, 'zaVNKUrzySc', 'Lordi  Rock Police  Lyrics on screen  HD', 'Song: Rock Police Album: Babez For Breakfast Download link: http://www.mediafire.com/?1p0rba3lm8f7y8y.', 'https://i.ytimg.com/vi/zaVNKUrzySc/default.jpg', 'https://i.ytimg.com/vi/zaVNKUrzySc/mqdefault.jpg', 'https://i.ytimg.com/vi/zaVNKUrzySc/hqdefault.jpg', 'LordiLyrics', '2013-03-12 20:50:37', 'UC4XkaCurPQjfBVexIdD9wLA', 'rock police', 'Lordi  Rock Police  Lyrics on screen  HD.mp4', 'rock police/Lordi  Rock Police  Lyrics on screen  HD.mp4', '2020-09-13 04:49:12', '2020-09-13 04:49:12');
INSERT INTO `tbl_crawled` VALUES (46, 'uwCKpqP8jRc', 'Let39;s Go Slaughter HeMan I Wanna Be the BeastMan in the Masters of the Universe', 'Provided to YouTube by Believe SAS Let\'s Go Slaughter He-Man (I Wanna Be the Beast-Man in the Masters of the Universe) · Lordi · Mr. Lordi · Miss Hella · Mr.', 'https://i.ytimg.com/vi/uwCKpqP8jRc/default.jpg', 'https://i.ytimg.com/vi/uwCKpqP8jRc/mqdefault.jpg', 'https://i.ytimg.com/vi/uwCKpqP8jRc/hqdefault.jpg', 'Lordi - Topic', '2017-01-25 22:50:52', 'UCbgX1bv2fS9S2tQB_NMuIEQ', 'slauther the heman', 'Let39;s Go Slaughter HeMan I Wanna Be the BeastMan in the Masters of the Universe.mp4', 'slauther the heman/Let39;s Go Slaughter HeMan I Wanna Be the BeastMan in the Masters of the Universe.mp4', '2020-09-13 04:49:29', '2020-09-13 04:49:29');
INSERT INTO `tbl_crawled` VALUES (48, 'AwfmxdW-7Q4', 'Kuusou Triangle  ChouCho  Haruchika ending', 'from: ハルチカ ～ハルタとチカは青春する～ (Haruchika: Haruta to Chika wa Seishun Suru) japanese title: 空想トライアングル - ChouCho I (Obviously) don\'t own this ...', 'https://i.ytimg.com/vi/AwfmxdW-7Q4/default.jpg', 'https://i.ytimg.com/vi/AwfmxdW-7Q4/mqdefault.jpg', 'https://i.ytimg.com/vi/AwfmxdW-7Q4/hqdefault.jpg', 'Juan', '2017-05-09 19:00:29', 'UC0iSpJHesoQi_Z8KXco7vtg', 'Kuusou Triangle  ChouCho  Haruchika ending', 'Kuusou Triangle  ChouCho  Haruchika ending.mp4', 'Kuusou Triangle  ChouCho  Haruchika ending/Kuusou Triangle  ChouCho  Haruchika ending.mp4', '2020-09-13 06:06:19', '2020-09-13 06:06:19');
INSERT INTO `tbl_crawled` VALUES (49, 'PUfY7QGNod4', 'Choucho  Starlog  Romaji Lyrics ', 'Choucho - Starlog [ Romaji Lyrics ] Please turn on the \"Subtitles/CC\" thingy Artist : Choucho Song : Starlog Anime : Fate Kalied Liner Prisma Illya Season I Lyrics ...', 'https://i.ytimg.com/vi/PUfY7QGNod4/default.jpg', 'https://i.ytimg.com/vi/PUfY7QGNod4/mqdefault.jpg', 'https://i.ytimg.com/vi/PUfY7QGNod4/hqdefault.jpg', 'Aikara Rhecia', '2014-08-25 14:28:36', 'UCIC5Z-3JcQ8D0PzmNvIzrEg', 'Choucho  Starlog  Romaji Lyrics', 'Choucho  Starlog  Romaji Lyrics .mp4', 'Choucho  Starlog  Romaji Lyrics/Choucho  Starlog  Romaji Lyrics .mp4', '2020-09-13 06:08:58', '2020-10-09 19:30:30');
INSERT INTO `tbl_crawled` VALUES (50, '4bmUFRxNEIg', 'Luis Fonsi  Despacito  cover by JFla ', 'You can stream all of my songs here; Spotify: http://bit.ly/JFla-Spotify Apple Music: http://bit.ly/‎JFla-AppleMusic Amazon: http://bit.ly/JFla-Amazon Deezer: ...', 'https://i.ytimg.com/vi/4bmUFRxNEIg/default.jpg', 'https://i.ytimg.com/vi/4bmUFRxNEIg/mqdefault.jpg', 'https://i.ytimg.com/vi/4bmUFRxNEIg/hqdefault.jpg', 'JFlaMusic', '2017-05-12 12:04:19', 'UClkRzsdvg7_RKVhwDwiDZOA', 'jfla despacito', 'Luis Fonsi  Despacito  cover by JFla .mp4', 'jfla despacito/Luis Fonsi  Despacito  cover by JFla .mp4', '2020-09-13 07:55:52', '2020-09-13 07:55:52');
INSERT INTO `tbl_crawled` VALUES (51, 'P3ue1JPFXEU', 'Persona 4  Heartbeat, Heartbreak', 'Inaba - Cloudy theme. Plays pretty much all the time after school. ------lyrics------ Tell me why you did it Every dream falling apart Tell me why you did it After the ...', 'https://i.ytimg.com/vi/P3ue1JPFXEU/default.jpg', 'https://i.ytimg.com/vi/P3ue1JPFXEU/mqdefault.jpg', 'https://i.ytimg.com/vi/P3ue1JPFXEU/hqdefault.jpg', 'Veysel Aytekin', '2011-01-03 21:40:28', 'UCVlQJrqHM4rAvSGTer9xP7A', 'persona heart beat', 'Persona 4  Heartbeat, Heartbreak.mp4', 'persona heart beat/Persona 4  Heartbeat, Heartbreak.mp4', '2020-09-13 08:01:28', '2020-09-13 08:01:28');
INSERT INTO `tbl_crawled` VALUES (84, 'YoBwKfMluuo', '80년대 일본을 느껴보자 감성 시티팝 플레이리스트 Japanese City Pop Playlist', '제가 좋아하는 시티팝들로 플레이리스트를 만들었습니다 모든음악의 수익은 저작권자에게 갑니다 즐겁게 들으셨다면 좋아요 눌러주세요~^^', 'https://i.ytimg.com/vi/YoBwKfMluuo/default.jpg', 'https://i.ytimg.com/vi/YoBwKfMluuo/mqdefault.jpg', 'https://i.ytimg.com/vi/YoBwKfMluuo/hqdefault.jpg', '원포탐onceuponatime', '2020-01-06 04:35:27', 'UCH4SoJBFAtZO0LtqCKaooNw', '시티팝', '80년대 일본을 느껴보자 감성 시티팝 플레이리스트 Japanese City Pop Playlist.mp4', '시티팝/80년대 일본을 느껴보자 감성 시티팝 플레이리스트 Japanese City Pop Playlist.mp4', '2020-09-15 11:42:04', '2020-09-15 11:42:04');
INSERT INTO `tbl_crawled` VALUES (85, 'TdUCnEHHWOU', '한국 시티팝City Pop 갬성 노래 모음 Vol 1ㅣ KOREAN CITYPOP STYLE MIX VOL 1', '고마운 시청자분의 정보 제공으로 1탄을 살려냈습니다. ◈ 1곡(유빈-숙녀)은 어쩔 수 없이 제외 되었습니다.', 'https://i.ytimg.com/vi/TdUCnEHHWOU/default.jpg', 'https://i.ytimg.com/vi/TdUCnEHHWOU/mqdefault.jpg', 'https://i.ytimg.com/vi/TdUCnEHHWOU/hqdefault.jpg', '안갬성', '2019-09-21 08:44:21', 'UCBahLEaKHwSEjJt__xsMYlQ', '시티팝', '한국 시티팝City Pop 갬성 노래 모음 Vol 1ㅣ KOREAN CITYPOP STYLE MIX VOL 1.mp4', '시티팝/한국 시티팝City Pop 갬성 노래 모음 Vol 1ㅣ KOREAN CITYPOP STYLE MIX VOL 1.mp4', '2020-09-15 11:42:11', '2020-09-15 11:42:11');
INSERT INTO `tbl_crawled` VALUES (86, 'deA9MuH6ijA', '다가오는 여름엔 청량미☆뿜뿜☆시티팝 플레이리스트  l PLAYLIST', '여름 #시티팝 #신스팝 구독하기✓ - https://bit.ly/2RBbvym Subscribing and writing are good for me. If you liked the video, subscribe to it. Press it. Thank you ...', 'https://i.ytimg.com/vi/deA9MuH6ijA/default.jpg', 'https://i.ytimg.com/vi/deA9MuH6ijA/mqdefault.jpg', 'https://i.ytimg.com/vi/deA9MuH6ijA/hqdefault.jpg', 'In The Indie _ 인디인디', '2020-05-10 23:00:12', 'UCmBqBxouLDy3Mfu4XzESuAA', '시티팝', '다가오는 여름엔 청량미☆뿜뿜☆시티팝 플레이리스트  l PLAYLIST.mp4', '시티팝/다가오는 여름엔 청량미☆뿜뿜☆시티팝 플레이리스트  l PLAYLIST.mp4', '2020-09-15 11:42:23', '2020-09-15 11:42:23');
INSERT INTO `tbl_crawled` VALUES (87, 'OycgifzTHgk', '한국 시티팝City Pop 갬성 노래 모음 Vol 25ㅣ KOREAN CITYPOP STYLE MIX VOL 25', '저작권으로 인한 금지곡 삭제 후 재업로드 된 버젼입니다. (Vol 2.5) ◈ 01, 06트랙 노래가 새로 추가 됐으며 03, 18트랙 영상이 변경 되었습니다. ◈ 선곡과 트랙배치에 ...', 'https://i.ytimg.com/vi/OycgifzTHgk/default.jpg', 'https://i.ytimg.com/vi/OycgifzTHgk/mqdefault.jpg', 'https://i.ytimg.com/vi/OycgifzTHgk/hqdefault.jpg', '안갬성', '2019-09-10 08:54:58', 'UCBahLEaKHwSEjJt__xsMYlQ', '한국 시티팝City Pop 갬성 노래 모음 Vol 25ㅣ KOREAN CITYPOP STYLE MIX VOL 25', '한국 시티팝City Pop 갬성 노래 모음 Vol 25ㅣ KOREAN CITYPOP STYLE MIX VOL 25.mp4', '한국 시티팝City Pop 갬성 노래 모음 Vol 25ㅣ KOREAN CITYPOP STYLE MIX VOL 25/한국 시티팝City Pop 갬성 노래 모음 Vol 25ㅣ KOREAN CITYPOP STYLE MIX VOL 25.mp4', '2020-09-15 11:44:38', '2020-09-15 11:44:38');
INSERT INTO `tbl_crawled` VALUES (90, '864Kro2pFbk', '시티팝 요정 레인보우노트 노래 모음', '00:00 00:00 Cherry Blossom 03:40 03:40 1호선 06:58 06:58 샛별 10:30 10:30 광안리 14:17 14:17 Beautiful Night 18:16 18:16 소행성.', 'https://i.ytimg.com/vi/864Kro2pFbk/default.jpg', 'https://i.ytimg.com/vi/864Kro2pFbk/mqdefault.jpg', 'https://i.ytimg.com/vi/864Kro2pFbk/hqdefault.jpg', '케이팝 진심녀 K-POP CDR', '2020-05-15 16:00:06', 'UCJltHPMne0KGUOzCOCWwTtw', '레인보우 노트', '시티팝 요정 레인보우노트 노래 모음.mp4', '레인보우 노트/시티팝 요정 레인보우노트 노래 모음.mp4', '2020-09-15 12:03:48', '2020-09-15 12:03:48');
INSERT INTO `tbl_crawled` VALUES (92, 'wKPKyxOTb1c', 'Lordi  None For One  Lyrics on screen  HD', 'Song: None For One Album: Monstereophonic (Theaterror vs. Demonarchy) My Twitter: http://adf.ly/VQ6Ss.', 'https://i.ytimg.com/vi/wKPKyxOTb1c/default.jpg', 'https://i.ytimg.com/vi/wKPKyxOTb1c/mqdefault.jpg', 'https://i.ytimg.com/vi/wKPKyxOTb1c/hqdefault.jpg', 'LordiLyrics', '2016-12-07 21:37:30', 'UC4XkaCurPQjfBVexIdD9wLA', 'Lordi  None For One  Lyrics on screen  HD', 'Lordi  None For One  Lyrics on screen  HD.mp4', 'Lordi  None For One  Lyrics on screen  HD/Lordi  None For One  Lyrics on screen  HD.mp4', '2020-09-19 01:41:02', '2020-09-19 01:41:02');
INSERT INTO `tbl_crawled` VALUES (93, '3jESUPo32VQ', 'Lordi  Break Of Dawn  Lyrics on screen  HD', 'Song: Break Of Dawn Album: Monstereophonic (Theaterror vs. Demonarchy) My Twitter: http://adf.ly/VQ6Ss.', 'https://i.ytimg.com/vi/3jESUPo32VQ/default.jpg', 'https://i.ytimg.com/vi/3jESUPo32VQ/mqdefault.jpg', 'https://i.ytimg.com/vi/3jESUPo32VQ/hqdefault.jpg', 'LordiLyrics', '2016-12-27 14:12:14', 'UC4XkaCurPQjfBVexIdD9wLA', 'Lordi  Break Of Dawn', 'Lordi  Break Of Dawn  Lyrics on screen  HD.mp4', 'Lordi  Break Of Dawn/Lordi  Break Of Dawn  Lyrics on screen  HD.mp4', '2020-09-19 01:49:12', '2020-09-19 01:49:12');
INSERT INTO `tbl_crawled` VALUES (94, 'ghq_zJA_T_w', 'Lordi  The Night The Monsters Died  Lyrics on screen  HD', 'Song: The Night The monsters Died Album: Monstereophonic (Theaterror vs. Demonarchy) My Twitter: http://adf.ly/VQ6Ss.', 'https://i.ytimg.com/vi/ghq_zJA_T_w/default.jpg', 'https://i.ytimg.com/vi/ghq_zJA_T_w/mqdefault.jpg', 'https://i.ytimg.com/vi/ghq_zJA_T_w/hqdefault.jpg', 'LordiLyrics', '2016-12-27 14:37:19', 'UC4XkaCurPQjfBVexIdD9wLA', 'Lordi  The Night The Monsters Died', 'Lordi  The Night The Monsters Died  Lyrics on screen  HD.mp4', 'Lordi  The Night The Monsters Died/Lordi  The Night The Monsters Died  Lyrics on screen  HD.mp4', '2020-09-19 01:54:30', '2020-09-19 01:54:30');
INSERT INTO `tbl_crawled` VALUES (95, 'vYR7Q-466Bw', 'Lordi  Pet The Destroyer  Lyrics on screen  HD', 'Song: Pet The Destroyer Album: The Monsterican Dream Download link: http://www.mediafire.com/?mk1bcjkasxk5cnn.', 'https://i.ytimg.com/vi/vYR7Q-466Bw/default.jpg', 'https://i.ytimg.com/vi/vYR7Q-466Bw/mqdefault.jpg', 'https://i.ytimg.com/vi/vYR7Q-466Bw/hqdefault.jpg', 'LordiLyrics', '2012-12-21 22:24:50', 'UC4XkaCurPQjfBVexIdD9wLA', 'Lordi  Pet The Destroyer', 'Lordi  Pet The Destroyer  Lyrics on screen  HD.mp4', 'Lordi  Pet The Destroyer/Lordi  Pet The Destroyer  Lyrics on screen  HD.mp4', '2020-09-19 02:38:06', '2020-09-19 02:38:06');
INSERT INTO `tbl_crawled` VALUES (96, 'MF1X8pQgDUQ', 'Lordi  Bite It Like A Bulldog  Lyrics on screen  HD', 'Song: Bite It Like A Bulldog Album: Deadache Download link:', 'https://i.ytimg.com/vi/MF1X8pQgDUQ/default.jpg', 'https://i.ytimg.com/vi/MF1X8pQgDUQ/mqdefault.jpg', 'https://i.ytimg.com/vi/MF1X8pQgDUQ/hqdefault.jpg', 'LordiLyrics', '2013-02-05 21:32:57', 'UC4XkaCurPQjfBVexIdD9wLA', 'Lordi  Bite It Like A Bulldog', 'Lordi  Bite It Like A Bulldog  Lyrics on screen  HD.mp4', 'Lordi  Bite It Like A Bulldog/Lordi  Bite It Like A Bulldog  Lyrics on screen  HD.mp4', '2020-09-19 02:45:36', '2020-09-19 02:45:36');
INSERT INTO `tbl_crawled` VALUES (97, 'djV11Xbc914', 'aha  Take On Me Official 4K Music Video', 'ONE BILLION VIEWS on February 17, 2020 “Take On Me” has been remastered in stunning 4K resolution - watch it now! The #TakeOnMe1BN Capsule ...', 'https://i.ytimg.com/vi/djV11Xbc914/default.jpg', 'https://i.ytimg.com/vi/djV11Xbc914/mqdefault.jpg', 'https://i.ytimg.com/vi/djV11Xbc914/hqdefault.jpg', 'a-ha', '2010-01-06 17:58:29', 'UCeEi1My3KTXHT0SG1JkR9gA', 'take on me', 'aha  Take On Me Official 4K Music Video.mp4', 'take on me/aha  Take On Me Official 4K Music Video.mp4', '2020-09-19 03:34:09', '2020-09-19 03:34:09');
INSERT INTO `tbl_crawled` VALUES (98, 'dQw4w9WgXcQ', 'Rick Astley  Never Gonna Give You Up Video', 'Rick Astley\'s official music video for “Never Gonna Give You Up” Listen to Rick Astley: https://RickAstley.lnk.to/_listenYD Subscribe to the official Rick Astley ...', 'https://i.ytimg.com/vi/dQw4w9WgXcQ/default.jpg', 'https://i.ytimg.com/vi/dQw4w9WgXcQ/mqdefault.jpg', 'https://i.ytimg.com/vi/dQw4w9WgXcQ/hqdefault.jpg', 'RickAstleyVEVO', '2009-10-25 06:57:33', 'UC38IQsAvIsxxjztdMZQtwHA', 'Rick Astley  Never Gonna Give You Up', 'Rick Astley  Never Gonna Give You Up Video.mp4', 'Rick Astley  Never Gonna Give You Up/Rick Astley  Never Gonna Give You Up Video.mp4', '2020-09-19 03:39:45', '2020-09-19 03:39:45');
INSERT INTO `tbl_crawled` VALUES (99, 'yPYZpwSpKmA', 'Rick Astley  Together Forever Official Music Video', 'Rick Astley - Together Forever (Official Music Video) Listen On Spotify - http://smarturl.it/AstleySpotify Buy On iTunes - http://smarturl.it/AstleyGHiTunes Amazon ...', 'https://i.ytimg.com/vi/yPYZpwSpKmA/default.jpg', 'https://i.ytimg.com/vi/yPYZpwSpKmA/mqdefault.jpg', 'https://i.ytimg.com/vi/yPYZpwSpKmA/hqdefault.jpg', 'RickAstleyVEVO', '2009-10-25 18:56:16', 'UC38IQsAvIsxxjztdMZQtwHA', 'Rick Astley  Together Forever', 'Rick Astley  Together Forever Official Music Video.mp4', 'Rick Astley  Together Forever/Rick Astley  Together Forever Official Music Video.mp4', '2020-09-19 03:43:52', '2020-09-19 03:43:52');
INSERT INTO `tbl_crawled` VALUES (100, 'eYuUAGXN0KM', 'Rick Astley  Take Me to Your Heart Offiical Video', 'Check out the official music video for \"Take Me To Your Heart\" by Rick Astley Rick Astley - Take Me To Your Heart (Official Music Video) Listen On Spotify ...', 'https://i.ytimg.com/vi/eYuUAGXN0KM/default.jpg', 'https://i.ytimg.com/vi/eYuUAGXN0KM/mqdefault.jpg', 'https://i.ytimg.com/vi/eYuUAGXN0KM/hqdefault.jpg', 'RickAstleyVEVO', '2012-03-14 11:59:35', 'UC38IQsAvIsxxjztdMZQtwHA', 'Rick Astley  Take Me To Your Heart', 'Rick Astley  Take Me to Your Heart Offiical Video.mp4', 'Rick Astley  Take Me To Your Heart/Rick Astley  Take Me to Your Heart Offiical Video.mp4', '2020-09-19 03:48:21', '2020-09-19 03:48:21');
INSERT INTO `tbl_crawled` VALUES (101, 'ZVEyPCT4BM8', 'Crazy For You  Marina Saito사이토 마리나', '車の窓を開けて キミは風にはしゃぐ なんか最近悩んでた？ 訊けないままの環状線 遠ざかる景色に 置いて来たものは何？ 仲間たちのエピソードに 一瞬沈んでた 打ち明け ...', 'https://i.ytimg.com/vi/ZVEyPCT4BM8/default.jpg', 'https://i.ytimg.com/vi/ZVEyPCT4BM8/mqdefault.jpg', 'https://i.ytimg.com/vi/ZVEyPCT4BM8/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2019-06-03 11:37:39', 'UCOzNl-egSzuZF9Dm7EmvghQ', 'Crazy For You  Marina Saito사이토 마리나', 'Crazy For You  Marina Saito사이토 마리나.mp4', 'Crazy For You  Marina Saito사이토 마리나/Crazy For You  Marina Saito사이토 마리나.mp4', '2020-09-20 00:40:48', '2020-09-20 00:40:48');
INSERT INTO `tbl_crawled` VALUES (102, 'cr_jhFpymzw', 'Lyrics歌詞가사 What Do You Want Me To Do どうして欲しいのDoushiteHoshiiNo어떻게해주면좋겠니  Meiko Nakahara 中原めいこ', 'https://www.instagram.com/Sound_Hodori Meiko Nakahara - What Do You Want Me to Do -どうして欲しいの- Anime : Sailor Moon Subtitles ...', 'https://i.ytimg.com/vi/cr_jhFpymzw/default.jpg', 'https://i.ytimg.com/vi/cr_jhFpymzw/mqdefault.jpg', 'https://i.ytimg.com/vi/cr_jhFpymzw/hqdefault.jpg', 'Sound Hodori 사운드 호돌이 サウンドゥ ホドリ', '2020-09-24 09:04:47', 'UCajOu21bNwvdjPMwXW2-6Nw', 'what do you want me to do meiko nakahara', 'Lyrics歌詞가사 What Do You Want Me To Do どうして欲しいのDoushiteHoshiiNo어떻게해주면좋겠니  Meiko Nakahara 中原めいこ.mp4', 'what do you want me to do meiko nakahara/Lyrics歌詞가사 What Do You Want Me To Do どうして欲しいのDoushiteHoshiiNo어떻게해주면좋겠니  Meiko Nakahara 中原めいこ.mp4', '2020-09-26 02:16:46', '2020-09-26 02:16:46');
INSERT INTO `tbl_crawled` VALUES (104, 'ORyw6TGLBvk', 'Mariya Takeuchi 竹内 まりや  September', 'From: Love Songs (1980) I own nothing shown in the video! Everything here goes to their respective owners.', 'https://i.ytimg.com/vi/ORyw6TGLBvk/default.jpg', 'https://i.ytimg.com/vi/ORyw6TGLBvk/mqdefault.jpg', 'https://i.ytimg.com/vi/ORyw6TGLBvk/hqdefault.jpg', 'September', '2017-11-18 20:56:54', 'UCs6Yi87JJqPEnONffDQWlLw', 'september mariya takeuchi', 'Mariya Takeuchi 竹内 まりや  September.mp4', 'september mariya takeuchi/Mariya Takeuchi 竹内 まりや  September.mp4', '2020-09-26 02:41:13', '2020-09-26 02:41:13');
INSERT INTO `tbl_crawled` VALUES (109, 'N9qYF9DZPdw', 'quotWeird Alquot Yankovic  White amp Nerdy Official Music Video', '\"Follow Weird Al Yankovic on Spotify: http://smarturl.it/WeirdAlSpotify Check out more great videos from the 00\'s here: http://smarturl.it/Ultimate00 Click here to ...', 'https://i.ytimg.com/vi/N9qYF9DZPdw/default.jpg', 'https://i.ytimg.com/vi/N9qYF9DZPdw/mqdefault.jpg', 'https://i.ytimg.com/vi/N9qYF9DZPdw/hqdefault.jpg', 'alyankovicVEVO', '2009-10-03 04:56:23', 'UCshnCkfV7U6DqR4IHbQbI7Q', 'White nerdy', 'quotWeird Alquot Yankovic  White amp Nerdy Official Music Video.mp4', 'White nerdy/quotWeird Alquot Yankovic  White amp Nerdy Official Music Video.mp4', '2020-10-07 23:52:07', '2020-10-07 23:52:07');
INSERT INTO `tbl_crawled` VALUES (110, 'm-_OFRK0hJM', '나몰라패밀리  야동근 MV', '설명.', 'https://i.ytimg.com/vi/m-_OFRK0hJM/default.jpg', 'https://i.ytimg.com/vi/m-_OFRK0hJM/mqdefault.jpg', 'https://i.ytimg.com/vi/m-_OFRK0hJM/hqdefault.jpg', 'FLEXWAG 플렉스웨그', '2014-09-01 01:45:07', 'UCeafeAXWKATIdyJKzxiaOxA', '야동근', '나몰라패밀리  야동근 MV.mp4', '야동근/나몰라패밀리  야동근 MV.mp4', '2020-10-07 23:55:24', '2020-10-07 23:55:24');
INSERT INTO `tbl_crawled` VALUES (111, 'mIXR-7u2Kas', 'TWICE 트와이스 quotFANCYquot Color Coded Lyrics EngRomHan가사', 'All Rights Administered by JYP Entertainment • Artist: TWICE (트와이스) • Song: FANCY • Album: \'FANCY YOU\' • Released: 19.04.22 .', 'https://i.ytimg.com/vi/mIXR-7u2Kas/default.jpg', 'https://i.ytimg.com/vi/mIXR-7u2Kas/mqdefault.jpg', 'https://i.ytimg.com/vi/mIXR-7u2Kas/hqdefault.jpg', 'Jaeguchi', '2019-04-22 09:24:55', 'UCmth4hMyizG-_W9jidBqs_A', 'twice fancy', 'TWICE 트와이스 quotFANCYquot Color Coded Lyrics EngRomHan가사.mp4', 'twice fancy/TWICE 트와이스 quotFANCYquot Color Coded Lyrics EngRomHan가사.mp4', '2020-10-08 12:21:55', '2020-10-08 12:21:55');
INSERT INTO `tbl_crawled` VALUES (113, 'nF1hlqgTs-g', 'Sick Flick', 'Provided to YouTube by Believe SAS Sick Flick · Lordi · Mr. Lordi · Mr. Lordi · Tracy Lipp Monstereophonic (Theaterror vs. Demonarchy) ℗ AFM Records, a ...', 'https://i.ytimg.com/vi/nF1hlqgTs-g/default.jpg', 'https://i.ytimg.com/vi/nF1hlqgTs-g/mqdefault.jpg', 'https://i.ytimg.com/vi/nF1hlqgTs-g/hqdefault.jpg', 'Lordi - Topic', '2017-01-25 23:19:29', 'UCbgX1bv2fS9S2tQB_NMuIEQ', 'sick flick', 'Sick Flick.mp4', 'sick flick/Sick Flick.mp4', '2020-10-10 07:39:11', '2020-10-10 07:39:11');
INSERT INTO `tbl_crawled` VALUES (114, 'le63SacwFNs', 'Pink Sweat  Drama', 'https://fanlink.to/volume1 https://instagram.com/pinksweats https://twitter.com/realpinksweats https://facebook.com/pinksweats.', 'https://i.ytimg.com/vi/le63SacwFNs/default.jpg', 'https://i.ytimg.com/vi/le63SacwFNs/mqdefault.jpg', 'https://i.ytimg.com/vi/le63SacwFNs/hqdefault.jpg', 'Pink Sweats', '2018-11-02 04:00:02', 'UCnzEF-_PurXQTK2uQ-A3Oww', 'Pink Sweat  Drama', 'Pink Sweat  Drama.mp4', 'Pink Sweat  Drama/Pink Sweat  Drama.mp4', '2020-10-11 01:04:26', '2020-10-11 01:04:26');
INSERT INTO `tbl_crawled` VALUES (115, 'vU03b24_4Fs', 'I Can’t Stop The Loneliness  Anri안리', 'I Can\'t Stop The Loneliness こらえ切れず 悲しみがとまらない 코라에키레즈카나시미가토마라나이 참을 수 없이 슬픔이 멈추지 않아 I Can\'t Stop The Loneliness ...', 'https://i.ytimg.com/vi/vU03b24_4Fs/default.jpg', 'https://i.ytimg.com/vi/vU03b24_4Fs/mqdefault.jpg', 'https://i.ytimg.com/vi/vU03b24_4Fs/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2019-05-20 09:55:11', 'UCOzNl-egSzuZF9Dm7EmvghQ', 'i cant stop loneliness anri', 'I Can’t Stop The Loneliness  Anri안리.mp4', 'i cant stop loneliness anri/I Can’t Stop The Loneliness  Anri안리.mp4', '2020-10-14 13:46:01', '2020-10-14 13:46:01');
INSERT INTO `tbl_crawled` VALUES (116, 'QGvEgbX_VsE', 'FranChouChou  quotAtsuku Narequot  FULL Zombieland Saga Episode 6 amp 7 Insert Song', 'Zombieland Saga Insert Song Episode 6 & 7 FULL \"Atsuku Nare\" by FranChouChou More Info: https://myanimelist.net/anime/37976/Zombieland_Saga ...', 'https://i.ytimg.com/vi/QGvEgbX_VsE/default.jpg', 'https://i.ytimg.com/vi/QGvEgbX_VsE/mqdefault.jpg', 'https://i.ytimg.com/vi/QGvEgbX_VsE/hqdefault.jpg', 'Melodic Irony', '2019-06-16 19:43:00', 'UCjL1C2XlsYTk1d4JMoy1ZKQ', 'FranChouChou  Atsuku Nare  FULL', 'FranChouChou  quotAtsuku Narequot  FULL Zombieland Saga Episode 6 amp 7 Insert Song.mp4', 'FranChouChou  Atsuku Nare  FULL/FranChouChou  quotAtsuku Narequot  FULL Zombieland Saga Episode 6 amp 7 Insert Song.mp4', '2020-10-15 13:08:02', '2020-10-15 13:08:02');
INSERT INTO `tbl_crawled` VALUES (117, 'OoPj-9B-zjU', 'MV HD 720p 룰라  3 4', '', 'https://i.ytimg.com/vi/OoPj-9B-zjU/default.jpg', 'https://i.ytimg.com/vi/OoPj-9B-zjU/mqdefault.jpg', 'https://i.ytimg.com/vi/OoPj-9B-zjU/hqdefault.jpg', 'melonmint93', '2014-07-29 00:41:57', 'UCAjnTbfhJ1IFbMnK50YEioA', '룰라 34', 'MV HD 720p 룰라  3 4.mp4', '룰라 34/MV HD 720p 룰라  3 4.mp4', '2020-10-17 00:08:09', '2020-10-17 00:08:09');
INSERT INTO `tbl_crawled` VALUES (118, 'dXUpbE8kIrM', '프로와 아마츄어', 'Provided to YouTube by IOKI 프로와 아마츄어 · 룰라 날개 잃은 천사 ℗ 킹핀엔터테인먼트 Released on: 1997-01-24 Auto-generated by YouTube.', 'https://i.ytimg.com/vi/dXUpbE8kIrM/default.jpg', 'https://i.ytimg.com/vi/dXUpbE8kIrM/mqdefault.jpg', 'https://i.ytimg.com/vi/dXUpbE8kIrM/hqdefault.jpg', 'Roo\'Ra - Topic', '2020-01-09 02:07:54', 'UClrlK9SJaioYAWDcK9g-S_w', '룰라 프로와 아마추어', '프로와 아마츄어.mp4', '룰라 프로와 아마추어/프로와 아마츄어.mp4', '2020-10-17 00:18:42', '2020-10-17 00:18:42');
INSERT INTO `tbl_crawled` VALUES (119, 'vKQi7up91RI', '120 고백  룰라', '노래 - 고백 아티스트 - 룰라 앨범 - 6집 Six N\' Six 발매일 - 1999.02.01 작사 이현도 작곡 이현도 편곡 이현도 라이선스 제공자 - Recording Industry Association Of ...', 'https://i.ytimg.com/vi/vKQi7up91RI/default.jpg', 'https://i.ytimg.com/vi/vKQi7up91RI/mqdefault.jpg', 'https://i.ytimg.com/vi/vKQi7up91RI/hqdefault.jpg', 'With You', '2018-08-09 14:06:58', 'UCm3XZ0SYZc2Y6Cn9ifuc2aw', '룰라 고백', '120 고백  룰라.mp4', '룰라 고백/120 고백  룰라.mp4', '2020-10-17 00:39:06', '2020-10-17 00:39:06');
INSERT INTO `tbl_crawled` VALUES (120, 'ZUE2IX0CQ4g', 'Lovelyz 러블리즈 AhChoo Lyrics', '(Artist: Lovelyz (러블리즈)) Album: Lovelyz8 Song: Ah-Choo Release Date: 1/10/2015) ---------------- #ot8 finally! #welcomebackjisoo! ------------------ Colour codes: ...', 'https://i.ytimg.com/vi/ZUE2IX0CQ4g/default.jpg', 'https://i.ytimg.com/vi/ZUE2IX0CQ4g/mqdefault.jpg', 'https://i.ytimg.com/vi/ZUE2IX0CQ4g/hqdefault.jpg', 'xjww17', '2015-10-02 03:55:28', 'UCzgQHJ1uRmlbAo2cUPU9rmQ', 'a choo', 'Lovelyz 러블리즈 AhChoo Lyrics.mp4', 'a choo/Lovelyz 러블리즈 AhChoo Lyrics.mp4', '2020-10-23 13:24:44', '2020-10-23 13:24:44');
INSERT INTO `tbl_crawled` VALUES (121, 'SYFBqLI-UtU', 'Nightcore  Left for Dead', 'Original song: Seven On Seven - Left for Dead Picture Link - https://imgur.com/a/UfxOl Song Lyrics: I just wanna be awakened Break out and never remember ...', 'https://i.ytimg.com/vi/SYFBqLI-UtU/default.jpg', 'https://i.ytimg.com/vi/SYFBqLI-UtU/mqdefault.jpg', 'https://i.ytimg.com/vi/SYFBqLI-UtU/hqdefault.jpg', 'Bahamut Nightcore', '2018-03-07 12:30:00', 'UChiBzcoeSjij-Rv5Gnhr45g', 'Nightcore  Left for Dead', 'Nightcore  Left for Dead.mp4', 'Nightcore  Left for Dead/Nightcore  Left for Dead.mp4', '2020-10-24 05:15:14', '2020-10-24 05:15:14');
INSERT INTO `tbl_crawled` VALUES (122, 'E_fr2hL2-u8', 'Lovelyz 러블리즈 quot Beautiful Days 그 시절 우리가 사랑했던 우리 quot Lyrics ColorCodedENGHANROM가사', 'NO COPYRIGHT INFRINGEMENT INTENDED: :FOR ENTERTAINMENT PURPOSES ONLY: :ALL RIGHTS RESERVED TO ITS ENT.: New Kpop Lyrics Update!', 'https://i.ytimg.com/vi/E_fr2hL2-u8/default.jpg', 'https://i.ytimg.com/vi/E_fr2hL2-u8/mqdefault.jpg', 'https://i.ytimg.com/vi/E_fr2hL2-u8/hqdefault.jpg', 'Puno Autopop', '2019-05-20 11:44:46', 'UCgsUhi54R6UaQzMkV_O7G0w', '러블리즈Lovelyz “그 시절 우리가 사랑했던 우리Beautiful Days” Official MV', 'Lovelyz 러블리즈 quot Beautiful Days 그 시절 우리가 사랑했던 우리 quot Lyrics ColorCodedENGHANROM가사.mp4', '러블리즈Lovelyz “그 시절 우리가 사랑했던 우리Beautiful Days” Official MV/Lovelyz 러블리즈 quot Beautiful Days 그 시절 우리가 사랑했던 우리 quot Lyrics ColorCodedENGHANROM가사.mp4', '2020-10-25 01:03:49', '2020-10-25 01:03:49');
INSERT INTO `tbl_crawled` VALUES (124, 'ulr0muQKjk0', 'TAEYEON 태연 39111139 MV', 'TAEYEON\'s new digital single “11:11” has been released. Listen and download on iTunes & Apple Music, Spotify, and Google Play Music ...', 'https://i.ytimg.com/vi/ulr0muQKjk0/default.jpg', 'https://i.ytimg.com/vi/ulr0muQKjk0/mqdefault.jpg', 'https://i.ytimg.com/vi/ulr0muQKjk0/hqdefault.jpg', 'SMTOWN', '2016-11-01 14:00:07', 'UCEf_Bc-KVd7onSeifS3py9g', '11', 'TAEYEON 태연 39111139 MV.mp4', '11/TAEYEON 태연 39111139 MV.mp4', '2020-10-26 11:53:11', '2020-10-26 11:53:11');
INSERT INTO `tbl_crawled` VALUES (125, '6dc32oXJ_z0', '생각ThinkFeat Kingo Hamada 하마다 킨고  윤종신Yoon Jong Shin', '월간 윤종신 7월호 기분과 8월호 생각, 그리고 하마다 킨고에 대한 이야기(민음소 EP. 26) : https://youtu.be/6tnj7xlCG7k Name : 생각(Think)(Feat. Kingo Hamada ...', 'https://i.ytimg.com/vi/6dc32oXJ_z0/default.jpg', 'https://i.ytimg.com/vi/6dc32oXJ_z0/mqdefault.jpg', 'https://i.ytimg.com/vi/6dc32oXJ_z0/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2020-08-19 16:00:20', 'UCOzNl-egSzuZF9Dm7EmvghQ', '생각ThinkFeat Kingo Hamada 하마다 킨고  윤종신Yoon Jong Shin', '생각ThinkFeat Kingo Hamada 하마다 킨고  윤종신Yoon Jong Shin.mp4', '생각ThinkFeat Kingo Hamada 하마다 킨고  윤종신Yoon Jong Shin/생각ThinkFeat Kingo Hamada 하마다 킨고  윤종신Yoon Jong Shin.mp4', '2020-10-28 12:16:07', '2020-10-28 12:16:07');
INSERT INTO `tbl_crawled` VALUES (126, 'FiLdy1QdmR4', '널 부르는 밤Feel Like  나얼Naul', 'Name : 널 부르는 밤(Feel Like) Artist : 나얼(Naul) Album : Sound Doctrine(2018) Anime : 카우보이 비밥(Cowboy Bebop) Lyrics : 처음 그 모습처럼 지금 내게 와줘 ...', 'https://i.ytimg.com/vi/FiLdy1QdmR4/default.jpg', 'https://i.ytimg.com/vi/FiLdy1QdmR4/mqdefault.jpg', 'https://i.ytimg.com/vi/FiLdy1QdmR4/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2020-08-26 12:55:39', 'UCOzNl-egSzuZF9Dm7EmvghQ', '널 부르는 밤Feel Like  나얼Naul', '널 부르는 밤Feel Like  나얼Naul.mp4', '널 부르는 밤Feel Like  나얼Naul/널 부르는 밤Feel Like  나얼Naul.mp4', '2020-10-28 12:24:51', '2020-10-28 12:24:51');
INSERT INTO `tbl_crawled` VALUES (131, '_46muFlXKjw', 'Unofficial MV, 한글가사Eng lyrics Oh No, Oh Yes  中森明菜Akina Nakamori, 나카모리 아키나', 'Name : Oh No, Oh Yes! Artist : 中森明菜(Akina Nakamori, 나카모리 아키나) Album : Crimson(1986.12.24) Anime : 오렌지 로드(Orange Road)', 'https://i.ytimg.com/vi/_46muFlXKjw/default.jpg', 'https://i.ytimg.com/vi/_46muFlXKjw/mqdefault.jpg', 'https://i.ytimg.com/vi/_46muFlXKjw/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2020-08-22 14:27:48', 'UCOzNl-egSzuZF9Dm7EmvghQ', 'Oh No, Oh Yes  Akina Nakamori나카모리 아키나', 'Unofficial MV, 한글가사Eng lyrics Oh No, Oh Yes  中森明菜Akina Nakamori, 나카모리 아키나.mp4', 'Oh No, Oh Yes  Akina Nakamori나카모리 아키나/Unofficial MV, 한글가사Eng lyrics Oh No, Oh Yes  中森明菜Akina Nakamori, 나카모리 아키나.mp4', '2020-10-28 13:01:00', '2020-10-28 13:01:00');
INSERT INTO `tbl_crawled` VALUES (132, 'yS_iCSIUkDY', 'Playlist 이젠 가을바람 맞으며 드라이브 해야할 때', '동영상에 나오는 광고는 유튜브에서 자동으로 설정하며 게시자에게 수익이 돌아오지 않습니다. ** Anime : 블랙라군(Black Ragoon) 00:00 Starry Night(Prod.', 'https://i.ytimg.com/vi/yS_iCSIUkDY/default.jpg', 'https://i.ytimg.com/vi/yS_iCSIUkDY/mqdefault.jpg', 'https://i.ytimg.com/vi/yS_iCSIUkDY/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2020-09-15 09:00:10', 'UCOzNl-egSzuZF9Dm7EmvghQ', '이젠 가을바람 맞으며 드라이브 해야할 때', 'Playlist 이젠 가을바람 맞으며 드라이브 해야할 때.mp4', '이젠 가을바람 맞으며 드라이브 해야할 때/Playlist 이젠 가을바람 맞으며 드라이브 해야할 때.mp4', '2020-11-01 01:53:38', '2020-11-01 01:53:38');
INSERT INTO `tbl_crawled` VALUES (138, 'YXrFuTN_1jA', '붕괴3rd 「Cyber Angel ZERO Exception」 OST', '나의 라이브러리에는 \"예외\"란 존재하지 않아. 항상 너와 함께할 거라는 걸 나는 아니까.', 'https://i.ytimg.com/vi/YXrFuTN_1jA/default.jpg', 'https://i.ytimg.com/vi/YXrFuTN_1jA/mqdefault.jpg', 'https://i.ytimg.com/vi/YXrFuTN_1jA/hqdefault.jpg', '붕괴3rd', '2019-07-10 10:04:20', 'UCHnxdu0qphnV3vrERNtCqpw', '붕괴3rd 「Cyber Angel ZERO Exception」 OST', '붕괴3rd 「Cyber Angel ZERO Exception」 OST.mp4', '붕괴3rd 「Cyber Angel ZERO Exception」 OST/붕괴3rd 「Cyber Angel ZERO Exception」 OST.mp4', '2020-11-01 09:28:27', '2020-11-01 09:28:27');
INSERT INTO `tbl_crawled` VALUES (144, '46AsgsCDVy4', '있는 그대로  김혜림 Kim Hye Rim', '', 'https://i.ytimg.com/vi/46AsgsCDVy4/default.jpg', 'https://i.ytimg.com/vi/46AsgsCDVy4/mqdefault.jpg', 'https://i.ytimg.com/vi/46AsgsCDVy4/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2019-06-21 15:49:34', 'UCOzNl-egSzuZF9Dm7EmvghQ', '있는 그대로  김혜림 Kim Hye Rim', '있는 그대로  김혜림 Kim Hye Rim.mp4', '있는 그대로  김혜림 Kim Hye Rim/있는 그대로  김혜림 Kim Hye Rim.mp4', '2020-11-04 12:49:05', '2020-11-04 12:49:05');
INSERT INTO `tbl_crawled` VALUES (145, 'IlXeYH61Zv8', 'AquaFeat 뮤지 Muzie  김아름Kim Areum', 'Name : Aqua(Feat. 뮤지 Muzie) Artist : 김아름(Kim Areum) Album : Aqua City(2020.08.16) Anime : 너와 파도를 탈 수 있다면(Ride Your Wave) Lyrics : 새파란 눈에 ...', 'https://i.ytimg.com/vi/IlXeYH61Zv8/default.jpg', 'https://i.ytimg.com/vi/IlXeYH61Zv8/mqdefault.jpg', 'https://i.ytimg.com/vi/IlXeYH61Zv8/hqdefault.jpg', '미위그 MIDNIGHT WITH GROOVE', '2020-08-16 09:00:03', 'UCOzNl-egSzuZF9Dm7EmvghQ', 'AquaFeat 뮤지 Muzie  김아름Kim Areum', 'AquaFeat 뮤지 Muzie  김아름Kim Areum.mp4', 'AquaFeat 뮤지 Muzie  김아름Kim Areum/AquaFeat 뮤지 Muzie  김아름Kim Areum.mp4', '2020-11-04 12:52:03', '2020-11-04 12:52:03');
INSERT INTO `tbl_crawled` VALUES (147, 'xREF-1k4czw', 'Honkai Impact 3 MMD サマーアイドル  Summer Idol  Rozalia Olenyeva  Liliya Olenyeva', 'none', NULL, NULL, NULL, NULL, NULL, NULL, 'Honkai_Impact_3_MMD_サマーアイドル__Summer_Idol__Rozalia_Olenyeva__Liliya_Olenyeva', 'Honkai_Impact_3_MMD_サマーアイドル__Summer_Idol__Rozalia_Olenyeva__Liliya_Olenyeva_merged.mp4', 'Honkai_Impact_3_MMD_サマーアイドル__Summer_Idol__Rozalia_Olenyeva__Liliya_Olenyeva/Honkai_Impact_3_MMD_サマーアイドル__Summer_Idol__Rozalia_Olenyeva__Liliya_Olenyeva_merged.mp4', '2020-11-07 14:35:02', '2020-11-07 14:35:02');

-- ----------------------------
-- Table structure for tbl_member
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE `tbl_member`  (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idx`) USING BTREE,
  UNIQUE INDEX `tbl_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_member
-- ----------------------------
INSERT INTO `tbl_member` VALUES (14, 'b', '$2a$10$4w.i1es1NPtD96xOtJTseO9N2YlEwCD5sa/vHbaykwVpnUc0EG9uW', '2020-11-02 21:36:00', '2020-11-02 21:36:00');
INSERT INTO `tbl_member` VALUES (15, 'c', '$2a$10$ReOSedW3ziAdVpO3xZTfreELS4Mh3Qn8sIhskfEd9bj4s8rjmZG7O', '2020-11-02 21:39:08', '2020-11-02 21:39:08');
INSERT INTO `tbl_member` VALUES (16, 'a', '$2a$10$Qe7rdy/.BelGcyQZT3SqPeYsN.ZRzZ6EDiewba4evOYpuozO12QPW', '2020-11-02 21:39:46', '2020-11-02 21:39:46');

-- ----------------------------
-- Table structure for tbl_member_auth
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member_auth`;
CREATE TABLE `tbl_member_auth`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_idx` int(11) NULL DEFAULT NULL,
  `auth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idx`) USING BTREE,
  INDEX `tbl_memberauth_memberidx`(`member_idx`) USING BTREE,
  CONSTRAINT `tbl_memberauth_memberidx` FOREIGN KEY (`member_idx`) REFERENCES `tbl_member` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_member_auth
-- ----------------------------
INSERT INTO `tbl_member_auth` VALUES (10, 14, 'ROLE_MEMBER', '2020-11-02 21:36:00', '2020-11-02 21:36:00');
INSERT INTO `tbl_member_auth` VALUES (11, 15, 'ROLE_MEMBER', '2020-11-02 21:39:08', '2020-11-02 21:39:08');
INSERT INTO `tbl_member_auth` VALUES (12, 16, 'ROLE_MEMBER', '2020-11-02 21:39:46', '2020-11-02 21:39:46');

-- ----------------------------
-- Table structure for tbl_mylist
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mylist`;
CREATE TABLE `tbl_mylist`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default' COMMENT 'category',
  `crawled_idx` bigint(20) NULL DEFAULT NULL,
  `video_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `play_order` int(11) NULL DEFAULT NULL,
  `b_private` tinyint(1) NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idx`) USING BTREE,
  INDEX `tbl_mylist_crawlidx_fk`(`crawled_idx`) USING BTREE,
  INDEX `tbl_mylist_play_order`(`play_order`) USING BTREE,
  INDEX `tbl_mylist_videoid_fk`(`video_id`) USING BTREE,
  UNIQUE INDEX `tbl_mylist_username_cat_videoid_uniq`(`username`, `cat`, `video_id`) USING BTREE,
  UNIQUE INDEX `tbl_mylist_username_cat_crawlidx_uniq`(`username`, `cat`, `crawled_idx`) USING BTREE,
  CONSTRAINT `tbl_mylist_crawlidx_fk` FOREIGN KEY (`crawled_idx`) REFERENCES `tbl_crawled` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_mylist_username_fk` FOREIGN KEY (`username`) REFERENCES `tbl_member` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_mylist_videoid_fk` FOREIGN KEY (`video_id`) REFERENCES `tbl_crawled` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_mylist
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_private_crawled
-- ----------------------------
DROP TABLE IF EXISTS `tbl_private_crawled`;
CREATE TABLE `tbl_private_crawled`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `crawled_idx` bigint(20) NOT NULL,
  `video_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idx`) USING BTREE,
  UNIQUE INDEX `pc_cidx_useridx_uniuq`(`crawled_idx`) USING BTREE,
  UNIQUE INDEX `pc_username_videoid_nuiq`(`video_id`, `username`) USING BTREE,
  UNIQUE INDEX `pc_username_crawlidx_nuiq`(`crawled_idx`, `username`) USING BTREE,
  INDEX `pc_username_fk`(`username`) USING BTREE,
  CONSTRAINT `private_crawled_crawledidx` FOREIGN KEY (`crawled_idx`) REFERENCES `tbl_crawled` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pc_username_fk` FOREIGN KEY (`username`) REFERENCES `tbl_member` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_private_crawled
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_private_crawled_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_private_crawled_users`;
CREATE TABLE `tbl_private_crawled_users`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `private_crawled_idx` bigint(20) NULL DEFAULT NULL,
  `member_idx` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idx`) USING BTREE,
  INDEX `private_crawled_privateidx_idx`(`private_crawled_idx`) USING BTREE,
  INDEX `private_crawled_useridx_idx`(`member_idx`) USING BTREE,
  CONSTRAINT `private_crawled_privateidx` FOREIGN KEY (`private_crawled_idx`) REFERENCES `tbl_private_crawled` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `private_crawled_useridx` FOREIGN KEY (`member_idx`) REFERENCES `tbl_member` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_private_crawled_users
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_public_crawled
-- ----------------------------
DROP TABLE IF EXISTS `tbl_public_crawled`;
CREATE TABLE `tbl_public_crawled`  (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT,
  `crawled_idx` bigint(20) NOT NULL,
  `video_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `crawled_idx_UNIQUE`(`crawled_idx`) USING BTREE,
  UNIQUE INDEX `public_crawled_videoid`(`video_id`) USING BTREE,
  INDEX `public_crawled_crawledidx_idx`(`idx`) USING BTREE,
  INDEX `public_crawled_crawledidx_idx1`(`crawled_idx`) USING BTREE,
  CONSTRAINT `public_crawled_crawledidx` FOREIGN KEY (`crawled_idx`) REFERENCES `tbl_crawled` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `public_crawled_videoid` FOREIGN KEY (`video_id`) REFERENCES `tbl_crawled` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_public_crawled
-- ----------------------------
INSERT INTO `tbl_public_crawled` VALUES (9, 9, 'gdZLi9oWNZg', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (11, 11, '5Fyl0LSQlBM', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (15, 15, 'US65CJG1-4c', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (18, 18, 'dFU1Rt3iZxU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (19, 19, 'pzknCujJLKk', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (20, 20, 'gPFC_JcVBAM', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (21, 21, '_FtU9XMuFfU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (29, 29, '2N4tXf3Ensw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (30, 30, '8S6WqYbXFNo', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (31, 31, 'iR-K2rUP86M', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (32, 32, 'iaBlKyNrmYQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (34, 34, 'L2QTtdeL3dE', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (35, 35, 'C5uhP8TEkIQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (36, 36, 'Ul0sp782hIQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (37, 37, 'YK9Y1EqjDpY', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (38, 38, 'Mk0A5uFoG3c', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (39, 39, 'BetFWIeMZ_0', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (40, 40, 'zB447eVGaTs', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (41, 41, 'kqDVc56O9l0', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (42, 42, 'NVFvxOFU2q8', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (43, 43, 'EzSL38lwUCQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (44, 44, 'XbGs_qK2PQA', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (45, 45, 'zaVNKUrzySc', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (46, 46, 'uwCKpqP8jRc', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (48, 48, 'AwfmxdW-7Q4', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (49, 49, 'PUfY7QGNod4', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (50, 50, '4bmUFRxNEIg', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (51, 51, 'P3ue1JPFXEU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (84, 84, 'YoBwKfMluuo', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (85, 85, 'TdUCnEHHWOU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (86, 86, 'deA9MuH6ijA', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (87, 87, 'OycgifzTHgk', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (90, 90, '864Kro2pFbk', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (92, 92, 'wKPKyxOTb1c', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (93, 93, '3jESUPo32VQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (94, 94, 'ghq_zJA_T_w', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (95, 95, 'vYR7Q-466Bw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (96, 96, 'MF1X8pQgDUQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (97, 97, 'djV11Xbc914', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (98, 98, 'dQw4w9WgXcQ', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (99, 99, 'yPYZpwSpKmA', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (100, 100, 'eYuUAGXN0KM', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (101, 101, 'ZVEyPCT4BM8', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (102, 102, 'cr_jhFpymzw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (104, 104, 'ORyw6TGLBvk', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (109, 109, 'N9qYF9DZPdw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (110, 110, 'm-_OFRK0hJM', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (111, 111, 'mIXR-7u2Kas', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (113, 113, 'nF1hlqgTs-g', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (114, 114, 'le63SacwFNs', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (115, 115, 'vU03b24_4Fs', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (116, 116, 'QGvEgbX_VsE', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (117, 117, 'OoPj-9B-zjU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (118, 118, 'dXUpbE8kIrM', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (119, 119, 'vKQi7up91RI', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (120, 120, 'ZUE2IX0CQ4g', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (121, 121, 'SYFBqLI-UtU', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (122, 122, 'E_fr2hL2-u8', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (124, 124, 'ulr0muQKjk0', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (125, 125, '6dc32oXJ_z0', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (126, 126, 'FiLdy1QdmR4', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (131, 131, '_46muFlXKjw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (132, 132, 'yS_iCSIUkDY', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (138, 138, 'YXrFuTN_1jA', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (144, 144, '46AsgsCDVy4', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (145, 145, 'IlXeYH61Zv8', '2020-11-08 10:56:20', '2020-11-08 10:56:20');
INSERT INTO `tbl_public_crawled` VALUES (146, 147, 'xREF-1k4czw', '2020-11-08 10:56:20', '2020-11-08 10:56:20');

-- ----------------------------
-- Table structure for tbl_test
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test`;
CREATE TABLE `tbl_test`  (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_test
-- ----------------------------
INSERT INTO `tbl_test` VALUES (1, 1);
INSERT INTO `tbl_test` VALUES (2, 1);
INSERT INTO `tbl_test` VALUES (3, 1);
INSERT INTO `tbl_test` VALUES (4, 1);

SET FOREIGN_KEY_CHECKS = 1;
