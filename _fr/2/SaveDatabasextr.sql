# ========================================================
#
# Database saved : xtreme-clan
# On 09-26-2006 at 22:29 by  !
#
# ========================================================


# --------------------------------------------------------
#
# Table structure for table 'nuke_authors'
#

CREATE TABLE nuke_authors (
   aid varchar(25) NOT NULL,
   name varchar(50),
   url varchar(255) NOT NULL,
   email varchar(255) NOT NULL,
   pwd varchar(40),
   counter int(11) DEFAULT '0' NOT NULL,
   radminsuper tinyint(1) DEFAULT '1' NOT NULL,
   admlanguage varchar(30) NOT NULL,
   PRIMARY KEY (aid),
   KEY aid (aid)
);

#
# Dumping data for table 'nuke_authors'
#

INSERT INTO nuke_authors VALUES ( 'DOOM', 'God', 'http://xtreme-clan.jino-net.ru', 'Team-Group@rambler.ru', '22801cec45cdc8d6e50b82db8a12b34b', '1', '1', '');
INSERT INTO nuke_authors VALUES ( 'killer', 'Ki^^er', '', 'Grinders17@mail.ru', '75e11121f277e650fee1ffe5419a5f11', '0', '1', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_autonews'
#

CREATE TABLE nuke_autonews (
   anid int(11) NOT NULL auto_increment,
   catid int(11) DEFAULT '0' NOT NULL,
   aid varchar(30) NOT NULL,
   title varchar(80) NOT NULL,
   time varchar(19) NOT NULL,
   hometext text NOT NULL,
   bodytext text NOT NULL,
   topic int(3) DEFAULT '1' NOT NULL,
   informant varchar(20) NOT NULL,
   notes text NOT NULL,
   ihome int(1) DEFAULT '0' NOT NULL,
   alanguage varchar(30) NOT NULL,
   acomm int(1) DEFAULT '0' NOT NULL,
   associated text NOT NULL,
   PRIMARY KEY (anid),
   KEY anid (anid)
);

#
# Dumping data for table 'nuke_autonews'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_banned_ip'
#

CREATE TABLE nuke_banned_ip (
   id int(11) NOT NULL auto_increment,
   ip_address varchar(15) NOT NULL,
   reason varchar(255) NOT NULL,
   date date DEFAULT '0000-00-00' NOT NULL,
   PRIMARY KEY (id),
   KEY id (id)
);

#
# Dumping data for table 'nuke_banned_ip'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_banner'
#

CREATE TABLE nuke_banner (
   bid int(11) NOT NULL auto_increment,
   cid int(11) DEFAULT '0' NOT NULL,
   name varchar(50) NOT NULL,
   imptotal int(11) DEFAULT '0' NOT NULL,
   impmade int(11) DEFAULT '0' NOT NULL,
   clicks int(11) DEFAULT '0' NOT NULL,
   imageurl varchar(100) NOT NULL,
   clickurl varchar(200) NOT NULL,
   alttext varchar(255) NOT NULL,
   date datetime,
   dateend datetime,
   position int(10) DEFAULT '0' NOT NULL,
   active tinyint(1) DEFAULT '1' NOT NULL,
   ad_class varchar(5) NOT NULL,
   ad_code text NOT NULL,
   ad_width int(4) DEFAULT '0',
   ad_height int(4) DEFAULT '0',
   PRIMARY KEY (bid),
   KEY bid (bid),
   KEY cid (cid)
);

#
# Dumping data for table 'nuke_banner'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_banner_clients'
#

CREATE TABLE nuke_banner_clients (
   cid int(11) NOT NULL auto_increment,
   name varchar(60) NOT NULL,
   contact varchar(60) NOT NULL,
   email varchar(60) NOT NULL,
   login varchar(10) NOT NULL,
   passwd varchar(10) NOT NULL,
   extrainfo text NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid)
);

#
# Dumping data for table 'nuke_banner_clients'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_banner_plans'
#

CREATE TABLE nuke_banner_plans (
   pid int(10) NOT NULL auto_increment,
   active tinyint(1) DEFAULT '0' NOT NULL,
   name varchar(255) NOT NULL,
   description text NOT NULL,
   delivery varchar(10) NOT NULL,
   delivery_type varchar(25) NOT NULL,
   price varchar(25) DEFAULT '0' NOT NULL,
   buy_links text NOT NULL,
   PRIMARY KEY (pid)
);

#
# Dumping data for table 'nuke_banner_plans'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_banner_positions'
#

CREATE TABLE nuke_banner_positions (
   apid int(10) NOT NULL auto_increment,
   position_number int(5) DEFAULT '0' NOT NULL,
   position_name varchar(255) NOT NULL,
   PRIMARY KEY (apid),
   KEY position_number (position_number)
);

#
# Dumping data for table 'nuke_banner_positions'
#

INSERT INTO nuke_banner_positions VALUES ( '1', '0', 'Page Top');
INSERT INTO nuke_banner_positions VALUES ( '2', '1', 'Left Block');
INSERT INTO nuke_banner_positions VALUES ( '3', '2', 'Right Block');

# --------------------------------------------------------
#
# Table structure for table 'nuke_banner_terms'
#

CREATE TABLE nuke_banner_terms (
   terms_body text NOT NULL,
   country varchar(255) NOT NULL
);

#
# Dumping data for table 'nuke_banner_terms'
#

INSERT INTO nuke_banner_terms VALUES ( '<div align=\"justify\"><strong>Introduction:</strong> This Agreement between you and&nbsp;[sitename] consists of these Terms and Conditions. &quot;You&quot; or &quot;Advertiser&quot; means the entity identified in this enrollment form, and/or any agency acting on its behalf, which shall also be bound by the terms of this Agreement. Please read very carefully these Terms and Conditions.<br /><strong><br />Uses:</strong> You agree that your ads may be placed on (i) [sitename] web site and (ii) Any ads may be modified without your consent to comply with any policy of [sitename]. [sitename] reserves the right to, and in its sole discretion may, at any time review, reject, modify, or remove any ad. No liability of [sitename] and/or its owner(s) shall result from any such decision.<br /><br /></div><div align=\"justify\"><strong>Parties&#039; Responsibilities:</strong> You are responsible of your own site and/or service advertised in [sitename] web site. You are solely responsible for the advertising image creation, advertising text and for the content of your ads, including URL links. [sitename] is not responsible for anything regarding your Web site(s) including, but not limited to, maintenance of your Web site(s), order entry, customer service, payment processing, shipping, cancellations or returns.<br /><br /></div><div align=\"justify\"><strong>Impressions Count:</strong> Any hit to [sitename] web site is counted as an impression. Due to our advertising price we don&#039;t discriminate from users or automated robots. Even if you access to [sitename] web site and see your own banner ad it will be counted as a valid impression. Only in the case of [sitename] web site administrator, the impressions will not be counted.<br /><br /></div><div align=\"justify\"><strong>Termination, Cancellation:</strong> [sitename] may at any time, in its sole discretion, terminate the Campaign, terminate this Agreement, or cancel any ad(s) or your use of any Target. [sitename] will notify you via email of any such termination or cancellation, which shall be effective immediately. No refund will be made for any reason. Remaining impressions will be stored in a database and you&#039;ll be able to request another campaign to complete your inventory. You may cancel any ad and/or terminate this Agreement with or without cause at any time. Termination of your account shall be effective when [sitename] receives your notice via email. No refund will be made for any reason. Remaining impressions will be stored in a database for future uses by you and/or your company.<br /><br /></div><div align=\"justify\"><strong>Content:</strong> [sitename] web site doesn&#039;t accepts advertising that contains: (i) pornography, (ii) explicit adult content, (iii) moral questionable content, (iv) illegal content of any kind, (v) illegal drugs promotion, (vi) racism, (vii) politics content, (viii) religious content, and/or (ix) fraudulent suspicious content. If your advertising and/or target web site has any of this content and you purchased an advertising package, you&#039;ll not receive refund of any kind but your banners ads impressions will be stored for future use.<br /><br /></div><div align=\"justify\"><strong>Confidentiality:</strong> Each party agrees not to disclose Confidential Information of the other party without prior written consent except as provided herein. &quot;Confidential Information&quot; includes (i) ads, prior to publication, (ii) submissions or modifications relating to any advertising campaign, (iii) clickthrough rates or other statistics (except in an aggregated form that includes no identifiable information about you), and (iv) any other information designated in writing as &quot;Confidential.&quot; It does not include information that has become publicly known through no breach by a party, or has been (i) independently developed without access to the other party&#039;s Confidential Information; (ii) rightfully received from a third party; or (iii) required to be disclosed by law or by a governmental authority.<br /><br /></div><div align=\"justify\"><strong>No Guarantee:</strong> [sitename] makes no guarantee regarding the levels of clicks for any ad on its site. [sitename] may offer the same Target to more than one advertiser. You may not receive exclusivity unless special private contract between [sitename] and you.<br /><br /></div><div align=\"justify\"><strong>No Warranty:</strong> [sitename] MAKES NO WARRANTY, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION WITH RESPECT TO ADVERTISING AND OTHER SERVICES, AND EXPRESSLY DISCLAIMS THE WARRANTIES OR CONDITIONS OF NONINFRINGEMENT, MERCHANTABILITY AND FITNESS FOR ANY PARTICULAR PURPOSE.<br /><br /></div><div align=\"justify\"><strong>Limitations of Liability:</strong> In no event shall [sitename] be liable for any act or omission, or any event directly or indirectly resulting from any act or omission of Advertiser, Partner, or any third parties (if any). EXCEPT FOR THE PARTIES&#039; INDEMNIFICATION AND CONFIDENTIALITY OBLIGATIONS HEREUNDER, (i) IN NO EVENT SHALL EITHER PARTY BE LIABLE UNDER THIS AGREEMENT FOR ANY CONSEQUENTIAL, SPECIAL, INDIRECT, EXEMPLARY, PUNITIVE, OR OTHER DAMAGES WHETHER IN CONTRACT, TORT OR ANY OTHER LEGAL THEORY, EVEN IF SUCH PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES AND NOTWITHSTANDING ANY FAILURE OF ESSENTIAL PURPOSE OF ANY LIMITED REMEDY AND (ii) [sitename] AGGREGATE LIABILITY TO ADVERTISER UNDER THIS AGREEMENT FOR ANY CLAIM IS LIMITED TO THE AMOUNT PAID TO [sitename] BY ADVERTISER FOR THE AD GIVING RISE TO THE CLAIM. Each party acknowledges that the other party has entered into this Agreement relying on the limitations of liability stated herein and that those limitations are an essential basis of the bargain between the parties. Without limiting the foregoing and except for payment obligations, neither party shall have any liability for any failure or delay resulting from any condition beyond the reasonable control of such party, including but not limited to governmental action or acts of terrorism, earthquake or other acts of God, labor conditions, and power failures.<br /><br /></div><div align=\"justify\"><strong>Payment:</strong> You agree to pay in advance the cost of the advertising. [sitename] will not setup any banner ads campaign(s) unless the payment process is complete. [sitename] may change its pricing at any time without prior notice. If you have an advertising campaign running and/or impressions stored for future use for any mentioned cause and [sitename] changes its pricing, you&#039;ll not need to pay any difference. Your purchased banners fee will remain the same. Charges shall be calculated solely based on records maintained by [sitename]. No other measurements or statistics of any kind shall be accepted by [sitename] or have any effect under this Agreement.<br /><br /></div><div align=\"justify\"><strong>Representations and Warranties:</strong> You represent and warrant that (a) all of the information provided by you to [sitename] to enroll in the Advertising Campaign is correct and current; (b) you hold all rights to permit [sitename] and any Partner(s) to use, reproduce, display, transmit and distribute your ad(s); and (c) [sitename] and any Partner(s) Use, your Target(s), and any site(s) linked to, and products or services to which users are directed, will not, in any state or country where the ad is displayed (i) violate any criminal laws or third party rights giving rise to civil liability, including but not limited to trademark rights or rights relating to the performance of music; or (ii) encourage conduct that would violate any criminal or civil law. You further represent and warrant that any Web site linked to your ad(s) (i) complies with all laws and regulations in any state or country where the ad is displayed; (ii) does not breach and has not breached any duty toward or rights of any person or entity including, without limitation, rights of publicity or privacy, or rights or duties under consumer protection, product liability, tort, or contract theories; and (iii) is not false, misleading, defamatory, libelous, slanderous or threatening.<br /><br /></div><div align=\"justify\"><strong>Your Obligation to Indemnify:</strong> You agree to indemnify, defend and hold [sitename], its agents, affiliates, subsidiaries, directors, officers, employees, and applicable third parties (e.g., all relevant Partner(s), licensors, licensees, consultants and contractors) (&quot;Indemnified Person(s)&quot;) harmless from and against any and all third party claims, liability, loss, and expense (including damage awards, settlement amounts, and reasonable legal fees), brought against any Indemnified Person(s), arising out of, related to or which may arise from your use of the Advertising Program, your Web site, and/or your breach of any term of this Agreement. Customer understands and agrees that each Partner, as defined herein, has the right to assert and enforce its rights under this Section directly on its own behalf as a third party beneficiary.<br /><br /></div><div align=\"justify\"><strong>Information Rights:</strong> [sitename] may retain and use for its own purposes all information you provide, including but not limited to Targets, URLs, the content of ads, and contact and billing information. [sitename] may share this information about you with business partners and/or sponsors. [sitename] will not sell your information. Your name, web site&#039;s URL and related graphics shall be used by [sitename] in its own web site at any time as a sample to the public, even if your Advertising Campaign has been finished.<br /><br /></div><div align=\"justify\"><strong>Miscellaneous:</strong> Any decision made by [sitename] under this Agreement shall be final. [sitename] shall have no liability for any such decision. You will be responsible for all reasonable expenses (including attorneys&#039; fees) incurred by [sitename] in collecting unpaid amounts under this Agreement. This Agreement shall be governed by the laws of [country]. Any dispute or claim arising out of or in connection with this Agreement shall be adjudicated in [country]. This constitutes the entire agreement between the parties with respect to the subject matter hereof. Advertiser may not resell, assign, or transfer any of its rights hereunder. Any such attempt may result in termination of this Agreement, without liability to [sitename] and without any refund. The relationship(s) between [sitename] and the &quot;Partners&quot; is not one of a legal partnership relationship, but is one of independent contractors. This Agreement shall be construed as if both parties jointly wrote it.</div>', 'Canada');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbauth_access'
#

CREATE TABLE nuke_bbauth_access (
   group_id mediumint(8) DEFAULT '0' NOT NULL,
   forum_id smallint(5) unsigned DEFAULT '0' NOT NULL,
   auth_view tinyint(1) DEFAULT '0' NOT NULL,
   auth_read tinyint(1) DEFAULT '0' NOT NULL,
   auth_post tinyint(1) DEFAULT '0' NOT NULL,
   auth_reply tinyint(1) DEFAULT '0' NOT NULL,
   auth_edit tinyint(1) DEFAULT '0' NOT NULL,
   auth_delete tinyint(1) DEFAULT '0' NOT NULL,
   auth_sticky tinyint(1) DEFAULT '0' NOT NULL,
   auth_announce tinyint(1) DEFAULT '0' NOT NULL,
   auth_vote tinyint(1) DEFAULT '0' NOT NULL,
   auth_pollcreate tinyint(1) DEFAULT '0' NOT NULL,
   auth_attachments tinyint(1) DEFAULT '0' NOT NULL,
   auth_mod tinyint(1) DEFAULT '0' NOT NULL,
   KEY group_id (group_id),
   KEY forum_id (forum_id)
);

#
# Dumping data for table 'nuke_bbauth_access'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbbanlist'
#

CREATE TABLE nuke_bbbanlist (
   ban_id mediumint(8) unsigned NOT NULL auto_increment,
   ban_userid mediumint(8) DEFAULT '0' NOT NULL,
   ban_ip varchar(8) NOT NULL,
   ban_email varchar(255),
   ban_time int(11),
   ban_expire_time int(11),
   ban_by_userid mediumint(8),
   ban_priv_reason text,
   ban_pub_reason_mode tinyint(1),
   ban_pub_reason text,
   PRIMARY KEY (ban_id),
   KEY ban_ip_user_id (ban_ip, ban_userid)
);

#
# Dumping data for table 'nuke_bbbanlist'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbcategories'
#

CREATE TABLE nuke_bbcategories (
   cat_id mediumint(8) unsigned NOT NULL auto_increment,
   cat_title varchar(100),
   cat_order mediumint(8) unsigned DEFAULT '0' NOT NULL,
   PRIMARY KEY (cat_id),
   KEY cat_order (cat_order)
);

#
# Dumping data for table 'nuke_bbcategories'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbconfig'
#

CREATE TABLE nuke_bbconfig (
   config_name varchar(255) NOT NULL,
   config_value varchar(255) NOT NULL,
   PRIMARY KEY (config_name)
);

#
# Dumping data for table 'nuke_bbconfig'
#

INSERT INTO nuke_bbconfig VALUES ( 'config_id', '1');
INSERT INTO nuke_bbconfig VALUES ( 'board_disable', '0');
INSERT INTO nuke_bbconfig VALUES ( 'sitename', 'MySite.com');
INSERT INTO nuke_bbconfig VALUES ( 'site_desc', '');
INSERT INTO nuke_bbconfig VALUES ( 'cookie_name', 'phpbb2mysql');
INSERT INTO nuke_bbconfig VALUES ( 'cookie_path', '/');
INSERT INTO nuke_bbconfig VALUES ( 'cookie_domain', 'MySite.com');
INSERT INTO nuke_bbconfig VALUES ( 'cookie_secure', '0');
INSERT INTO nuke_bbconfig VALUES ( 'session_length', '3600');
INSERT INTO nuke_bbconfig VALUES ( 'allow_html', '1');
INSERT INTO nuke_bbconfig VALUES ( 'allow_html_tags', 'b,i,u,pre');
INSERT INTO nuke_bbconfig VALUES ( 'allow_bbcode', '1');
INSERT INTO nuke_bbconfig VALUES ( 'allow_smilies', '1');
INSERT INTO nuke_bbconfig VALUES ( 'allow_sig', '1');
INSERT INTO nuke_bbconfig VALUES ( 'allow_namechange', '0');
INSERT INTO nuke_bbconfig VALUES ( 'allow_theme_create', '0');
INSERT INTO nuke_bbconfig VALUES ( 'allow_avatar_local', '1');
INSERT INTO nuke_bbconfig VALUES ( 'allow_avatar_remote', '0');
INSERT INTO nuke_bbconfig VALUES ( 'allow_avatar_upload', '0');
INSERT INTO nuke_bbconfig VALUES ( 'override_user_style', '1');
INSERT INTO nuke_bbconfig VALUES ( 'posts_per_page', '15');
INSERT INTO nuke_bbconfig VALUES ( 'topics_per_page', '50');
INSERT INTO nuke_bbconfig VALUES ( 'hot_threshold', '25');
INSERT INTO nuke_bbconfig VALUES ( 'max_poll_options', '10');
INSERT INTO nuke_bbconfig VALUES ( 'max_sig_chars', '255');
INSERT INTO nuke_bbconfig VALUES ( 'max_inbox_privmsgs', '100');
INSERT INTO nuke_bbconfig VALUES ( 'max_sentbox_privmsgs', '100');
INSERT INTO nuke_bbconfig VALUES ( 'max_savebox_privmsgs', '100');
INSERT INTO nuke_bbconfig VALUES ( 'board_email_sig', 'Thanks, webmaster@MySite.com');
INSERT INTO nuke_bbconfig VALUES ( 'board_email', 'webmaster@MySite.com');
INSERT INTO nuke_bbconfig VALUES ( 'smtp_delivery', '0');
INSERT INTO nuke_bbconfig VALUES ( 'smtp_host', '');
INSERT INTO nuke_bbconfig VALUES ( 'require_activation', '0');
INSERT INTO nuke_bbconfig VALUES ( 'flood_interval', '15');
INSERT INTO nuke_bbconfig VALUES ( 'board_email_form', '0');
INSERT INTO nuke_bbconfig VALUES ( 'avatar_filesize', '6144');
INSERT INTO nuke_bbconfig VALUES ( 'avatar_max_width', '80');
INSERT INTO nuke_bbconfig VALUES ( 'avatar_max_height', '80');
INSERT INTO nuke_bbconfig VALUES ( 'avatar_path', 'modules/Forums/images/avatars');
INSERT INTO nuke_bbconfig VALUES ( 'avatar_gallery_path', 'modules/Forums/images/avatars');
INSERT INTO nuke_bbconfig VALUES ( 'smilies_path', 'modules/Forums/images/smiles');
INSERT INTO nuke_bbconfig VALUES ( 'default_style', '1');
INSERT INTO nuke_bbconfig VALUES ( 'default_dateformat', 'D M d, Y g:i a');
INSERT INTO nuke_bbconfig VALUES ( 'board_timezone', '6');
INSERT INTO nuke_bbconfig VALUES ( 'prune_enable', '0');
INSERT INTO nuke_bbconfig VALUES ( 'privmsg_disable', '0');
INSERT INTO nuke_bbconfig VALUES ( 'gzip_compress', '0');
INSERT INTO nuke_bbconfig VALUES ( 'coppa_fax', '');
INSERT INTO nuke_bbconfig VALUES ( 'coppa_mail', '');
INSERT INTO nuke_bbconfig VALUES ( 'board_startdate', '1013908210');
INSERT INTO nuke_bbconfig VALUES ( 'default_lang', 'russian');
INSERT INTO nuke_bbconfig VALUES ( 'smtp_username', '');
INSERT INTO nuke_bbconfig VALUES ( 'smtp_password', '');
INSERT INTO nuke_bbconfig VALUES ( 'record_online_users', '2');
INSERT INTO nuke_bbconfig VALUES ( 'record_online_date', '1034668530');
INSERT INTO nuke_bbconfig VALUES ( 'server_name', 'MySite.com');
INSERT INTO nuke_bbconfig VALUES ( 'server_port', '80');
INSERT INTO nuke_bbconfig VALUES ( 'script_path', '/modules/Forums/');
INSERT INTO nuke_bbconfig VALUES ( 'version', '.0.20');
INSERT INTO nuke_bbconfig VALUES ( 'enable_confirm', '0');
INSERT INTO nuke_bbconfig VALUES ( 'sendmail_fix', '0');
INSERT INTO nuke_bbconfig VALUES ( 'allow_autologin', '1');
INSERT INTO nuke_bbconfig VALUES ( 'max_autologin_time', '0');
INSERT INTO nuke_bbconfig VALUES ( 'max_login_attempts', '5');
INSERT INTO nuke_bbconfig VALUES ( 'login_reset_time', '30');
INSERT INTO nuke_bbconfig VALUES ( 'search_flood_interval', '15');
INSERT INTO nuke_bbconfig VALUES ( 'rand_seed', '2f89675c0f23c0a6aa807546fbfc4320');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbdisallow'
#

CREATE TABLE nuke_bbdisallow (
   disallow_id mediumint(8) unsigned NOT NULL auto_increment,
   disallow_username varchar(25),
   PRIMARY KEY (disallow_id)
);

#
# Dumping data for table 'nuke_bbdisallow'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbforum_prune'
#

CREATE TABLE nuke_bbforum_prune (
   prune_id mediumint(8) unsigned NOT NULL auto_increment,
   forum_id smallint(5) unsigned DEFAULT '0' NOT NULL,
   prune_days tinyint(4) unsigned DEFAULT '0' NOT NULL,
   prune_freq tinyint(4) unsigned DEFAULT '0' NOT NULL,
   PRIMARY KEY (prune_id),
   KEY forum_id (forum_id)
);

#
# Dumping data for table 'nuke_bbforum_prune'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbforums'
#

CREATE TABLE nuke_bbforums (
   forum_id smallint(5) unsigned NOT NULL auto_increment,
   cat_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   forum_name varchar(150),
   forum_desc text,
   forum_status tinyint(4) DEFAULT '0' NOT NULL,
   forum_order mediumint(8) unsigned DEFAULT '1' NOT NULL,
   forum_posts mediumint(8) unsigned DEFAULT '0' NOT NULL,
   forum_topics mediumint(8) unsigned DEFAULT '0' NOT NULL,
   forum_last_post_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   prune_next int(11),
   prune_enable tinyint(1) DEFAULT '1' NOT NULL,
   auth_view tinyint(2) DEFAULT '0' NOT NULL,
   auth_read tinyint(2) DEFAULT '0' NOT NULL,
   auth_post tinyint(2) DEFAULT '0' NOT NULL,
   auth_reply tinyint(2) DEFAULT '0' NOT NULL,
   auth_edit tinyint(2) DEFAULT '0' NOT NULL,
   auth_delete tinyint(2) DEFAULT '0' NOT NULL,
   auth_sticky tinyint(2) DEFAULT '0' NOT NULL,
   auth_announce tinyint(2) DEFAULT '0' NOT NULL,
   auth_vote tinyint(2) DEFAULT '0' NOT NULL,
   auth_pollcreate tinyint(2) DEFAULT '0' NOT NULL,
   auth_attachments tinyint(2) DEFAULT '0' NOT NULL,
   PRIMARY KEY (forum_id),
   KEY forums_order (forum_order),
   KEY cat_id (cat_id),
   KEY forum_last_post_id (forum_last_post_id)
);

#
# Dumping data for table 'nuke_bbforums'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbgroups'
#

CREATE TABLE nuke_bbgroups (
   group_id mediumint(8) NOT NULL auto_increment,
   group_type tinyint(4) DEFAULT '1' NOT NULL,
   group_name varchar(40) NOT NULL,
   group_description varchar(255) NOT NULL,
   group_moderator mediumint(8) DEFAULT '0' NOT NULL,
   group_single_user tinyint(1) DEFAULT '1' NOT NULL,
   PRIMARY KEY (group_id),
   KEY group_single_user (group_single_user)
);

#
# Dumping data for table 'nuke_bbgroups'
#

INSERT INTO nuke_bbgroups VALUES ( '1', '1', 'Anonymous', 'Personal User', '0', '1');
INSERT INTO nuke_bbgroups VALUES ( '3', '2', 'Moderators', 'Moderators of this Forum', '5', '0');
INSERT INTO nuke_bbgroups VALUES ( '4', '1', '', 'Personal User', '0', '1');
INSERT INTO nuke_bbgroups VALUES ( '5', '1', '', 'Personal User', '0', '1');
INSERT INTO nuke_bbgroups VALUES ( '6', '1', '', 'Personal User', '0', '1');
INSERT INTO nuke_bbgroups VALUES ( '7', '1', '', 'Personal User', '0', '1');
INSERT INTO nuke_bbgroups VALUES ( '8', '1', '', 'Personal User', '0', '1');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbposts'
#

CREATE TABLE nuke_bbposts (
   post_id mediumint(8) unsigned NOT NULL auto_increment,
   topic_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   forum_id smallint(5) unsigned DEFAULT '0' NOT NULL,
   poster_id mediumint(8) DEFAULT '0' NOT NULL,
   post_time int(11) DEFAULT '0' NOT NULL,
   poster_ip varchar(8) NOT NULL,
   post_username varchar(25),
   enable_bbcode tinyint(1) DEFAULT '1' NOT NULL,
   enable_html tinyint(1) DEFAULT '0' NOT NULL,
   enable_smilies tinyint(1) DEFAULT '1' NOT NULL,
   enable_sig tinyint(1) DEFAULT '1' NOT NULL,
   post_edit_time int(11),
   post_edit_count smallint(5) unsigned DEFAULT '0' NOT NULL,
   PRIMARY KEY (post_id),
   KEY forum_id (forum_id),
   KEY topic_id (topic_id),
   KEY poster_id (poster_id),
   KEY post_time (post_time)
);

#
# Dumping data for table 'nuke_bbposts'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbposts_text'
#

CREATE TABLE nuke_bbposts_text (
   post_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   bbcode_uid varchar(10) NOT NULL,
   post_subject varchar(60),
   post_text text,
   PRIMARY KEY (post_id)
);

#
# Dumping data for table 'nuke_bbposts_text'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbprivmsgs'
#

CREATE TABLE nuke_bbprivmsgs (
   privmsgs_id mediumint(8) unsigned NOT NULL auto_increment,
   privmsgs_type tinyint(4) DEFAULT '0' NOT NULL,
   privmsgs_subject varchar(255) DEFAULT '0' NOT NULL,
   privmsgs_from_userid mediumint(8) DEFAULT '0' NOT NULL,
   privmsgs_to_userid mediumint(8) DEFAULT '0' NOT NULL,
   privmsgs_date int(11) DEFAULT '0' NOT NULL,
   privmsgs_ip varchar(8) NOT NULL,
   privmsgs_enable_bbcode tinyint(1) DEFAULT '1' NOT NULL,
   privmsgs_enable_html tinyint(1) DEFAULT '0' NOT NULL,
   privmsgs_enable_smilies tinyint(1) DEFAULT '1' NOT NULL,
   privmsgs_attach_sig tinyint(1) DEFAULT '1' NOT NULL,
   PRIMARY KEY (privmsgs_id),
   KEY privmsgs_from_userid (privmsgs_from_userid),
   KEY privmsgs_to_userid (privmsgs_to_userid)
);

#
# Dumping data for table 'nuke_bbprivmsgs'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbprivmsgs_text'
#

CREATE TABLE nuke_bbprivmsgs_text (
   privmsgs_text_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   privmsgs_bbcode_uid varchar(10) DEFAULT '0' NOT NULL,
   privmsgs_text text,
   PRIMARY KEY (privmsgs_text_id)
);

#
# Dumping data for table 'nuke_bbprivmsgs_text'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbranks'
#

CREATE TABLE nuke_bbranks (
   rank_id smallint(5) unsigned NOT NULL auto_increment,
   rank_title varchar(50) NOT NULL,
   rank_min mediumint(8) DEFAULT '0' NOT NULL,
   rank_max mediumint(8) DEFAULT '0' NOT NULL,
   rank_special tinyint(1) DEFAULT '0',
   rank_image varchar(255),
   PRIMARY KEY (rank_id)
);

#
# Dumping data for table 'nuke_bbranks'
#

INSERT INTO nuke_bbranks VALUES ( '1', 'Site Admin', '-1', '-1', '1', 'modules/Forums/images/ranks/6stars.gif');
INSERT INTO nuke_bbranks VALUES ( '2', 'Member', '1', '0', '0', 'modules/Forums/images/ranks/1star.gif');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsearch_results'
#

CREATE TABLE nuke_bbsearch_results (
   search_id int(11) unsigned DEFAULT '0' NOT NULL,
   session_id varchar(32) NOT NULL,
   search_array text NOT NULL,
   search_time int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (search_id),
   KEY session_id (session_id)
);

#
# Dumping data for table 'nuke_bbsearch_results'
#

INSERT INTO nuke_bbsearch_results VALUES ( '637973085', '3432bcc439489e8f47d374e002fa1ce4', 'a:7:{s:14:\"search_results\";s:0:\"\";s:17:\"total_match_count\";i:0;s:12:\"split_search\";N;s:7:\"sort_by\";i:0;s:8:\"sort_dir\";s:4:\"DESC\";s:12:\"show_results\";s:6:\"topics\";s:12:\"return_chars\";i:200;}', '1146831907');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsearch_wordlist'
#

CREATE TABLE nuke_bbsearch_wordlist (
   word_text varchar(50) NOT NULL,
   word_id mediumint(8) unsigned NOT NULL auto_increment,
   word_common tinyint(1) unsigned DEFAULT '0' NOT NULL,
   PRIMARY KEY (word_text),
   KEY word_id (word_id)
);

#
# Dumping data for table 'nuke_bbsearch_wordlist'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsearch_wordmatch'
#

CREATE TABLE nuke_bbsearch_wordmatch (
   post_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   word_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   title_match tinyint(1) DEFAULT '0' NOT NULL,
   KEY word_id (word_id)
);

#
# Dumping data for table 'nuke_bbsearch_wordmatch'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsessions'
#

CREATE TABLE nuke_bbsessions (
   session_id char(32) NOT NULL,
   session_user_id mediumint(8) DEFAULT '0' NOT NULL,
   session_start int(11) DEFAULT '0' NOT NULL,
   session_time int(11) DEFAULT '0' NOT NULL,
   session_ip char(8) DEFAULT '0' NOT NULL,
   session_page int(11) DEFAULT '0' NOT NULL,
   session_logged_in tinyint(1) DEFAULT '0' NOT NULL,
   session_admin tinyint(2) DEFAULT '0' NOT NULL,
   PRIMARY KEY (session_id),
   KEY session_user_id (session_user_id),
   KEY session_id_ip_user_id (session_id, session_ip, session_user_id)
);

#
# Dumping data for table 'nuke_bbsessions'
#

INSERT INTO nuke_bbsessions VALUES ( '317e711bbf76195fb9b8152f6cc8da23', '1', '1159019597', '1159019597', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'c044e7a8b41eacd3c45ee0ccc12dad77', '1', '1159022045', '1159022045', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '285c3e54ed9567f19d2b130ad8960bb1', '1', '1159022699', '1159022699', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'cddd25f5ad59d9e01e8b3f884cc6f80d', '1', '1159024058', '1159024058', '558d67f1', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '93506c64fb24e2d7bded229fab88806b', '1', '1159024059', '1159024059', '558d67f1', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'a13eb9312e9f216541a1c608e557801d', '1', '1159024059', '1159024059', '558d67f1', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'c2b0ec94f6875f26054db282ef679f0a', '1', '1159024077', '1159024077', '558d67f1', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '27b2e06470355a259b715af1a6e78843', '1', '1159024280', '1159024280', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '8b3bb4c07fe94e1f69c3c3e060c6d05f', '1', '1159025687', '1159025687', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'b24665cfa4bcec9f0bda2c40945e32c1', '1', '1159025693', '1159025693', '51134db8', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '19190d835d53120023ec474327e6f90e', '1', '1159033420', '1159033420', '51c302fe', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '49e595e5ccd5bd4d3f36fe2f33620c95', '1', '1159033462', '1159033462', '51c302fe', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'bb60f3e940f3a20e19f94f65a3672f6e', '1', '1159033551', '1159033551', '51c302fe', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '0b2f35a85cc639f579849fcf6f4dceff', '1', '1159033647', '1159033647', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '2de760ff9e6bb77f8a8e85554fdde5fd', '1', '1159033674', '1159033674', '51c302fe', '-10', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '37041ebacbe316123aef8693c5746b8b', '1', '1159033737', '1159033737', '57f8b39a', '-10', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'd309f0a1c5cf3ef048d805ae11cc20cb', '1', '1159045610', '1159045610', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'a4b3c8279471f94e7bc8f976cb6180da', '1', '1159045611', '1159045611', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '69308b34864e5e659d1fe6518c21bf9a', '1', '1159045611', '1159045611', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '8585b60f1d449f0f0d8be352a9d40b75', '1', '1159045752', '1159045752', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '2719223646bc0c9ef8c04cde465c3d3b', '1', '1159045756', '1159045756', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '99f45b5264c52875fbbc0f6e46d3f935', '1', '1159045773', '1159045773', '558cda7b', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '4db84ca9071eb20dc3f7b4149c016ff9', '1', '1159052749', '1159052749', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '51a498b49ff22a11ad1002e205686b7d', '1', '1159052798', '1159052798', '57f8b39a', '1', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '1d5ec409f6bd98e5b32e8bfac91a3d75', '1', '1159052811', '1159052811', '57f8b39a', '1', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '1e6c244cfb9dc555839f33f5efc21dce', '1', '1159052831', '1159052831', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'ba5475d37b8328ea4f6c3c12f511f8b1', '1', '1159052832', '1159052832', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'c239fdaeccd18c842a7a43f978457006', '1', '1159052832', '1159052832', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '1064d2b20a7722dd5ca84ff92e4fd8d1', '1', '1159052844', '1159052844', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'ea36e72f3de487219749003e52576913', '1', '1159052851', '1159052851', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '2aff5720df4f03b439146b7d8916f663', '1', '1159052856', '1159052856', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '0e8c9406213d77a8d8e6c88109ca7c45', '1', '1159052861', '1159052861', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '4f23aef5de73a68dc9faf27e5f293b08', '1', '1159052864', '1159052864', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'd7e37e7be49d5c0781dc3df63902cc5e', '1', '1159052867', '1159052867', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '5343606a42d8b8eab536e60fbee4192e', '1', '1159052869', '1159052869', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'f6fa0458a9b005f2622d3cb955d68ce5', '1', '1159052872', '1159052872', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '2e1c575438abccf5d0eab7ba88d1af74', '1', '1159052977', '1159052977', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'bbd20b3ee158a4b09277a26027e04c6c', '1', '1159055081', '1159055081', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '5797d6f3bf7a9919157e0e01eae5c5bc', '1', '1159055131', '1159055131', '57f8b39a', '-10', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '261c21bc977ba110e15cd3d26cf94d42', '1', '1159055218', '1159055218', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '28acd61f7ed858ac54665be1462eb0da', '1', '1159055240', '1159055240', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '3313b5956b44dbcc4023bbfd79c80556', '1', '1159055245', '1159055245', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '47ab477abb939b9ffec8afe305573929', '1', '1159093186', '1159093186', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '996b833007d3cc3d588cec7b9b90f92f', '1', '1159093209', '1159093209', '57f8b39a', '0', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( 'd52c6566ec79dd05ba5229f700037449', '1', '1159093232', '1159093232', '57f8b39a', '-7', '0', '0');
INSERT INTO nuke_bbsessions VALUES ( '122e86e6d17fa2e0705d90275d36657b', '5', '1159096041', '1159096041', '57f8b39a', '0', '1', '0');
INSERT INTO nuke_bbsessions VALUES ( '893bc37a6f06bcb2011390c2838f8386', '5', '1159096048', '1159096048', '57f8b39a', '0', '1', '0');
INSERT INTO nuke_bbsessions VALUES ( 'fe326d3e97a0242140a521ef0dc3ea22', '5', '1159102358', '1159102358', '57f8b39a', '0', '1', '0');
INSERT INTO nuke_bbsessions VALUES ( '14e3543d9ddb510e893b5317d96df5f0', '5', '1159270785', '1159270785', '57f8b39a', '0', '1', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsessions_keys'
#

CREATE TABLE nuke_bbsessions_keys (
   key_id varchar(32) DEFAULT '0' NOT NULL,
   user_id mediumint(8) DEFAULT '0' NOT NULL,
   last_ip varchar(8) DEFAULT '0' NOT NULL,
   last_login int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (key_id, user_id),
   KEY last_login (last_login)
);

#
# Dumping data for table 'nuke_bbsessions_keys'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbsmilies'
#

CREATE TABLE nuke_bbsmilies (
   smilies_id smallint(5) unsigned NOT NULL auto_increment,
   code varchar(50),
   smile_url varchar(100),
   emoticon varchar(75),
   PRIMARY KEY (smilies_id)
);

#
# Dumping data for table 'nuke_bbsmilies'
#

INSERT INTO nuke_bbsmilies VALUES ( '1', ':D', 'icon_biggrin.gif', 'Very Happy');
INSERT INTO nuke_bbsmilies VALUES ( '2', ':-D', 'icon_biggrin.gif', 'Very Happy');
INSERT INTO nuke_bbsmilies VALUES ( '3', ':grin:', 'icon_biggrin.gif', 'Very Happy');
INSERT INTO nuke_bbsmilies VALUES ( '4', ':)', 'icon_smile.gif', 'Smile');
INSERT INTO nuke_bbsmilies VALUES ( '5', ':-)', 'icon_smile.gif', 'Smile');
INSERT INTO nuke_bbsmilies VALUES ( '6', ':smile:', 'icon_smile.gif', 'Smile');
INSERT INTO nuke_bbsmilies VALUES ( '7', ':(', 'icon_sad.gif', 'Sad');
INSERT INTO nuke_bbsmilies VALUES ( '8', ':-(', 'icon_sad.gif', 'Sad');
INSERT INTO nuke_bbsmilies VALUES ( '9', ':sad:', 'icon_sad.gif', 'Sad');
INSERT INTO nuke_bbsmilies VALUES ( '10', ':o', 'icon_surprised.gif', 'Surprised');
INSERT INTO nuke_bbsmilies VALUES ( '11', ':-o', 'icon_surprised.gif', 'Surprised');
INSERT INTO nuke_bbsmilies VALUES ( '12', ':eek:', 'icon_surprised.gif', 'Surprised');
INSERT INTO nuke_bbsmilies VALUES ( '13', '8O', 'icon_eek.gif', 'Shocked');
INSERT INTO nuke_bbsmilies VALUES ( '14', '8-O', 'icon_eek.gif', 'Shocked');
INSERT INTO nuke_bbsmilies VALUES ( '15', ':shock:', 'icon_eek.gif', 'Shocked');
INSERT INTO nuke_bbsmilies VALUES ( '16', ':?', 'icon_confused.gif', 'Confused');
INSERT INTO nuke_bbsmilies VALUES ( '17', ':-?', 'icon_confused.gif', 'Confused');
INSERT INTO nuke_bbsmilies VALUES ( '18', ':???:', 'icon_confused.gif', 'Confused');
INSERT INTO nuke_bbsmilies VALUES ( '19', '8)', 'icon_cool.gif', 'Cool');
INSERT INTO nuke_bbsmilies VALUES ( '20', '8-)', 'icon_cool.gif', 'Cool');
INSERT INTO nuke_bbsmilies VALUES ( '21', ':cool:', 'icon_cool.gif', 'Cool');
INSERT INTO nuke_bbsmilies VALUES ( '22', ':lol:', 'icon_lol.gif', 'Laughing');
INSERT INTO nuke_bbsmilies VALUES ( '23', ':x', 'icon_mad.gif', 'Mad');
INSERT INTO nuke_bbsmilies VALUES ( '24', ':-x', 'icon_mad.gif', 'Mad');
INSERT INTO nuke_bbsmilies VALUES ( '25', ':mad:', 'icon_mad.gif', 'Mad');
INSERT INTO nuke_bbsmilies VALUES ( '26', ':P', 'icon_razz.gif', 'Razz');
INSERT INTO nuke_bbsmilies VALUES ( '27', ':-P', 'icon_razz.gif', 'Razz');
INSERT INTO nuke_bbsmilies VALUES ( '28', ':razz:', 'icon_razz.gif', 'Razz');
INSERT INTO nuke_bbsmilies VALUES ( '29', ':oops:', 'icon_redface.gif', 'Embarassed');
INSERT INTO nuke_bbsmilies VALUES ( '30', ':cry:', 'icon_cry.gif', 'Crying or Very sad');
INSERT INTO nuke_bbsmilies VALUES ( '31', ':evil:', 'icon_evil.gif', 'Evil or Very Mad');
INSERT INTO nuke_bbsmilies VALUES ( '32', ':twisted:', 'icon_twisted.gif', 'Twisted Evil');
INSERT INTO nuke_bbsmilies VALUES ( '33', ':roll:', 'icon_rolleyes.gif', 'Rolling Eyes');
INSERT INTO nuke_bbsmilies VALUES ( '34', ':wink:', 'icon_wink.gif', 'Wink');
INSERT INTO nuke_bbsmilies VALUES ( '35', ';)', 'icon_wink.gif', 'Wink');
INSERT INTO nuke_bbsmilies VALUES ( '36', ';-)', 'icon_wink.gif', 'Wink');
INSERT INTO nuke_bbsmilies VALUES ( '37', ':!:', 'icon_exclaim.gif', 'Exclamation');
INSERT INTO nuke_bbsmilies VALUES ( '38', ':?:', 'icon_question.gif', 'Question');
INSERT INTO nuke_bbsmilies VALUES ( '39', ':idea:', 'icon_idea.gif', 'Idea');
INSERT INTO nuke_bbsmilies VALUES ( '40', ':arrow:', 'icon_arrow.gif', 'Arrow');
INSERT INTO nuke_bbsmilies VALUES ( '41', ':|', 'icon_neutral.gif', 'Neutral');
INSERT INTO nuke_bbsmilies VALUES ( '42', ':-|', 'icon_neutral.gif', 'Neutral');
INSERT INTO nuke_bbsmilies VALUES ( '43', ':neutral:', 'icon_neutral.gif', 'Neutral');
INSERT INTO nuke_bbsmilies VALUES ( '44', ':mrgreen:', 'icon_mrgreen.gif', 'Mr. Green');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbthemes'
#

CREATE TABLE nuke_bbthemes (
   themes_id mediumint(8) unsigned NOT NULL auto_increment,
   template_name varchar(30) NOT NULL,
   style_name varchar(30) NOT NULL,
   head_stylesheet varchar(100),
   body_background varchar(100),
   body_bgcolor varchar(6),
   body_text varchar(6),
   body_link varchar(6),
   body_vlink varchar(6),
   body_alink varchar(6),
   body_hlink varchar(6),
   tr_color1 varchar(6),
   tr_color2 varchar(6),
   tr_color3 varchar(6),
   tr_class1 varchar(25),
   tr_class2 varchar(25),
   tr_class3 varchar(25),
   th_color1 varchar(6),
   th_color2 varchar(6),
   th_color3 varchar(6),
   th_class1 varchar(25),
   th_class2 varchar(25),
   th_class3 varchar(25),
   td_color1 varchar(6),
   td_color2 varchar(6),
   td_color3 varchar(6),
   td_class1 varchar(25),
   td_class2 varchar(25),
   td_class3 varchar(25),
   fontface1 varchar(50),
   fontface2 varchar(50),
   fontface3 varchar(50),
   fontsize1 tinyint(4),
   fontsize2 tinyint(4),
   fontsize3 tinyint(4),
   fontcolor1 varchar(6),
   fontcolor2 varchar(6),
   fontcolor3 varchar(6),
   span_class1 varchar(25),
   span_class2 varchar(25),
   span_class3 varchar(25),
   img_size_poll smallint(5) unsigned,
   img_size_privmsg smallint(5) unsigned,
   PRIMARY KEY (themes_id)
);

#
# Dumping data for table 'nuke_bbthemes'
#

INSERT INTO nuke_bbthemes VALUES ( '1', 'subSilver', 'subSilver', 'subSilver.css', '', '0E3259', '000000', '006699', '5493B4', '', 'DD6900', 'EFEFEF', 'DEE3E7', 'D1D7DC', '', '', '', '98AAB1', '006699', 'FFFFFF', 'cellpic1.gif', 'cellpic3.gif', 'cellpic2.jpg', 'FAFAFA', 'FFFFFF', '', 'row1', 'row2', '', 'Verdana, Arial, Helvetica, sans-serif', 'Trebuchet MS', 'Courier, \'Courier New\', sans-serif', '10', '11', '12', '444444', '006600', 'FFA34F', '', '', '', NULL, NULL);

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbthemes_name'
#

CREATE TABLE nuke_bbthemes_name (
   themes_id smallint(5) unsigned DEFAULT '0' NOT NULL,
   tr_color1_name char(50),
   tr_color2_name char(50),
   tr_color3_name char(50),
   tr_class1_name char(50),
   tr_class2_name char(50),
   tr_class3_name char(50),
   th_color1_name char(50),
   th_color2_name char(50),
   th_color3_name char(50),
   th_class1_name char(50),
   th_class2_name char(50),
   th_class3_name char(50),
   td_color1_name char(50),
   td_color2_name char(50),
   td_color3_name char(50),
   td_class1_name char(50),
   td_class2_name char(50),
   td_class3_name char(50),
   fontface1_name char(50),
   fontface2_name char(50),
   fontface3_name char(50),
   fontsize1_name char(50),
   fontsize2_name char(50),
   fontsize3_name char(50),
   fontcolor1_name char(50),
   fontcolor2_name char(50),
   fontcolor3_name char(50),
   span_class1_name char(50),
   span_class2_name char(50),
   span_class3_name char(50),
   PRIMARY KEY (themes_id)
);

#
# Dumping data for table 'nuke_bbthemes_name'
#

INSERT INTO nuke_bbthemes_name VALUES ( '1', 'The lightest row colour', 'The medium row color', 'The darkest row colour', '', '', '', 'Border round the whole page', 'Outer table border', 'Inner table border', 'Silver gradient picture', 'Blue gradient picture', 'Fade-out gradient on index', 'Background for quote boxes', 'All white areas', '', 'Background for topic posts', '2nd background for topic posts', '', 'Main fonts', 'Additional topic title font', 'Form fonts', 'Smallest font size', 'Medium font size', 'Normal font size (post body etc)', 'Quote & copyright text', 'Code text colour', 'Main table header text colour', '', '', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbtopics'
#

CREATE TABLE nuke_bbtopics (
   topic_id mediumint(8) unsigned NOT NULL auto_increment,
   forum_id smallint(8) unsigned DEFAULT '0' NOT NULL,
   topic_title char(60) NOT NULL,
   topic_poster mediumint(8) DEFAULT '0' NOT NULL,
   topic_time int(11) DEFAULT '0' NOT NULL,
   topic_views mediumint(8) unsigned DEFAULT '0' NOT NULL,
   topic_replies mediumint(8) unsigned DEFAULT '0' NOT NULL,
   topic_status tinyint(3) DEFAULT '0' NOT NULL,
   topic_vote tinyint(1) DEFAULT '0' NOT NULL,
   topic_type tinyint(3) DEFAULT '0' NOT NULL,
   topic_last_post_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   topic_first_post_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   topic_moved_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   PRIMARY KEY (topic_id),
   KEY forum_id (forum_id),
   KEY topic_moved_id (topic_moved_id),
   KEY topic_status (topic_status),
   KEY topic_type (topic_type)
);

#
# Dumping data for table 'nuke_bbtopics'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbtopics_watch'
#

CREATE TABLE nuke_bbtopics_watch (
   topic_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   user_id mediumint(8) DEFAULT '0' NOT NULL,
   notify_status tinyint(1) DEFAULT '0' NOT NULL,
   KEY topic_id (topic_id),
   KEY user_id (user_id),
   KEY notify_status (notify_status)
);

#
# Dumping data for table 'nuke_bbtopics_watch'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbuser_group'
#

CREATE TABLE nuke_bbuser_group (
   group_id mediumint(8) DEFAULT '0' NOT NULL,
   user_id mediumint(8) DEFAULT '0' NOT NULL,
   user_pending tinyint(1),
   KEY group_id (group_id),
   KEY user_id (user_id)
);

#
# Dumping data for table 'nuke_bbuser_group'
#

INSERT INTO nuke_bbuser_group VALUES ( '1', '-1', '0');
INSERT INTO nuke_bbuser_group VALUES ( '3', '5', '0');
INSERT INTO nuke_bbuser_group VALUES ( '5', '3', '0');
INSERT INTO nuke_bbuser_group VALUES ( '6', '4', '0');
INSERT INTO nuke_bbuser_group VALUES ( '7', '5', '0');
INSERT INTO nuke_bbuser_group VALUES ( '8', '6', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_bbvote_desc'
#

CREATE TABLE nuke_bbvote_desc (
   vote_id mediumint(8) unsigned NOT NULL auto_increment,
   topic_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   vote_text text NOT NULL,
   vote_start int(11) DEFAULT '0' NOT NULL,
   vote_length int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (vote_id),
   KEY topic_id (topic_id)
);

#
# Dumping data for table 'nuke_bbvote_desc'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbvote_results'
#

CREATE TABLE nuke_bbvote_results (
   vote_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   vote_option_id tinyint(4) unsigned DEFAULT '0' NOT NULL,
   vote_option_text varchar(255) NOT NULL,
   vote_result int(11) DEFAULT '0' NOT NULL,
   KEY vote_option_id (vote_option_id),
   KEY vote_id (vote_id)
);

#
# Dumping data for table 'nuke_bbvote_results'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbvote_voters'
#

CREATE TABLE nuke_bbvote_voters (
   vote_id mediumint(8) unsigned DEFAULT '0' NOT NULL,
   vote_user_id mediumint(8) DEFAULT '0' NOT NULL,
   vote_user_ip char(8) NOT NULL,
   KEY vote_id (vote_id),
   KEY vote_user_id (vote_user_id),
   KEY vote_user_ip (vote_user_ip)
);

#
# Dumping data for table 'nuke_bbvote_voters'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_bbwords'
#

CREATE TABLE nuke_bbwords (
   word_id mediumint(8) unsigned NOT NULL auto_increment,
   word char(100) NOT NULL,
   replacement char(100) NOT NULL,
   PRIMARY KEY (word_id)
);

#
# Dumping data for table 'nuke_bbwords'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_blocks'
#

CREATE TABLE nuke_blocks (
   bid int(10) NOT NULL auto_increment,
   bkey varchar(15) NOT NULL,
   title varchar(60) NOT NULL,
   content text NOT NULL,
   url varchar(200) NOT NULL,
   bposition char(1) NOT NULL,
   weight int(10) DEFAULT '1' NOT NULL,
   active int(1) DEFAULT '1' NOT NULL,
   refresh int(10) DEFAULT '0' NOT NULL,
   time varchar(14) DEFAULT '0' NOT NULL,
   blanguage varchar(30) NOT NULL,
   blockfile varchar(255) NOT NULL,
   view int(1) DEFAULT '0' NOT NULL,
   expire varchar(14) DEFAULT '0' NOT NULL,
   action char(1) NOT NULL,
   subscription int(1) DEFAULT '0' NOT NULL,
   PRIMARY KEY (bid),
   KEY bid (bid),
   KEY title (title)
);

#
# Dumping data for table 'nuke_blocks'
#

INSERT INTO nuke_blocks VALUES ( '1', '', 'Навигация:', '', '', 'l', '2', '0', '0', '', '', 'block-Modules.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '2', 'admin', '???????????', '<strong>?</strong> <a href=\"admin.php\">?????????????</a><br>
<strong>?</strong> <a href=\"admin.php?op=adminStory\">???????</a><br>
<strong>?</strong> <a href=\"admin.php?op=create\">??????</a><br>
<strong>?</strong> <a href=\"admin.php?op=content\">???????</a><br>
<strong>?</strong> <a href=\"admin.php?op=logout\">?????</a>', '', 'l', '1', '0', '0', '985591188', '', '', '2', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '3', '', 'Сейчас на сайте:', '', '', 'l', '3', '0', '0', '', '', 'block-Who_is_Online.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '4', '', '????', '', '', 'r', '2', '0', '0', '', '', 'block-Search.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '5', '', '???', '', '', 'r', '3', '0', '0', '', '', 'block-Languages.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '6', 'userbox', '???? ??????????', '', '', 'r', '1', '0', '0', '', '', '', '1', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '7', '', '???? ??????', '', '', 'r', '4', '1', '0', '', '', 'block-Categories.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '8', '', 'Опрос:', '', '', 'l', '4', '0', '0', '', '', 'block-Survey.php', '0', '1163411488', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '10', '', '?????? ???????', '', '', 'r', '5', '0', '0', '', '', 'block-Big_Story_of_Today.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '11', '', '???', '', '', 'r', '6', '0', '0', '', '', 'block-Old_Articles.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '12', '', '????????', '<div align=\"center\"><br></div><div align=\"center\"><a href=\"http://phpnuke.org\"><img width=\"88\" height=\"31\" bordertitle=\"Powered by PHP-Nuke\" alt=\"Powered by PHP-Nuke\" src=\"images/powered/powered8.jpg\"></a><br><br>

<a href=\"http://rus-phpnuke.com\"><img width=\"88\" height=\"31\" bordertitle=\"PHP-Nuke ??-??????\" alt=\"PHP-Nuke ??-??????\" src=\"images/powered/rus-nuke.gif\"></a><br><br>


<a href=\"http://validator.w3.org/check/referer\"><img width=\"88\" height=\"31\" bordertitle=\"Valid HTML 4.01!\" alt=\"Valid HTML 4.01!\" src=\"images/html401.gif\"></a><br><br><a href=\"http://jigsaw.w3.org/css-validator\"><img width=\"88\" height=\"31\" bordertitle=\"Valid CSS!\" alt=\"Valid CSS!\" src=\"images/css.gif\"></a><br><br>
</div>

', '', 'r', '7', '0', '0', '', '', '', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '13', '', '?????????', '', '', 'l', '4', '0', '0', '', '', 'block-Total_Hits.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '14', '', '????? ?? ?????', '', '', 'd', '1', '0', '0', '', '', 'block-Universalforums.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '15', '', 'Меню:', '  <B>Инфа</B><br>


  » <a href=\'http://xtreme-clan.jino-net.ru/index.php\'>Новости</a><br>

  » Помощь<br>

  » Правила<br>

  » Поиск<br>
<br>
  <B>Гамеза</B><br>
  » Игруха<br>

  » Карты<br>

  » Демки<br>

  » Триксы<br>

  » Модели<br>

  » Конфиги<br>

  » Тулзы<br>

  » Разное<br>
<br>

  <B>Комунити</B><br>

  » Чемпионаты<br>

  » <a href=\'http://xtreme-clan.jino-net.ru/modules.php?name=Surveys\'>Опросы</a><br>

  » <a href=\'http://www.xtreme.4bb.ru\' target=\'_blank\'>Форум</a><br>

  » Чатец<br>
  » <a href=\'http://xtreme-clan.jino-net.ru/modules.php?name=Your_Account\'>Кабинет</a><br>
', '', 'l', '6', '1', '0', '', '', '', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '16', '', 'Состав:', '  <B>Клан:</B><br>
  <font color=\'#990000\'>[xtr]</font> PUFY<BR>
  <font color=\'#990000\'>[xtr]</font> SCORPION<BR>
  <font color=\'#990000\'>[xtr]</font> IKARUS<BR>
  <font color=\'#990000\'>[xtr]</font> KILLER<BR>
  <font color=\'#990000\'>[xtr]</font> DOOM<BR>
  <font color=\'#990000\'>[xtr]</font> PHAETON<BR>
  <font color=\'#990000\'>[xtr]</font> ARS<BR>
  <font color=\'#990000\'>[xtr]</font> MAX<BR>
  <font color=\'#990000\'>[xtr]</font> MbIWONOK<BR>
  <font color=\'#990000\'>[xtr]</font> DUMOH<BR>
  <font color=\'#990000\'>[xtr]</font> ELITA<BR>
  <font color=\'#990000\'>[xtr]</font> MAKC<BR>
  <font color=\'#990000\'>[xtr]</font> LACRUA<BR>
  <font color=\'#990000\'>[xtr]</font> ARETS<BR>
<br>
  <B>Админы:</B><br>
  <font color=\'#990000\'>[xtr]</font> DOOM<BR>
  <font color=\'#990000\'>[xtr]</font> KILLER<BR>
<br><HR>
  <Center><a href=\'http://xtreme-clan.jino-net.ru/modules.php?name=Content&pa=showpage&pid=2\'>Вступить в клан</a></Center>', '', 'l', '7', '1', '0', '', '', '', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '18', '', 'Статистика:', '', '', 'l', '9', '0', '0', '', 'russian', 'block-Who_is_Online.php', '0', '0', 'd', '0');
INSERT INTO nuke_blocks VALUES ( '17', '', 'Банеры:', '<center><br><!--LiveInternet counter--><script type=\"text/javascript\"><!--
document.write(\'<a href=\"http://www.liveinternet.ru/click\" \'+
\'target=_blank><img src=\"http://counter.yadro.ru/hit?t27.5;r\'+
escape(document.referrer)+((typeof(screen)==\'undefined\')?\'\':
\';s\'+screen.width+\'*\'+screen.height+\'*\'+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+\';u\'+escape(document.URL)+
\';\'+Math.random()+
\'\" alt=\"\" title=\"LiveInternet: показано количество просмотров и посетителей\" \'+
\'border=0 width=88 height=120></a>\')//--></script><!--/LiveInternet-->
<br><br>
                                <DIV algin=\"center\">
                                  <EMBED style=\"FILTER: xray\" 
                                name=RAOCXplayer 
                                pluginspage=http://www.microsoft.com/Windows/Downloads/Contents/Products/MediaPlayer/ 
                                src=http://radio.games.md:8000/drumandbass width=68 
                                height=25 type=application/x-mplayer2 
                                EnableContextMenu=\"0\" loop=\"true\" 
                                AutoSize=\"true\" ShowStatusBar=\"0\" 
                                ShowControls=\"1\" autoplay=\"false\"><noembed>Media Player</noembed> 





<center>
', '', 'l', '8', '1', '0', '', '', '', '0', '0', 'd', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_cities'
#

CREATE TABLE nuke_cities (
   id mediumint(4) DEFAULT '0' NOT NULL,
   local_id mediumint(3) DEFAULT '0' NOT NULL,
   city varchar(65) NOT NULL,
   cc char(2) NOT NULL,
   country varchar(35) NOT NULL,
   PRIMARY KEY (id)
);

#
# Dumping data for table 'nuke_cities'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_comments'
#

CREATE TABLE nuke_comments (
   tid int(11) NOT NULL auto_increment,
   pid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   date datetime,
   name varchar(60) NOT NULL,
   email varchar(60),
   url varchar(60),
   host_name varchar(60),
   subject varchar(85) NOT NULL,
   comment text NOT NULL,
   score tinyint(4) DEFAULT '0' NOT NULL,
   reason tinyint(4) DEFAULT '0' NOT NULL,
   last_moderation_ip varchar(15) DEFAULT '0',
   PRIMARY KEY (tid),
   KEY tid (tid),
   KEY pid (pid),
   KEY sid (sid)
);

#
# Dumping data for table 'nuke_comments'
#

INSERT INTO nuke_comments VALUES ( '1', '0', '1', '2006-09-24 13:54:18', 'Phaeton', '', '', '84.245.197.26', 'Re: :: Открытие нового сайта ::', 'Troekratnoje ura ot phaetona =DDD', '1', '0', '0');
INSERT INTO nuke_comments VALUES ( '2', '0', '1', '2006-09-24 18:20:43', 'Bitnik', '', '', '87.248.179.154', 'Re: :: Открытие нового сайта ::', 'Ещё хочу замутить прикольный мини чат, прямо на главной, статистику, встроить радио и список присудствующих на сайте :]', '1', '0', '0');
INSERT INTO nuke_comments VALUES ( '3', '0', '1', '2006-09-24 19:05:27', 'Phaeton', '', '', '84.245.197.26', 'Re: :: Открытие нового сайта ::', 'Vot da spisok nado.... I ispravj lag s emailom podtverzhdajushim registraciju...', '1', '0', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_comments_moderated'
#

CREATE TABLE nuke_comments_moderated (
   tid int(11) NOT NULL auto_increment,
   pid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   date datetime,
   name varchar(60) NOT NULL,
   email varchar(60),
   url varchar(60),
   host_name varchar(60),
   subject varchar(85) NOT NULL,
   comment text NOT NULL,
   score tinyint(4) DEFAULT '0' NOT NULL,
   reason tinyint(4) DEFAULT '0' NOT NULL,
   last_moderation_ip varchar(15) DEFAULT '0',
   PRIMARY KEY (tid),
   KEY tid (tid),
   KEY pid (pid),
   KEY sid (sid)
);

#
# Dumping data for table 'nuke_comments_moderated'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_config'
#

CREATE TABLE nuke_config (
   sitename varchar(255) NOT NULL,
   nukeurl varchar(255) NOT NULL,
   site_logo varchar(255) NOT NULL,
   slogan varchar(255) NOT NULL,
   startdate varchar(50) NOT NULL,
   adminmail varchar(255) NOT NULL,
   anonpost tinyint(1) DEFAULT '0' NOT NULL,
   Default_Theme varchar(255) NOT NULL,
   foot1 text NOT NULL,
   foot2 text NOT NULL,
   foot3 text NOT NULL,
   commentlimit int(9) DEFAULT '4096' NOT NULL,
   anonymous varchar(255) NOT NULL,
   minpass tinyint(1) DEFAULT '5' NOT NULL,
   pollcomm tinyint(1) DEFAULT '1' NOT NULL,
   articlecomm tinyint(1) DEFAULT '1' NOT NULL,
   broadcast_msg tinyint(1) DEFAULT '1' NOT NULL,
   my_headlines tinyint(1) DEFAULT '1' NOT NULL,
   top int(3) DEFAULT '10' NOT NULL,
   storyhome int(2) DEFAULT '10' NOT NULL,
   user_news tinyint(1) DEFAULT '1' NOT NULL,
   oldnum int(2) DEFAULT '30' NOT NULL,
   ultramode tinyint(1) DEFAULT '0' NOT NULL,
   banners tinyint(1) DEFAULT '1' NOT NULL,
   backend_title varchar(255) NOT NULL,
   backend_language varchar(10) NOT NULL,
   language varchar(100) NOT NULL,
   locale varchar(10) NOT NULL,
   multilingual tinyint(1) DEFAULT '0' NOT NULL,
   useflags tinyint(1) DEFAULT '0' NOT NULL,
   notify tinyint(1) DEFAULT '0' NOT NULL,
   notify_email varchar(255) NOT NULL,
   notify_subject varchar(255) NOT NULL,
   notify_message varchar(255) NOT NULL,
   notify_from varchar(255) NOT NULL,
   moderate tinyint(1) DEFAULT '0' NOT NULL,
   admingraphic tinyint(1) DEFAULT '1' NOT NULL,
   httpref tinyint(1) DEFAULT '1' NOT NULL,
   httprefmax int(5) DEFAULT '1000' NOT NULL,
   CensorMode tinyint(1) DEFAULT '3' NOT NULL,
   CensorReplace varchar(10) NOT NULL,
   copyright text NOT NULL,
   Version_Num varchar(10) NOT NULL,
   PRIMARY KEY (sitename)
);

#
# Dumping data for table 'nuke_config'
#

INSERT INTO nuke_config VALUES ( 'Xtreme Gamers', 'http://xtreme-clan.jino-net.ru', 'logo.gif', 'We are the biggest', '', 'Team-Group@rambler.ru', '0', 'XtratoVeil', '', '', '', '4096', 'Shadow', '8', '1', '1', '1', '0', '10', '10', '0', '10', '1', '1', 'Hidden', 'ru-ru', 'russian', 'ru-Ru', '1', '1', '1', 'Team-Group@rambler.ru', 'NEW TOPIC...', 'NEWS ON -  http://www.xtreme-clan.jino-net.ru - CHECK IT !!!', 'Android', '1', '1', '1', '1000', '0', '*****', ' ', '7.9');

# --------------------------------------------------------
#
# Table structure for table 'nuke_confirm'
#

CREATE TABLE nuke_confirm (
   confirm_id char(32) NOT NULL,
   session_id char(32) NOT NULL,
   code char(6) NOT NULL,
   PRIMARY KEY (session_id, confirm_id)
);

#
# Dumping data for table 'nuke_confirm'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_counter'
#

CREATE TABLE nuke_counter (
   type varchar(80) NOT NULL,
   var varchar(80) NOT NULL,
   count int(10) unsigned DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_counter'
#

INSERT INTO nuke_counter VALUES ( 'total', 'hits', '3');
INSERT INTO nuke_counter VALUES ( 'browser', 'WebTV', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'Lynx', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'MSIE', '2');
INSERT INTO nuke_counter VALUES ( 'browser', 'Opera', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'Konqueror', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'Netscape', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'FireFox', '1');
INSERT INTO nuke_counter VALUES ( 'browser', 'Bot', '0');
INSERT INTO nuke_counter VALUES ( 'browser', 'Other', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'Windows', '3');
INSERT INTO nuke_counter VALUES ( 'os', 'Linux', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'Mac', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'FreeBSD', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'SunOS', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'IRIX', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'BeOS', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'OS/2', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'AIX', '0');
INSERT INTO nuke_counter VALUES ( 'os', 'Other', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_categories'
#

CREATE TABLE nuke_downloads_categories (
   cid int(11) NOT NULL auto_increment,
   title varchar(50) NOT NULL,
   cdescription text NOT NULL,
   parentid int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid),
   KEY title (title)
);

#
# Dumping data for table 'nuke_downloads_categories'
#

INSERT INTO nuke_downloads_categories VALUES ( '1', 'Карты...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '2', 'Демки...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '3', 'Триксы...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '4', 'Конфиги...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '5', 'Модели...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '6', 'Тулзы...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '7', 'Музыка...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '8', 'Графика...', '', '0');
INSERT INTO nuke_downloads_categories VALUES ( '9', 'Синглы...', '', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_downloads'
#

CREATE TABLE nuke_downloads_downloads (
   lid int(11) NOT NULL auto_increment,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   date datetime,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   hits int(11) DEFAULT '0' NOT NULL,
   submitter varchar(60) NOT NULL,
   downloadratingsummary double(6,4) DEFAULT '0.0000' NOT NULL,
   totalvotes int(11) DEFAULT '0' NOT NULL,
   totalcomments int(11) DEFAULT '0' NOT NULL,
   filesize int(11) DEFAULT '0' NOT NULL,
   version varchar(10) NOT NULL,
   homepage varchar(200) NOT NULL,
   PRIMARY KEY (lid),
   KEY lid (lid),
   KEY cid (cid),
   KEY sid (sid),
   KEY title (title)
);

#
# Dumping data for table 'nuke_downloads_downloads'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_editorials'
#

CREATE TABLE nuke_downloads_editorials (
   downloadid int(11) DEFAULT '0' NOT NULL,
   adminid varchar(60) NOT NULL,
   editorialtimestamp datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   editorialtext text NOT NULL,
   editorialtitle varchar(100) NOT NULL,
   PRIMARY KEY (downloadid),
   KEY downloadid (downloadid)
);

#
# Dumping data for table 'nuke_downloads_editorials'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_modrequest'
#

CREATE TABLE nuke_downloads_modrequest (
   requestid int(11) NOT NULL auto_increment,
   lid int(11) DEFAULT '0' NOT NULL,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   modifysubmitter varchar(60) NOT NULL,
   brokendownload int(3) DEFAULT '0' NOT NULL,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   filesize int(11) DEFAULT '0' NOT NULL,
   version varchar(10) NOT NULL,
   homepage varchar(200) NOT NULL,
   PRIMARY KEY (requestid),
   UNIQUE requestid (requestid)
);

#
# Dumping data for table 'nuke_downloads_modrequest'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_newdownload'
#

CREATE TABLE nuke_downloads_newdownload (
   lid int(11) NOT NULL auto_increment,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   submitter varchar(60) NOT NULL,
   filesize int(11) DEFAULT '0' NOT NULL,
   version varchar(10) NOT NULL,
   homepage varchar(200) NOT NULL,
   PRIMARY KEY (lid),
   KEY lid (lid),
   KEY cid (cid),
   KEY sid (sid),
   KEY title (title)
);

#
# Dumping data for table 'nuke_downloads_newdownload'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_downloads_votedata'
#

CREATE TABLE nuke_downloads_votedata (
   ratingdbid int(11) NOT NULL auto_increment,
   ratinglid int(11) DEFAULT '0' NOT NULL,
   ratinguser varchar(60) NOT NULL,
   rating int(11) DEFAULT '0' NOT NULL,
   ratinghostname varchar(60) NOT NULL,
   ratingcomments text NOT NULL,
   ratingtimestamp datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   PRIMARY KEY (ratingdbid),
   KEY ratingdbid (ratingdbid)
);

#
# Dumping data for table 'nuke_downloads_votedata'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_encyclopedia'
#

CREATE TABLE nuke_encyclopedia (
   eid int(10) NOT NULL auto_increment,
   title varchar(255) NOT NULL,
   description text NOT NULL,
   elanguage varchar(30) NOT NULL,
   active int(1) DEFAULT '0' NOT NULL,
   PRIMARY KEY (eid),
   KEY eid (eid)
);

#
# Dumping data for table 'nuke_encyclopedia'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_encyclopedia_text'
#

CREATE TABLE nuke_encyclopedia_text (
   tid int(10) NOT NULL auto_increment,
   eid int(10) DEFAULT '0' NOT NULL,
   title varchar(255) NOT NULL,
   text text NOT NULL,
   counter int(10) DEFAULT '0' NOT NULL,
   PRIMARY KEY (tid),
   KEY tid (tid),
   KEY eid (eid),
   KEY title (title)
);

#
# Dumping data for table 'nuke_encyclopedia_text'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_faqanswer'
#

CREATE TABLE nuke_faqanswer (
   id tinyint(4) NOT NULL auto_increment,
   id_cat tinyint(4) DEFAULT '0' NOT NULL,
   question varchar(255),
   answer text,
   PRIMARY KEY (id),
   KEY id (id),
   KEY id_cat (id_cat)
);

#
# Dumping data for table 'nuke_faqanswer'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_faqcategories'
#

CREATE TABLE nuke_faqcategories (
   id_cat tinyint(3) NOT NULL auto_increment,
   categories varchar(255),
   flanguage varchar(30) NOT NULL,
   PRIMARY KEY (id_cat),
   KEY id_cat (id_cat)
);

#
# Dumping data for table 'nuke_faqcategories'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_groups'
#

CREATE TABLE nuke_groups (
   id int(10) NOT NULL auto_increment,
   name varchar(255) NOT NULL,
   description text NOT NULL,
   points int(10) DEFAULT '0' NOT NULL,
   KEY id (id)
);

#
# Dumping data for table 'nuke_groups'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_groups_points'
#

CREATE TABLE nuke_groups_points (
   id int(10) NOT NULL auto_increment,
   points int(10) DEFAULT '0' NOT NULL,
   KEY id (id)
);

#
# Dumping data for table 'nuke_groups_points'
#

INSERT INTO nuke_groups_points VALUES ( '1', '0');
INSERT INTO nuke_groups_points VALUES ( '2', '0');
INSERT INTO nuke_groups_points VALUES ( '3', '0');
INSERT INTO nuke_groups_points VALUES ( '4', '0');
INSERT INTO nuke_groups_points VALUES ( '5', '0');
INSERT INTO nuke_groups_points VALUES ( '6', '0');
INSERT INTO nuke_groups_points VALUES ( '7', '0');
INSERT INTO nuke_groups_points VALUES ( '8', '0');
INSERT INTO nuke_groups_points VALUES ( '9', '0');
INSERT INTO nuke_groups_points VALUES ( '10', '0');
INSERT INTO nuke_groups_points VALUES ( '11', '0');
INSERT INTO nuke_groups_points VALUES ( '12', '0');
INSERT INTO nuke_groups_points VALUES ( '13', '0');
INSERT INTO nuke_groups_points VALUES ( '14', '0');
INSERT INTO nuke_groups_points VALUES ( '15', '0');
INSERT INTO nuke_groups_points VALUES ( '16', '0');
INSERT INTO nuke_groups_points VALUES ( '17', '0');
INSERT INTO nuke_groups_points VALUES ( '18', '0');
INSERT INTO nuke_groups_points VALUES ( '19', '0');
INSERT INTO nuke_groups_points VALUES ( '20', '0');
INSERT INTO nuke_groups_points VALUES ( '21', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_headlines'
#

CREATE TABLE nuke_headlines (
   hid int(11) NOT NULL auto_increment,
   sitename varchar(30) NOT NULL,
   headlinesurl varchar(200) NOT NULL,
   PRIMARY KEY (hid),
   KEY hid (hid)
);

#
# Dumping data for table 'nuke_headlines'
#

INSERT INTO nuke_headlines VALUES ( '16', 'rus-phpnuke.com', 'http://rus-phpnuke.com/backend.php');
INSERT INTO nuke_headlines VALUES ( '17', 'NukeScripts(tm)', 'http://www.nukescripts.net/backend.php');
INSERT INTO nuke_headlines VALUES ( '18', 'NukeFixes', 'http://nukefixes.com/backend.php');
INSERT INTO nuke_headlines VALUES ( '19', 'NukeResources', 'http://www.nukeresources.com/backend.php');
INSERT INTO nuke_headlines VALUES ( '22', 'PHP-Nuke', 'http://phpnuke.org/backend.php');

# --------------------------------------------------------
#
# Table structure for table 'nuke_journal'
#

CREATE TABLE nuke_journal (
   jid int(11) NOT NULL auto_increment,
   aid varchar(30) NOT NULL,
   title varchar(80),
   bodytext text NOT NULL,
   mood varchar(48) NOT NULL,
   pdate varchar(48) NOT NULL,
   ptime varchar(48) NOT NULL,
   status varchar(48) NOT NULL,
   mtime varchar(48) NOT NULL,
   mdate varchar(48) NOT NULL,
   PRIMARY KEY (jid),
   KEY jid (jid),
   KEY aid (aid)
);

#
# Dumping data for table 'nuke_journal'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_journal_comments'
#

CREATE TABLE nuke_journal_comments (
   cid int(11) NOT NULL auto_increment,
   rid varchar(48) NOT NULL,
   aid varchar(30) NOT NULL,
   comment text NOT NULL,
   pdate varchar(48) NOT NULL,
   ptime varchar(48) NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid),
   KEY rid (rid),
   KEY aid (aid)
);

#
# Dumping data for table 'nuke_journal_comments'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_journal_stats'
#

CREATE TABLE nuke_journal_stats (
   id int(11) NOT NULL auto_increment,
   joid varchar(48) NOT NULL,
   nop varchar(48) NOT NULL,
   ldp varchar(24) NOT NULL,
   ltp varchar(24) NOT NULL,
   micro varchar(128) NOT NULL,
   PRIMARY KEY (id),
   KEY id (id)
);

#
# Dumping data for table 'nuke_journal_stats'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_categories'
#

CREATE TABLE nuke_links_categories (
   cid int(11) NOT NULL auto_increment,
   title varchar(50) NOT NULL,
   cdescription text NOT NULL,
   parentid int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid)
);

#
# Dumping data for table 'nuke_links_categories'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_editorials'
#

CREATE TABLE nuke_links_editorials (
   linkid int(11) DEFAULT '0' NOT NULL,
   adminid varchar(60) NOT NULL,
   editorialtimestamp datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   editorialtext text NOT NULL,
   editorialtitle varchar(100) NOT NULL,
   PRIMARY KEY (linkid),
   KEY linkid (linkid)
);

#
# Dumping data for table 'nuke_links_editorials'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_links'
#

CREATE TABLE nuke_links_links (
   lid int(11) NOT NULL auto_increment,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   date datetime,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   hits int(11) DEFAULT '0' NOT NULL,
   submitter varchar(60) NOT NULL,
   linkratingsummary double(6,4) DEFAULT '0.0000' NOT NULL,
   totalvotes int(11) DEFAULT '0' NOT NULL,
   totalcomments int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (lid),
   KEY lid (lid),
   KEY cid (cid),
   KEY sid (sid)
);

#
# Dumping data for table 'nuke_links_links'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_modrequest'
#

CREATE TABLE nuke_links_modrequest (
   requestid int(11) NOT NULL auto_increment,
   lid int(11) DEFAULT '0' NOT NULL,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   modifysubmitter varchar(60) NOT NULL,
   brokenlink int(3) DEFAULT '0' NOT NULL,
   PRIMARY KEY (requestid),
   UNIQUE requestid (requestid)
);

#
# Dumping data for table 'nuke_links_modrequest'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_newlink'
#

CREATE TABLE nuke_links_newlink (
   lid int(11) NOT NULL auto_increment,
   cid int(11) DEFAULT '0' NOT NULL,
   sid int(11) DEFAULT '0' NOT NULL,
   title varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   description text NOT NULL,
   name varchar(100) NOT NULL,
   email varchar(100) NOT NULL,
   submitter varchar(60) NOT NULL,
   PRIMARY KEY (lid),
   KEY lid (lid),
   KEY cid (cid),
   KEY sid (sid)
);

#
# Dumping data for table 'nuke_links_newlink'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_links_votedata'
#

CREATE TABLE nuke_links_votedata (
   ratingdbid int(11) NOT NULL auto_increment,
   ratinglid int(11) DEFAULT '0' NOT NULL,
   ratinguser varchar(60) NOT NULL,
   rating int(11) DEFAULT '0' NOT NULL,
   ratinghostname varchar(60) NOT NULL,
   ratingcomments text NOT NULL,
   ratingtimestamp datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   PRIMARY KEY (ratingdbid),
   KEY ratingdbid (ratingdbid)
);

#
# Dumping data for table 'nuke_links_votedata'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_main'
#

CREATE TABLE nuke_main (
   main_module varchar(255) NOT NULL
);

#
# Dumping data for table 'nuke_main'
#

INSERT INTO nuke_main VALUES ( 'News');

# --------------------------------------------------------
#
# Table structure for table 'nuke_message'
#

CREATE TABLE nuke_message (
   mid int(11) NOT NULL auto_increment,
   title varchar(100) NOT NULL,
   content text NOT NULL,
   date varchar(14) NOT NULL,
   expire int(7) DEFAULT '0' NOT NULL,
   active int(1) DEFAULT '1' NOT NULL,
   view int(1) DEFAULT '1' NOT NULL,
   mlanguage varchar(30) NOT NULL,
   PRIMARY KEY (mid),
   UNIQUE mid (mid)
);

#
# Dumping data for table 'nuke_message'
#

INSERT INTO nuke_message VALUES ( '2', '.:: Общее положение ::.', '<left><B>Добро пожаловать на официальный сайт НФК клана - \"Xtreme\", по размерам и активности игроков заметно опережающий своих конкурентов во всем НФК комунити, как бы гордо это не звучало, но на сегодняшний день это действительно так. На данный момент в клане насчитывается около 20 гемеров с разных уголков земного шара, разумеется большая часть из них русскоязычные гамеры с России. Вступить в клан может практически любой желающий. Правила и условия вступления, читаем тут. Тем, кто понятия не имеет что из себя представляет НФК, советуем ознакомится с подробностями тут. Даже если вас не заинтерисовала информация представленная на нашем сайте, мы всёравно рады что вы нас посетили...</B></left>', '1159053472', '0', '1', '1', '');
INSERT INTO nuke_message VALUES ( '4', ':: Мини Чатец ::', '<iframe frameborder=\"0\" width=\"688\" height=\"330\" src=\"http://www.xgamers.ho11.com/notepad/index.php\"></iframe>', '1159185119', '0', '0', '1', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_modules'
#

CREATE TABLE nuke_modules (
   mid int(10) NOT NULL auto_increment,
   title varchar(255) NOT NULL,
   custom_title varchar(255) NOT NULL,
   active int(1) DEFAULT '0' NOT NULL,
   view int(1) DEFAULT '0' NOT NULL,
   inmenu tinyint(1) DEFAULT '1' NOT NULL,
   mod_group int(10) DEFAULT '0',
   admins varchar(255) NOT NULL,
   PRIMARY KEY (mid),
   KEY mid (mid),
   KEY title (title),
   KEY custom_title (custom_title)
);

#
# Dumping data for table 'nuke_modules'
#

INSERT INTO nuke_modules VALUES ( '2', 'Content', 'Содержание', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '3', 'Downloads', 'Файлы', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '4', 'Encyclopedia', 'Энциклопедия', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '7', 'Forums', 'Форум', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '8', 'Journal', 'Журнал', '1', '1', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '10', 'News', 'Новости', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '11', 'Private_Messages', 'Приват', '1', '1', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '12', 'Recommend_Us', 'Рекомендовать сайт', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '13', 'Reviews', 'TOP 10 Критики', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '14', 'Search', 'Поиск', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '15', 'Statistics', 'Статистика', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '16', 'Stories_Archive', 'Архив Статей', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '17', 'Submit_News', 'Опубликовать', '1', '1', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '18', 'Surveys', 'Опросы', '1', '1', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '19', 'Top', 'TOP 10', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '20', 'Topics', 'Статьи', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '6', 'Feedback', 'Замечания', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '5', 'FAQ', 'FAQ', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '9', 'Members_List', 'Пользователи', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '22', 'Your_Account', 'Аккаунт', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '21', 'Web_Links', 'Ссылки', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '1', 'AvantGo', 'Хер Знает Что это', '1', '0', '1', '0', '');
INSERT INTO nuke_modules VALUES ( '50', 'Advertising', 'Реклама', '1', '0', '1', '0', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_optimize_gain'
#

CREATE TABLE nuke_optimize_gain (
   gain decimal(10,3)
);

#
# Dumping data for table 'nuke_optimize_gain'
#

INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');
INSERT INTO nuke_optimize_gain VALUES ( '0.000');

# --------------------------------------------------------
#
# Table structure for table 'nuke_pages'
#

CREATE TABLE nuke_pages (
   pid int(10) NOT NULL auto_increment,
   cid int(10) DEFAULT '0' NOT NULL,
   title varchar(255) NOT NULL,
   subtitle varchar(255) NOT NULL,
   active int(1) DEFAULT '0' NOT NULL,
   page_header text NOT NULL,
   text text NOT NULL,
   page_footer text NOT NULL,
   signature text NOT NULL,
   date datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   counter int(10) DEFAULT '0' NOT NULL,
   clanguage varchar(30) NOT NULL,
   PRIMARY KEY (pid),
   KEY pid (pid),
   KEY cid (cid)
);

#
# Dumping data for table 'nuke_pages'
#

INSERT INTO nuke_pages VALUES ( '2', '3', '', '<b>Втупление в ряды Xtreme клана...</b>', '1', '&nbsp;&nbsp;&nbsp;&nbsp;Для втупления в клан необходимо зополнить нижевыложенную анкету , сыграть с кем-либо 
&nbsp;&nbsp;&nbsp;&nbsp;из представителей клана с игровым скилом не ниже 3-тьего, записать соответствующие 
&nbsp;&nbsp;&nbsp;&nbsp;демки (2 штуки хватит) и отослать Phaeton\'у на мыло, либо выложить прямо на
&nbsp;&nbsp;&nbsp;&nbsp;форуме, после чего вас должным образом оценят и вынесут соответсвующее решение.

&nbsp;&nbsp;&nbsp;&nbsp;Примечание: в связи с тем, что в калне нас уже довольно много - игроки со скилом 
&nbsp;&nbsp;&nbsp;&nbsp;ниже 3-тьего в клан вступить - не могут (за исключением некоторых особых случаев).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Шаблон анкеты: 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Ник: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Имя: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Возраст: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Город: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ ICQ: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Мыло: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Модель и цвет: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Любимые типы игры: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Цель прибывания в клане: 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ Самооценка скила (max 5): 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Обязательные паункты обозначены плюсами :]

&nbsp;&nbsp;&nbsp;&nbsp;После приема в клан чел обязуется соблюдать все паункты описанных тут правил
&nbsp;&nbsp;&nbsp;&nbsp;и носить ^b^4[^1X^3treme^4] шапку перед ником и не снимать её хотяб во время игры 
&nbsp;&nbsp;&nbsp;&nbsp;c другими представителями клана - таков устав клана. 

&nbsp;&nbsp;&nbsp;&nbsp;Если вы со всем эти согласны, то смело отправляйте анкету на этот мейл 
&nbsp;&nbsp;&nbsp;&nbsp;phaeton91@inbox.lv и ждите дальнейших указаний.', '', '', '', '2006-09-24 17:03:56', '37', 'russian');

# --------------------------------------------------------
#
# Table structure for table 'nuke_pages_categories'
#

CREATE TABLE nuke_pages_categories (
   cid int(10) NOT NULL auto_increment,
   title varchar(255) NOT NULL,
   description text NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid)
);

#
# Dumping data for table 'nuke_pages_categories'
#

INSERT INTO nuke_pages_categories VALUES ( '1', '???', '????? ????????????? ?????? ????? Xtreme ? ?? ?????');
INSERT INTO nuke_pages_categories VALUES ( '3', 'Страницы...', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_poll_check'
#

CREATE TABLE nuke_poll_check (
   ip varchar(20) NOT NULL,
   time varchar(14) NOT NULL,
   pollID int(10) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_poll_check'
#

INSERT INTO nuke_poll_check VALUES ( '83.237.104.48', '1159292653', '1');

# --------------------------------------------------------
#
# Table structure for table 'nuke_poll_data'
#

CREATE TABLE nuke_poll_data (
   pollID int(11) DEFAULT '0' NOT NULL,
   optionText char(50) NOT NULL,
   optionCount int(11) DEFAULT '0' NOT NULL,
   voteID int(11) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_poll_data'
#

INSERT INTO nuke_poll_data VALUES ( '1', 'Круто', '5', '1');
INSERT INTO nuke_poll_data VALUES ( '1', 'Нормально', '2', '2');
INSERT INTO nuke_poll_data VALUES ( '1', 'Средне', '0', '3');
INSERT INTO nuke_poll_data VALUES ( '1', 'Не очень', '1', '4');
INSERT INTO nuke_poll_data VALUES ( '1', 'Отцтой', '0', '5');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '6');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '7');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '8');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '9');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '10');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '11');
INSERT INTO nuke_poll_data VALUES ( '1', '', '0', '12');

# --------------------------------------------------------
#
# Table structure for table 'nuke_poll_desc'
#

CREATE TABLE nuke_poll_desc (
   pollID int(11) NOT NULL auto_increment,
   pollTitle varchar(100) NOT NULL,
   timeStamp int(11) DEFAULT '0' NOT NULL,
   voters mediumint(9) DEFAULT '0' NOT NULL,
   planguage varchar(30) NOT NULL,
   artid int(10) DEFAULT '0' NOT NULL,
   comments int(11) DEFAULT '0',
   PRIMARY KEY (pollID),
   KEY pollID (pollID)
);

#
# Dumping data for table 'nuke_poll_desc'
#

INSERT INTO nuke_poll_desc VALUES ( '1', '&nbsp;&nbsp;Ну как вам новый сайт ?', '961405160', '8', 'russian', '0', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_pollcomments'
#

CREATE TABLE nuke_pollcomments (
   tid int(11) NOT NULL auto_increment,
   pid int(11) DEFAULT '0' NOT NULL,
   pollID int(11) DEFAULT '0' NOT NULL,
   date datetime,
   name varchar(60) NOT NULL,
   email varchar(60),
   url varchar(60),
   host_name varchar(60),
   subject varchar(60) NOT NULL,
   comment text NOT NULL,
   score tinyint(4) DEFAULT '0' NOT NULL,
   reason tinyint(4) DEFAULT '0' NOT NULL,
   last_moderation_ip varchar(15) DEFAULT '0',
   PRIMARY KEY (tid),
   KEY tid (tid),
   KEY pid (pid),
   KEY pollID (pollID)
);

#
# Dumping data for table 'nuke_pollcomments'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_pollcomments_moderated'
#

CREATE TABLE nuke_pollcomments_moderated (
   tid int(11) NOT NULL auto_increment,
   pid int(11) DEFAULT '0' NOT NULL,
   pollID int(11) DEFAULT '0' NOT NULL,
   date datetime,
   name varchar(60) NOT NULL,
   email varchar(60),
   url varchar(60),
   host_name varchar(60),
   subject varchar(60) NOT NULL,
   comment text NOT NULL,
   score tinyint(4) DEFAULT '0' NOT NULL,
   reason tinyint(4) DEFAULT '0' NOT NULL,
   last_moderation_ip varchar(15) DEFAULT '0',
   PRIMARY KEY (tid),
   KEY tid (tid),
   KEY pid (pid),
   KEY pollID (pollID)
);

#
# Dumping data for table 'nuke_pollcomments_moderated'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_public_messages'
#

CREATE TABLE nuke_public_messages (
   mid int(10) NOT NULL auto_increment,
   content varchar(255) NOT NULL,
   date varchar(14),
   who varchar(25) NOT NULL,
   PRIMARY KEY (mid),
   KEY mid (mid)
);

#
# Dumping data for table 'nuke_public_messages'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_queue'
#

CREATE TABLE nuke_queue (
   qid smallint(5) unsigned NOT NULL auto_increment,
   uid mediumint(9) DEFAULT '0' NOT NULL,
   uname varchar(40) NOT NULL,
   subject varchar(100) NOT NULL,
   story text,
   storyext text NOT NULL,
   timestamp datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
   topic varchar(20) NOT NULL,
   alanguage varchar(30) NOT NULL,
   PRIMARY KEY (qid),
   KEY qid (qid),
   KEY uid (uid),
   KEY uname (uname)
);

#
# Dumping data for table 'nuke_queue'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_referer'
#

CREATE TABLE nuke_referer (
   rid int(11) NOT NULL auto_increment,
   url varchar(100) NOT NULL,
   PRIMARY KEY (rid),
   KEY rid (rid)
);

#
# Dumping data for table 'nuke_referer'
#

INSERT INTO nuke_referer VALUES ( '1', 'http://xtreme.4bb.ru/viewtopic.php?pid=6753');
INSERT INTO nuke_referer VALUES ( '2', 'http://xtreme.4bb.ru/viewtopic.php?id=315');
INSERT INTO nuke_referer VALUES ( '3', 'http://xtreme.4bb.ru/viewtopic.php?pid=6761');
INSERT INTO nuke_referer VALUES ( '4', 'http://xtreme.4bb.ru/viewtopic.php?pid=6761');
INSERT INTO nuke_referer VALUES ( '5', 'http://xtreme.4bb.ru/viewtopic.php?pid=6761');
INSERT INTO nuke_referer VALUES ( '6', 'http://xtreme.4bb.ru/viewtopic.php?pid=6761');
INSERT INTO nuke_referer VALUES ( '7', 'http://xtreme.4bb.ru/viewtopic.php?pid=6761');

# --------------------------------------------------------
#
# Table structure for table 'nuke_related'
#

CREATE TABLE nuke_related (
   rid int(11) NOT NULL auto_increment,
   tid int(11) DEFAULT '0' NOT NULL,
   name varchar(30) NOT NULL,
   url varchar(200) NOT NULL,
   PRIMARY KEY (rid),
   KEY rid (rid),
   KEY tid (tid)
);

#
# Dumping data for table 'nuke_related'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_reviews'
#

CREATE TABLE nuke_reviews (
   id int(10) NOT NULL auto_increment,
   date date DEFAULT '0000-00-00' NOT NULL,
   title varchar(150) NOT NULL,
   text text NOT NULL,
   reviewer varchar(20),
   email varchar(60),
   score int(10) DEFAULT '0' NOT NULL,
   cover varchar(100) NOT NULL,
   url varchar(100) NOT NULL,
   url_title varchar(50) NOT NULL,
   hits int(10) DEFAULT '0' NOT NULL,
   rlanguage varchar(30) NOT NULL,
   PRIMARY KEY (id),
   KEY id (id)
);

#
# Dumping data for table 'nuke_reviews'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_reviews_add'
#

CREATE TABLE nuke_reviews_add (
   id int(10) NOT NULL auto_increment,
   date date,
   title varchar(150) NOT NULL,
   text text NOT NULL,
   reviewer varchar(20) NOT NULL,
   email varchar(60),
   score int(10) DEFAULT '0' NOT NULL,
   url varchar(100) NOT NULL,
   url_title varchar(50) NOT NULL,
   rlanguage varchar(30) NOT NULL,
   PRIMARY KEY (id),
   KEY id (id)
);

#
# Dumping data for table 'nuke_reviews_add'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_reviews_comments'
#

CREATE TABLE nuke_reviews_comments (
   cid int(10) NOT NULL auto_increment,
   rid int(10) DEFAULT '0' NOT NULL,
   userid varchar(25) NOT NULL,
   date datetime,
   comments text,
   score int(10) DEFAULT '0' NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid),
   KEY rid (rid),
   KEY userid (userid)
);

#
# Dumping data for table 'nuke_reviews_comments'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_reviews_comments_moderated'
#

CREATE TABLE nuke_reviews_comments_moderated (
   cid int(10) NOT NULL auto_increment,
   rid int(10) DEFAULT '0' NOT NULL,
   userid varchar(25) NOT NULL,
   date datetime,
   comments text,
   score int(10) DEFAULT '0' NOT NULL,
   PRIMARY KEY (cid),
   KEY cid (cid),
   KEY rid (rid),
   KEY userid (userid)
);

#
# Dumping data for table 'nuke_reviews_comments_moderated'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_reviews_main'
#

CREATE TABLE nuke_reviews_main (
   title varchar(100),
   description text
);

#
# Dumping data for table 'nuke_reviews_main'
#

INSERT INTO nuke_reviews_main VALUES ( 'Reviews Section Title', 'Reviews Section Long Description');

# --------------------------------------------------------
#
# Table structure for table 'nuke_session'
#

CREATE TABLE nuke_session (
   uname varchar(25) NOT NULL,
   time varchar(14) NOT NULL,
   host_addr varchar(48) NOT NULL,
   guest int(1) DEFAULT '0' NOT NULL,
   KEY time (time),
   KEY guest (guest)
);

#
# Dumping data for table 'nuke_session'
#

INSERT INTO nuke_session VALUES ( 'Killer', '1159295168', '83.237.104.48', '0');
INSERT INTO nuke_session VALUES ( '81.19.77.184', '1159295005', '81.19.77.184', '1');
INSERT INTO nuke_session VALUES ( 'Bitnik', '1159295286', '87.248.179.154', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stats_date'
#

CREATE TABLE nuke_stats_date (
   year smallint(6) DEFAULT '0' NOT NULL,
   month tinyint(4) DEFAULT '0' NOT NULL,
   date tinyint(4) DEFAULT '0' NOT NULL,
   hits bigint(20) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_stats_date'
#

INSERT INTO nuke_stats_date VALUES ( '2006', '1', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '1', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '2', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '3', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '4', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '5', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '6', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '7', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '8', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '23', '2');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '24', '1');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '9', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '10', '31', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '11', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '1', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '2', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '3', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '4', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '5', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '6', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '7', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '8', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '9', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '10', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '11', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '12', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '13', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '14', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '15', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '16', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '17', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '18', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '19', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '20', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '21', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '22', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '23', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '24', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '25', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '26', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '27', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '28', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '29', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '30', '0');
INSERT INTO nuke_stats_date VALUES ( '2006', '12', '31', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stats_hour'
#

CREATE TABLE nuke_stats_hour (
   year smallint(6) DEFAULT '0' NOT NULL,
   month tinyint(4) DEFAULT '0' NOT NULL,
   date tinyint(4) DEFAULT '0' NOT NULL,
   hour tinyint(4) DEFAULT '0' NOT NULL,
   hits int(11) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_stats_hour'
#

INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '0', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '1', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '2', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '3', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '4', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '5', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '6', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '7', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '8', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '9', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '10', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '11', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '12', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '13', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '14', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '15', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '16', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '17', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '18', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '19', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '20', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '21', '2');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '22', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '23', '23', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '0', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '1', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '2', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '3', '1');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '4', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '5', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '6', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '7', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '8', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '9', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '10', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '11', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '12', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '13', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '14', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '15', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '16', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '17', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '18', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '19', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '20', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '21', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '22', '0');
INSERT INTO nuke_stats_hour VALUES ( '2006', '9', '24', '23', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stats_month'
#

CREATE TABLE nuke_stats_month (
   year smallint(6) DEFAULT '0' NOT NULL,
   month tinyint(4) DEFAULT '0' NOT NULL,
   hits bigint(20) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_stats_month'
#

INSERT INTO nuke_stats_month VALUES ( '2006', '1', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '2', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '3', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '4', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '5', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '6', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '7', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '8', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '9', '3');
INSERT INTO nuke_stats_month VALUES ( '2006', '10', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '11', '0');
INSERT INTO nuke_stats_month VALUES ( '2006', '12', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stats_year'
#

CREATE TABLE nuke_stats_year (
   year smallint(6) DEFAULT '0' NOT NULL,
   hits bigint(20) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'nuke_stats_year'
#

INSERT INTO nuke_stats_year VALUES ( '2006', '3');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stories'
#

CREATE TABLE nuke_stories (
   sid int(11) NOT NULL auto_increment,
   catid int(11) DEFAULT '0' NOT NULL,
   aid varchar(30) NOT NULL,
   title varchar(80),
   time datetime,
   hometext text,
   bodytext text NOT NULL,
   comments int(11) DEFAULT '0',
   counter mediumint(8) unsigned,
   topic int(3) DEFAULT '1' NOT NULL,
   informant varchar(20) NOT NULL,
   notes text NOT NULL,
   ihome int(1) DEFAULT '0' NOT NULL,
   alanguage varchar(30) NOT NULL,
   acomm int(1) DEFAULT '0' NOT NULL,
   haspoll int(1) DEFAULT '0' NOT NULL,
   pollID int(10) DEFAULT '0' NOT NULL,
   score int(10) DEFAULT '0' NOT NULL,
   ratings int(10) DEFAULT '0' NOT NULL,
   rating_ip varchar(15) DEFAULT '0',
   associated text NOT NULL,
   PRIMARY KEY (sid),
   KEY sid (sid),
   KEY catid (catid),
   KEY counter (counter),
   KEY topic (topic)
);

#
# Dumping data for table 'nuke_stories'
#

INSERT INTO nuke_stories VALUES ( '1', '0', 'DOOM', ':: Открытие нового сайта ::', '2006-09-23 22:41:25', ' Наконец-то состоялось долгожданное открытие нового официального сайта нашего клана. Большая часть разделов ещё пустует, но откладывать открытие уже некуда. <br>Сразуже хочу выразить свою благодарность:
<BR>
<BR>

<B>Артему</B> - челу без которого яб врятли сумел поднять этот гигантский портал.<BR><BR>
<B>Киллеру</B> - за стремление и активное участие в разработке сайта, ныне он повышен до Администратора и имеет теже полномочия что и я.<BR><BR>
<B>Лау</B> - чьи проповоди всёже заставили меня пойти на столь рискованное дело.<BR><BR>

Работы над сайтом усиленно видутся и в течении нескольких дней постараемся выложить кое-какую инфу нашего клана и частично открыть пару новых разделов ', '', '3', '28', '20', '', '', '0', '', '0', '0', '0', '24', '5', '83.237.104.48', '');

# --------------------------------------------------------
#
# Table structure for table 'nuke_stories_cat'
#

CREATE TABLE nuke_stories_cat (
   catid int(11) NOT NULL auto_increment,
   title varchar(20) NOT NULL,
   counter int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (catid),
   KEY catid (catid)
);

#
# Dumping data for table 'nuke_stories_cat'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_subscriptions'
#

CREATE TABLE nuke_subscriptions (
   id int(10) NOT NULL auto_increment,
   userid int(10) DEFAULT '0',
   subscription_expire varchar(50) NOT NULL,
   KEY id (id, userid)
);

#
# Dumping data for table 'nuke_subscriptions'
#


# --------------------------------------------------------
#
# Table structure for table 'nuke_topics'
#

CREATE TABLE nuke_topics (
   topicid int(3) NOT NULL auto_increment,
   topicname varchar(20),
   topicimage varchar(100) NOT NULL,
   topictext varchar(40),
   counter int(11) DEFAULT '0' NOT NULL,
   PRIMARY KEY (topicid),
   KEY topicid (topicid)
);

#
# Dumping data for table 'nuke_topics'
#

INSERT INTO nuke_topics VALUES ( '20', 'Клан', 'Demon.gif', 'Ядерно', '10');

# --------------------------------------------------------
#
# Table structure for table 'nuke_users'
#

CREATE TABLE nuke_users (
   user_id int(11) NOT NULL auto_increment,
   name varchar(60) NOT NULL,
   username varchar(25) NOT NULL,
   user_email varchar(255) NOT NULL,
   femail varchar(255) NOT NULL,
   user_website varchar(255) NOT NULL,
   user_avatar varchar(255) NOT NULL,
   user_regdate varchar(20) NOT NULL,
   user_icq varchar(15),
   user_occ varchar(100),
   user_from varchar(100),
   user_interests varchar(150) NOT NULL,
   user_sig varchar(255),
   user_viewemail tinyint(2),
   user_theme int(3),
   user_aim varchar(18),
   user_yim varchar(25),
   user_msnm varchar(25),
   user_password varchar(40) NOT NULL,
   storynum tinyint(4) DEFAULT '10' NOT NULL,
   umode varchar(10) NOT NULL,
   uorder tinyint(1) DEFAULT '0' NOT NULL,
   thold tinyint(1) DEFAULT '0' NOT NULL,
   noscore tinyint(1) DEFAULT '0' NOT NULL,
   bio tinytext NOT NULL,
   ublockon tinyint(1) DEFAULT '0' NOT NULL,
   ublock tinytext NOT NULL,
   theme varchar(255) NOT NULL,
   commentmax int(11) DEFAULT '4096' NOT NULL,
   counter int(11) DEFAULT '0' NOT NULL,
   newsletter int(1) DEFAULT '0' NOT NULL,
   user_posts int(10) DEFAULT '0' NOT NULL,
   user_attachsig int(2) DEFAULT '0' NOT NULL,
   user_rank int(10) DEFAULT '0' NOT NULL,
   user_level int(10) DEFAULT '1' NOT NULL,
   broadcast tinyint(1) DEFAULT '1' NOT NULL,
   popmeson tinyint(1) DEFAULT '0' NOT NULL,
   user_active tinyint(1) DEFAULT '1',
   user_session_time int(11) DEFAULT '0' NOT NULL,
   user_session_page smallint(5) DEFAULT '0' NOT NULL,
   user_lastvisit int(11) DEFAULT '0' NOT NULL,
   user_timezone tinyint(4) DEFAULT '10' NOT NULL,
   user_style tinyint(4),
   user_lang varchar(255) DEFAULT 'english' NOT NULL,
   user_dateformat varchar(14) DEFAULT 'D M d, Y g:i a' NOT NULL,
   user_new_privmsg smallint(5) unsigned DEFAULT '0' NOT NULL,
   user_unread_privmsg smallint(5) unsigned DEFAULT '0' NOT NULL,
   user_last_privmsg int(11) DEFAULT '0' NOT NULL,
   user_emailtime int(11),
   user_allowhtml tinyint(1) DEFAULT '1',
   user_allowbbcode tinyint(1) DEFAULT '1',
   user_allowsmile tinyint(1) DEFAULT '1',
   user_allowavatar tinyint(1) DEFAULT '1' NOT NULL,
   user_allow_pm tinyint(1) DEFAULT '1' NOT NULL,
   user_allow_viewonline tinyint(1) DEFAULT '1' NOT NULL,
   user_notify tinyint(1) DEFAULT '0' NOT NULL,
   user_notify_pm tinyint(1) DEFAULT '0' NOT NULL,
   user_popup_pm tinyint(1) DEFAULT '0' NOT NULL,
   user_avatar_type tinyint(4) DEFAULT '3' NOT NULL,
   user_sig_bbcode_uid varchar(10),
   user_actkey varchar(32),
   user_newpasswd varchar(32),
   points int(10) DEFAULT '0',
   last_ip varchar(15) DEFAULT '0' NOT NULL,
   karma tinyint(1) DEFAULT '0',
   PRIMARY KEY (user_id),
   KEY uid (user_id),
   KEY uname (username),
   KEY user_session_time (user_session_time),
   KEY karma (karma)
);

#
# Dumping data for table 'nuke_users'
#

INSERT INTO nuke_users VALUES ( '1', '', 'Anonymous', '', '', '', 'blank.gif', 'Mar 18, 2006', '', '', '', '', '', '0', '0', '', '', '', '', '10', '', '0', '0', '0', '', '0', '', '', '4096', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '10', NULL, 'russian', 'D M d, Y g:i a', '0', '0', '0', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '0', '3', NULL, NULL, NULL, '0', '0', '0');
INSERT INTO nuke_users VALUES ( '3', '', 'Killer', 'Grinders17@mail.ru', '', '', '', 'Sep 23, 2006', '246142471', '', '', '', 'Игрок NFK и нахожусь в клане Xtreme.', '0', NULL, '', '', '', '75e11121f277e650fee1ffe5419a5f11', '10', '', '0', '0', '0', '', '0', '', '', '4096', '2', '0', '0', '0', '0', '1', '1', '0', '1', '0', '0', '0', '10', NULL, 'russian', 'D M d, Y g:i a', '0', '0', '0', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '0', '3', NULL, NULL, NULL, '0', '81.195.2.254', '0');
INSERT INTO nuke_users VALUES ( '4', '', 'Phaeton', 'phaeton91@inbox.lv', '', '', '', 'Sep 24, 2006', '0', '', '', '', '', '1', NULL, '', '', '', '485b100455226e5b8b5c6e77cde25bf4', '10', '', '0', '0', '0', '', '0', '', 'XtratoVeil', '4096', '0', '0', '0', '0', '0', '1', '1', '0', '1', '0', '0', '0', '10', '0', 'english', 'D M d, Y g:i a', '0', '0', '0', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '0', '3', NULL, NULL, NULL, '0', '84.245.197.26', '0');
INSERT INTO nuke_users VALUES ( '5', '', 'Bitnik', 'tmserver@rambler.ru', '', '', 'gallery/003.gif', 'Sep 24, 2006', '0', '', '', '', '', '1', NULL, '', '', '', '33561003f44d374c719506bef4faeba4', '10', '', '0', '0', '0', '', '0', '', '', '4096', '0', '0', '0', '0', '0', '1', '1', '0', '1', '1159270785', '0', '1159102358', '10', NULL, 'english', 'D M d, Y g:i a', '0', '0', '1159102358', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '0', '3', NULL, NULL, NULL, '0', '87.248.179.154', '0');
INSERT INTO nuke_users VALUES ( '6', '', 'IKARUS', 'ritmeyster@bk.ru', '', '', 'gallery/070.gif', 'Sep 24, 2006', '0', '', '', '', '', '1', NULL, '', '', '', 'f0e1a8b5f553b2a7964c7822ebd448cf', '10', '', '0', '0', '0', '', '0', '', '', '4096', '0', '0', '0', '0', '0', '1', '1', '0', '1', '0', '0', '0', '10', NULL, 'english', 'D M d, Y g:i a', '0', '0', '0', NULL, '1', '1', '1', '1', '1', '1', '0', '0', '0', '3', NULL, NULL, NULL, '0', '83.237.20.30', '0');

# --------------------------------------------------------
#
# Table structure for table 'nuke_users_temp'
#

CREATE TABLE nuke_users_temp (
   user_id int(10) NOT NULL auto_increment,
   username varchar(25) NOT NULL,
   user_email varchar(255) NOT NULL,
   user_password varchar(40) NOT NULL,
   user_regdate varchar(20) NOT NULL,
   check_num varchar(50) NOT NULL,
   time varchar(14) NOT NULL,
   PRIMARY KEY (user_id)
);

#
# Dumping data for table 'nuke_users_temp'
#

INSERT INTO nuke_users_temp VALUES ( '1', 'Bitnik', 'Team-Group@rambler.ru', '244dd31cf0f4a4b6569d33ca65d205df', 'Sep 23, 2006', 'b77b1b6769516e44273d6690970ff019', '1159029713');
INSERT INTO nuke_users_temp VALUES ( '3', 'phaeton', 'phaeton91@inbox.lv', '485b100455226e5b8b5c6e77cde25bf4', 'Sep 24, 2006', '038c2371863aa7a159b9dc250f09ac6c', '1159090229');
