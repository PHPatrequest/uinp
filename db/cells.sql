-- phpMyAdmin SQL Dump
-- version 4.1.11
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 05 2015 г., 13:29
-- Версия сервера: 5.5.35-0ubuntu0.13.10.2
-- Версия PHP: 5.5.3-1ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cells`
--

-- --------------------------------------------------------

--
-- Структура таблицы `slc_aliases`
--

CREATE TABLE IF NOT EXISTS `slc_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `table` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `parent_folder_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=444 ;

--
-- Дамп данных таблицы `slc_aliases`
--

INSERT INTO `slc_aliases` (`id`, `alias`, `item_id`, `table`, `parent_folder_id`, `created_at`, `updated_at`) VALUES
(25, 'news', 34, 'folders', 0, '2015-01-14 11:18:48', '2015-02-18 10:50:41'),
(30, 'about', 30, 'articles', 0, '2015-01-14 11:21:46', '2015-02-14 11:05:24'),
(31, 'contacts', 31, 'articles', 0, '2015-01-14 11:22:49', '2015-01-22 06:40:56'),
(33, 'inside_davos', 32, 'articles', 34, '2015-01-14 14:27:48', '2015-01-29 10:02:59'),
(35, '10_Creative_Uses', 33, 'articles', 34, '2015-01-16 12:32:45', '2015-01-29 10:02:46'),
(46, 'conflicts', 48, 'folders', 0, '2015-01-23 12:02:28', '2015-02-25 04:13:03'),
(47, 'position', 49, 'folders', 0, '2015-01-23 12:02:47', '2015-01-31 11:51:49'),
(48, 'opinion', 50, 'folders', 0, '2015-01-23 12:03:09', '2015-01-31 11:51:58'),
(49, 'video', 51, 'folders', 0, '2015-01-23 12:03:28', '2015-01-31 10:44:10'),
(52, 'important_news', 52, 'folders', 0, '2015-01-31 10:43:10', '2015-01-31 10:44:59'),
(53, 'weekly_news', 53, 'folders', 0, '2015-01-31 10:46:01', '2015-01-31 10:46:01'),
(54, 'accident', 54, 'folders', 0, '2015-01-31 10:47:29', '2015-01-31 10:47:29'),
(55, 'enigma_why', 39, 'articles', 51, '2015-01-31 10:55:36', '2015-03-03 07:19:29'),
(84, 'youtube_polnostyu_otkazalsya_ot_flash_tehnologii', 65, 'articles', 53, '2015-02-12 10:58:37', '2015-02-12 11:32:13'),
(87, 'world_news', 58, 'folders', 0, '2015-02-17 06:29:43', '2015-02-17 06:40:55'),
(89, 'dlya_profi_sozdateli_opera_predstavili_novyj_brauzer_vivaldi', 68, 'articles', 58, '2015-02-18 05:01:36', '2015-02-18 06:46:06'),
(91, 'google_chastichno_ogranichivaet_dostup_k_servisam_dlya_kryma', 70, 'articles', 58, '2015-02-18 05:09:01', '2015-02-18 05:15:48'),
(92, 'yaponskaya_reklama_skovorodok_stala_hitom_youtube', 71, 'articles', 58, '2015-02-18 05:21:47', '2015-02-18 05:22:06'),
(93, 'v_rossii_vypustili_semejnyj_brauzer', 72, 'articles', 53, '2015-02-18 07:18:36', '2015-02-18 07:18:36'),
(94, 'vkontakte_polnostyu_ubral_muzyku_iz_prilozheniya_dlya_iphone', 73, 'articles', 53, '2015-02-18 07:25:51', '2015-02-18 07:25:51'),
(95, 'samsung_predstavil_samyj_malenkij_massovyj_processor_v_mire', 74, 'articles', 54, '2015-02-18 07:35:04', '2015-02-18 07:35:04'),
(96, 'v_gosdume_rf_reshili_otomstit_apple_i_google_za_blokadu_kryma', 75, 'articles', 54, '2015-02-18 07:36:16', '2015-02-20 06:39:17'),
(101, 'itogi_pervogo_otbora_pretendentov_dlya_poleta_na_mars', 80, 'articles', 34, '2015-02-20 07:41:31', '2015-02-20 07:42:52'),
(103, 'direktor_motorola_vstupil_v_perepalku_s_dizajnerom_apple', 84, 'articles', 34, '2015-02-20 08:10:29', '2015-02-20 08:10:29'),
(104, 'na_amazon_poyavilis_knigi_na_russkom_yazyke', 85, 'articles', 58, '2015-02-20 08:15:53', '2015-02-20 11:58:34'),
(105, 'arabskie_kibershpiony_ukrali_uchetnye_dannye_v_50_stranah_mira', 86, 'articles', 34, '2015-02-20 08:31:44', '2015-02-20 08:31:44'),
(128, 'world_of_tanks_generals_kartochnaya_igra_po_motivam_world_of_tanks', 117, 'articles', 34, '2015-02-20 09:55:35', '2015-02-20 09:55:35'),
(129, 'predstavlen_novyj_kompaktnyj_kompyuternyj_korpus_aerocool_gt_rs', 120, 'articles', 34, '2015-02-20 10:04:24', '2015-02-20 10:04:24'),
(139, 'lenovo_vibe_shot_novyj_smartfon_s_prodvinutymi_fotovozmozhnostyami', 130, 'articles', 34, '2015-02-20 10:47:25', '2015-02-26 11:32:04'),
(140, 'zakonu_ukrainu', 60, 'folders', 0, '2015-02-24 07:09:14', '2015-02-24 18:29:10'),
(147, 'zhitejskaya_proza_glavy_nbu_dorogie_avto_shikarnye_priemy_izyskannye_restorany_', 140, 'articles', 34, '2015-03-02 09:50:46', '2015-03-02 09:50:46'),
(148, 'staraniyami_yacenyuka_ukraina_snova_v_2003_godu_', 141, 'articles', 34, '2015-03-02 09:59:26', '2015-03-02 09:59:26'),
(149, 'shikarnaya_zhizn_skromnyh_sotrudnikov_borispolya', 142, 'articles', 34, '2015-03-02 10:01:20', '2015-03-02 10:01:20'),
(150, 'boris_kolesnikov_vnes_zalog_za_aleksandra_efremova', 143, 'articles', 34, '2015-03-02 10:02:17', '2015-03-02 10:02:17'),
(151, 'v_vene_najden_mertvym_byvshij_zyat_nursultana_nazarbaeva_', 144, 'articles', 52, '2015-03-02 10:04:02', '2015-03-12 11:54:56'),
(152, 'banki_idut_na_ustupki_svoim_klentam_', 145, 'articles', 34, '2015-03-02 10:05:22', '2015-03-02 10:05:22'),
(153, 'gontarevu_ozhidaet_otstavka_i_ugolovnoe_delo_', 146, 'articles', 34, '2015-03-02 10:06:38', '2015-03-02 10:06:38'),
(154, 'dobro_pozhalovat_v_90_e_ili_privet_iz_proshlogo', 147, 'articles', 52, '2015-03-02 10:08:27', '2015-03-12 11:55:35'),
(155, 'segodnyashnij_kurs_grivny_eshe_ne_predel_', 148, 'articles', 52, '2015-03-02 10:10:47', '2015-03-12 11:55:13'),
(156, 'restoran_yaponskoj_kuhni_stepana_chernoveckogo', 149, 'articles', 34, '2015-03-02 10:11:46', '2015-03-02 10:11:46'),
(157, 'arest_sudej_i_nardepov_na_sleduyushem_zasedanii_verhovnoj_rady', 150, 'articles', 34, '2015-03-02 10:13:17', '2015-03-02 10:13:17'),
(158, 'zhertv_terakta_v_harkoe_ispolzuyut_v_predvybornoj_borbe', 151, 'articles', 34, '2015-03-02 10:15:31', '2015-03-02 10:15:31'),
(159, 'nalogovika_podozrevaemogo_v_vymogatelstve_opravdali_', 152, 'articles', 34, '2015-03-02 10:16:44', '2015-03-02 10:16:44'),
(160, '_podpolnyj_milliarder_', 153, 'articles', 34, '2015-03-02 10:21:23', '2015-03-02 10:21:23'),
(161, 'okolo_94_tysyach_zhitelej_zakarpatya_poluchili_grazhdanstvo_vengrii_', 154, 'articles', 52, '2015-03-02 10:23:46', '2015-03-12 11:55:53'),
(162, 'razoblachena_moshennica_bravshaya_vzyatki_za_otmazku_ot_prizyva_', 155, 'articles', 54, '2015-03-02 10:24:55', '2015-03-02 10:24:55'),
(163, 'izvestny_organizatory_terakta_v_harkove_', 156, 'articles', 54, '2015-03-02 10:27:18', '2015-03-09 08:58:49'),
(186, 'zakon_o_zemle', 61, 'folders', 60, '2015-03-12 12:56:31', '2015-03-12 12:56:31'),
(187, 'zakon_o_vode', 62, 'folders', 60, '2015-03-12 13:15:32', '2015-03-12 13:15:32'),
(192, 'arhiv', 184, 'articles', 0, '2015-03-17 13:09:20', '2015-03-17 19:32:10'),
(194, 'dzhejmi_dornan_pokinet_50_ottenkov_serogo_iz_za_konflikta_s_dakotoj_dzhonson', 186, 'articles', 34, '2015-03-19 13:09:14', '2015-03-19 13:09:14'),
(261, 'v_mariupole_zaderzhana_boevaya_podruga_boevika_dnr_-_abroskin', 259, 'articles', 34, '2015-03-29 11:51:46', '2015-03-29 11:51:46'),
(262, 'lipeckaya_fabrika_roshen_mezhdu_vozmozhnostyu_zakrytiya_i_prodazhej', 260, 'articles', 34, '2015-03-29 11:51:48', '2015-03-29 11:51:48'),
(263, 'na_iranskih_yadernyh_peregovorah_vozmozhen_predvaritelnyj_kompromiss_-_zapadnye_diplomaty', 261, 'articles', 34, '2015-03-29 11:51:50', '2015-03-29 11:51:50'),
(264, 'glava_mid_germanii_opasaetsya_za_vozobnovleniya_boev_na_vostoke_ukrainy', 262, 'articles', 34, '2015-03-29 11:51:52', '2015-03-29 11:51:52'),
(265, 'v_singapure_horonyat_osnovatelya_gosudarstva_li_kuan_yu', 263, 'articles', 34, '2015-03-29 11:51:53', '2015-03-29 11:51:53'),
(266, 'medzhlis_nazyvaet_narusheniem_dokumentov_oon_otkaze_zaregistrirovat_telekanal_atr', 264, 'articles', 34, '2015-03-29 11:53:11', '2015-03-29 11:53:11'),
(267, 'arabskie_strany_soglasovyvayut_sozdanie_sovmestnogo_voennogo_formirovaniya', 265, 'articles', 34, '2015-03-29 11:53:12', '2015-03-29 11:53:12'),
(268, 'v_rossii_s_molitvami_protestuyut_protiv_opery_vagnera_i_ustranyayut_direktora_teatra', 266, 'articles', 34, '2015-03-29 11:53:14', '2015-03-29 11:53:14'),
(269, 'v_nigerii_prodolzhayut_prezidentskie_vybory_cherez_tehnicheskie_problemy', 267, 'articles', 34, '2015-03-29 11:53:16', '2015-03-29 11:53:16'),
(270, 'situaciya_v_zone_boevyh_dejstvij_na_donbasse_29_marta_karta', 268, 'articles', 34, '2015-03-29 11:53:17', '2015-03-29 11:53:17'),
(271, 'separatisty_doukomplektovyvayut_otryady_rossijskimi_naemnikami_i_obnovlyayut_tehniku_-_shtab_ato', 269, 'articles', 34, '2015-03-29 11:53:19', '2015-03-29 11:53:19'),
(272, 'pakistan_evakujovue_svoih_grazhdan_iz_jemena', 270, 'articles', 34, '2015-03-29 11:53:20', '2015-03-29 11:53:20'),
(273, 'separatisty_za_noch_ne_veli_ognya_i_provokacii_prodolzhayutsya_-_shtab_ato', 271, 'articles', 34, '2015-03-29 11:53:22', '2015-03-29 11:53:22'),
(274, 'v_tunise_likvidiruyut_islamistov_posle_napadeniya_na_muzej', 272, 'articles', 34, '2015-03-29 11:53:24', '2015-03-29 11:53:24'),
(275, 'doneckie_separatisty_zayavlyayut_o_narushenii_peremiriya_so_storony_ukrainskih_sil', 273, 'articles', 34, '2015-03-29 11:53:25', '2015-03-29 11:53:25'),
(276, 'voennye_kolonny_ssha_vezzhayut_v_chehiyu', 274, 'articles', 34, '2015-03-29 11:53:28', '2015-03-29 11:53:28'),
(277, 'sbu_soobshaet_o_zaderzhanii_verbovshika_i_informatorov_boevikov', 275, 'articles', 34, '2015-03-29 11:53:29', '2015-03-29 11:53:29'),
(278, 'v_ukraine_iz-za_nepogody_obestocheny_176_naselennyh_punktov_-_gschs_ukrainy', 276, 'articles', 34, '2015-03-29 11:53:30', '2015-03-29 11:53:30'),
(279, 'vzryv_v_odesse_kvalificiruetsya_kak_terakt_postradavshih_net_-_mvd_ukrainy', 277, 'articles', 34, '2015-03-29 11:53:33', '2015-03-29 11:53:33'),
(280, 'v_uzbekistane_prohodyat_prezidentskie_vybory', 278, 'articles', 34, '2015-03-29 11:53:35', '2015-03-29 11:53:35'),
(281, 'voennye_obezvredili_radioupravlyaemye_fugasy_boevikov_na_luganshine_-_moskal', 279, 'articles', 34, '2015-03-29 12:04:29', '2015-03-29 12:04:29'),
(282, 'tysyachi_tuniscev_vyshli_na_protest_protiv_terrorizma', 280, 'articles', 34, '2015-03-29 12:55:00', '2015-03-29 12:55:00'),
(284, 'troe_lyudej_pogibli_deputat_parlamenta_ranen_v_rezultate_napadeniya_v_afganistane', 282, 'articles', 48, '2015-03-29 14:01:01', '2015-03-29 14:01:01'),
(285, 'eksperty_issledovali_dnk_78-mi_zhertv_krusheniya_nemeckogo_samoleta', 283, 'articles', 48, '2015-03-30 02:39:27', '2015-03-30 02:39:27'),
(286, 'ukraina_dolzhna_dokazat_chto_spravitsya_s_oruzhiem_iz_ssha_-_sushko', 284, 'articles', 48, '2015-03-30 02:39:32', '2015-03-30 02:39:32'),
(287, 'vojna_s_ukrainoj_byla_dlya_nemcova_tragediej_-_ego_soavtor_dokladov_o_korrupcii_v_rossii', 285, 'articles', 48, '2015-03-30 02:39:42', '2015-03-30 02:39:42'),
(288, 'v_ukrainu_pribyvaet_delegaciya_kongressmenov_ssha', 286, 'articles', 48, '2015-03-30 02:39:48', '2015-03-30 02:39:48'),
(289, 'yacenyuk_zayavil_ob_otsutstvii_raznoglasij_s_poroshenko_-_smi', 287, 'articles', 48, '2015-03-30 02:39:54', '2015-03-30 02:39:54'),
(290, 'kerri_i_lavrov_na_peregovorah_ob_iranskoj_yadernoj_programme_pogovorili_ob_ukraine', 288, 'articles', 48, '2015-03-30 02:39:59', '2015-03-30 02:39:59'),
(291, 'borba_s_oligarhami_startovala_obzor_pressy', 289, 'articles', 48, '2015-03-30 02:40:04', '2015-03-30 02:40:04'),
(292, 'rossiya_sama_yavlyaetsya_chastyu_problem_blizhnego_vostoka_-_princ_saud_al-fejsal', 290, 'articles', 48, '2015-03-30 02:40:09', '2015-03-30 02:40:09'),
(293, 'v_milane_proshla_akciya_za_mir_v_ukraine', 291, 'articles', 48, '2015-03-30 02:40:15', '2015-03-30 02:40:15'),
(294, 'genprokuratura_gotova_privlech_k_otvetstvennosti_prezidenta_ili_premera_-_shokin', 292, 'articles', 48, '2015-03-30 02:40:20', '2015-03-30 02:40:20'),
(295, 'v_ukrnafte_i_drugih_goskompaniyah_budut_inostrannye_menedzhery_-_yacenyuk', 293, 'articles', 48, '2015-03-30 02:40:25', '2015-03-30 02:40:25'),
(296, 'desyatki_chelovek_travmirovany_v_rezultate_krusheniya_samoleta_v_kanade', 294, 'articles', 48, '2015-03-30 02:40:29', '2015-03-30 02:40:29'),
(297, 'doch_nemcova_blagodarit_moskvichej_za_vosstanovlenie_memoriala_ego_otca', 295, 'articles', 48, '2015-03-30 02:40:34', '2015-03-30 02:40:34'),
(298, 'sledovateli_sdelali_vazhnoe_otkrytie_v_dome_vtorogo_pilota_lajnera_germanwings', 296, 'articles', 48, '2015-03-30 02:40:40', '2015-03-30 02:40:40'),
(299, 'avakov_290_desantnikov_ssha_budut_obuchat_900_bojcov_nacgvardii', 297, 'articles', 48, '2015-03-30 02:40:45', '2015-03-30 02:40:45'),
(300, 'vesna_v_starom_simferopole', 298, 'articles', 48, '2015-03-30 02:40:51', '2015-03-30 02:40:51'),
(301, 'v_uzbekistane_schitayut_golosa_na_vyborah_prezidenta', 299, 'articles', 58, '2015-03-30 02:40:56', '2015-04-03 10:58:31'),
(302, 'ukraincy_belgii_sobrali_dengi_dlya_priyuta_gde_est_deti_iz_zony_ato', 300, 'articles', 48, '2015-03-30 02:43:10', '2015-03-30 02:43:10'),
(303, 'verhovnyj_predstavitel_es_otmenil_vizit_v_ukrainu', 301, 'articles', 48, '2015-03-30 02:43:14', '2015-03-30 02:43:14'),
(304, 'doklad_nemcova_ob_ukraine_mogla_byt_odnoj_iz_prichin_ego_ubijstva_-_martynyuk', 302, 'articles', 48, '2015-03-30 02:53:03', '2015-03-30 02:53:03'),
(305, 'partiya_sarkozi_pobedila_na_mestnyh_vyborah_vo_francii_-_predvaritelnye_dannye', 303, 'articles', 48, '2015-03-30 03:24:59', '2015-03-30 03:24:59'),
(306, 'ukraina_vypolnila_13_zadanij_po_evrointegracii_s_488_-_shimkiv', 304, 'articles', 48, '2015-03-31 05:41:34', '2015-03-31 05:41:34'),
(307, 'arestovannyh_po_delu_nemcova_obvinyayut_v_naemnom_ubijstve', 305, 'articles', 48, '2015-03-31 05:41:39', '2015-03-31 05:41:39'),
(308, 'sud_v_harkove_perenes_zasedanie_po_delu_kernesa', 306, 'articles', 48, '2015-03-31 05:41:46', '2015-03-31 05:41:46'),
(309, 'putin_ostanovitsya_lish_povaliv_poroshenko_-_ekspert', 307, 'articles', 48, '2015-03-31 05:41:51', '2015-03-31 05:41:51'),
(310, 'sud_v_harkove_nachal_predvaritelnoe_rassmotrenie_dela_kernesa', 308, 'articles', 48, '2015-03-31 05:41:57', '2015-03-31 05:41:57'),
(311, 'rukovodstvu_milicii_kieva_vremen_majdana_soobsheno_o_podozrenii_-_genprokuratura', 309, 'articles', 48, '2015-03-31 05:42:02', '2015-03-31 05:42:02'),
(312, 'novyj_vzryv_na_stancii_osnova_v_harkove_rassleduetsya_kak_diversiya_-_prokuratura', 310, 'articles', 48, '2015-03-31 05:42:09', '2015-03-31 05:42:09'),
(313, 'nbu_izmenil_vremya_oglasheniya_kursa_grivni_k_inostrannym_valyutam', 311, 'articles', 48, '2015-03-31 05:42:14', '2015-03-31 05:42:14'),
(314, 'vojna_-_osobo_opasnoe_proizvodstvo_nacionalnoj_idei_-_boec_yurko_vovkogon_', 312, 'articles', 48, '2015-03-31 05:42:18', '2015-03-31 05:42:18'),
(315, 'freedom_house_nuzhna_mezhdunarodnaya_kampaniya_dlya_osvobozhdeniya_hadidzhe_ismailovoj_v_azerbajdzhane', 313, 'articles', 48, '2015-03-31 05:42:26', '2015-03-31 05:42:26'),
(316, 'realno_li_vernutsya_iz_tyurmy_zdorovym', 314, 'articles', 48, '2015-03-31 05:42:30', '2015-03-31 05:42:30'),
(317, 'boeviki_strelyayut_vblizi_krymskogo_sokolnikov_i_shirokinogo_-_press-centr_ato', 315, 'articles', 48, '2015-03-31 05:42:35', '2015-03-31 05:42:35'),
(318, 'reshenie_v_otnoshenii_irana_-_pod_ugrozoj_sryva_', 316, 'articles', 48, '2015-03-31 05:42:40', '2015-03-31 05:42:40'),
(319, 'pentagon_podderzhivaet_sozdanie_sovmestnyh_vojsk_arabskih_gosudarstv', 317, 'articles', 48, '2015-03-31 05:42:43', '2015-03-31 05:42:43'),
(320, 'iran_i_mirovye_derzhavy_zavershayut_yadernye_peregovory_v_shvejcarii', 318, 'articles', 48, '2015-03-31 05:42:47', '2015-03-31 05:42:47'),
(321, 'pyataya_kolonna_poshla_v_gazovuyu_ataku_obzor_pressy', 319, 'articles', 48, '2015-03-31 05:42:51', '2015-03-31 05:42:51'),
(322, 'v_kpu_oprovergayut_informaciyu_o_vklyuchenii_simonenko_k_rukovodstvu_kprf', 320, 'articles', 48, '2015-03-31 05:42:57', '2015-03-31 05:42:57'),
(323, 'pochemu_mnogie_ukraincy_nadeyutsya_prezhde_vsego_ne_na_sebya_a_na_gosudarstvo', 321, 'articles', 48, '2015-03-31 05:43:02', '2015-03-31 05:43:02'),
(324, 'poroshenko_vvel_v_dejstvie_reshenie_snbo_o_oboronnyj_zakaz', 322, 'articles', 48, '2015-03-31 05:43:07', '2015-03-31 05:43:07'),
(325, 'poroshenko_vstretilsya_s_kongressmenami_ssha', 323, 'articles', 48, '2015-03-31 05:43:12', '2015-03-31 05:43:12'),
(326, 'kanada_rasshiryaet_missiyu_protiv_islamskogo_gosudarstva', 324, 'articles', 48, '2015-03-31 06:21:48', '2015-03-31 06:21:48'),
(327, 'dlya_volonterov_v_ukraine_net_ponyatiya_zarplata_-_ekspert_', 325, 'articles', 48, '2015-03-31 06:22:38', '2015-03-31 06:22:38'),
(328, 'o_korrupcionnoj_deyatelnosti_pervogo_zamestitelya_predsedatelya_sluzhby_bezopasnosti_ukrainy_artyuhova_yuby', 326, 'articles', 48, '2015-03-31 06:24:39', '2015-03-31 06:24:39'),
(329, 'aleksandr_yaroslavskij_kogda_klub_vozglavlyaet_kloun_-_vse_mozhet_byt', 327, 'articles', 48, '2015-03-31 06:24:40', '2015-03-31 06:24:40'),
(330, 'kto_sleduyushij_na_dopros', 328, 'articles', 48, '2015-03-31 06:24:41', '2015-03-31 06:24:41'),
(331, 'odesskij_rusofob_perekovalsya_v_rusofila', 329, 'articles', 48, '2015-03-31 06:24:41', '2015-03-31 06:24:41'),
(332, 'dva_deputata_ot_bpp_stanut_gubernatorami_-_istochniki', 330, 'articles', 48, '2015-03-31 06:24:42', '2015-03-31 06:24:42'),
(333, 'poltavskaya_miliciya_gotovit_variant_sashi_belogo_dlya_mestnyh_aktivistov_pravogo_sektora', 331, 'articles', 48, '2015-03-31 06:24:43', '2015-03-31 06:24:43'),
(334, 'novinskij_voruet_u_banka_ahmetova', 332, 'articles', 48, '2015-03-31 06:24:44', '2015-03-31 06:24:44'),
(335, 'nachalnik_kirovogradskoj_milicii_uvolen_za_protekciyu_svoej_suprugi', 333, 'articles', 48, '2015-03-31 06:24:45', '2015-03-31 06:24:45'),
(336, 'v_odesse_neizvestnyj_vsadil_v_volontera_pyat_sharov_postradavshij_v_tyazhelom_sostoyanii', 334, 'articles', 48, '2015-03-31 06:24:49', '2015-03-31 06:24:49'),
(337, 'pravoohranitelnye_organy_i_sudy_soprovozhdayut_rejderskij_peredel_avtotransportnogo_biznesa_v_odesse', 335, 'articles', 48, '2015-03-31 06:24:49', '2015-03-31 06:24:49'),
(338, 'yanukovicha_kormili_141_kompaniya_krupnejshie_zarabatyvayut_i_sejchas', 336, 'articles', 48, '2015-03-31 06:24:50', '2015-03-31 06:24:50'),
(339, 'ukrainoj_raspolzaetsya_nelegalnoe_oruzhie_-_gde_shans_na_zashitu', 337, 'articles', 48, '2015-03-31 06:24:51', '2015-03-31 06:24:51'),
(340, 'nemnogo_istorii_kak_leningrad_stal_oplotom_sovetskogo_gomoseksualizma', 338, 'articles', 48, '2015-03-31 06:24:52', '2015-03-31 06:24:52'),
(341, 'strelkov_raskryl_prichiny_vojny_s_ukrainoj', 339, 'articles', 48, '2015-03-31 06:24:52', '2015-03-31 06:24:52'),
(342, 'poroshenko_nikogda_ne_stanet_odnim_iz_nas__nastoyashih_cinichnyh_bander__mosijchuk', 340, 'articles', 48, '2015-03-31 06:24:54', '2015-03-31 06:24:54'),
(343, 'eks-zamglavy_ukroboronproma_vystrel_iz_amerikanskogo_javelin_stoit_100_tys_a_iz_ukrainskogo_korsara__v_pyat_raz_deshevle', 341, 'articles', 48, '2015-03-31 06:24:54', '2015-03-31 06:24:54'),
(344, 'fiktivnye_firmy_boevika_zhilina_sobrali_s_kommunalshikov_harkova_milliard_griven', 342, 'articles', 48, '2015-03-31 06:24:55', '2015-03-31 06:24:55'),
(345, 'portnikov_kanal_inter_eshe_bolee_opasen_chem_rossijskie_propagandisty', 343, 'articles', 48, '2015-03-31 06:24:56', '2015-03-31 06:24:56'),
(346, 'komu_budut_prinadlezhat_ukrainskie_lesa', 344, 'articles', 48, '2015-03-31 06:24:56', '2015-03-31 06:24:56'),
(347, 'nachalnikom_u_kievskih_prostitutok_byl_podpolkovnik_milicii__prokuratura', 345, 'articles', 48, '2015-03-31 06:24:57', '2015-03-31 06:24:57'),
(348, 'rossiya_braziliya_i_indiya_pytalis_blokirovat_vydelenie_ukraine_kredita_mvf', 346, 'articles', 48, '2015-03-31 06:24:58', '2015-03-31 06:24:58'),
(349, 'regionalka_berezhnaya_v_ocherednoj_raz_cinichno_vyskazalas_o_geroyah_vojny', 347, 'articles', 48, '2015-03-31 06:25:03', '2015-03-31 06:25:03'),
(350, 'istoriya_povtoryaetsya_rossiyu_pogubit_virus_shovinisticheskoj_isterii', 348, 'articles', 48, '2015-03-31 06:25:05', '2015-03-31 06:25:05'),
(351, 'v_kieve_pravoohraniteli_kotorye_dolzhny_borotsya_s_prostituciej_kryshevali_bordeli', 349, 'articles', 48, '2015-03-31 06:25:06', '2015-03-31 06:25:06'),
(352, 'sudyat_chernyaka_i_gulvichenko_kotoryh_obvinyayut_v_rasstrele_gaishnikov', 350, 'articles', 48, '2015-03-31 06:25:07', '2015-03-31 06:25:07'),
(353, 'byvshaya_zamestitel_nachalnika_krymskoj_tamozhni_chto_ustroila_dtp_s_tremya_postradavshimi_trudoustroilas_v_nikolaeve', 351, 'articles', 48, '2015-03-31 06:25:07', '2015-03-31 06:25:07'),
(354, 'rossijsko-terroristicheskie_vojska_zahvatili_shirokine', 352, 'articles', 48, '2015-03-31 06:25:08', '2015-03-31 06:25:08'),
(355, 'kolomojskij_i_lyashko_podruzhilis_protiv_poroshenko', 353, 'articles', 48, '2015-03-31 06:25:09', '2015-03-31 06:25:09'),
(356, 'nbu_nameren_vklyuchit_v_chernyj_spisok_predstavitelstvo_rossijskogo_banka', 354, 'articles', 48, '2015-03-31 06:25:09', '2015-03-31 06:25:09'),
(357, 'kak_kievskij_gubernator-oligarh_pobedil_korrupciyu_i_reformiroval_policiyu', 355, 'articles', 48, '2015-03-31 06:25:11', '2015-03-31 06:25:11'),
(358, 'nardep_sud_v_ukraine_-_eto_zakrytoe_korporatizirovano_prestupnaya_gruppirovka', 356, 'articles', 48, '2015-03-31 06:25:12', '2015-03-31 06:25:12'),
(359, 'podlinnyj_razgovor_s_fejkovym_rossijskim_supersoldatom_motoroloj', 357, 'articles', 48, '2015-03-31 06:25:13', '2015-03-31 06:25:13'),
(360, 'fotografiyu_zheny_poroshenko_v_poezde_opublikoval_internet-bot_rassledovanie', 358, 'articles', 48, '2015-03-31 06:25:13', '2015-03-31 06:25:13'),
(361, 'poroshenko_podpisal_tajnyj_ukaz_na_zakupku_oruzhiya', 359, 'articles', 48, '2015-03-31 06:25:14', '2015-03-31 06:25:14'),
(362, 'zheleznodorozhniki_prodolzhayut_zakupat_shpaly_na_sotni_millionov_s_deltoj_bolshe_vremen_yanukovicha', 360, 'articles', 48, '2015-03-31 06:25:18', '2015-03-31 06:25:18'),
(363, 'otstavka_dnya_s_celyu_oslabit_vliyanie_kolomojskogo_uvolen_prokuror_dnepropetrovskoj_oblasti_romanov', 361, 'articles', 48, '2015-03-31 06:25:19', '2015-03-31 06:25:19'),
(364, 'skrytyj_biznes_gubernatora_zhitomirshiny', 362, 'articles', 48, '2015-03-31 06:25:20', '2015-03-31 06:25:20'),
(365, 'v_harkove_diversanty_vzorvali_cisternu_s_toplivom_dlya_nuzhd_ukrainskoj_armii', 363, 'articles', 48, '2015-03-31 06:25:21', '2015-03-31 06:25:21'),
(366, 'propazha_u_mahnickogo_doch_byvshego_genprokurora_obeshaet_bolshoe_voznagrazhdenie_za_vozvrashenie_v_semyu_elitnogo_psa', 364, 'articles', 48, '2015-03-31 06:25:22', '2015-03-31 06:25:22'),
(367, 'andrej_zolotarev_kolomojskij_nacelivaetsya_na_kiev', 365, 'articles', 34, '2015-03-31 06:25:23', '2015-04-01 11:14:55'),
(368, 'syn_za_otca_ne_otvechaet_starshim_prokurorom_malinovskogo_rajona_odessy_stal_otprysk_byvshego_zamnachalnika_oblastnoj_milicii_fuchedzhi', 366, 'articles', 48, '2015-03-31 06:25:23', '2015-03-31 06:25:23'),
(369, 'savchenko_zagovorila_o_smerti', 367, 'articles', 48, '2015-03-31 06:25:24', '2015-03-31 06:25:24'),
(370, 'dnr_i_lnr_sozdayut_komissiyu_po_reformirovaniyu_konstitucii_ukrainy', 368, 'articles', 48, '2015-03-31 06:25:25', '2015-03-31 06:25:25'),
(371, 'sankcii_protiv_yanukovicha_i_ko_prestupno_poteryannoe_vremya', 369, 'articles', 48, '2015-03-31 06:25:26', '2015-03-31 06:25:26'),
(372, 'u_dmitriya_firtasha_sobirayutsya_otobrat_pochti_80_gektarov_uchastka_bugskogo_limana', 370, 'articles', 48, '2015-03-31 06:25:27', '2015-03-31 06:25:27'),
(373, 'zaporozhskij_kiborg_poluchil_za_zaslugi700_griven', 371, 'articles', 48, '2015-03-31 06:26:15', '2015-03-31 06:26:15'),
(374, 'pekin_zavershil_evakuaciyu_grazhdan_kitaya_iz_jemena', 372, 'articles', 48, '2015-03-31 07:22:29', '2015-03-31 07:22:29'),
(375, 'za_minuvshie_sutki_v_zone_ato_odin_voennyj_ranen_-_lysenko_', 373, 'articles', 48, '2015-03-31 07:22:31', '2015-03-31 07:22:31'),
(376, 'kongressmen_konflikt_v_ukraine_vazhnee_dlya_mira_chem_vojna_s_islamskim_gosudarstvom', 374, 'articles', 48, '2015-03-31 07:22:33', '2015-03-31 07:22:33'),
(377, 'uchastniki_kontaktnoj_gruppy_provedut_videokonferenciyu_1_aprelya_-_press-sekretar_kuchmy', 375, 'articles', 48, '2015-03-31 07:22:35', '2015-03-31 07:22:35'),
(378, 'dlya_bezvizovogo_rezhima_nuzhno_vypolnit_eshe_4_tehnicheskie_zadachi_-_gerashenko', 376, 'articles', 48, '2015-03-31 07:22:38', '2015-03-31 07:22:38'),
(379, 'gpu_i_sbu_proveryat_olega_kalashnikova_otnositelno_prichastnosti_k_separatizmu_', 377, 'articles', 48, '2015-03-31 07:22:41', '2015-03-31 07:22:41'),
(380, 'levada-centr_45_rossiyan_opravdyvayut_zhertvy_rezhima_stalina', 378, 'articles', 48, '2015-03-31 07:22:43', '2015-03-31 07:22:43'),
(381, 'posobie', 379, 'articles', 34, '2015-03-31 12:27:19', '2015-03-31 12:27:19'),
(382, 'lucenko_rasskazal_o_plane_putina', 380, 'articles', 34, '2015-03-31 12:27:19', '2015-03-31 12:27:19'),
(383, 'v_bishkeke_sozhgli_chuchelo_lukashenko', 381, 'articles', 34, '2015-03-31 12:27:20', '2015-03-31 12:27:20'),
(384, 'mozgovoj_rasskazal_o_novoj_bande_boevikov_sozdana_na_baze_prizraka', 382, 'articles', 34, '2015-03-31 12:27:20', '2015-03-31 12:27:20'),
(385, 'minfin_poteri_byudzheta_mogut_prevysit_10_trillionov', 383, 'articles', 34, '2015-03-31 12:27:21', '2015-03-31 12:27:21'),
(386, 'utrennie_vidy_iz_palatki_ot_kotoryh_zahvatyvaet_duh_foto', 384, 'articles', 34, '2015-03-31 12:27:21', '2015-03-31 12:27:21'),
(387, 'za_neyavku_na_medkomissiyu_prizyvnik_poluchil_15_goda_himii', 385, 'articles', 34, '2015-03-31 12:27:22', '2015-03-31 12:27:22'),
(388, 'kak_novost_prevratit_v_propagandu_master-klass_ot_kiseleva', 386, 'articles', 34, '2015-03-31 12:27:22', '2015-03-31 12:27:22'),
(389, 'ukrainskij_politolog_zapad_osushestvlyaet_moshnuyu_ataku_na_putina', 387, 'articles', 34, '2015-03-31 12:27:22', '2015-03-31 12:27:22'),
(390, 'kadyrovcy_s_osetinami_edut_voevat_v_donbass', 388, 'articles', 34, '2015-03-31 12:27:23', '2015-03-31 12:27:23'),
(391, 'yandeks_zapuskaet_servis_dlya_turistov', 389, 'articles', 34, '2015-03-31 12:27:23', '2015-03-31 12:27:23'),
(392, 'belarus_polnostyu_vyplatila_kredit_stend-baj_mvf', 390, 'articles', 34, '2015-03-31 12:27:24', '2015-03-31 12:27:24'),
(393, 'poroshenko_gotov_provesti_referendum_o_federalizacii_ukrainy', 391, 'articles', 34, '2015-03-31 12:27:24', '2015-03-31 12:27:24'),
(394, 'v_polocke_razrushayutsya_pamyatniki_simeonu_polockomu_i_francisku_skorine', 392, 'articles', 34, '2015-03-31 12:27:25', '2015-03-31 12:27:25'),
(395, 'ekspert_nazval_summu_kotoruyu_rossiya_mozhet_poteryat_iz-za_anneksii_kryma', 393, 'articles', 34, '2015-03-31 12:27:25', '2015-03-31 12:27:25'),
(396, 'obnarodovano_novoe_video_aerorazvedki_v_rajone_schastya', 394, 'articles', 34, '2015-03-31 12:27:26', '2015-03-31 12:27:26'),
(397, 'ukraina_rasshirit_sankcii_protiv_rossii', 395, 'articles', 34, '2015-03-31 12:27:26', '2015-03-31 12:27:26'),
(398, 'v_mogileve_torguyut_sovetskimi_flazhkami', 396, 'articles', 34, '2015-03-31 12:27:27', '2015-03-31 12:27:27'),
(399, 'newsweek_rossiya_prevratila_kaliningrad_v_arsenal_posredi_evropy', 397, 'articles', 34, '2015-03-31 12:27:27', '2015-03-31 12:27:27'),
(400, 's_1_aprelya_zheleznodorozhnikam_ponizyat_zarplaty_na_25', 398, 'articles', 34, '2015-03-31 12:27:28', '2015-03-31 12:27:28'),
(401, 'prezident_polshi_vpervye_vystupit_v_verhovnoj_rade_ukrainy', 399, 'articles', 34, '2015-03-31 12:27:30', '2015-03-31 12:27:30'),
(402, 'boeviki_obyavili_trevogu', 400, 'articles', 34, '2015-03-31 12:27:30', '2015-03-31 12:27:30'),
(403, 'fontany_v_minske_zarabotayut_cherez_mesyac', 401, 'articles', 34, '2015-03-31 12:27:31', '2015-03-31 12:27:31'),
(404, 'premer_tailanda_prosit_otmenit_voennoe_polozhenie', 402, 'articles', 34, '2015-03-31 12:27:32', '2015-03-31 12:27:32'),
(405, 'integral_oprovergaet_sluhi_ob_ostanovke_predpriyatiya', 403, 'articles', 34, '2015-03-31 12:27:32', '2015-03-31 12:27:32'),
(406, 'terakt_v_stambule_prokurora_vzyali_v_zalozhniki', 404, 'articles', 34, '2015-03-31 12:27:32', '2015-03-31 12:27:32'),
(407, 'portnikov_rossiya_sdelala_bolshuyu_oshibku', 405, 'articles', 34, '2015-03-31 12:27:33', '2015-03-31 12:27:33'),
(408, 'lukashenko_-_kobyakovu_i_kallauru_pervyj_kvartal_zakonchilsya_a_chto_dalshe', 406, 'articles', 34, '2015-03-31 12:27:33', '2015-03-31 12:27:33'),
(409, 'istochnik_kozicyn_ne_proch_likvidirovat_plotnickogo', 407, 'articles', 34, '2015-03-31 12:27:34', '2015-03-31 12:27:34'),
(410, 'lyuis_hemilton_prodlit_kontrakt_s_mersedesom', 408, 'articles', 34, '2015-03-31 12:27:34', '2015-03-31 12:27:34'),
(411, 'zhitelyam_bresta_i_kobrina_rasskazali_kak_obojti_blokirovku_sajtov', 409, 'articles', 34, '2015-03-31 12:27:35', '2015-03-31 12:27:35'),
(412, 'v_ssha_pridumali_kak_ostanovit_putina_v_ukraine_bez_oruzhiya', 410, 'articles', 34, '2015-03-31 12:27:35', '2015-03-31 12:27:35'),
(413, 'perepugannye_boeviki_brosilis_oprovergat_otkroveniya_svoego_soratnika', 411, 'articles', 34, '2015-03-31 12:27:36', '2015-03-31 12:27:36'),
(414, 'kongressmen_ssha_my_soglasny_usilit_sankcii_protiv_rossii', 412, 'articles', 34, '2015-03-31 12:27:36', '2015-03-31 12:27:36'),
(415, 'pod_mogilevom_nashli_samolet_kotoryj_dolzhen_byl_bombit_vokzal_v_minske', 413, 'articles', 34, '2015-03-31 12:27:37', '2015-03-31 12:27:37'),
(416, 'krash-test_vyyavil_kakim_smartfonom_udobnee_vsego_kolot_orehi', 414, 'articles', 34, '2015-03-31 12:27:38', '2015-03-31 12:27:38'),
(417, 'podrobnosti_nochnyh_razborok_v_donecke_boeviki_delili_sfery_vliyaniya_i_kontrabandu', 415, 'articles', 34, '2015-03-31 12:27:39', '2015-03-31 12:27:39'),
(418, 'minfin_belarusi_ne_vidit_vozmozhnosti_dlya_snizheniya_stavki_nds', 416, 'articles', 34, '2015-03-31 12:27:39', '2015-03-31 12:27:39'),
(419, 'konstantin_borovoj_u_rossii_ne_ostalos_sil_prodolzhat_vojnu', 417, 'articles', 34, '2015-03-31 12:27:40', '2015-03-31 12:27:40'),
(420, 'belorusskie_turisty_smogut_poluchat_vizu_marokko_v_aeroportu', 418, 'articles', 34, '2015-03-31 12:27:44', '2015-03-31 12:27:44'),
(421, 'glava_mid_danii_rossijskaya_propaganda_omerzitelna', 419, 'articles', 34, '2015-03-31 12:27:44', '2015-03-31 12:27:44'),
(422, 'uchenye_obyasnili_chto_delaet_lyudej_schastlivymi', 420, 'articles', 34, '2015-03-31 12:27:45', '2015-03-31 12:27:45'),
(423, 'boevik_rasskazal_vsyu_pravdu_pro_givi_i_zaharchenko', 421, 'articles', 34, '2015-03-31 12:27:45', '2015-03-31 12:27:45'),
(424, 'greciya_ne_soglasna_s_sankciyami_es_protiv_rossii', 422, 'articles', 34, '2015-03-31 12:27:46', '2015-03-31 12:27:46'),
(425, 'smert_viktora_yanukovicha-mladshego_neschastnyj_sluchaj_ili_ubijstvo', 423, 'articles', 34, '2015-03-31 12:27:46', '2015-03-31 12:27:46'),
(426, 'minchan_obyazhut_pokupat_mesta_dlya_stoyanki', 424, 'articles', 34, '2015-03-31 12:27:47', '2015-03-31 12:27:47'),
(427, 'ankara_i_stambul_ostalis_bez_elektroenergii', 425, 'articles', 34, '2015-03-31 12:27:47', '2015-03-31 12:27:47'),
(431, 'polk_azov_soobshaet_ob_obstrelah_iz_tyazhelyh_vooruzhenij_u_shirokina', 429, 'articles', 53, '2015-03-31 12:32:02', '2015-03-31 12:32:02'),
(432, 'oon_za_god_v_ukraine_pri_podryve_na_minah_pogibli_42_rebenka', 430, 'articles', 53, '2015-03-31 12:32:04', '2015-03-31 12:32:04'),
(433, 'turciya_radikaly_zahvatili_prokurora_i_trebuyut_pravosudiya', 431, 'articles', 53, '2015-03-31 12:32:06', '2015-03-31 12:32:06'),
(434, 'kontrbatarejni_ustanovki_umenshili_poteri_na_donbasse_na_25_-_ordinovich_', 432, 'articles', 52, '2015-03-31 12:32:08', '2015-03-31 14:52:25'),
(435, 'pravitelstvo_prodlit_dejstvie_chrezvychajnyh_mer_na_rynke_elektroenergii_v_mesyac', 433, 'articles', 53, '2015-03-31 12:32:12', '2015-03-31 12:32:12'),
(436, 'na_dnepropetrovshine_vo_vremya_voennyh_uchenij_snaryad_zaletel_v_selo', 434, 'articles', 53, '2015-03-31 12:32:14', '2015-03-31 12:32:14'),
(437, 'soldat_budushego_infografika', 435, 'articles', 53, '2015-03-31 12:32:17', '2015-03-31 12:32:17'),
(438, 'irak_vlasti_zayavlyayut_ob_uspehah_v_boyah_s_islamistami_za_tikrit', 436, 'articles', 53, '2015-03-31 12:32:19', '2015-03-31 12:32:19'),
(439, 'iz_okkupirovannoj_chasti_donbassa_vyehali_bolee_70_tysyach_detej_-_minobrazovaniya', 437, 'articles', 53, '2015-03-31 12:32:24', '2015-03-31 12:32:24'),
(440, 'minoborony_naznachilo_sluzhebnoe_rassledovanie_v_otnoshenii_nekotoryh_ajdarivciv_na_luganshine', 438, 'articles', 52, '2015-03-31 12:32:25', '2015-03-31 14:52:12'),
(441, 'v_kazahstane_zhenshinu_osudili_za_oskorblenie_kazahov_i_prizyvy_prisoedinitsya_k_rossii', 439, 'articles', 52, '2015-03-31 12:32:27', '2015-03-31 14:52:06'),
(442, 'komu_platyat_nalogi_promyshlennye_giganty_donbassa_', 440, 'articles', 34, '2015-03-31 12:34:36', '2015-04-01 16:01:09'),
(443, 'na_glavnoi', 442, 'articles', 0, '2015-04-03 10:51:49', '2015-04-03 10:51:49');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_articles`
--

CREATE TABLE IF NOT EXISTS `slc_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `thumb` varchar(256) NOT NULL,
  `video` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_folder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=443 ;

--
-- Дамп данных таблицы `slc_articles`
--

INSERT INTO `slc_articles` (`id`, `title`, `alias`, `content`, `image`, `thumb`, `video`, `user_id`, `created_at`, `updated_at`, `published_at`, `parent_folder_id`) VALUES
(296, 'Следователи сделали «важное открытие» в доме второго пилота лайнера Germanwings', 'sledovateli_sdelali_vazhnoe_otkrytie_v_dome_vtorogo_pilota_lajnera_germanwings', 'Полисмены сделали «важное открытие» во время обысков, которые проводили в домах Андреаса Любица и его родителей. Репортаж Reuters (Видео проекта Радио Свобода «Настоящее время»)', 'uploads/articles/sledovateli_sdelali_vazhnoe_otkrytie_v_dome_vtorogo_pilota_lajnera_germanwings.jpg', 'uploads/thumbs/thumb_sledovateli_sdelali_vazhnoe_otkrytie_v_dome_vtorogo_pilota_lajnera_germanwings.jpg', '', 18, '2015-03-30 02:40:35', '2015-03-30 02:40:35', '2015-03-30 02:40:35', 48),
(297, 'Аваков: 290 десантников США будут обучать 900 бойцов Нацгвардии', 'avakov_290_desantnikov_ssha_budut_obuchat_900_bojcov_nacgvardii', '290 американских десантников 20 апреля на Яворовском полигоне на Львовщине начнут обучение боевых подразделений Национальной гвардии Украины, сообщил министр внутренних дел Арсен Аваков в Facebook.\n\n\n«Тренинги будут проходить с участием 900 бойцов Нацгвардии. Три потока по 300 нацгвардійців. Три потока по восемь недель. Впоследствии - совместные учения», - написал Аваков.\n\n\nПо словам министра, в тренингах и учениях примут участие бойцы батальонов «Азов», имени Кульчицкого, «Ягуар», «Омега» и других подразделений. После завершения учений американские партнеры предоставят своим украинским коллегам специальную амуницию и средства связи.\n\n\n\n\nДоговоренность про совместные учения военных Украины и США была достигнута во время переговоров президента Украины Петра Порошенко и вице-президента США Джозефа Байдена.\n', 'uploads/articles/avakov_290_desantnikov_ssha_budut_obuchat_900_bojcov_nacgvardii.jpg', 'uploads/thumbs/thumb_avakov_290_desantnikov_ssha_budut_obuchat_900_bojcov_nacgvardii.jpg', '', 18, '2015-03-30 02:40:41', '2015-03-30 02:40:41', '2015-03-30 02:40:41', 48),
(298, 'Весна в старом Симферополе', 'vesna_v_starom_simferopole', 'Каждый город, имеет свою историю, имеет старую часть города. В Симферополе она тоже есть. В старом городе весна.\n\n\n\n«Русская весна». ЕЕ в Крыму сейчас модно встречать.\n\n\n\nЧто изменилось в течение года в Симферополе, в частности, в старой его части? Что осталось прежним? Дороги те же самые, но еще больше разбиты. На улицах появилось больше пьяниц.\n\n\n\nДети играют в «зеленых человечков». Говорят, что могут и «прическу под террористов сделать, если надо».\n\n\n\nРоссийской символики почти нигде не видно, как и любой другой. Периодически случаются закрашены проукраинские надписи на стенах.\n\n\n\nПавел Степанович, житель старого города, рассказал, что родился в 1942 году. Много где побывал за жизнь, но вернулся домой в Симферополь.\n\n\n\nНа вопрос, изменилось ли что-то, отвечает «Изменилось, понятное дело, с приходом России. Вы разве не видели центр?! Там же все снесли, и у нас тут позакрывали, почистили» (имея в виду снос незаконных построений Мафов).\n\n\n\n- Что изменилось в Вашей жизни?\n\n- А не знаю. Что-то изменилось, видимо.\n\n\n\nИ сразу жалуется на огромную яму на дороге, по которой уже много-много лет ездит маршрут 8А... и добавляет - «посмотрим, что Россия сделает...»', 'uploads/articles/vesna_v_starom_simferopole.jpg', 'uploads/thumbs/thumb_vesna_v_starom_simferopole.jpg', '', 18, '2015-03-30 02:40:46', '2015-03-30 02:40:46', '2015-03-30 02:40:46', 48),
(299, 'В Узбекистане считают голоса на выборах президента', 'v_uzbekistane_schitayut_golosa_na_vyborah_prezidenta', '<div>В Узбекистане завершилось голосование на президентских выборах, идет подсчет голосов. Центральная избирательная комиссия сообщает, что свои голоса за будущего главу государства отдали более 91% зарегистрированных избирателей. Председатель ЦИК Мірзулуґбек Абдусаломов утверждает, что на избирательных участках &laquo;никаких нарушений&raquo; не зарегистрировано. Ожидается, что предварительные результаты будут объявлены в понедельник, 30 марта. Аналитики не сомневаются, что новый срок будет переизбран действующий президент Ислам Каримов. 77-летний Каримов в течение более чем двух десятилетий у власти устранил почти всю оппозицию. Западные организации, такие как Бюро ОБСЕ по демократическим институтам и правам человека, ни разу не признавали парламентские или президентские выборы в Узбекистане свободными и справедливыми.</div>', 'uploads/articles/v_uzbekistane_schitayut_golosa_na_vyborah_prezidenta.jpg', 'uploads/thumbs/thumb_v_uzbekistane_schitayut_golosa_na_vyborah_prezidenta.jpg', '', 18, '2015-03-30 02:40:52', '2015-04-03 10:58:30', '2015-04-03 10:58:30', 58),
(300, 'Украинцы Бельгии собрали деньги для приюта, где есть дети из зоны АТО', 'ukraincy_belgii_sobrali_dengi_dlya_priyuta_gde_est_deti_iz_zony_ato', 'В бельгийском Антверпене украинская община и миссия Украины при НАТО провели Пасхальную ярмарку, деньги с его продаж будут переданы Котовской школе-интернату для детей-сирот из зоны АТО.\n\n\nДо школы-интерната в Котовске Одесской области уже перевели 40 детей из Луганской области, еще 100 детей-сирот из Донецкой и Луганской области туда планируют перевезти в мае.\n\n\nПредставитель украинской общины Антверпена Игорь Матычак рассказал, что такие мероприятия украинцы стараются организовывать под конкретные благотворительные проекты.\n\n\n«Идеи таких мероприятий возникают спонтанно, никто не занимается их поиском специально. Сами приходят. К сожалению, людей, которые поддерживают такие акции, не так много. Но есть люди, которые это делают. Мы нашли, куда эти деньги отправить, кому они нужны в данный момент. Важно иметь конкретный проект, под который будут собираться деньги», - сказал Игорь Матычак.\n\n\n\n\n\n\n\nНа ярмарке можно было приобрести сувениры, украшения ручной работы, футболки с украинской символикой. Сувениры в Украине закупила миссия Украины при НАТО.\n\n\nНа ярмарке на продажу были выставлены иконы украинско-бельгийской художницы Надежды Сеничак. Ее сестра Оксана рассказала, что все деньги с продажи икон будут переданы в приют.\n\n\n«Благодаря этой ярмарке надеемся собрать около 400 евро. К нам заходили и несколько бельгийцев. Пусть и не много, пусть их будет человек 10, но эти люди что-то узнают об Украине. Это также такая поддержка Украины. Мы это будем делать дальше: на Рождество, на Пасху», - сказала Оксана Сеничак.\n\n\nБельгийка Кристин пришла на ярмарку вместе с украинской подругой. «Об Украине я знаю, что она сейчас в очень сложном положении, серьезные экономические проблемы. У меня есть хорошие украинские друзья, от них и узнаю о проблемах страны. Я пришла сюда купить украинские писанки, чтобы таким образом помочь детям-сиротам», - говорит Кристин.\n\n\n\n\n\n\n\nКотовская школа-интернат нуждается в средствах на проведение ремонта крыши, туалетов, 50 окон. Интернату также необходимо финансирование для закупки 100 комплектов одежды, обуви и постельного белья для детей, которые приедут туда из Донецкой и Луганской областей.\n\n\nУкраинская община Антверпена также собрала пасхальные подарки для украинских военных. В ближайшие дни их отправят в Украину.\n', 'uploads/articles/ukraincy_belgii_sobrali_dengi_dlya_priyuta_gde_est_deti_iz_zony_ato.jpg', 'uploads/thumbs/thumb_ukraincy_belgii_sobrali_dengi_dlya_priyuta_gde_est_deti_iz_zony_ato.jpg', '', 18, '2015-03-30 02:40:59', '2015-03-30 02:40:59', '2015-03-30 02:40:58', 48),
(301, 'Верховный представитель ЕС отменил визит в Украину', 'verhovnyj_predstavitel_es_otmenil_vizit_v_ukrainu', 'Верховный представитель Европейского союза по иностранным делам и политике безопасности Федерика Моґеріні отменила визит в Украину 30 марта, сообщают «Украинские новости» со ссылкой на пресс-атташе представительства ЕС в Украине Давида Стулика.\n\n\nМоґеріні планировала посетить Киев вместе с президентом Еврокомиссии Жаном-Клодом Юнкером, чтобы принять участие в заседании Совета реформ при президенте Украины.\n\n\n27 марта президент Еврокомиссии Жан-Клод Юнкер отсрочил визит в Киев из-за проблем со здоровьем.\n', 'uploads/articles/verhovnyj_predstavitel_es_otmenil_vizit_v_ukrainu.jpg', 'uploads/thumbs/thumb_verhovnyj_predstavitel_es_otmenil_vizit_v_ukrainu.jpg', '', 18, '2015-03-30 02:43:11', '2015-03-30 02:43:11', '2015-03-30 02:43:11', 48),
(302, 'Доклад Немцова об Украине могла быть одной из причин его убийства - Мартынюк', 'doklad_nemcova_ob_ukraine_mogla_byt_odnoj_iz_prichin_ego_ubijstva_-_martynyuk', 'Соавтор доклада «Путин и война» о том, почему Борис Немцов взялся за этот отчет и когда его обнародуют', 'uploads/articles/doklad_nemcova_ob_ukraine_mogla_byt_odnoj_iz_prichin_ego_ubijstva_-_martynyuk.jpg', 'uploads/thumbs/thumb_doklad_nemcova_ob_ukraine_mogla_byt_odnoj_iz_prichin_ego_ubijstva_-_martynyuk.jpg', '', 18, '2015-03-30 02:53:00', '2015-03-30 02:53:00', '2015-03-30 02:53:00', 48),
(303, 'Партия Саркози победила на местных выборах во Франции - предварительные данные', 'partiya_sarkozi_pobedila_na_mestnyh_vyborah_vo_francii_-_predvaritelnye_dannye', 'По данным экзит-поллов французских социологов, во втором туре местных выборов во Франции победили правоцентристы во главе с «Союзом за народное движение», лидером которого является бывший президент Франции Николя Саркози. Лидерство в гонке партия получила более 60-ти департаментах страны.\n\n\nТем временем националисты - «Национальный фронт», возглавляемый Марин Ле Пен, по предварительным данным, не получили полного большинства в одном из регионов, хотя в процентном отношении могут рассчитывать на значительное присутствие своих политиков на местах.\n\n\nВ первом туре местных выборов во Франции победу тоже одержала партия Николя Саркози. В ультрапарвих соратников Марин Ле Пен было почти 25%.\n\n\nРезультаты голосования на местных выборах эксперты считают важными для понимания политических симпатий французов, которые через 2 года будут избирать президента.\n', 'uploads/articles/partiya_sarkozi_pobedila_na_mestnyh_vyborah_vo_francii_-_predvaritelnye_dannye.jpg', 'uploads/thumbs/thumb_partiya_sarkozi_pobedila_na_mestnyh_vyborah_vo_francii_-_predvaritelnye_dannye.jpg', '', 18, '2015-03-30 03:24:55', '2015-03-30 03:24:55', '2015-03-30 03:24:55', 48),
(304, 'Украина выполнила 13 заданий по евроинтеграции с 488 - Шимкив', 'ukraina_vypolnila_13_zadanij_po_evrointegracii_s_488_-_shimkiv', 'В рамках Соглашения об ассоциации с Евросоюзом Украина выполнила 13 из запланированных 488 задач, сообщил заместитель главы Администрации президента Украины Дмитрий Шимкив, отчитываясь о результатах заседания Национального совета реформ.\n\n\n«Всего в Соглашении об ассоциации 488 задач. Из них со сроком исполнения до апреля этого года - 44. На сегодняшний день выполнено 13. В процессе выполнения - 80 и в то же время отсутствует информация в публичном доступе о 393 задачи. Мы понимаем, что Соглашение об ассоциации должно выполняться в течение длительного периода, она разбита по кварталам. Следующий отчет будет подготовлен правительством на 20 апреля», - сообщил он.\n\n\nПо словам заместителя главы Администрации, не выполнили план по имплементации законодательных актов в рамках соглашения с ЕС пять ведомств: Минприроды, Минэнергетики, Минфин, Администрация государственной службы специальной связи и защиты информации, Госагенство по энергоэффективности и энергосбережению.\n\n\nСреди невыполненных задач, Дмитрий Шимкив отметил также и систему электронных закупок, которую должны использовать все министерства.\n\n\n«К сожалению, есть ряд министерств, которые не начали даже рассматривать перспективу использования этой системы. Это Министерство внутренних дел, Министерство культуры, Министерство образования и науки, Министерство регионального развития и Министерство финансов. Другие министерства в процессе запуска», - перечислил он.\n\n\nКроме того, Дмитрий Шимкив напомнил о необходимости назначения вице-премьера по евроинтеграции.\n\n\nУкраина и ЕС подписали Соглашение об ассоциации в 2014 году. В полном объеме он вступит в силу после ратификации всеми сторонами, то есть всем 28 странам-членами Евросоюза. Верховная Рада Украины и Европейский парламент синхронно ратифицировали Соглашение об ассоциации 16 сентября 2014 года.\n\n\nСоглашение формально вступит в силу после того, как ратификационные процедуры завершат все страны, что может продлиться и несколько лет. В Украине надеются, что этот процесс может закончиться уже в этом году.\n\n\nВ мае в столице Латвии Риге состоится саммит «Восточного партнерства» ЕС. Власти Украины ранее заявляла, что рассчитывает на предоставление Украине безвизового режима на этой встрече, однако в ЕС заявили, что речь может идти о либерализации визового режима, а не об отмене виз. \n', 'uploads/articles/ukraina_vypolnila_13_zadanij_po_evrointegracii_s_488_-_shimkiv.jpg', 'uploads/thumbs/thumb_ukraina_vypolnila_13_zadanij_po_evrointegracii_s_488_-_shimkiv.jpg', '', 18, '2015-03-31 05:41:30', '2015-03-31 05:41:30', '2015-03-31 05:41:30', 48),
(305, 'Арестованных по делу Немцова обвиняют в наемном убийстве', 'arestovannyh_po_delu_nemcova_obvinyayut_v_naemnom_ubijstve', 'Пятерых арестованных по делу об убийстве российского оппозиционера Бориса Немцова обвиняют в убийстве, совершенном организованной группой по найму, сообщили в Московском городском суде.\n\n\nРанее российские СМИ со ссылкой на источники сообщали, что следствие якобы исключает версию заказного убийства, а в качестве приоритетной рассматривает убийство по мотивам политической или религиозной мести» - за высказывания политика о ислам и в поддержку карикатуристов из французского журнала «Шарли Эбдо».\n\n\nСоратники и родные Бориса Немцова не верят в версию о его убийстве исламскими радикалами. Оппозиционер Илья Яшин назвал ее «заказом Кремля». Старшая дочь Бориса Немцова Жанна, заявила, что подобная версия кажется ей смешной и нелепой. Она также отметила, что деятельность ее отца была направлена «не против ислама, а против действующей власти», поэтому следствию она не верит.\n\n\nНакануне дети Бориса Немцова написали ходатайство о признании их потерпевшими в деле об убийстве отца, сообщил «Интерфакс» со ссылкой на адвоката Вадима Прохорова.\n\n\nВ настоящее время по делу об убийстве Бориса Немцова арестованы пять человек - Заур Дадаев, Тамерлан Ескерханов, Рамзат Бахаєв, а также Анзор и Шагід Губашеві.\n\n\nБорис Немцов был убит в центре Москвы поздно вечером 27 февраля.\n', 'uploads/articles/arestovannyh_po_delu_nemcova_obvinyayut_v_naemnom_ubijstve.jpg', 'uploads/thumbs/thumb_arestovannyh_po_delu_nemcova_obvinyayut_v_naemnom_ubijstve.jpg', '', 18, '2015-03-31 05:41:36', '2015-03-31 05:41:36', '2015-03-31 05:41:36', 48),
(306, 'Суд в Харькове перенес заседание по делу Кернеса', 'sud_v_harkove_perenes_zasedanie_po_delu_kernesa', 'Подготовительное заседание харьковского суда по делу мэра этого города Генннадия Кернеса перенесли на 7 апреля из-за неявки потерпевших.\n\n\nАдвокаты считают, что сейчас наблюдается «определенная манипуляция» с пропиской потерпевших. Кернер уточнил, что манипуляция заключается в том, что двое потерпевших одновременно прописались в городе Киеве по одному адресу и этим хотят изменить подсудность дела. Кернес настаивает, что дело должно рассматриваться в Харькове. «Я на сегодняшний день имею определенные препятствия для комфорта жизни, передвигаюсь в инвалидной коляске, поэтому считаю, что по закону суд должен проходить там, где было совершено так называемое преступление», - сказал мэр Харькова.\n\n\nОтвечая на вопрос Радио Свобода, знаком ли он с потерпевшими, Кернес сказал, что впервые с ними познакомился во время следственных действий в Генпрокуратуре в прошлом году.\n\n\nСегодня Дзержинский суд Харькова планировал подготовительное заседание по делу Кернеса, которого обвиняют в похищении и пытках активистов местного Євромайдану.\n\n\nВ то же время, как сообщил в Facebook советник министра внутренних дел, народный депутат Антон Геращенко, сегодня в Киеве в 14:00 начнется заседание Высшего специализированного суда, где будет рассматриваться ходатайство Генеральной прокуратуры и потерпевших в деле Кернеса о переносе слушания в другую область.\n\n\nГеращенко утверждает, что пострадавших должным образом не проинформировали о проведении судебного заседания в Харькове.\n\n\n«Как выяснилось, ни адвокаты потерпевших, ни сами пострадавшие, не в курсе того, что завтра будет заседания обоих судов, поскольку не получили судебных повесток. А о дате и времени заседания получили данные из заявления адвоката Геннадия Кернеса, растиражированной в сети интернет», - написал Геращенко.\n\n\nОн также заявил: если дело Кернеса будут рассматривать в Харькове, процесс не будет независимым.\n\n\n2 марта прокуратура заявила, что Кернеса подозревают в похищении человека, истязании, угрозе убийством. Харьковский городской голова Геннадий Кернес заявлял, что уголовное дело против него является сфабрикованным.\n', 'uploads/articles/sud_v_harkove_perenes_zasedanie_po_delu_kernesa.jpg', 'uploads/thumbs/thumb_sud_v_harkove_perenes_zasedanie_po_delu_kernesa.jpg', '', 18, '2015-03-31 05:41:42', '2015-03-31 05:41:42', '2015-03-31 05:41:42', 48),
(307, 'Путин остановится, лишь повалив Порошенко - эксперт', 'putin_ostanovitsya_lish_povaliv_poroshenko_-_ekspert', '«Путин справедливо считает, что в конце-концов режим Порошенко упадет и ему на смену придет другой пророссийский режим» - Леон Арон', 'uploads/articles/putin_ostanovitsya_lish_povaliv_poroshenko_-_ekspert.jpg', 'uploads/thumbs/thumb_putin_ostanovitsya_lish_povaliv_poroshenko_-_ekspert.jpg', '', 18, '2015-03-31 05:41:47', '2015-03-31 05:41:47', '2015-03-31 05:41:47', 48),
(308, 'Суд в Харькове начал предварительное рассмотрение дела Кернеса', 'sud_v_harkove_nachal_predvaritelnoe_rassmotrenie_dela_kernesa', 'Дзержинский суд Харькова начинает подготовительное заседание по делу мэра этого города Геннадия Кернеса, которого обвиняют в похищении и пытках активистов местного Євромайдану.\n\n\nКак сообщает корреспондент Радио Свобода, Кернес прибыл в суд.\n\n\nВ то же время, как сообщил в Facebook советник министра внутренних дел, народный депутат Антон Геращенко, сегодня в Киеве в 14:00 начнется заседание Высшего специализированного суда, где будет рассматриваться ходатайство Генеральной прокуратуры и потерпевших в деле Кернеса о переносе слушания в другую область.\n\n\nГеращенко утверждает, что пострадавших должным образом не проинформировали о проведении судебного заседания в Харькове.\n\n\n«Как выяснилось, ни адвокаты потерпевших, ни сами пострадавшие, не в курсе того, что завтра будет заседания обоих судов, поскольку не получили судебных повесток. А о дате и времени заседания получили данные из заявления адвоката Геннадия Кернеса, растиражированной в сети интернет», - написал Геращенко.\n\n\nОн также заявил: если дело Кернеса будут рассматривать в Харькове, процесс не будет независимым.\n\n\n«Надеюсь, что... позиция представителей Генеральной прокуратуры и в Харькове, и в Киеве будет однозначной - слушание дела Кернеса не может быть независимым в суде и в городе, в котором последние девять лет подряд продолжалась игра в одни ворота. Думаю, что два... судебных процессах, которые непосредственно касаются судьбы Геннадия Кернеса и будущего Харькова, будут своеобразным тестом для судебной системы Украины и отдельных судей», - написал Геращенко.\n\n\n2 марта прокуратура заявила, что Кернеса подозревают в похищении человека, истязании, угрозе убийством. 4 марта в Генпрокуратуре сообщили о намерении направить уголовное производство с обвинительным актом в Высший специализированный суд Украины для определения подсудности по делу.\n\n\n26 марта Генеральная прокуратура Украины передала в суд обвинительный акт в уголовном производстве в отношении Кернеса и двух его охранников.\n\n\nХарьковский городской голова Геннадий Кернес заявлял, что уголовное дело против него является сфабрикованным.\n\n\n\n', 'uploads/articles/sud_v_harkove_nachal_predvaritelnoe_rassmotrenie_dela_kernesa.jpg', 'uploads/thumbs/thumb_sud_v_harkove_nachal_predvaritelnoe_rassmotrenie_dela_kernesa.jpg', '', 18, '2015-03-31 05:41:53', '2015-03-31 05:41:53', '2015-03-31 05:41:53', 48),
(309, 'Руководству милиции Киева времен Майдана сообщено о подозрении - Генпрокуратура', 'rukovodstvu_milicii_kieva_vremen_majdana_soobsheno_o_podozrenii_-_genprokuratura', 'Бывшему исполняющему обязанности начальника Главного управления МВД в Киеве и его заместителю - начальнику общественной безопасности столичной милиции сообщено о подозрении в организации штурма Майдана в ночь с 18 на 19 февраля 2014 года. Об этом сообщает пресс-служба Генпрокуратуры утром 31 марта.\n\n\nУправление специальных расследований ГПУ в производстве о совершении умышленных убийств и по другим фактам незаконной противодействия акциям протеста в ноябре 2013 года - феврале 2014 года собрало «доказательства причастности руководителей органов внутренних дел к организации осуществления силовой операции правоохранительных органов с 18 на 19 февраля 2014 года с целью разгона участников акций протеста на майдане Независимости».\n\n\nПо результатам расследования сообщено о подозрении бывшему исполняющему обязанности начальника Главного управления МВД в Киеве и его заместителю - начальнику общественной безопасности ГУ МВД в Киеве.\n\nИх обвиняют в отдаче приказов, в результате которых «были совершены убийства 13 граждан и причинены телесные повреждения различной степени тяжести более 130 лицам».\n\n\nПодозреваемые объявлены в розыск. В феврале 2014 года обязанности начальника столичной милиции исполнял Валерий Мазан, его заместителем был Петр Федчук.\n', 'uploads/articles/rukovodstvu_milicii_kieva_vremen_majdana_soobsheno_o_podozrenii_-_genprokuratura.jpg', 'uploads/thumbs/thumb_rukovodstvu_milicii_kieva_vremen_majdana_soobsheno_o_podozrenii_-_genprokuratura.jpg', '', 18, '2015-03-31 05:41:58', '2015-03-31 05:41:58', '2015-03-31 05:41:58', 48),
(310, 'Новый взрыв на станции Основа в Харькове расследуется как диверсия - прокуратура', 'novyj_vzryv_na_stancii_osnova_v_harkove_rassleduetsya_kak_diversiya_-_prokuratura', 'Взрыв, который произошел в ночь на вторник, 31 марта, в Харькове на железнодорожной станции Основа, расследуется как диверсия, сообщает пресс-служба прокуратуры Харьковской области.\n\n\n«Около 3:00 под железнодорожным составом, который двигался, сдетонировало взрывное устройство. Повреждено 5 метров пути, с рельсов сошли два пустых вагона. Пострадавших нет», - говорится в сообщении пресс-службы.\n\n\nЭто второй взрыв на железнодорожной станции Основа в Харькове за последние двое суток. В ночь на понедельник, 30 марта, взорвалась цистерна с дизтопливом, что предназначалась для Вооруженных сил Украины. Это событие также было квалифицировано как диверсия.\n', 'uploads/articles/novyj_vzryv_na_stancii_osnova_v_harkove_rassleduetsya_kak_diversiya_-_prokuratura.jpg', 'uploads/thumbs/thumb_novyj_vzryv_na_stancii_osnova_v_harkove_rassleduetsya_kak_diversiya_-_prokuratura.jpg', '', 18, '2015-03-31 05:42:03', '2015-03-31 05:42:03', '2015-03-31 05:42:03', 48),
(311, 'НБУ изменил время оглашения курса гривни к иностранным валютам', 'nbu_izmenil_vremya_oglasheniya_kursa_grivni_k_inostrannym_valyutam', '31 марта вступают в силу изменения, введенные Национальным банком Украины относительно объявления официального курса гривни к иностранным валютам и курса банковских металлов.\n\n\nОтныне официальный курс гривни будет устанавливаться в конце рабочего дня и вступит в силу со следующего рабочего дня. Официальный курс гривны, установленный на последний рабочий день недели или предпраздничный день, действует в течение следующих выходных или праздничных дней.\n\n\nУведомление об установлении официального курса будет публиковаться в день его установки до 18:00 на официальной веб-странице НБУ.\n\n\nРанее установленный НБУ официальный курс гривни действовал с момента его публикации, которая ежедневно происходила около 14:30.\n', 'uploads/articles/nbu_izmenil_vremya_oglasheniya_kursa_grivni_k_inostrannym_valyutam.jpg', 'uploads/thumbs/thumb_nbu_izmenil_vremya_oglasheniya_kursa_grivni_k_inostrannym_valyutam.jpg', '', 18, '2015-03-31 05:42:10', '2015-03-31 05:42:10', '2015-03-31 05:42:10', 48),
(312, 'Война - особо опасное производство национальной идеи - боец Юрко Вовкогон ', 'vojna_-_osobo_opasnoe_proizvodstvo_nacionalnoj_idei_-_boec_yurko_vovkogon_', 'Пиар-мененджер известного львовского художественного объединения «Дзига» ушел добровольцем на фронт и рассказывает, почему', 'uploads/articles/vojna_-_osobo_opasnoe_proizvodstvo_nacionalnoj_idei_-_boec_yurko_vovkogon_.jpg', 'uploads/thumbs/thumb_vojna_-_osobo_opasnoe_proizvodstvo_nacionalnoj_idei_-_boec_yurko_vovkogon_.jpg', '', 18, '2015-03-31 05:42:15', '2015-03-31 05:42:15', '2015-03-31 05:42:15', 48),
(313, 'Freedom House: нужна международная кампания для освобождения Хадидже Исмаиловой в Азербайджане', 'freedom_house_nuzhna_mezhdunarodnaya_kampaniya_dlya_osvobozhdeniya_hadidzhe_ismailovoj_v_azerbajdzhane', 'Базирующаяся в США неправительственная организация Freedom House призывает начать международную кампанию давления на власти Азербайджана, чтобы освободить журналистку Хадиджу Исмаилову.\n\n\nВице-президент Freedom House Арч Паддингтон написал в своем блоге, что кампания должна быть похожа на усилия, которые помогли освободить в Египте трех арестованных журналистов телекомпании «Аль-Джазира».\n\n\nПаддингтон назвал уголовное дело против сотрудницы "Радио Свобода" Хадидже Исмаиловой политически мотивированным «актом отчаяния» со стороны правительства президента Азербайджана Ильхама Алиева. Он также указал, что обвинения основаны на журналистских расследованиях Исмаиловой о коррупции среди политической элиты Азербайджана. \n\n\nПаддингтон считает, что режим Алиева «страдает от острой формы паранойи от времени, когда экс-президент Украины Виктор Янукович был вынужден уйти с должности в результате протестного движения Євромайдану».\n\n\nОн также заявил, что Вашингтон ответственный за дипломатические усилия для освобождения заключенной журналистки.\n\n\nИсмаилова находится под стражей с 5 декабря 2014 года, когда она была арестована по подозрению в подстрекательстве к совершению самоубийства. Хадиджа Исмаилова является одним из нескольких правозащитников и независимых журналистов, которые были задержаны властями Азербайджана. Его арест осудили международные правозащитные организации, назвав это наступлением на свободу слова в Азербайджане.\n', 'uploads/articles/freedom_house_nuzhna_mezhdunarodnaya_kampaniya_dlya_osvobozhdeniya_hadidzhe_ismailovoj_v_azerbajdzhane.jpg', 'uploads/thumbs/thumb_freedom_house_nuzhna_mezhdunarodnaya_kampaniya_dlya_osvobozhdeniya_hadidzhe_ismailovoj_v_azerbajdzhane.jpg', '', 18, '2015-03-31 05:42:21', '2015-03-31 05:42:21', '2015-03-31 05:42:20', 48),
(314, 'Реально ли вернуться из тюрьмы здоровым?', 'realno_li_vernutsya_iz_tyurmy_zdorovym', 'Несвоевременная медицинская помощь и пренебрежение профилактическими мерами - среди причин смерти вʼязнів в исправительных учреждениях', 'uploads/articles/realno_li_vernutsya_iz_tyurmy_zdorovym.jpg', 'uploads/thumbs/thumb_realno_li_vernutsya_iz_tyurmy_zdorovym.jpg', '', 18, '2015-03-31 05:42:27', '2015-03-31 05:42:27', '2015-03-31 05:42:27', 48),
(315, 'Боевики стреляют вблизи Крымского, Сокольников и Широкиного - пресс-центр АТО', 'boeviki_strelyayut_vblizi_krymskogo_sokolnikov_i_shirokinogo_-_press-centr_ato', 'В вечерние часы 30 марта пророссийские бойвики на востоке страны 11 раз нарушили режим тишины, сообщает пресс-центр АТО.\n\n\n«В течение ночи ситуация на Востоке Украины существенных изменений не претерпела. Количество обстрелов со стороны незаконных вооруженных формирований постепенно уменьшается. Однако некоторые, фактически никому не подконтрольны бандформирования продолжают одиночные вооруженные провокации вдоль линии боевого соприкосновения», - говорится в сообщении.\n\n\nПо этим данным, боевики стреляли в районе населенных пунктов Сокольники и Крымское в Луганской области и Широкине - на Донетчине вблизи Мариуполя.\n\n\n«Строго соблюдая минских договоренностей, силы АТО открывали огонь только в ответ, в случае прямой угрозы жизни и здоровью наших военных», - подчеркивают в штабе АТО.\n\n\nСепаратисты на своих сайтах утверждают, что украинские военные оставили Широкине и присутствуют только вблизи этого села. Штаб АТО не предоставляет такой информации.\n', 'uploads/articles/boeviki_strelyayut_vblizi_krymskogo_sokolnikov_i_shirokinogo_-_press-centr_ato.jpg', 'uploads/thumbs/thumb_boeviki_strelyayut_vblizi_krymskogo_sokolnikov_i_shirokinogo_-_press-centr_ato.jpg', '', 18, '2015-03-31 05:42:31', '2015-03-31 05:42:31', '2015-03-31 05:42:31', 48),
(316, 'Решение в отношении Ирана - под угрозой срыва ', 'reshenie_v_otnoshenii_irana_-_pod_ugrozoj_sryva_', 'Участники переговоров не могут договориться о ограничения на ядерную деятельность Ирана после достижения договоренностей', 'uploads/articles/reshenie_v_otnoshenii_irana_-_pod_ugrozoj_sryva_.jpg', 'uploads/thumbs/thumb_reshenie_v_otnoshenii_irana_-_pod_ugrozoj_sryva_.jpg', '', 18, '2015-03-31 05:42:36', '2015-03-31 05:42:36', '2015-03-31 05:42:36', 48),
(317, 'Пентагон поддерживает создание совместных войск арабских государств', 'pentagon_podderzhivaet_sozdanie_sovmestnyh_vojsk_arabskih_gosudarstv', 'Министр обороны США Эштон Картер 30 марта в Нью-Йорке поддержал план лидеров Лиги арабских государств создать совместную военную силу, чтобы противостоять группировке «Исламское государство», а также поддерживаемым Ираном повстанцам движения «Аль-Хути» в Йемене.\n\n\nРешение, объявленное 29 марта в Египте на саммите Лиги арабских государств, демонстрирует новые условия, которыми будут руководствоваться Саудовская Аравия, Египет и их союзники для военного вмешательства в региональные кризисы. Более подробный план стороны планируют разработать в течение месяца, а через четыре месяца они стремятся окончательно утвердить его.\n\n\nВ то же время коалиция с 10 суннитских государств во главе с Саудовской Аравией уже осуществляет воздушные удары по шиитских заколотниках в Йемене. Реяниця Госдепартамента США Мари Гарф заявила 30 марта, что Вашингтон все еще ждет в этом вопросе на оперативный мандат, предоставленный Лигой арабских государств.\n', '', '', '', 18, '2015-03-31 05:42:41', '2015-03-31 05:42:41', '2015-03-31 05:42:41', 48);
INSERT INTO `slc_articles` (`id`, `title`, `alias`, `content`, `image`, `thumb`, `video`, `user_id`, `created_at`, `updated_at`, `published_at`, `parent_folder_id`) VALUES
(318, 'Иран и мировые державы завершают ядерные переговоры в Швейцарии', 'iran_i_mirovye_derzhavy_zavershayut_yadernye_peregovory_v_shvejcarii', 'Участники переговоров Ирана и шести мировых держав будут 31 марта в швейцарской Лозанне заключительный день переговоров по ядерной проблеме. Стороны добровольно взяли на себя обязательства завершить дискуссии и заключить рамочное соглашение до конца марта.\n\n\nРоссия, Франция, Великобритания, Китай, Соединенные Штаты и Германия стремятся в обмен на снятие экономических санкций против Ирана получить заверения Тегерана, что он не стремится к созданию ядерного оружия. Западный дипломат, пожелавший остаться неизвестным, сказал 30 марта, что непонятно, удастся ли сторонам успеть заключить соглашение до предельного срока.\n\n\nСреди главных вопросов, которые обсуждают дипломаты, - количество центрифуг для обогащения сырья, которые Иран сможет оставить в работе, а также возможен вывоз из Ирана части урана. Наибольшие дискуссии связаны с длительностью каких-либо ограничений относительно ядерной деятельности Ирана после первых 10 лет, темпы отмены санкций ООН, а также возобновление санкций, если Тегеран не выполнит взятых на себя обязательств.\n\n\nСтороны также планируют до конца июня заключить вместо рамочной окончательное соглашение по ядерной программе Ирана.\n', '', '', '', 18, '2015-03-31 05:42:45', '2015-03-31 05:42:45', '2015-03-31 05:42:45', 48),
(319, '«Пятая колонна» пошла в газовую атаку» (обзор прессы)', 'pyataya_kolonna_poshla_v_gazovuyu_ataku_obzor_pressy', 'Агенты Кремля пытаются дестабилизировать ситуацию в Украине, рассказывая о безосновательное удорожание газа - газетчики', 'uploads/articles/pyataya_kolonna_poshla_v_gazovuyu_ataku_obzor_pressy.jpg', 'uploads/thumbs/thumb_pyataya_kolonna_poshla_v_gazovuyu_ataku_obzor_pressy.jpg', '', 18, '2015-03-31 05:42:48', '2015-03-31 05:42:48', '2015-03-31 05:42:48', 48),
(320, 'В КПУ опровергают информацию о включении Симоненко к руководству КПРФ', 'v_kpu_oprovergayut_informaciyu_o_vklyuchenii_simonenko_k_rukovodstvu_kprf', 'В КПУ опровергают информацию о включении ее лидера Петра Симоненко в президиум пленума Коммунистической партии Российской Федерации.\n\n\n«Действительно, во время посещения пленума ЦК КПРФ Петр Симоненко в качестве гостя был приглашен за стол президиума. Но любому хоть немного грамотному человеку понятно, что ни о каком «включении в руководящие органы КПРФ» не может идти речь. Это нонсенс», - говорится в заявлении Компартии Украины, опубликованной в понедельник, 30 марта.\n\n\nИнформацию о включении Петра Симоненко в президиум пленума КПРФ в КПУ называют ложью.\n\n\n28 марта народный депутат от «Радикальной партии» Игорь Мосийчук сообщил, что в Москве на съезде КПРФ лидер КПУ Петр Симоненко был награжден медалью и избран в президиум пленума российской Компартии.\n\n\nСегодня, 30 марта, министр юстиции Украины Павел Петренко обратился к СБУ с просьбой проверить информацию о выборе лидера Компартии Украины Петра Симоненко к президиуму пленума КПРФ.\n\n\nМинюст также требует от СБУ проинформировать о ходе расследования и обнародовать предварительные результаты следственной работы по уголовным делам, которые были возбуждены против руководства КПУ ранее.\n\n\nВ июле прошлого года Министерство юстиции и Укргосреестр обратились в суд с иском о запрете КПУ. В соответствии с административным иском, эта партия совершает действия, направленные на изменение конституционного строя насильственным путем, нарушение суверенитета и территориальной целостности Украины, пропаганду войны, насилия, разжигание межэтнической вражды, посягательство на права и свободы человека.\n\n\nВ Министерстве юстиции заявляют, что снятие с рассмотрения дела о запрете КПУ можно расценивать как затягивание судебного процесса через процессуальные процедуры.\n\n\nДело по иску Минюста к КПУ о запрете деятельности политической партии была назначена к рассмотрению на понедельник, 30 марта, однако Окружной административный суд Киева снял с рассмотрения данное дело. Это было сделано в связи с тем, что адвокаты КПУ подали апелляционную жалобу на определение о подсудности.\n', 'uploads/articles/v_kpu_oprovergayut_informaciyu_o_vklyuchenii_simonenko_k_rukovodstvu_kprf.jpg', 'uploads/thumbs/thumb_v_kpu_oprovergayut_informaciyu_o_vklyuchenii_simonenko_k_rukovodstvu_kprf.jpg', '', 18, '2015-03-31 05:42:54', '2015-03-31 05:42:54', '2015-03-31 05:42:54', 48),
(321, 'Почему многие украинцы надеются прежде всего не на себя, а на государство?', 'pochemu_mnogie_ukraincy_nadeyutsya_prezhde_vsego_ne_na_sebya_a_na_gosudarstvo', 'Почти половина украинцев считают, что государство должно нести полную ответственность за граждан и обеспечивать их всем необходимым. Об этом говорится в исследовании фонда «Демократические инициативы». Коммунистическое прошлое воспитало в людях постоянное ожидание опеки, а не способность работать на себя, констатируют эксперты. Как изменилась ситуация после Майдана и как сейчас бороться с такими остатками «совка», специалисты поделились мнениями в эфире Радио Свобода.', 'uploads/articles/pochemu_mnogie_ukraincy_nadeyutsya_prezhde_vsego_ne_na_sebya_a_na_gosudarstvo.jpg', 'uploads/thumbs/thumb_pochemu_mnogie_ukraincy_nadeyutsya_prezhde_vsego_ne_na_sebya_a_na_gosudarstvo.jpg', '', 18, '2015-03-31 05:42:59', '2015-03-31 05:42:59', '2015-03-31 05:42:59', 48),
(322, 'Порошенко ввел в действие решение СНБО о оборонный заказ', 'poroshenko_vvel_v_dejstvie_reshenie_snbo_o_oboronnyj_zakaz', 'Президент Украины Петр Порошенко ввел в действие решение СНБО о планирования и формирования государственного оборонного заказа. Об этом говорится в указе, опубликованном на сайте президента в понедельник, 30 марта.\n\n\n«Ввести в действие решение Совета национальной безопасности и обороны Украины от 25 января 2015 года «О планирования и формирования государственного оборонного заказа» (прилагается, секретно). Контроль за выполнением решения Совета национальной безопасности и обороны Украины, введенного в действие этим Указом, возложить на секретаря СНБО», - говорится в документе.\n\n\nУказ вступает в силу со дня его опубликования.\n\n\nЭто решение СНБО было принято на заседании 25 января 2015 года. Оно является тайным.\n\n\nВ январе секретарь СНБО Александр Турчинов инициировал усиление уголовной ответственности за невыполнение предприятиями оборонно-промышленного комплекса оборонных заказов.\n', 'uploads/articles/poroshenko_vvel_v_dejstvie_reshenie_snbo_o_oboronnyj_zakaz.jpg', 'uploads/thumbs/thumb_poroshenko_vvel_v_dejstvie_reshenie_snbo_o_oboronnyj_zakaz.jpg', '', 18, '2015-03-31 05:43:04', '2015-03-31 05:43:04', '2015-03-31 05:43:04', 48),
(323, 'Порошенко встретился с конгрессменами США', 'poroshenko_vstretilsya_s_kongressmenami_ssha', 'Президент Украины Петр Порошенко провел встречу с конгрессменами США. Во время встречи стороны обсудили совместные действия в вопросах украинско-американского военного и военно-технического сотрудничества. (Видео Администрации президента)', 'uploads/articles/poroshenko_vstretilsya_s_kongressmenami_ssha.jpg', 'uploads/thumbs/thumb_poroshenko_vstretilsya_s_kongressmenami_ssha.jpg', '', 18, '2015-03-31 05:43:08', '2015-03-31 05:43:08', '2015-03-31 05:43:08', 48),
(324, 'Канада расширяет миссию против «Исламского государства»', 'kanada_rasshiryaet_missiyu_protiv_islamskogo_gosudarstva', 'Парламент Канады одобрил продление на год военной миссии против радикальной группировки «Исламское государство» - до марта 2016 года.\n\n\nМиссия предусматривает нанесение военных ударов по объектам боевиков в Сирии.\n\n\nДо сих пор ВВС Канады в течение полугода были задействованы только в боевых действиях против боевиков в Ираке. Около 70 канадских военнослужащих специальных сил принимают участие в обучении бойцов проправительственных курдских формирований пешмерга на севере Ирака.\n\n\nРанее в марте о планах расширить и продлить канадскую военную миссию заявил премьер-министр страны Стивен Харпер. При голосовании 30 марта его инициативу одобрили 142 законодатели, «против» высказались 129 членов парламента Канады. Оппозиция планы Харпера в Сирии не поддерживает. По мнению оппозиционных политиков, Канада ввяжется в длительную войну и своими действиями лишь укрепит режим сирийского президента Башара Асада.\n\n\nНа саммите Лиги арабских государств в Египте 29 марта объявили о достигнутом соглашении по формированию совместных военных сил против радикальных суннитов из группировки «Исламское государство» и шиитских повстанцев Хути в Йемене.\n\n\nВозглавляемая Саудовской Аравией коалиция с 10 суннитских стран наносит авиаудары по позициям Хути в Йемене.\n', 'uploads/articles/kanada_rasshiryaet_missiyu_protiv_islamskogo_gosudarstva.jpg', 'uploads/thumbs/thumb_kanada_rasshiryaet_missiyu_protiv_islamskogo_gosudarstva.jpg', '', 18, '2015-03-31 06:21:48', '2015-03-31 06:21:48', '2015-03-31 06:21:48', 48),
(325, 'Для волонтеров в Украине нет понятия «зарплата» - эксперт ', 'dlya_volonterov_v_ukraine_net_ponyatiya_zarplata_-_ekspert_', 'Президент Петр Порошенко подписал изменения в законодательство о волонтерской деятельности', 'uploads/articles/dlya_volonterov_v_ukraine_net_ponyatiya_zarplata_-_ekspert_.jpg', 'uploads/thumbs/thumb_dlya_volonterov_v_ukraine_net_ponyatiya_zarplata_-_ekspert_.jpg', '', 18, '2015-03-31 06:22:38', '2015-03-31 06:22:38', '2015-03-31 06:22:38', 48),
(326, 'О коррупционной деятельности первого заместителя Председателя Службы безопасности Украины Артюхова Ю.Бы.', 'o_korrupcionnoj_deyatelnosti_pervogo_zamestitelya_predsedatelya_sluzhby_bezopasnosti_ukrainy_artyuhova_yuby', 'Артюхов Юрий Борисович (первый заместитель Председателя Службы безопасности Украины &ndash; начальник Главного управления по борьбе с коррупцией и организованной преступностью (Главк &laquo;К&raquo; СБУ) получает денежные средства от 10-15 конвертационных центров в размере 0,5% от общего оборота валюты с&nbsp;каждого.', 'uploads/articles/o_korrupcionnoj_deyatelnosti_pervogo_zamestitelya_predsedatelya_sluzhby_bezopasnosti_ukrainy_artyuhova_yuby.jpg', 'uploads/thumbs/thumb_o_korrupcionnoj_deyatelnosti_pervogo_zamestitelya_predsedatelya_sluzhby_bezopasnosti_ukrainy_artyuhova_yuby.jpg', '', 1, '2015-03-31 06:24:39', '2015-03-31 06:24:39', '2015-03-31 06:24:39', 48),
(327, 'АЛЕКСАНДР ЯРОСЛАВСКИЙ: "КОГДА КЛУБ ВОЗГЛАВЛЯЕТ КЛОУН - ВСЕ МОЖЕТ БЫТЬ"', 'aleksandr_yaroslavskij_kogda_klub_vozglavlyaet_kloun_-_vse_mozhet_byt', 'Экс-владелец "Металлиста" рассуждает о футболе, политике и различных проявлениях "конфликта интересов"', 'uploads/articles/aleksandr_yaroslavskij_kogda_klub_vozglavlyaet_kloun_-_vse_mozhet_byt.jpg', 'uploads/thumbs/thumb_aleksandr_yaroslavskij_kogda_klub_vozglavlyaet_kloun_-_vse_mozhet_byt.jpg', '', 1, '2015-03-31 06:24:40', '2015-03-31 06:24:40', '2015-03-31 06:24:40', 48),
(328, 'Кто следующий на допрос?', 'kto_sleduyushij_na_dopros', 'Премьер-министра, миллиардера и&nbsp;депутата ждет общение со&nbsp;следователями по&nbsp;ряду резонансных дел.', 'uploads/articles/kto_sleduyushij_na_dopros.jpg', 'uploads/thumbs/thumb_kto_sleduyushij_na_dopros.jpg', '', 1, '2015-03-31 06:24:41', '2015-03-31 06:24:41', '2015-03-31 06:24:41', 48),
(329, 'Одесский русофоб перековался в русофила', 'odesskij_rusofob_perekovalsya_v_rusofila', 'Известный одесский ресторатор Савелий Либкин (рестораны &laquo;Дача&raquo;, &laquo;Компот&raquo; и т.п.) целый год в своём фейсбуке критиковал Россию и Владимира Путина,&nbsp;однако на днях выпустил в РФ свою новую книгу, после чего стёр свои старые антироссийские записи.', 'uploads/articles/odesskij_rusofob_perekovalsya_v_rusofila.jpg', 'uploads/thumbs/thumb_odesskij_rusofob_perekovalsya_v_rusofila.jpg', '', 1, '2015-03-31 06:24:41', '2015-03-31 06:24:41', '2015-03-31 06:24:41', 48),
(330, 'Два депутата от БПП станут губернаторами, - источники', 'dva_deputata_ot_bpp_stanut_gubernatorami_-_istochniki', 'В ближайшее время два народные депутаты от БПП - Степан Барна и Валерий Кулич станут председателями областных администраций.', 'uploads/articles/dva_deputata_ot_bpp_stanut_gubernatorami_-_istochniki.jpg', 'uploads/thumbs/thumb_dva_deputata_ot_bpp_stanut_gubernatorami_-_istochniki.jpg', '', 1, '2015-03-31 06:24:42', '2015-03-31 06:24:42', '2015-03-31 06:24:42', 48),
(331, 'Полтавская милиция готовит «вариант Саши Белого» для местных активистов «Правого сектора»', 'poltavskaya_miliciya_gotovit_variant_sashi_belogo_dlya_mestnyh_aktivistov_pravogo_sektora', 'На днях истек год с убийства активиста &laquo;Правого Сектора&raquo; Саши Белого. Александр &laquo;Саша Белый&raquo; Музычко 24 марта 2014 года направлялся на отдых, когда вечером на него налетела &laquo;опергруппа&raquo;.&nbsp;', 'uploads/articles/poltavskaya_miliciya_gotovit_variant_sashi_belogo_dlya_mestnyh_aktivistov_pravogo_sektora.jpg', 'uploads/thumbs/thumb_poltavskaya_miliciya_gotovit_variant_sashi_belogo_dlya_mestnyh_aktivistov_pravogo_sektora.jpg', '', 1, '2015-03-31 06:24:43', '2015-03-31 06:24:43', '2015-03-31 06:24:43', 48),
(332, 'Новинский ворует у банка Ахметова?', 'novinskij_voruet_u_banka_ahmetova', 'В Запорожье с автостоянки, на которой находилась техника строительной компании &laquo;Транс-Буд&raquo;, исчезли 14 автомобилей. По информации представителей &laquo;Транс-Буда&raquo;, самосвалы украли рейдеры, которые перед этими захватили предприятие.', 'uploads/articles/novinskij_voruet_u_banka_ahmetova.jpg', 'uploads/thumbs/thumb_novinskij_voruet_u_banka_ahmetova.jpg', '', 1, '2015-03-31 06:24:44', '2015-03-31 06:24:44', '2015-03-31 06:24:44', 48),
(333, 'Начальник Кировоградской милиции уволен за протекцию своей супруги', 'nachalnik_kirovogradskoj_milicii_uvolen_za_protekciyu_svoej_suprugi', 'Глава милиции Кировоградской области Анатолий Витюк поплатился должностью за то, что оказывал содействие своей супруге в продвижении вверх по служебной лестнице. Об этом сообщил министр внутренних дел Арсен Аваков.', 'uploads/articles/nachalnik_kirovogradskoj_milicii_uvolen_za_protekciyu_svoej_suprugi.jpg', 'uploads/thumbs/thumb_nachalnik_kirovogradskoj_milicii_uvolen_za_protekciyu_svoej_suprugi.jpg', '', 1, '2015-03-31 06:24:45', '2015-03-31 06:24:45', '2015-03-31 06:24:45', 48),
(334, 'В Одессе неизвестный всадил в волонтера пять шаров: пострадавший в тяжелом состоянии', 'v_odesse_neizvestnyj_vsadil_v_volontera_pyat_sharov_postradavshij_v_tyazhelom_sostoyanii', 'В Одессе поздно вечером неизвестные расстреляли 35-летнего мужчину. Как сообщает пресс-служба ГУ МВД в Одесской области, инцидент произошел на улице Космонавтов в Малиновском районе города.', 'uploads/articles/v_odesse_neizvestnyj_vsadil_v_volontera_pyat_sharov_postradavshij_v_tyazhelom_sostoyanii.jpg', 'uploads/thumbs/thumb_v_odesse_neizvestnyj_vsadil_v_volontera_pyat_sharov_postradavshij_v_tyazhelom_sostoyanii.jpg', '', 1, '2015-03-31 06:24:46', '2015-03-31 06:24:46', '2015-03-31 06:24:46', 48),
(335, 'Правоохранительные органы и суды сопровождают рейдерский передел автотранспортного бизнеса в Одессе', 'pravoohranitelnye_organy_i_sudy_soprovozhdayut_rejderskij_peredel_avtotransportnogo_biznesa_v_odesse', 'В Одесской области происходит перераспределение пассажирских автобусных маршрутов рейдерськими методами. Давление на автотранспортные предприятия осуществляется через суд и правоохранительные органы.', 'uploads/articles/pravoohranitelnye_organy_i_sudy_soprovozhdayut_rejderskij_peredel_avtotransportnogo_biznesa_v_odesse.jpg', 'uploads/thumbs/thumb_pravoohranitelnye_organy_i_sudy_soprovozhdayut_rejderskij_peredel_avtotransportnogo_biznesa_v_odesse.jpg', '', 1, '2015-03-31 06:24:49', '2015-03-31 06:24:49', '2015-03-31 06:24:49', 48),
(336, 'ЯНУКОВИЧА «КОРМИЛИ» 141 КОМПАНИЯ. КРУПНЕЙШИЕ ЗАРАБАТЫВАЮТ И СЕЙЧАС', 'yanukovicha_kormili_141_kompaniya_krupnejshie_zarabatyvayut_i_sejchas', 'Специалисты утверждают, что фирмы, которые обслуживали семью экс-президента, и до сих пор функционируют. В целом интересы президентской семьи в пик его власти обслуживало свыше 140 компаний.', 'uploads/articles/yanukovicha_kormili_141_kompaniya_krupnejshie_zarabatyvayut_i_sejchas.jpg', 'uploads/thumbs/thumb_yanukovicha_kormili_141_kompaniya_krupnejshie_zarabatyvayut_i_sejchas.jpg', '', 1, '2015-03-31 06:24:50', '2015-03-31 06:24:50', '2015-03-31 06:24:50', 48),
(337, 'Украиной расползается нелегальное оружие - где шанс на защиту?', 'ukrainoj_raspolzaetsya_nelegalnoe_oruzhie_-_gde_shans_na_zashitu', 'Через войну на востоке, страна стремительно наполняется нелегальными пистолетами и автоматами.', 'uploads/articles/ukrainoj_raspolzaetsya_nelegalnoe_oruzhie_-_gde_shans_na_zashitu.jpg', 'uploads/thumbs/thumb_ukrainoj_raspolzaetsya_nelegalnoe_oruzhie_-_gde_shans_na_zashitu.jpg', '', 1, '2015-03-31 06:24:51', '2015-03-31 06:24:51', '2015-03-31 06:24:51', 48),
(338, 'Немного истории. Как Ленинград стал оплотом советского гомосексуализма', 'nemnogo_istorii_kak_leningrad_stal_oplotom_sovetskogo_gomoseksualizma', 'Гомосексуализм&nbsp;связан и c&nbsp;социальными&nbsp;причинами &ndash; бурной урбанизацией, управленческим хаосом ибедностью.', 'uploads/articles/nemnogo_istorii_kak_leningrad_stal_oplotom_sovetskogo_gomoseksualizma.jpg', 'uploads/thumbs/thumb_nemnogo_istorii_kak_leningrad_stal_oplotom_sovetskogo_gomoseksualizma.jpg', '', 1, '2015-03-31 06:24:52', '2015-03-31 06:24:52', '2015-03-31 06:24:52', 48),
(339, 'Стрелков раскрыл причины войны с Украиной', 'strelkov_raskryl_prichiny_vojny_s_ukrainoj', 'Наблюдая за ватным мышлением, поражает убежденность, что именно украинцы, пришли к ним на Донбасс с оружием, а они, просто защищают свою землю.', 'uploads/articles/strelkov_raskryl_prichiny_vojny_s_ukrainoj.jpg', 'uploads/thumbs/thumb_strelkov_raskryl_prichiny_vojny_s_ukrainoj.jpg', '', 1, '2015-03-31 06:24:52', '2015-03-31 06:24:52', '2015-03-31 06:24:52', 48),
(340, 'Порошенко никогда не станет одним из нас – настоящих “циничных бандер”, – Мосийчук', 'poroshenko_nikogda_ne_stanet_odnim_iz_nas__nastoyashih_cinichnyh_bander__mosijchuk', 'Депутат от &ldquo;Радикальной партии Олега Ляшко&rdquo; Игорь Мосийчук остался недоволен тем, как Петр Порошенко отреагировал на свою же оговорку по поводу &ldquo;циничных бандер&rdquo;.', 'uploads/articles/poroshenko_nikogda_ne_stanet_odnim_iz_nas__nastoyashih_cinichnyh_bander__mosijchuk.jpg', 'uploads/thumbs/thumb_poroshenko_nikogda_ne_stanet_odnim_iz_nas__nastoyashih_cinichnyh_bander__mosijchuk.jpg', '', 1, '2015-03-31 06:24:54', '2015-03-31 06:24:54', '2015-03-31 06:24:54', 48),
(341, 'Экс-замглавы “Укроборонпрома": Выстрел из американского Javelin стоит $100 тыс., а из украинского “Корсара” – в пять раз дешевле', 'eks-zamglavy_ukroboronproma_vystrel_iz_amerikanskogo_javelin_stoit_100_tys_a_iz_ukrainskogo_korsara__v_pyat_raz_deshevle', 'Украина входит в десятку ведущих экспортеров, а не производителей оружия, и больше 20 лет распродает еще советские запасы вооружений', 'uploads/articles/eks-zamglavy_ukroboronproma_vystrel_iz_amerikanskogo_javelin_stoit_100_tys_a_iz_ukrainskogo_korsara__v_pyat_raz_deshevle.jpg', 'uploads/thumbs/thumb_eks-zamglavy_ukroboronproma_vystrel_iz_amerikanskogo_javelin_stoit_100_tys_a_iz_ukrainskogo_korsara__v_pyat_raz_deshevle.jpg', '', 1, '2015-03-31 06:24:54', '2015-03-31 06:24:54', '2015-03-31 06:24:54', 48),
(342, 'Фиктивные фирмы боевика Жилина собрали с коммунальщиков Харькова миллиард гривен', 'fiktivnye_firmy_boevika_zhilina_sobrali_s_kommunalshikov_harkova_milliard_griven', 'Начато расследование многомиллионных хищений средств коммунальных предприятий через фиктивные фирмы лидера банды боевиков &laquo;Оплот&raquo;&nbsp;Евгения Жилина.', 'uploads/articles/fiktivnye_firmy_boevika_zhilina_sobrali_s_kommunalshikov_harkova_milliard_griven.jpg', 'uploads/thumbs/thumb_fiktivnye_firmy_boevika_zhilina_sobrali_s_kommunalshikov_harkova_milliard_griven.jpg', '', 1, '2015-03-31 06:24:55', '2015-03-31 06:24:55', '2015-03-31 06:24:55', 48),
(343, 'Портников: Канал «Интер» еще более опасен, чем российские пропагандисты', 'portnikov_kanal_inter_eshe_bolee_opasen_chem_rossijskie_propagandisty', 'Решение генерального прокурора УкраиныВиктора Шокина&nbsp;проверить покупку акций&nbsp;телеканала "Интер" одиозным "олигархом"&nbsp;Дмитрием Фирташем&nbsp;', 'uploads/articles/portnikov_kanal_inter_eshe_bolee_opasen_chem_rossijskie_propagandisty.jpg', 'uploads/thumbs/thumb_portnikov_kanal_inter_eshe_bolee_opasen_chem_rossijskie_propagandisty.jpg', '', 1, '2015-03-31 06:24:56', '2015-03-31 06:24:56', '2015-03-31 06:24:56', 48),
(344, 'Кому будут принадлежать украинские леса', 'komu_budut_prinadlezhat_ukrainskie_lesa', 'Украинский лес хотят приватизировать, а необработанную древесину &ndash; запретить вывозить за границу.', 'uploads/articles/komu_budut_prinadlezhat_ukrainskie_lesa.jpg', 'uploads/thumbs/thumb_komu_budut_prinadlezhat_ukrainskie_lesa.jpg', '', 1, '2015-03-31 06:24:56', '2015-03-31 06:24:56', '2015-03-31 06:24:56', 48),
(345, '"Начальником" у киевских проституток был подполковник милиции – прокуратура', 'nachalnikom_u_kievskih_prostitutok_byl_podpolkovnik_milicii__prokuratura', '"Оборотень в погонах" прикрывал сутенеров', 'uploads/articles/nachalnikom_u_kievskih_prostitutok_byl_podpolkovnik_milicii__prokuratura.jpg', 'uploads/thumbs/thumb_nachalnikom_u_kievskih_prostitutok_byl_podpolkovnik_milicii__prokuratura.jpg', '', 1, '2015-03-31 06:24:57', '2015-03-31 06:24:57', '2015-03-31 06:24:57', 48),
(346, 'Россия, Бразилия и Индия пытались блокировать выделение Украине кредита МВФ', 'rossiya_braziliya_i_indiya_pytalis_blokirovat_vydelenie_ukraine_kredita_mvf', 'Россия вместе с Бразилией не смогли заблокировать решение МВФ по выделению Украине кредита.&nbsp;', 'uploads/articles/rossiya_braziliya_i_indiya_pytalis_blokirovat_vydelenie_ukraine_kredita_mvf.jpg', 'uploads/thumbs/thumb_rossiya_braziliya_i_indiya_pytalis_blokirovat_vydelenie_ukraine_kredita_mvf.jpg', '', 1, '2015-03-31 06:24:58', '2015-03-31 06:24:58', '2015-03-31 06:24:58', 48),
(347, 'Регионалка Бережная в очередной раз цинично высказалась о героях войны', 'regionalka_berezhnaya_v_ocherednoj_raz_cinichno_vyskazalas_o_geroyah_vojny', 'Ярая регионалка Ирина Бєрєжная очередной раз цинично высказалась о героях войны и ситуацию в стране.&nbsp;', 'uploads/articles/regionalka_berezhnaya_v_ocherednoj_raz_cinichno_vyskazalas_o_geroyah_vojny.jpg', 'uploads/thumbs/thumb_regionalka_berezhnaya_v_ocherednoj_raz_cinichno_vyskazalas_o_geroyah_vojny.jpg', '', 1, '2015-03-31 06:24:59', '2015-03-31 06:24:59', '2015-03-31 06:24:59', 48),
(348, 'История повторяется: Россию погубит вирус шовинистической истерии', 'istoriya_povtoryaetsya_rossiyu_pogubit_virus_shovinisticheskoj_isterii', 'Россия со дня своего основания находится в состоянии войны, все, что есть в России так или иначе связано с войной, с военными конфликтами, с ненавистью и паранойей &ndash; плавно переходящей в истерию.', 'uploads/articles/istoriya_povtoryaetsya_rossiyu_pogubit_virus_shovinisticheskoj_isterii.jpg', 'uploads/thumbs/thumb_istoriya_povtoryaetsya_rossiyu_pogubit_virus_shovinisticheskoj_isterii.jpg', '', 1, '2015-03-31 06:25:05', '2015-03-31 06:25:05', '2015-03-31 06:25:05', 48),
(349, 'В Киеве правоохранители, которые должны бороться с проституцией, "крышевали" бордели', 'v_kieve_pravoohraniteli_kotorye_dolzhny_borotsya_s_prostituciej_kryshevali_bordeli', 'В Киеве руководитель подразделения, который должен был бороться с проституцией, и его замы получали более сотни тысяч долларов ежемесячно за обеспечение бесперебойной работы заведений разврата.', 'uploads/articles/v_kieve_pravoohraniteli_kotorye_dolzhny_borotsya_s_prostituciej_kryshevali_bordeli.jpg', 'uploads/thumbs/thumb_v_kieve_pravoohraniteli_kotorye_dolzhny_borotsya_s_prostituciej_kryshevali_bordeli.jpg', '', 1, '2015-03-31 06:25:06', '2015-03-31 06:25:06', '2015-03-31 06:25:06', 48),
(350, 'Судят Черняка и Гульвиченко, которых обвиняют в расстреле ГАИшников', 'sudyat_chernyaka_i_gulvichenko_kotoryh_obvinyayut_v_rasstrele_gaishnikov', 'Очередная теплая встреча в Киевском Аппеляционном суде.', 'uploads/articles/sudyat_chernyaka_i_gulvichenko_kotoryh_obvinyayut_v_rasstrele_gaishnikov.jpg', 'uploads/thumbs/thumb_sudyat_chernyaka_i_gulvichenko_kotoryh_obvinyayut_v_rasstrele_gaishnikov.jpg', '', 1, '2015-03-31 06:25:07', '2015-03-31 06:25:07', '2015-03-31 06:25:07', 48),
(351, 'Бывшая заместитель начальника Крымской таможни, что устроила ДТП с тремя пострадавшими, трудоустроилась в Николаеве', 'byvshaya_zamestitel_nachalnika_krymskoj_tamozhni_chto_ustroila_dtp_s_tremya_postradavshimi_trudoustroilas_v_nikolaeve', 'Бывшая заместитель начальника Крымской таможни Анна Колодяжная теперь работает заместителем начальника Николаевской областной таможни.', 'uploads/articles/byvshaya_zamestitel_nachalnika_krymskoj_tamozhni_chto_ustroila_dtp_s_tremya_postradavshimi_trudoustroilas_v_nikolaeve.jpg', 'uploads/thumbs/thumb_byvshaya_zamestitel_nachalnika_krymskoj_tamozhni_chto_ustroila_dtp_s_tremya_postradavshimi_trudoustroilas_v_nikolaeve.jpg', '', 1, '2015-03-31 06:25:07', '2015-03-31 06:25:07', '2015-03-31 06:25:07', 48),
(352, 'Российско-террористические войска захватили Широкине', 'rossijsko-terroristicheskie_vojska_zahvatili_shirokine', 'После длительных активных боевых действий российские войска захватили населенный пункт Широкине', 'uploads/articles/rossijsko-terroristicheskie_vojska_zahvatili_shirokine.jpg', 'uploads/thumbs/thumb_rossijsko-terroristicheskie_vojska_zahvatili_shirokine.jpg', '', 1, '2015-03-31 06:25:08', '2015-03-31 06:25:08', '2015-03-31 06:25:08', 48),
(353, 'Коломойский и Ляшко подружились против Порошенко', 'kolomojskij_i_lyashko_podruzhilis_protiv_poroshenko', 'Экс-председатель Днепропетровской областной госадминистрации Игорь Коломойский и один из его ярых критиков &#8210; лидер Радикальной партии (РП) Олег Ляшко &#8210; заключили перемирие.&nbsp;', 'uploads/articles/kolomojskij_i_lyashko_podruzhilis_protiv_poroshenko.jpg', 'uploads/thumbs/thumb_kolomojskij_i_lyashko_podruzhilis_protiv_poroshenko.jpg', '', 1, '2015-03-31 06:25:09', '2015-03-31 06:25:09', '2015-03-31 06:25:09', 48),
(354, 'НБУ намерен включить в «черный список» представительство российского банка', 'nbu_nameren_vklyuchit_v_chernyj_spisok_predstavitelstvo_rossijskogo_banka', 'Национальный банк Украины&nbsp;намерен &laquo;обрушить гнев&raquo; на дочерний банк одной из российских банковских групп.&nbsp;', 'uploads/articles/nbu_nameren_vklyuchit_v_chernyj_spisok_predstavitelstvo_rossijskogo_banka.jpg', 'uploads/thumbs/thumb_nbu_nameren_vklyuchit_v_chernyj_spisok_predstavitelstvo_rossijskogo_banka.jpg', '', 1, '2015-03-31 06:25:09', '2015-03-31 06:25:09', '2015-03-31 06:25:09', 48),
(355, 'Как киевский губернатор-олигарх победил коррупцию и реформировал полицию', 'kak_kievskij_gubernator-oligarh_pobedil_korrupciyu_i_reformiroval_policiyu', 'И почему борьбу с негативными явлениями необязательно вести в правовом поле', 'uploads/articles/kak_kievskij_gubernator-oligarh_pobedil_korrupciyu_i_reformiroval_policiyu.jpg', 'uploads/thumbs/thumb_kak_kievskij_gubernator-oligarh_pobedil_korrupciyu_i_reformiroval_policiyu.jpg', '', 1, '2015-03-31 06:25:11', '2015-03-31 06:25:11', '2015-03-31 06:25:11', 48),
(356, 'Нардеп: Суд в Украине - это закрытое корпоратизировано преступная группировка', 'nardep_sud_v_ukraine_-_eto_zakrytoe_korporatizirovano_prestupnaya_gruppirovka', 'Судебная система в Украине - это сугубо закрытое корпоратизировано преступную группировку, считает народный депутат от фракции "Народный фронт", советник главы Минюста Игорь Алексеев.&nbsp;', 'uploads/articles/nardep_sud_v_ukraine_-_eto_zakrytoe_korporatizirovano_prestupnaya_gruppirovka.jpg', 'uploads/thumbs/thumb_nardep_sud_v_ukraine_-_eto_zakrytoe_korporatizirovano_prestupnaya_gruppirovka.jpg', '', 1, '2015-03-31 06:25:12', '2015-03-31 06:25:12', '2015-03-31 06:25:12', 48),
(357, 'Подлинный разговор с фейковым «российским суперсолдатом» Моторолой', 'podlinnyj_razgovor_s_fejkovym_rossijskim_supersoldatom_motoroloj', 'Те, кто следит за ситуацией, знают о столкновениях вооруженных сил Украины с сепаратистами в Иловайске, Дебальцево, Углегорске и Донецком аэропорту', 'uploads/articles/podlinnyj_razgovor_s_fejkovym_rossijskim_supersoldatom_motoroloj.jpg', 'uploads/thumbs/thumb_podlinnyj_razgovor_s_fejkovym_rossijskim_supersoldatom_motoroloj.jpg', '', 1, '2015-03-31 06:25:13', '2015-03-31 06:25:13', '2015-03-31 06:25:13', 48),
(358, 'Фотографию жены Порошенко в поезде опубликовал интернет-бот. Расследование', 'fotografiyu_zheny_poroshenko_v_poezde_opublikoval_internet-bot_rassledovanie', 'Все выходные в интернете обсуждали фото супруги президента Марины Порошенко. На фото она едет в скоростном поезде &laquo;Интерсити +&raquo; как обычный пассажир, правда, в первом классе.&nbsp;', 'uploads/articles/fotografiyu_zheny_poroshenko_v_poezde_opublikoval_internet-bot_rassledovanie.jpg', 'uploads/thumbs/thumb_fotografiyu_zheny_poroshenko_v_poezde_opublikoval_internet-bot_rassledovanie.jpg', '', 1, '2015-03-31 06:25:13', '2015-03-31 06:25:13', '2015-03-31 06:25:13', 48),
(359, 'Порошенко подписал тайный указ на закупку оружия', 'poroshenko_podpisal_tajnyj_ukaz_na_zakupku_oruzhiya', 'Президент Порошенко ввел в действие решение Совета национальной безопасности и обороны относительно планирования и формирования государственного оборонного заказа', 'uploads/articles/poroshenko_podpisal_tajnyj_ukaz_na_zakupku_oruzhiya.jpg', 'uploads/thumbs/thumb_poroshenko_podpisal_tajnyj_ukaz_na_zakupku_oruzhiya.jpg', '', 1, '2015-03-31 06:25:14', '2015-03-31 06:25:14', '2015-03-31 06:25:14', 48),
(360, 'Железнодорожники продолжают закупать шпалы на сотни миллионов с дельтой больше времен Януковича', 'zheleznodorozhniki_prodolzhayut_zakupat_shpaly_na_sotni_millionov_s_deltoj_bolshe_vremen_yanukovicha', 'Каждое правило существует для исключений. Тендеров эта вечная фраза тоже касается. Потому что хотя &laquo;Наши деньги&raquo; неустанно наблюдают падение &laquo;маржи&raquo; в государственных закупках, является один товар, который обошли ветры перемен.', 'uploads/articles/zheleznodorozhniki_prodolzhayut_zakupat_shpaly_na_sotni_millionov_s_deltoj_bolshe_vremen_yanukovicha.jpg', 'uploads/thumbs/thumb_zheleznodorozhniki_prodolzhayut_zakupat_shpaly_na_sotni_millionov_s_deltoj_bolshe_vremen_yanukovicha.jpg', '', 1, '2015-03-31 06:25:15', '2015-03-31 06:25:15', '2015-03-31 06:25:15', 48),
(361, 'ОТСТАВКА ДНЯ С ЦЕЛЬЮ ОСЛАБИТЬ ВЛИЯНИЕ КОЛОМОЙСКОГО: УВОЛЕН ПРОКУРОР ДНЕПРОПЕТРОВСКОЙ ОБЛАСТИ РОМАНОВ', 'otstavka_dnya_s_celyu_oslabit_vliyanie_kolomojskogo_uvolen_prokuror_dnepropetrovskoj_oblasti_romanov', 'Вслед за отставкой с поста губернатора Днепропетровской области олигарха Игоря Коломойского и назначения главой ОГА Валентина Резниченко, своего поста лишился и прокурор региона Валерий Романов.&nbsp;', 'uploads/articles/otstavka_dnya_s_celyu_oslabit_vliyanie_kolomojskogo_uvolen_prokuror_dnepropetrovskoj_oblasti_romanov.jpg', 'uploads/thumbs/thumb_otstavka_dnya_s_celyu_oslabit_vliyanie_kolomojskogo_uvolen_prokuror_dnepropetrovskoj_oblasti_romanov.jpg', '', 1, '2015-03-31 06:25:19', '2015-03-31 06:25:19', '2015-03-31 06:25:19', 48),
(362, 'Скрытый бизнес губернатора Житомирщины', 'skrytyj_biznes_gubernatora_zhitomirshiny', 'Проходит год после событий на Майдане.&nbsp;', 'uploads/articles/skrytyj_biznes_gubernatora_zhitomirshiny.jpg', 'uploads/thumbs/thumb_skrytyj_biznes_gubernatora_zhitomirshiny.jpg', '', 1, '2015-03-31 06:25:20', '2015-03-31 06:25:20', '2015-03-31 06:25:20', 48),
(363, 'В Харькове диверсанты взорвали цистерну с топливом для нужд украинской армии', 'v_harkove_diversanty_vzorvali_cisternu_s_toplivom_dlya_nuzhd_ukrainskoj_armii', 'На железнодорожной станции &laquo;Основа&raquo; в Харькове диверсанты взорвали цистерну с горюче-смазочными материалами, которые предназначались для нужд украинской армии.&nbsp;', 'uploads/articles/v_harkove_diversanty_vzorvali_cisternu_s_toplivom_dlya_nuzhd_ukrainskoj_armii.jpg', 'uploads/thumbs/thumb_v_harkove_diversanty_vzorvali_cisternu_s_toplivom_dlya_nuzhd_ukrainskoj_armii.jpg', '', 1, '2015-03-31 06:25:21', '2015-03-31 06:25:21', '2015-03-31 06:25:21', 48),
(364, 'ПРОПАЖА У МАХНИЦКОГО: ДОЧЬ БЫВШЕГО ГЕНПРОКУРОРА ОБЕЩАЕТ "БОЛЬШОЕ ВОЗНАГРАЖДЕНИЕ" ЗА ВОЗВРАЩЕНИЕ В СЕМЬЮ ЭЛИТНОГО ПСА', 'propazha_u_mahnickogo_doch_byvshego_genprokurora_obeshaet_bolshoe_voznagrazhdenie_za_vozvrashenie_v_semyu_elitnogo_psa', 'У бывшего исполняющего обязанности Генерального прокурора Украины Олега Махницкого пропал домашний любимец.&nbsp;', 'uploads/articles/propazha_u_mahnickogo_doch_byvshego_genprokurora_obeshaet_bolshoe_voznagrazhdenie_za_vozvrashenie_v_semyu_elitnogo_psa.jpg', 'uploads/thumbs/thumb_propazha_u_mahnickogo_doch_byvshego_genprokurora_obeshaet_bolshoe_voznagrazhdenie_za_vozvrashenie_v_semyu_elitnogo_psa.jpg', '', 1, '2015-03-31 06:25:22', '2015-03-31 06:25:22', '2015-03-31 06:25:22', 48),
(365, 'Андрей Золотарев: "Коломойский нацеливается на Киев"', 'andrej_zolotarev_kolomojskij_nacelivaetsya_na_kiev', '<div>Сбудется ли предсказание, что "все будет "Приват", кто усилил Порошенко в его борьбе с Коломойским, Вилкул в качестве альтернативы, и что общего у "приватовцев" с героями Ильфа и Петрова: интервью РИА Новости Украина с политическим экспертом, руководителем центра "Третий сектор" Андреем Золотаревым.</div>', 'uploads/articles/andrej_zolotarev_kolomojskij_nacelivaetsya_na_kiev.jpg', 'uploads/thumbs/thumb_andrej_zolotarev_kolomojskij_nacelivaetsya_na_kiev.jpg', '', 1, '2015-03-31 06:25:23', '2015-04-01 11:14:55', '2015-04-01 11:14:55', 34),
(366, 'СЫН ЗА ОТЦА НЕ ОТВЕЧАЕТ: СТАРШИМ ПРОКУРОРОМ МАЛИНОВСКОГО РАЙОНА ОДЕССЫ СТАЛ ОТПРЫСК БЫВШЕГО ЗАМНАЧАЛЬНИКА ОБЛАСТНОЙ МИЛИЦИИ ФУЧЕДЖИ', 'syn_za_otca_ne_otvechaet_starshim_prokurorom_malinovskogo_rajona_odessy_stal_otprysk_byvshego_zamnachalnika_oblastnoj_milicii_fuchedzhi', 'Старшим прокурором Малиновской прокуратуры Одессы стал Антон Фучеджи, сын экс-заместителя начальника облУВД &mdash; Дмитрия Фучеджи.', 'uploads/articles/syn_za_otca_ne_otvechaet_starshim_prokurorom_malinovskogo_rajona_odessy_stal_otprysk_byvshego_zamnachalnika_oblastnoj_milicii_fuchedzhi.jpg', 'uploads/thumbs/thumb_syn_za_otca_ne_otvechaet_starshim_prokurorom_malinovskogo_rajona_odessy_stal_otprysk_byvshego_zamnachalnika_oblastnoj_milicii_fuchedzhi.jpg', '', 1, '2015-03-31 06:25:23', '2015-03-31 06:25:23', '2015-03-31 06:25:23', 48),
(367, 'Савченко заговорила о смерти', 'savchenko_zagovorila_o_smerti', 'Народный депутат Верховной Рады Надежда Савченко, которую незаконно удерживают в российской тюрьме продолжает голодовку.&nbsp;', 'uploads/articles/savchenko_zagovorila_o_smerti.jpg', 'uploads/thumbs/thumb_savchenko_zagovorila_o_smerti.jpg', '', 1, '2015-03-31 06:25:24', '2015-03-31 06:25:24', '2015-03-31 06:25:24', 48),
(368, '«ДНР» и «ЛНР» создают комиссию по реформированию Конституции Украины', 'dnr_i_lnr_sozdayut_komissiyu_po_reformirovaniyu_konstitucii_ukrainy', 'В самопровозглашенных республиках заявили о создании Межведомственной комиссии, главной задачей которой будет реализация 11-го пункта Комплекса мер по выполнению Минских соглашений от 12 февраля 2015.', 'uploads/articles/dnr_i_lnr_sozdayut_komissiyu_po_reformirovaniyu_konstitucii_ukrainy.jpg', 'uploads/thumbs/thumb_dnr_i_lnr_sozdayut_komissiyu_po_reformirovaniyu_konstitucii_ukrainy.jpg', '', 1, '2015-03-31 06:25:25', '2015-03-31 06:25:25', '2015-03-31 06:25:25', 48),
(369, 'Санкции против Януковича и Ко: преступно потерянное время', 'sankcii_protiv_yanukovicha_i_ko_prestupno_poteryannoe_vremya', 'Высшие должностные лица ГПУ и&nbsp;государства имитируют расследование в&nbsp;отношении &laquo;друзей Путина&raquo;.', 'uploads/articles/sankcii_protiv_yanukovicha_i_ko_prestupno_poteryannoe_vremya.jpg', 'uploads/thumbs/thumb_sankcii_protiv_yanukovicha_i_ko_prestupno_poteryannoe_vremya.jpg', '', 1, '2015-03-31 06:25:26', '2015-03-31 06:25:26', '2015-03-31 06:25:26', 48);
INSERT INTO `slc_articles` (`id`, `title`, `alias`, `content`, `image`, `thumb`, `video`, `user_id`, `created_at`, `updated_at`, `published_at`, `parent_folder_id`) VALUES
(370, 'У Дмитрия Фирташа собираются отобрать почти 80 гектаров участка Бугского лимана', 'u_dmitriya_firtasha_sobirayutsya_otobrat_pochti_80_gektarov_uchastka_bugskogo_limana', '&nbsp;Заместитель прокурора Николаевской области обратился в суд с иском о признании противоправным и отмене решения Николаевского городского совета', 'uploads/articles/u_dmitriya_firtasha_sobirayutsya_otobrat_pochti_80_gektarov_uchastka_bugskogo_limana.jpg', 'uploads/thumbs/thumb_u_dmitriya_firtasha_sobirayutsya_otobrat_pochti_80_gektarov_uchastka_bugskogo_limana.jpg', '', 1, '2015-03-31 06:25:27', '2015-03-31 06:25:27', '2015-03-31 06:25:27', 48),
(371, 'Запорожский "киборг" получил за заслуги...700 гривен', 'zaporozhskij_kiborg_poluchil_za_zaslugi700_griven', 'Боец на своей странице в соцсетях написал, что средства ему преподнесли за мужество. Также запорожец получит статус участника АТО.', 'uploads/articles/zaporozhskij_kiborg_poluchil_za_zaslugi700_griven.jpg', 'uploads/thumbs/thumb_zaporozhskij_kiborg_poluchil_za_zaslugi700_griven.jpg', '', 1, '2015-03-31 06:26:15', '2015-03-31 06:26:15', '2015-03-31 06:26:15', 48),
(372, 'Пекин завершил эвакуацию граждан Китая из Йемена', 'pekin_zavershil_evakuaciyu_grazhdan_kitaya_iz_jemena', 'Министерство обороны Китая сообщает, что 31 марта военные корабли завершили эвакуацию граждан Китая из Йемена. Более 570 человек успешно перевезли через Красное море в Джибути, расположенного в районе Африканского Рога, откуда они полетят домой.\n\n\nВ заявлении министерства говорится, что эвакуация проходила в два этапа: одну группу эвакуировали из Адена іншау, более многочисленная - с Ходейду.\n\n\nПо сообщению, также эвакуировали восьмерых иностранных граждан, однако из каких именно стран, не уточняют.\n\n\nПекин заявил, что после завершения операции военные корабли вернутся в Аденский залив для оказания помощи в борьбе против сомалийских пиратов.\n\n\nЭвакуацию начали после авиаударов коалиции 10 суннитских государств под руководством Саудовской Аравии по шиитским повстанцам Хути в Йемене.\n', 'uploads/articles/pekin_zavershil_evakuaciyu_grazhdan_kitaya_iz_jemena.jpg', 'uploads/thumbs/thumb_pekin_zavershil_evakuaciyu_grazhdan_kitaya_iz_jemena.jpg', '', 18, '2015-03-31 07:22:29', '2015-03-31 07:22:29', '2015-03-31 07:22:29', 48),
(373, 'За минувшие сутки в зоне АТО один военный ранен - Лысенко ', 'za_minuvshie_sutki_v_zone_ato_odin_voennyj_ranen_-_lysenko_', 'За минувшие сутки на Донбассе погибших среди украинских военнослужащих нет, один получил ранения, сообщил представитель АТО Андрей Лысенко. \n\n\nПо его словам, ситуация в зоне АТО остается напряженной.\n\n\nВооруженные провокации с применением стрелкового оружия и минометов не прекращаются - наиболее вопиющие факты нарушения режима тишины со стороны сепаратистов зафиксировано близ села Гранитное, в районе Донецкого аэропорта, неподалеку населенных пунктов вблизи Бахмутской трассы.\n\n\n«Точкой наиболее ожесточенного противостояния остается села Широкине под Мариуполем - вчера, кроме уже привычных минометных обстрелов, боевики применили против украинских военнослужащих танк. Пострадавших нет, атака отбита», - отметил спикер АТО. \n\n\nПо состоянию на 9 марта на Донбассе погибло более 1,5 тысячи военнослужащих, с 15 февраля погибли 64 военнослужащих, сообщил президент Украины Петр Порошенко.\n\n\n12 февраля лидеры Украины, Франции, Германии и России договорились о прекращении огня на Донбассе от 15 февраля. Однако договоренности полностью не выполняются, стороны конфликта обвиняют друг друга в нарушении режима прекращения огня.\n', 'uploads/articles/za_minuvshie_sutki_v_zone_ato_odin_voennyj_ranen_-_lysenko_.jpg', 'uploads/thumbs/thumb_za_minuvshie_sutki_v_zone_ato_odin_voennyj_ranen_-_lysenko_.jpg', '', 18, '2015-03-31 07:22:31', '2015-03-31 07:22:31', '2015-03-31 07:22:31', 48),
(374, 'Конгрессмен: конфликт в Украине важнее для мира, чем война с «Исламским государством»', 'kongressmen_konflikt_v_ukraine_vazhnee_dlya_mira_chem_vojna_s_islamskim_gosudarstvom', 'Война в Украине значит для мира гораздо больше, чем конфликт в Йемене или противостояние с боевиками «Исламского государства», заявил, отвечая на вопрос Радио Свобода, американский конгрессмен-республиканец Уильям «Мак» Торнберри.\n\n\n«В мире сейчас существует много конфликтов, но я думаю, что ни один из них не является более важным, чем конфликт в Украине. Этот акт агрессии угрожает стабильности не только европейских стран, но и всего мира. Он ставит под угрозу то, что люди могут сами решать свою судьбу», - подчеркнул конгрессмен.\n\n\nПо его словам, конфликт на востоке Украины является наибольшей угрозой миру со времен Второй мировой войны.\n\n\nТорнберри также рассказал, что во время визита в Киев члены делегации встретились с президентом и премьер-министром Украины.\n\n\n«Мы также встретились с членами миссии ОБСЕ, получили новую информацию относительно боевых действий и поставок американского оружия на фронт. Кроме того, мы поставили госслужащим ряд вопросов не только военной сферы, но и, например, с антикоррупционной», - отметил конгрессмен.\n\n\nПо его словам, теперь Конгресс будет лучше понимать, что планирует украинское правительство и какой может быть поддержка США в этом направлении.\n\n\nКонгрессмен Уильям Торнберри возглавляет комитет вооруженных сил нижней палаты Конгресса. По мнению экспертов, американская делегация приехала изучать военную ситуацию в Украине. Также эксперты считают, что украинцы должны доказать, что справятся с новым оружием.\n\n\nДелегация Конгресса США - республиканцы Уильям Торнберри, который возглавляет Комитет вооруженных сил, и Кевин Маккарти, лидер республиканцев в нижней палате Конгресса прибыли в Киев 29 марта.\n', 'uploads/articles/kongressmen_konflikt_v_ukraine_vazhnee_dlya_mira_chem_vojna_s_islamskim_gosudarstvom.jpg', 'uploads/thumbs/thumb_kongressmen_konflikt_v_ukraine_vazhnee_dlya_mira_chem_vojna_s_islamskim_gosudarstvom.jpg', '', 18, '2015-03-31 07:22:33', '2015-03-31 07:22:33', '2015-03-31 07:22:33', 48),
(375, 'Участники контактной группы проведут видеоконференцию 1 апреля - пресс-секретарь Кучмы', 'uchastniki_kontaktnoj_gruppy_provedut_videokonferenciyu_1_aprelya_-_press-sekretar_kuchmy', 'Завтра трехсторонняя контактная группа в режиме видеоконференции обсудит с представителями отдельных районов Донецкой и Луганской областей ситуацию на Донбассе, заявляет пресс-секретарь представителя Украины в контактной группе Леонида Кучмы Дарка Олифер на своей странице в Facebook.\n\n\n«Завтра, 1 апреля, участники Трехсторонней контактной группы будут разговаривать с представителями отдельных районов Донецкой и Луганской областей в режиме видеоконференции. Во время встречи запланировано обсудить проблемы деэскалации ситуации на востоке Украины, а также вопросы обмена заложников и незаконно удерживаемых лиц», - написала она. \n\n\nОлифер также сообщила, что 30 марта состоялась встреча участников трехстороннего контактной группы - спецпосланника ОБСЕ Хайди Тальявини, второго президента Украины Леонида Кучмы и посла России в Украине Михаила Зурабова.\n\n\nПророссийские боевики на своих сайтах не сообщают о точной дате встречи контактной группы. Однако сепаратистское медиа-ресурс «Донецкое агентство новостей» со ссылкой на представителя «ДНР» в контактной группе Дениса Пушиліна сообщает, что группировка «ДНР» призвало контактную группу организовать скайп-конференцию, а затем встреча. \n\n\n12 февраля лидеры Украины, Франции, Германии и России договорились о прекращении огня на Донбассе от 15 февраля, однако обстрелы на Донбассе не прекращаются. Украинские военные и пророссийские сепаратисты обвиняют друг друга в нарушении режима прекращения огня. Минские договоренности также предусматривают освобождение пленных. \n\n\n\n\n\n', 'uploads/articles/uchastniki_kontaktnoj_gruppy_provedut_videokonferenciyu_1_aprelya_-_press-sekretar_kuchmy.jpg', 'uploads/thumbs/thumb_uchastniki_kontaktnoj_gruppy_provedut_videokonferenciyu_1_aprelya_-_press-sekretar_kuchmy.jpg', '', 18, '2015-03-31 07:22:35', '2015-03-31 07:22:35', '2015-03-31 07:22:35', 48),
(429, 'Полк «Азов» сообщает об обстрелах из тяжелых вооружений у Широкина', 'polk_azov_soobshaet_ob_obstrelah_iz_tyazhelyh_vooruzhenij_u_shirokina', 'Боевики обстреливают позиции украинских военнослужащих возле населенного пункта Широкине из крупнокалиберных минометов, гранатометов и самоходных артиллерийских установок, сообщает пресс-служба полка «Азов» на своей странице в Facebook.\n\n\n«Террористы уже полтора часа обстреливают из тяжелой артиллерии позиции полка «Азов» недалеко Широкина. Более часа боевики ведут огонь по позициям азовцев со 120-мм минометов и СПГ (станковый противотанковый гранатомет, - ред.)», - говорится в сообщении.\n\n\nПолк «Азов» также сообщает, что сепаратисты, используя самоходные артиллерийские установки, обстреливающие окраину населенного пункта Бердянское (неподалеку Широкина).\n\n\nПока подтверждения этой информации из других источников нет.\n\n\n12 февраля в Минске были подписаны соглашения, которые должны положить конец боевым действиям на Донбассе, но окончательного прекращения огня не произошло. Также минские договоренности предусматривают отвод тяжелых вооружений от линии разграничения на Донбассе. \n\n\nШирокине остается одной из самых горячих точек на Донбассе, там постоянно идут обстрелы.\n\n\n\n\n\n\n\n\n', 'uploads/articles/polk_azov_soobshaet_ob_obstrelah_iz_tyazhelyh_vooruzhenij_u_shirokina.jpg', 'uploads/thumbs/thumb_polk_azov_soobshaet_ob_obstrelah_iz_tyazhelyh_vooruzhenij_u_shirokina.jpg', '', 18, '2015-03-31 12:32:02', '2015-03-31 12:32:02', '2015-03-31 12:32:02', 53),
(430, 'ООН: за год в Украине при подрыве на минах погибли 42 ребенка', 'oon_za_god_v_ukraine_pri_podryve_na_minah_pogibli_42_rebenka', 'В Украине, подорвавшись на минах, с марта 2014 года погибли по меньшей мере 42 детей, 109 были ранены. Об этом свидетельствуют данные детского фонда ООН ЮНИСЕФ, говорится в Twitter ООН.\n\n\nКак заявили в ЮНИСЕФ, данные, приведенные правительством, могут не отражать истинное число погибших.\n\n\n«Число детей, убитых и искалеченных минами и боеприпасами, будет значительно выше, если мы включим неконтролируемые правительством территории. Отсутствие доступа к этих территорий является реальной проблемой для гуманитарных организаций на местах», - сообщила региональный директор ЮНИСЕФ по Центральной и Восточной Европе Мари-Пьер Пуар''є, которая недавно вернулась с востока Украины.\n\n\nПо данным ООН, за время вооруженного конфликта в Донецкой и Луганской областях погибли более шести тысяч человек.\n\n\n\n\n\n\n\n\n', 'uploads/articles/oon_za_god_v_ukraine_pri_podryve_na_minah_pogibli_42_rebenka.jpg', 'uploads/thumbs/thumb_oon_za_god_v_ukraine_pri_podryve_na_minah_pogibli_42_rebenka.jpg', '', 18, '2015-03-31 12:32:04', '2015-03-31 12:32:04', '2015-03-31 12:32:04', 53),
(431, 'Турция: радикалы захватили прокурора и требуют правосудия', 'turciya_radikaly_zahvatili_prokurora_i_trebuyut_pravosudiya', 'В турецком городе Стамбул представители крайне левой группы захватили прокурора и угрожают его убить. Это произошло во вторник, 31 марта.\n\n\nРеволюционная народная освободительная партия-фронт (DHKP-C) опубликовала фотографию, на которой мужчина держит оружие у виска прокурора Мехмета Селима Кіраза и угрожает его убить, если не будут выполнены их требования.\n\n\nПока специальные силы безопасности Турции проникли внутрь здания суда, а полиция эвакуировала людей.\n\n\nПрокурор Кіраз расследует смерть Беркина Эльвана, 15-летнего парня, погибшего от действия газового баллончика, который полицейские применили против участников антиправительственных протестов в 2013 году.\n\n\nЛюди, которые захватили прокурора требуют, чтобы против полиции были предъявлены обвинении в смерти Эльвана, а также, чтобы были закрыты дела против активистов, которые проводили акции в поддержку погибшего парня.\n\n\nПредставителей Революционной народной освободительной партии-фронта обвиняют в совершении взрыва возле посольства США в Турции в 2013 году. США, ЕС и Турция внесли эту организацию в список террористических. \n', 'uploads/articles/turciya_radikaly_zahvatili_prokurora_i_trebuyut_pravosudiya.jpg', 'uploads/thumbs/thumb_turciya_radikaly_zahvatili_prokurora_i_trebuyut_pravosudiya.jpg', '', 18, '2015-03-31 12:32:06', '2015-03-31 12:32:06', '2015-03-31 12:32:06', 53),
(432, 'Контрбатарейні установки уменьшили потери на Донбассе на 25% - Ординович ', 'kontrbatarejni_ustanovki_umenshili_poteri_na_donbasse_na_25_-_ordinovich_', '<div>Военную помощь, которую вооруженные силы Украины получают из-за границы, используют эффективно и она помогает уменьшить число потерь среди солдат. Об этом в эфире Радио Свобода заявил исполняющий обязанности начальника главного управления военного сотрудничества и миротворческих операций Генерального штаба Вооруженных Сил Украины Андрей Ординович. &laquo;Яркий пример - контрбатарейні установки, которые в процентном отношении на 25 процентов уменьшили потери при их применении. Это значит - своевременное выявление тех или иных минометов, артиллерийских систем и своевременно была дана команда на их поражения&raquo;, - сообщил военный. В то же время, Ординович отметил, что недостатком полученных радаров является малый радиус действия. Поэтому в дальнейшем в Генштабе, рассказал он, рассчитывают получить более мощные установки. Ординович считает, что Украина получит летальное вооружение из заграницы при условии эскалации конфликта на Донбассе и захвата сепаратистами новых территорий. В марте президент Украины Петр Порошенко сообщил о дополнительной нелетальное помощь США Украине в отрасли безопасности, общей стоимостью в 75 миллионов долларов. На эту сумму США предоставляют беспилотники, системы связи, радары для определения минометных и артиллерийских позиций, приборы ночного видения и другие средства, а также 230 военных автомобилей.</div>', 'uploads/articles/kontrbatarejni_ustanovki_umenshili_poteri_na_donbasse_na_25_-_ordinovich_.jpg', 'uploads/thumbs/thumb_kontrbatarejni_ustanovki_umenshili_poteri_na_donbasse_na_25_-_ordinovich_.jpg', '', 18, '2015-03-31 12:32:08', '2015-03-31 14:52:25', '2015-03-31 14:52:25', 52),
(433, 'Правительство продлит действие чрезвычайных мер на рынке электроэнергии в месяц', 'pravitelstvo_prodlit_dejstvie_chrezvychajnyh_mer_na_rynke_elektroenergii_v_mesyac', 'Кабинет министров в шестой раз введет чрезвычайные меры на электроэнергетическом рынке сроком на один месяц, заявил премьер-министров Украины Арсений Яценюк.\n\n\n«Министерство энергетики в шестой раз просит продлить чрезвычайное положение в энергетике. Я крайне недоволен тем, что происходит в энергетическом секторе. Продление чрезвычайного положения отражает реальное положение в энергетическом секторе. 2,5 миллиарда уже неплатежей, полный бардак в расчетах с предприятиями электроэнергетики, угля, как всегда, нет», - заявил Яценюк.\n\n\nПремьер поручил Минэнерго выполнить необходимые шаги для принятия мер по стабилизации рынка энергетики.\n\n\nВ августе прошлого года Кабмин утвердил порядок принятия временных чрезвычайных мер по преодолению последствий длительного нарушения нормальной работы рынка электроэнергии. Эти мероприятия неоднократно продлевались. \n\n\nОколо 47% электроэнергии, вырабатываемой в Украине, генерируют АЭС, остальные производят ТЭС путем сжигания газа и угля, а также гидроэлектростанции и «зеленая» энергетика. \n\n\nНехватка природного газа и нехватка угля через захват сепаратистами части Донбасса привел к дефициту электроэнергии в Украине.\n\n\n\n', 'uploads/articles/pravitelstvo_prodlit_dejstvie_chrezvychajnyh_mer_na_rynke_elektroenergii_v_mesyac.jpg', 'uploads/thumbs/thumb_pravitelstvo_prodlit_dejstvie_chrezvychajnyh_mer_na_rynke_elektroenergii_v_mesyac.jpg', '', 18, '2015-03-31 12:32:10', '2015-03-31 12:32:10', '2015-03-31 12:32:10', 53),
(434, 'На Днепропетровщине во время военных учений снаряд залетел в село', 'na_dnepropetrovshine_vo_vremya_voennyh_uchenij_snaryad_zaletel_v_selo', 'В селе Знаменовка Новомосковского района на Днепропетровщине в одном из дворов взорвался учебный снаряд, ударной волной в доме выбило стекла. Инцидент произошел 30 марта. Информацию об этом сегодня подтвердили в региональном медиа-центре Минобороны.\n\n\nПо данным ведомства, инцидент произошел во время артиллерийских стрельб, которые проходили в соседней воинской части, жертв и пострадавших нет, от взрывной волны в окнах здания разбито два стекла.\n\n\nПо предварительным выводам экспертов, причиной может быть техническая неисправность».\n\n\nУчебные стрельбы прекратили до выяснения обстоятельств. По словам местных жителей Знаменовки, от полигона, где проходили стрельбы, до их деревни около 30 километров. \n', 'uploads/articles/na_dnepropetrovshine_vo_vremya_voennyh_uchenij_snaryad_zaletel_v_selo.jpg', 'uploads/thumbs/thumb_na_dnepropetrovshine_vo_vremya_voennyh_uchenij_snaryad_zaletel_v_selo.jpg', '', 18, '2015-03-31 12:32:14', '2015-03-31 12:32:14', '2015-03-31 12:32:14', 53),
(435, 'Солдат будущего (инфографика)', 'soldat_budushego_infografika', 'Волонтеры уверяют: бронежилетов и касок на передовой хватает. Теперь украинских солдат надо обеспечить техническими средствами и IT-продукцией. Всего в мире существует целый ряд проектов с условным названием «Солдат будущего» - экипировка с учетом последних высокотехнологичных достижений - систем ночного видения, позиционирование, ціленаведення, средств защиты. Современный комплект оснащения бойца спецподразделения НАТО включает 70 элементов питания общим весом 8 килограммов. Основной потенциал для применения информационных технологий в военных действиях в зоне АТО такой: защищенный связь, радиоразведка, системы наведения для артиллеристов и GPS-навигация. Отдельное направление: это дроны.', 'uploads/articles/soldat_budushego_infografika.jpg', 'uploads/thumbs/thumb_soldat_budushego_infografika.jpg', '', 18, '2015-03-31 12:32:16', '2015-03-31 12:32:16', '2015-03-31 12:32:16', 53),
(436, 'Ирак: власти заявляют об успехах в боях с исламистами за Тикрит', 'irak_vlasti_zayavlyayut_ob_uspehah_v_boyah_s_islamistami_za_tikrit', 'Иракские власти заявляют, что правительственные силы безопасности продолжают оттеснять исламистов из города Тикрит к северу от Багдада. По сообщению премьер-министра Ирака Хайдера аль-Абади, во вторник, 31 марта, иракские военные продвинулись в центр этого города, после того, как вытеснили боевиков группировки «Исламское государство» с южной и западной его частей.\n\n\nАбаде выразил надежду, что в этой операции кроме иракской армии и полиции будут помогать силы коалиции под предводительством США, которые наносят воздушные удары по позициям исламистов, а также бойцы шиитских и суннитских племен.\n\n\nСейчас шииты возобновили участие в боевых действиях по Тикрит против «Исламского государства». Это произошло после того, как на прошлой неделе шииты приостановили участие в операции. Шииты являются самой многочисленной группой среди бойцов, которые 2 марта начали наступательную операцию против «Исламского государства» в этом регионе.\n\n\nНо за несколько недель интенсивность операции спала. Это произошло на фоне серьезных потерь со стороны иракских сил безопасности, напряжение внутри государства и позицию США в связи с ведущей ролью Ирана в поддержке шиитов.\n\n\nБоевики «Исламского государства» захватили Тикрит, родной город бывшего диктатора Ирака Саддама Хусейна, в июне 2014 года.\n', 'uploads/articles/irak_vlasti_zayavlyayut_ob_uspehah_v_boyah_s_islamistami_za_tikrit.jpg', 'uploads/thumbs/thumb_irak_vlasti_zayavlyayut_ob_uspehah_v_boyah_s_islamistami_za_tikrit.jpg', '', 18, '2015-03-31 12:32:19', '2015-03-31 12:32:19', '2015-03-31 12:32:18', 53),
(437, 'Из оккупированной части Донбасса выехали более 70 тысяч детей - Минобразования', 'iz_okkupirovannoj_chasti_donbassa_vyehali_bolee_70_tysyach_detej_-_minobrazovaniya', 'Более 70 тысяч детей выехали из временно оккупированных территорий Донбасса за время ведения боевых действий на востоке Украины, сообщил заместитель министра образования и науки Павел Полянский.\n\n\nВ частности, из Донецкой области выехали 46,5 тысяч, из них около 10 тысяч - в пределах самой Донецкой области.\n\n\n«До других областей Украины, также частично за границу, а эта доля незначительна, выехали с родителями около 26 тысяч детей школьного возраста и почти 7,5 тысяч дошколят», - заявил Полянский.\n\n\nВ Луганской области населенные пункты оставили свыше 26,5 тысяч детей школьного и дошкольного возраста.\n\n\n«3,5 тысячи выехали в другие регионы Луганской области. А в другие области из Луганской области уехали около 15 тысяч детей», - детализировал заместитель министра образования и науки.\n\n\nПолянский добавляет, что учебный процесс на подконтрольных украинским властям территориях происходит в обычном режиме. В частности, в этом году на освобожденных землях Донецкой области школу закончат около 9 тысяч 300 старшеклассников, а в Луганской - около 3,5 тысяч. При этом Полянский также напомнил, что украинская власть не признает начало учебного года с 1 сентября на оккупированных территориях.\n\n\nМинистерство образования и науки Украины продлило до 20 апреля срок регистрации для прохождения внешнего независимого оценивания детям с оккупированных территорий Крыма и Донбасса.\n', 'uploads/articles/iz_okkupirovannoj_chasti_donbassa_vyehali_bolee_70_tysyach_detej_-_minobrazovaniya.jpg', 'uploads/thumbs/thumb_iz_okkupirovannoj_chasti_donbassa_vyehali_bolee_70_tysyach_detej_-_minobrazovaniya.jpg', '', 18, '2015-03-31 12:32:23', '2015-03-31 12:32:23', '2015-03-31 12:32:23', 53),
(438, 'Минобороны назначило служебное расследование в отношении некоторых «айдарівців» на Луганщине', 'minoborony_naznachilo_sluzhebnoe_rassledovanie_v_otnoshenii_nekotoryh_ajdarivciv_na_luganshine', '<div>Министерство обороны назначило проведение служебного расследования относительно неправомерных действий отдельных представителей батальона &laquo;Айдар&raquo; на Луганщине. В пресс-службе ведомства отмечают, что расследование назначили после сообщений Геннадия Москаля. В Минобороны обещают, что в ближайшее время к месту дислокации подразделения отбудет группа военнослужащих с Военной службы правопорядка ВСУ В случае установления подозреваемых в совершении противоправных действий, они будут привлечены к ответственности согласно с законодательством Украины, отмечают в ведомстве. Ранее председатель Луганской областной военно-гражданской администрации Геннадий Москаль направил обращение министру обороны относительно недопустимого поведения отдельных представителей добровольческого батальона &laquo;Айдар&raquo; на Луганщине, в частности совершение драки с гражданскими.</div>', 'uploads/articles/minoborony_naznachilo_sluzhebnoe_rassledovanie_v_otnoshenii_nekotoryh_ajdarivciv_na_luganshine.jpg', 'uploads/thumbs/thumb_minoborony_naznachilo_sluzhebnoe_rassledovanie_v_otnoshenii_nekotoryh_ajdarivciv_na_luganshine.jpg', '', 18, '2015-03-31 12:32:25', '2015-03-31 14:52:12', '2015-03-31 14:52:12', 52),
(439, 'В Казахстане женщину осудили за оскорбление казахов и призывы присоединиться к России', 'v_kazahstane_zhenshinu_osudili_za_oskorblenie_kazahov_i_prizyvy_prisoedinitsya_k_rossii', '<div>Суд в Казахстане приговорил гражданку этой страны за разжигание межэтнической розни через унизительные высказывания о казахах и призывы к вхождению Казахстана в состав России. По решению суда в Алматы, Татьяна Шевцова-Валова, которая является этнической россиянкой, получила условный 4-летний срок, это значит, что она не будет арестована, если не совершит других нарушений. Как заявили следователи, в сообщениях в соцсетях женщина называла казахов &laquo;чурками&raquo; и писала, что Казахстан должен стать частью России, как Крым, который Москва аннексировала прошлого года. Аннексия Крыма и поддержка Москвой пророссийских боевиков на востоке Украины вызвали опасения относительно намерений Кремля в Казахстане, северные регионы которого населенные многочисленным русским меньшинством.</div>', 'uploads/articles/v_kazahstane_zhenshinu_osudili_za_oskorblenie_kazahov_i_prizyvy_prisoedinitsya_k_rossii.jpg', 'uploads/thumbs/thumb_v_kazahstane_zhenshinu_osudili_za_oskorblenie_kazahov_i_prizyvy_prisoedinitsya_k_rossii.jpg', '', 18, '2015-03-31 12:32:27', '2015-03-31 14:52:05', '2015-04-01 14:52:05', 52),
(440, 'Кому платят налоги промышленные гиганты Донбасса?', 'komu_platyat_nalogi_promyshlennye_giganty_donbassa_', '<div>Енакиевский металлургический завод, принадлежащий группе &laquo;Метинвест&raquo; Рината Ахметова, на прошлой неделе возобновил собственное производство на территории, контролируемой боевиками группировки &laquo;ДНР&raquo;. Существуют ли скрытые правила регулирования ведения бизнеса на оккупированных территориях? Кому вообще платят налоги такие промышленные гиганты Донбасса, как ЕМЗ? Какова роль крупного бизнеса в вооруженном конфликте на Востоке Украины? На эти вопросы искала ответы команда журналистов &laquo;Донбасс.Реалии&raquo; вместе с гостями: адвокатом из Донецка Игорем Голованем и глашатаем метдивізіону группы &laquo;Метинвест&raquo; Дмитрием Мурашко. Смотрите программу с Алексеем Мацукой вторникам и четвергам в 18:20 на телеканале &laquo;Донбасс&raquo; (повтор в 19:50) или на сайте Радио Свобода. Наш тег #donbassreal</div>', 'uploads/articles/komu_platyat_nalogi_promyshlennye_giganty_donbassa.jpg', 'uploads/thumbs/thumb_komu_platyat_nalogi_promyshlennye_giganty_donbassa.jpg', '', 18, '2015-03-31 12:34:36', '2015-04-01 16:01:09', '2015-04-01 16:01:09', 34),
(442, 'Последние новости Украины онлайн', 'na_glavnoi', '<div>\r\n<h2>Украина сегодня - новости Украины онлайн</h2>\r\n<div>Самые актуальные новости Украины, политики, экономики со всего мира. Мы постоянно держим руку на пульсе основных событий. Независимые мнения, экспертные оценки, журналистские расследования. Анализ и систематизация информационного потока. Криминал, коррупция, происшествия, изменения в экономике, новые законы. Анализ общественного мнения. Персоналии в украинской политике и органах власти. Противодействие коррупционным схемам. Правовая поддержка &ndash; советы юристов.</div>\r\n<h2>События на Украине: самая актуальная информация</h2>\r\n<div>UINP &ndash; это первый полноценно независимый новостной портал, мы не принимает чью-то сторону, не освещаем под диктовку теле- или иные события которые нужны властям. Результат нашей работы - это достоверные, последние новости Украины и России. Все желающие увидеть ситуацию по ту сторону баррикад, смогут следить за последними события на Донбассе в специальном разделе - новости днр. Также для всех читателей доступен проект русская весна, читая который, каждый будет в курсе: новостей ополчение Донбасса и новостей из ДНР и ЛНР.</div>\r\n<h2>Новости Украины за последний час: свежие сводки событий, комментарии, аналитика</h2>\r\n<div>Ukrainian independent news portal - это не просто новостной сайт, а полноценный официальный информер таких мировых издательств как bbc news и cnn news. У нас на сайте вы всегда сможете прочесть последние новости от bbc и cnn , на русском языке.&nbsp;<br />Благодаря нашим независимым полевым журналистам всегда освещены такие вопросы, как: новости АТО, война на Украине, новости новороссии, карта АТО.<br />Для україномовних читачів є розділ, в якому вони знайдуть найсвіжіші новини в Україні сьогодні та новини світу. Вы сможете ознакомиться со свежими постановлениями верховной рады и прочитать свод действующих законов Украины.</div>\r\n<h2>Свежие новости Украины: вся правда украинских событий, факты, мнения</h2>\r\n<div>Для полноценного информирования Украинцев про курс доллара, был создан специальный сервис в котором вы найдёте актуальные &ndash; честные курсы валют, а также долгосрочный прогноз по курсу доллара в Украине.<br />Жители Крыма всегда останутся в курсе событий посетив рубрики : - новости Крыма и новости России и найдут там все актуальные события за последние сутки.<br />Вся Украинская правда на одном портале, без цензуры и запретов.</div>\r\n</div>', '', '', '', 1, '2015-04-03 10:51:49', '2015-04-03 10:51:49', '2015-04-03 10:51:49', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `slc_comments`
--

CREATE TABLE IF NOT EXISTS `slc_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `table` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `slc_comments`
--

INSERT INTO `slc_comments` (`id`, `content`, `user_id`, `table`, `item_id`, `created_at`, `updated_at`) VALUES
(2, 'admin', 1, 'articles', 130, '2015-02-26 07:21:17', '2015-02-26 07:21:17'),
(3, 'asd', 1, 'articles', 130, '2015-02-28 10:03:31', '2015-02-28 10:03:31'),
(4, 'asda', 1, 'articles', 73, '2015-03-03 06:28:59', '2015-03-03 06:28:59'),
(5, 'sdads', 1, 'articles', 73, '2015-03-03 06:29:36', '2015-03-03 06:29:36'),
(6, 'asdasd asdas', 1, 'articles', 156, '2015-03-03 06:37:48', '2015-03-03 06:37:48'),
(7, 'sad asdasd', 1, 'articles', 154, '2015-03-03 06:43:58', '2015-03-03 06:43:58'),
(9, 'asdasds', 1, 'articles', 85, '2015-03-03 06:48:09', '2015-03-03 06:48:09'),
(10, 'asdasd', 1, 'articles', 146, '2015-03-03 08:04:34', '2015-03-03 08:04:34'),
(11, 'cool', 1, 'articles', 39, '2015-03-03 08:05:33', '2015-03-03 08:05:33');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_folders`
--

CREATE TABLE IF NOT EXISTS `slc_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `alias` varchar(256) NOT NULL,
  `parent_folder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `path` text NOT NULL,
  `text` text NOT NULL,
  `undeletable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Дамп данных таблицы `slc_folders`
--

INSERT INTO `slc_folders` (`id`, `title`, `alias`, `parent_folder_id`, `user_id`, `created_at`, `updated_at`, `path`, `text`, `undeletable`) VALUES
(34, 'Новости', 'news', 0, 1, '2015-01-14 11:18:48', '2015-02-18 10:50:41', 'news', '<div>Текст для папки новости</div>', 0),
(48, 'Конфликты', 'conflicts', 0, 1, '2015-01-23 12:02:28', '2015-02-25 04:13:02', 'conflicts', '<div>&nbsp;</div>', 0),
(49, 'Позиция', 'position', 0, 1, '2015-01-23 12:02:47', '2015-01-31 11:51:49', 'position', '', 0),
(50, 'Мнение', 'opinion', 0, 1, '2015-01-23 12:03:09', '2015-01-31 11:51:58', 'opinion', '', 0),
(51, 'Видео', 'video', 0, 1, '2015-01-23 12:03:27', '2015-01-31 10:44:10', 'video', '', 1),
(52, 'Важные новости', 'important_news', 0, 1, '2015-01-31 10:43:10', '2015-01-31 10:44:59', 'important_news', '', 1),
(53, 'Итоги недели', 'weekly_news', 0, 1, '2015-01-31 10:46:01', '2015-01-31 10:46:01', 'weekly_news', '', 1),
(54, 'Происшествия', 'accident', 0, 1, '2015-01-31 10:47:29', '2015-01-31 10:47:29', 'accident', '', 1),
(58, 'Новости в мире', 'world_news', 0, 1, '2015-02-17 06:29:43', '2015-02-17 06:40:55', 'world_news', '<div>&nbsp;</div>', 1),
(60, 'Законы Украины', 'zakonu_ukrainu', 0, 1, '2015-02-24 07:09:14', '2015-02-24 18:29:10', 'zakonu_ukraini', '<div>Законы Украины<br /><br />Конституция Украины<br /><br />Закон про Кабінет Міністрів України<br /><br />Закон України Про інформацію<br /><br />Правові засади діяльності журналістів в Україні<br /><br />Про засади запобігання і протидії корупції<br /><br />Про внесення змін до деяких законодавчих актів України щодо відповідальності за корупційні правопорушення</div>\r\n<div>X</div>', 0),
(61, 'закон о земле', 'zakon_o_zemle', 60, 1, '2015-03-12 12:56:31', '2015-03-12 12:56:31', 'zakonu_ukrainu/zakon_o_zemle', '<div>закон о земле</div>', 0),
(62, 'закон о воде', 'zakon_o_vode', 60, 1, '2015-03-12 13:15:32', '2015-03-12 13:15:32', 'zakonu_ukrainu/zakon_o_vode', '<div>закон о воде текст</div>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `slc_menus`
--

CREATE TABLE IF NOT EXISTS `slc_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `class` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `slc_menus`
--

INSERT INTO `slc_menus` (`id`, `name`, `content`, `class`, `created_at`, `updated_at`) VALUES
(10, 'top', '<ul><li style=""><a href="/">Главная</a></li><li><a href="/about">О нас</a></li><li><a href="/contacts">Контакты</a></li></ul>', '', '2014-09-08 01:33:59', '2015-01-14 10:47:56'),
(12, 'categories', '<ul><li style=""><a href="/news">Новости</a></li><li style=""><a href="/conflicts">Конфликты</a></li><li style=""><a href="/position">Позиция</a></li><li style=""><a href="/news/predstavlen_novyj_kompaktnyj_kompyuternyj_korpus_aerocool_gt_rs">Мнение</a></li><li style=""><a href="/video">Видео</a></li><li style=""><a href="/zakonu_ukrainu">Законы Украины</a></li><li><a href="/arhiv">Архив</a></li></ul>', '', '2015-01-14 11:27:28', '2015-03-17 13:09:39'),
(13, 'bottom', '<ul><li><a href="#">Menu item title</a></li></ul>', '', '2015-03-23 11:23:17', '2015-03-31 02:08:19');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_migrations`
--

CREATE TABLE IF NOT EXISTS `slc_migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `slc_parser`
--

CREATE TABLE IF NOT EXISTS `slc_parser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `translate` tinyint(1) NOT NULL,
  `only_with_images` tinyint(4) NOT NULL,
  `bufferapp` tinyint(4) NOT NULL,
  `remove_links` tinyint(4) NOT NULL,
  `vk` tinyint(4) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disabled` tinyint(4) NOT NULL,
  `min_chars` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `slc_parser`
--

INSERT INTO `slc_parser` (`id`, `url`, `author`, `publish`, `translate`, `only_with_images`, `bufferapp`, `remove_links`, `vk`, `folder_id`, `created_at`, `updated_at`, `disabled`, `min_chars`) VALUES
(2, 'http://www.radiosvoboda.org/api/epiqq', 18, 1, 1, 1, 0, 1, 0, 52, '2015-03-28 05:54:20', '2015-03-31 14:32:14', 0, 0),
(3, 'http://antikor.com.ua/rss.xml', 1, 1, 1, 1, 0, 1, 0, 52, '2015-03-28 10:22:41', '2015-03-31 12:31:47', 0, 750),
(4, 'http://www.charter97.org/ru/rss/all/', 1, 1, 1, 1, 0, 1, 0, 34, '2015-03-31 12:21:52', '2015-03-31 12:31:22', 0, 750),
(5, 'http://gazeta.ua/rss', 28, 1, 1, 1, 0, 1, 0, 52, '2015-03-31 12:34:30', '2015-03-31 12:34:30', 0, 750);

-- --------------------------------------------------------

--
-- Структура таблицы `slc_roles`
--

CREATE TABLE IF NOT EXISTS `slc_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `slc_roles`
--

INSERT INTO `slc_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2014-04-08 08:29:53', '2014-04-08 08:29:53'),
(2, 'moderator', '2014-04-08 08:29:53', '2014-04-08 08:29:53'),
(3, 'user', '2014-04-08 08:29:53', '2014-04-08 08:29:53');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_seo`
--

CREATE TABLE IF NOT EXISTS `slc_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `img_alt` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `img_title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `table` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `slc_seo`
--

INSERT INTO `slc_seo` (`id`, `url`, `title`, `keywords`, `description`, `img_alt`, `img_title`, `table`, `item_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'asd2', 'asd2', '', '', 'articles', 32, '2015-02-10 07:16:43', '2015-02-10 08:54:32'),
(2, 'http://slc.appteka.cc', 'Главная', 'front keys', 'front desc', '', '', '', 0, '2015-02-10 08:35:09', '2015-04-03 11:48:56'),
(4, '', '', 'Creative Uses', 'Creative Uses', 'Creative Uses', 'Creative Uses', 'articles', 33, '2015-02-10 09:08:22', '2015-02-10 09:51:10'),
(9, '', '', '', '', '', '', 'articles', 75, '2015-02-18 10:03:46', '2015-02-18 10:04:33'),
(12, '', '', '', '', '', '', 'articles', 156, '2015-03-09 08:38:18', '2015-03-09 09:32:40'),
(16, '', '', 'asd', 'asd', '', '', 'folders', 34, '2015-04-01 15:29:58', '2015-04-01 16:14:35'),
(17, '', '', '', '', '', '', 'articles', 440, '2015-04-01 15:47:06', '2015-04-03 12:24:15');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_settings`
--

CREATE TABLE IF NOT EXISTS `slc_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parser_busy` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `slc_settings`
--

INSERT INTO `slc_settings` (`id`, `parser_busy`, `created_at`, `updated_at`) VALUES
(1, 0, '0000-00-00 00:00:00', '2015-03-31 07:22:46');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_tags`
--

CREATE TABLE IF NOT EXISTS `slc_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=119 ;

--
-- Дамп данных таблицы `slc_tags`
--

INSERT INTO `slc_tags` (`id`, `name`, `created_at`) VALUES
(4, 'lenovo', '2015-02-26 13:32:04'),
(5, 'bankir', '2015-03-02 11:50:46'),
(6, 'gontareva', '2015-03-02 11:50:46'),
(7, 'Яценюк', '2015-03-02 11:59:26'),
(8, 'налоги', '2015-03-02 11:59:26'),
(9, 'лекарства', '2015-03-02 11:59:26'),
(10, 'зарплата', '2015-03-02 11:59:26'),
(11, 'ГП ЗОД', '2015-03-02 12:01:20'),
(12, 'Аэропорт Борисполь', '2015-03-02 12:01:20'),
(13, 'Жулинская Наталья Александровна', '2015-03-02 12:01:20'),
(14, 'Ефремов', '2015-03-02 12:02:17'),
(15, 'Колесников', '2015-03-02 12:02:17'),
(16, 'Рахат Алиев', '2015-03-02 12:04:02'),
(17, 'Нурсултан Назарбаев', '2015-03-02 12:04:02'),
(18, 'кредит', '2015-03-02 12:05:22'),
(19, 'кредиты', '2015-03-02 12:05:22'),
(20, 'банк', '2015-03-02 12:05:22'),
(21, 'Валерия Гонтарева', '2015-03-02 12:06:38'),
(22, 'Гонтарева', '2015-03-02 12:06:38'),
(23, 'Коррупция', '2015-03-02 12:06:38'),
(24, 'НБУ', '2015-03-02 12:06:38'),
(25, 'гривня', '2015-03-02 12:08:27'),
(26, 'гривна', '2015-03-02 12:08:27'),
(27, 'девольвация', '2015-03-02 12:08:27'),
(28, 'инфляция', '2015-03-02 12:08:27'),
(29, 'курс', '2015-03-02 12:10:47'),
(30, 'экономика', '2015-03-02 12:10:47'),
(31, 'повышение курса', '2015-03-02 12:10:47'),
(32, 'яременко', '2015-03-02 12:10:47'),
(34, 'Черновецкий', '2015-03-02 12:11:46'),
(35, 'Черновецький', '2015-03-02 12:11:46'),
(36, 'Ресторан', '2015-03-02 12:11:46'),
(37, 'Луценко', '2015-03-02 12:13:17'),
(38, 'Верховная рада', '2015-03-02 12:13:17'),
(39, 'шокин', '2015-03-02 12:13:17'),
(40, 'теракт', '2015-03-02 12:15:31'),
(41, 'Харьков', '2015-03-02 12:15:31'),
(42, 'Кернес', '2015-03-02 12:15:31'),
(43, 'Богословская', '2015-03-02 12:15:31'),
(44, 'Взятка', '2015-03-02 12:16:44'),
(46, 'Игорь Сало', '2015-03-02 12:21:23'),
(47, 'миллиардер', '2015-03-02 12:21:23'),
(48, 'теневой бизнес', '2015-03-02 12:21:23'),
(49, 'гражданство', '2015-03-02 12:23:45'),
(50, 'венгрия', '2015-03-02 12:23:45'),
(51, 'происшествия', '2015-03-02 12:24:55'),
(52, 'криминал', '2015-03-02 12:24:55'),
(53, 'мошенничество', '2015-03-02 12:24:55'),
(54, 'мошенница', '2015-03-02 12:24:55'),
(55, 'Днепропетровская область', '2015-03-02 12:24:55'),
(56, 'уклонение от мобилизации', '2015-03-02 12:24:55'),
(57, 'СБУ', '2015-03-02 12:27:18'),
(58, 'Валентин Наливайченко', '2015-03-02 12:27:18'),
(59, 'взрыв', '2015-03-02 12:27:18'),
(60, 'взрыв в Харькове', '2015-03-02 12:27:18'),
(61, 'Оплот', '2015-03-02 12:27:18'),
(62, 'Рыжий', '2015-03-02 12:27:18'),
(65, 'enigma', '2015-03-03 09:19:29'),
(103, 'Архив', '2015-03-17 15:09:20'),
(117, 'Джейми Дорнан', '2015-03-19 15:09:14'),
(118, 'aasd', '2015-03-29 12:15:58');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_tagstoelement`
--

CREATE TABLE IF NOT EXISTS `slc_tagstoelement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `table` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=119 ;

--
-- Дамп данных таблицы `slc_tagstoelement`
--

INSERT INTO `slc_tagstoelement` (`id`, `tag_id`, `table`, `element_id`, `created_at`) VALUES
(4, 4, 'articles', 130, '2015-02-26 13:32:04'),
(5, 5, 'articles', 140, '2015-03-02 11:50:46'),
(6, 6, 'articles', 140, '2015-03-02 11:50:46'),
(7, 10, 'articles', 141, '2015-03-02 11:59:26'),
(8, 9, 'articles', 141, '2015-03-02 11:59:26'),
(9, 8, 'articles', 141, '2015-03-02 11:59:26'),
(10, 7, 'articles', 141, '2015-03-02 11:59:26'),
(11, 12, 'articles', 142, '2015-03-02 12:01:20'),
(12, 11, 'articles', 142, '2015-03-02 12:01:20'),
(13, 13, 'articles', 142, '2015-03-02 12:01:20'),
(14, 14, 'articles', 143, '2015-03-02 12:02:17'),
(15, 15, 'articles', 143, '2015-03-02 12:02:17'),
(18, 20, 'articles', 145, '2015-03-02 12:05:22'),
(19, 18, 'articles', 145, '2015-03-02 12:05:22'),
(20, 19, 'articles', 145, '2015-03-02 12:05:22'),
(21, 21, 'articles', 146, '2015-03-02 12:06:38'),
(22, 22, 'articles', 146, '2015-03-02 12:06:38'),
(23, 23, 'articles', 146, '2015-03-02 12:06:38'),
(24, 24, 'articles', 146, '2015-03-02 12:06:38'),
(34, 36, 'articles', 149, '2015-03-02 12:11:46'),
(35, 34, 'articles', 149, '2015-03-02 12:11:46'),
(36, 35, 'articles', 149, '2015-03-02 12:11:46'),
(37, 38, 'articles', 150, '2015-03-02 12:13:17'),
(38, 37, 'articles', 150, '2015-03-02 12:13:17'),
(39, 39, 'articles', 150, '2015-03-02 12:13:17'),
(40, 43, 'articles', 151, '2015-03-02 12:15:31'),
(41, 42, 'articles', 151, '2015-03-02 12:15:31'),
(42, 40, 'articles', 151, '2015-03-02 12:15:31'),
(43, 41, 'articles', 151, '2015-03-02 12:15:31'),
(44, 44, 'articles', 152, '2015-03-02 12:16:44'),
(45, 23, 'articles', 152, '2015-03-02 12:16:44'),
(46, 46, 'articles', 153, '2015-03-02 12:21:23'),
(47, 47, 'articles', 153, '2015-03-02 12:21:23'),
(48, 48, 'articles', 153, '2015-03-02 12:21:23'),
(51, 55, 'articles', 155, '2015-03-02 12:24:55'),
(52, 52, 'articles', 155, '2015-03-02 12:24:55'),
(53, 54, 'articles', 155, '2015-03-02 12:24:55'),
(54, 53, 'articles', 155, '2015-03-02 12:24:55'),
(55, 51, 'articles', 155, '2015-03-02 12:24:55'),
(56, 56, 'articles', 155, '2015-03-02 12:24:55'),
(65, 65, 'articles', 39, '2015-03-03 09:19:29'),
(82, 58, 'articles', 156, '2015-03-09 10:58:49'),
(83, 59, 'articles', 156, '2015-03-09 10:58:49'),
(84, 60, 'articles', 156, '2015-03-09 10:58:49'),
(85, 61, 'articles', 156, '2015-03-09 10:58:49'),
(86, 51, 'articles', 156, '2015-03-09 10:58:49'),
(87, 62, 'articles', 156, '2015-03-09 10:58:49'),
(88, 57, 'articles', 156, '2015-03-09 10:58:49'),
(89, 40, 'articles', 156, '2015-03-09 10:58:49'),
(90, 17, 'articles', 144, '2015-03-12 13:54:56'),
(91, 16, 'articles', 144, '2015-03-12 13:54:56'),
(92, 29, 'articles', 148, '2015-03-12 13:55:13'),
(93, 24, 'articles', 148, '2015-03-12 13:55:13'),
(94, 31, 'articles', 148, '2015-03-12 13:55:13'),
(95, 30, 'articles', 148, '2015-03-12 13:55:13'),
(96, 32, 'articles', 148, '2015-03-12 13:55:13'),
(97, 26, 'articles', 147, '2015-03-12 13:55:35'),
(98, 25, 'articles', 147, '2015-03-12 13:55:35'),
(99, 27, 'articles', 147, '2015-03-12 13:55:35'),
(100, 28, 'articles', 147, '2015-03-12 13:55:35'),
(101, 50, 'articles', 154, '2015-03-12 13:55:53'),
(102, 49, 'articles', 154, '2015-03-12 13:55:53'),
(117, 117, 'articles', 186, '2015-03-19 15:09:14'),
(118, 118, 'articles', 195, '2015-03-29 12:15:58');

-- --------------------------------------------------------

--
-- Структура таблицы `slc_users`
--

CREATE TABLE IF NOT EXISTS `slc_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `slc_users`
--

INSERT INTO `slc_users` (`id`, `email`, `password`, `created_at`, `updated_at`, `username`, `role_id`, `remember_token`) VALUES
(1, 'admin@admin.com', '$2y$10$EbnEfW9ELfLawis0S7hEuuTYPVM8J1HvSDAERyGTjD1PiFWtdIfnW', '2014-04-04 03:23:36', '2015-03-30 02:53:48', 'admin', '1', 'ZgXod1XoF2MIxQUaliUOKcAcAt38g1fFMV5MTVv27IckxRi9Jp9GYxeF2Pzl'),
(18, 'kucherovatanusik@gmail.com', '$2y$10$0YfrtqtZF9S5njzQwlOgxO00CSknY2Z1R/gMocFw2B8Ppp9eEqN..', '2015-02-24 07:41:08', '2015-02-24 07:44:14', 'Belka', '1', NULL),
(28, 'asd@asd.com', '$2y$10$/IIT8FkdrDVemX3Nv0GldOX7N9ywnYp9/SR1Mbjlsk9wdR8EjypRm', '2015-02-26 07:18:43', '2015-02-26 07:18:43', 'asd', '3', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
