--------------------------------------------------------------------------------
-- Name: Customers
-- Copyright (c)2012, 2023 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown 
-- at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>50493436446232566405
,p_default_application_id=>211630
,p_default_id_offset=>59115493696496360595
,p_default_owner=>'WKSP_CODIX'
);
end;
/
 
prompt APPLICATION 211630 - Customers
--
-- Application Export:
--   Application:     211630
--   Name:            Customers
--   Date and Time:   11:09 Saturday September 2, 2023
--   Exported By:     CODIX.LLC@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 89052362035329393779
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/ai_codix_translator
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(89052362035329393779)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'AI.CODIX.TRANSLATOR'
,p_display_name=>'Translator Widget'
,p_category=>'INIT'
,p_javascript_file_urls=>'#PLUGIN_FILES#script#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#style#MIN#.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_render_plugin (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin)',
'  return apex_plugin.t_dynamic_action_render_result',
'is',
'  v_return apex_plugin.t_dynamic_action_render_result;',
'begin',
'  -- return',
'  v_return.javascript_function := ''transalate_fun.init'';',
'  v_return.attribute_01        := p_dynamic_action.attribute_01; -- TRANSLATE FROM',
'  v_return.attribute_02        := p_dynamic_action.attribute_02; -- TRANSLATE TO',
'  v_return.attribute_03        := p_dynamic_action.attribute_03; -- WIDGET LOOK',
'  v_return.attribute_04        := p_dynamic_action.attribute_04; -- AUTO SWITCH TO BROWSER LANGUAGE',
'  v_return.attribute_05        := p_dynamic_action.attribute_05; -- POSITION',
' ',
'  return v_return;',
'end;'))
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'f_render_plugin'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Dynamic Action Plugin that enables you translate your application to any language using google translate'
,p_version_identifier=>'1.0.0'
,p_about_url=>'https://codix.ai/'
,p_files_version=>169
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(59553373073421520124)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'TRANSLATE FROM'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'en'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554151237571767951)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>10
,p_display_value=>'English'
,p_return_value=>'en'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554739903823525779)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>20
,p_display_value=>'Arabic'
,p_return_value=>'ar'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554754775435526694)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>30
,p_display_value=>'Bulgarian'
,p_return_value=>'bg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554771099445527870)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>40
,p_display_value=>'Chinese (Simplified)'
,p_return_value=>'zh-CN'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554951354846772840)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>50
,p_display_value=>'Chinese (Traditional)'
,p_return_value=>'zh-TW'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554806859592531136)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>60
,p_display_value=>'Croatian'
,p_return_value=>'hr'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554814894732532074)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>70
,p_display_value=>'Czech'
,p_return_value=>'cs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554979733548775821)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>80
,p_display_value=>'Danish'
,p_return_value=>'da'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554819614562533671)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>90
,p_display_value=>'Dutch'
,p_return_value=>'nl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554992008540778550)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>100
,p_display_value=>'Finnish'
,p_return_value=>'fi'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554999781779779042)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>110
,p_display_value=>'French'
,p_return_value=>'fr'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554835963097537822)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>120
,p_display_value=>'German'
,p_return_value=>'de'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554842981637540091)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>130
,p_display_value=>'Greek'
,p_return_value=>'el'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59554854988860541767)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>140
,p_display_value=>'Hindi'
,p_return_value=>'hi'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593171108054231744)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>150
,p_display_value=>'Italian'
,p_return_value=>'it'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593198537780232838)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>160
,p_display_value=>'Japanese'
,p_return_value=>'ja'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593726746931234457)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>170
,p_display_value=>'Korean'
,p_return_value=>'ko'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593445815327478710)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>180
,p_display_value=>'Norwegian'
,p_return_value=>'no'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593453617969480000)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>190
,p_display_value=>'Polish'
,p_return_value=>'pl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593747505902237628)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>200
,p_display_value=>'Portuguese'
,p_return_value=>'pt'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594484357637481865)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>210
,p_display_value=>'Romanian'
,p_return_value=>'ro'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593756435640239566)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>220
,p_display_value=>'Russian'
,p_return_value=>'ru'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594500915797484159)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>230
,p_display_value=>'Spanish'
,p_return_value=>'es'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594515239990485496)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>240
,p_display_value=>'Swedish'
,p_return_value=>'sv'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593780149927243480)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>250
,p_display_value=>'Catalan'
,p_return_value=>'ca'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594539094901488201)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>260
,p_display_value=>'Filipino'
,p_return_value=>'tl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594558346338489054)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>270
,p_display_value=>'Hebrew'
,p_return_value=>'iw'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594592679861490200)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>280
,p_display_value=>'Indonesian'
,p_return_value=>'id'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593871090607247768)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>290
,p_display_value=>'Latvian'
,p_return_value=>'lv'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59593891669393249522)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>300
,p_display_value=>'Lithuanian'
,p_return_value=>'lt'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594711334996251600)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>310
,p_display_value=>'Serbian'
,p_return_value=>'sr'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594647544804495832)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>320
,p_display_value=>'Slovak'
,p_return_value=>'sk'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594654787858496794)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>330
,p_display_value=>'Slovenian'
,p_return_value=>'sl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594747779751254414)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>340
,p_display_value=>'Ukrainian'
,p_return_value=>'uk'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594755634736255856)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>350
,p_display_value=>'Vietnamese'
,p_return_value=>'vi'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594763690642256747)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>360
,p_display_value=>'Albanian'
,p_return_value=>'sq'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594690976216501230)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>370
,p_display_value=>'Estonian'
,p_return_value=>'et'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594952450137505051)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>380
,p_display_value=>'Galician'
,p_return_value=>'gl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594961794557506177)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>390
,p_display_value=>'Hungarian'
,p_return_value=>'hu'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594978742930508136)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>400
,p_display_value=>'Maltese'
,p_return_value=>'mt'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594857463977267176)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>410
,p_display_value=>'Thai'
,p_return_value=>'th'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59594863937470268026)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>420
,p_display_value=>'Turkish'
,p_return_value=>'tr'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595021753262514225)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>430
,p_display_value=>'Persian'
,p_return_value=>'fa'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595047625793517981)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>440
,p_display_value=>'Afrikaans'
,p_return_value=>'af'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595056014843518883)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>450
,p_display_value=>'Malay'
,p_return_value=>'ms'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595066334321520387)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>460
,p_display_value=>'Swahili'
,p_return_value=>'sw'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595072381238521558)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>470
,p_display_value=>'Irish'
,p_return_value=>'ga'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595081925950522518)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>480
,p_display_value=>'Welsh'
,p_return_value=>'cy'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595467565124280146)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>490
,p_display_value=>'Belarusian'
,p_return_value=>'be'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595100343077524394)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>500
,p_display_value=>'Icelandic'
,p_return_value=>'is'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595479654644282161)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>510
,p_display_value=>'Macedonian'
,p_return_value=>'mk'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595491375930284055)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>520
,p_display_value=>'Yiddish'
,p_return_value=>'yi'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595538875272528260)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>530
,p_display_value=>'Armenian'
,p_return_value=>'hy'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595501659461285527)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>540
,p_display_value=>'Azerbaijani'
,p_return_value=>'az'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595548794590529496)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>550
,p_display_value=>'Basque'
,p_return_value=>'eu'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595509981034287038)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>560
,p_display_value=>'Georgian'
,p_return_value=>'ka'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595719295047287837)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>570
,p_display_value=>'Haitian Creole'
,p_return_value=>'ht'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595567056905531918)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>580
,p_display_value=>'Urdu'
,p_return_value=>'ur'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596111058073533131)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>590
,p_display_value=>'Bengali'
,p_return_value=>'bn'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596140922773533648)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>600
,p_display_value=>'Bosnian'
,p_return_value=>'bs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596303817853534551)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>610
,p_display_value=>'Cebuano'
,p_return_value=>'ceb'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595744911784291895)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>620
,p_display_value=>'Esperanto'
,p_return_value=>'eo'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595750735645292927)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>630
,p_display_value=>'Gujarati'
,p_return_value=>'gu'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595759716925293945)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>640
,p_display_value=>'Hausa'
,p_return_value=>'ha'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596339958734538346)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>650
,p_display_value=>'Hmong'
,p_return_value=>'hmn'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595777353401295998)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>660
,p_display_value=>'Igbo'
,p_return_value=>'ig'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596352321682539904)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>670
,p_display_value=>'Javanese'
,p_return_value=>'jw'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595788538566297346)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>680
,p_display_value=>'Kannada'
,p_return_value=>'kn'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596371656999541811)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>690
,p_display_value=>'Khmer'
,p_return_value=>'km'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596376256028542404)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>700
,p_display_value=>'Lao'
,p_return_value=>'lo'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596396952685543559)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>710
,p_display_value=>'Latin'
,p_return_value=>'la'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595821370065300877)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>720
,p_display_value=>'Maori'
,p_return_value=>'mi'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596403785936544831)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>730
,p_display_value=>'Marathi'
,p_return_value=>'mr'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59595829663938302306)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>740
,p_display_value=>'Mongolian'
,p_return_value=>'mn'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596417283549546991)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>750
,p_display_value=>'Nepali'
,p_return_value=>'ne'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596419157594547543)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>760
,p_display_value=>'Punjabi'
,p_return_value=>'pa'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596429575521548244)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>770
,p_display_value=>'Somali'
,p_return_value=>'so'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596453181526548941)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>780
,p_display_value=>'Tamil'
,p_return_value=>'ta'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596479869902550252)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>790
,p_display_value=>'Telugu'
,p_return_value=>'te'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596495465075550844)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>800
,p_display_value=>'Yoruba'
,p_return_value=>'yo'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59596509874486551653)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>810
,p_display_value=>'Zulu'
,p_return_value=>'zu'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597074362846309160)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>820
,p_display_value=>'Myanmar (Burmese)'
,p_return_value=>'my'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597124752938553038)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>830
,p_display_value=>'Chichewa'
,p_return_value=>'ny'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597080545865310393)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>840
,p_display_value=>'Kazakh'
,p_return_value=>'kk'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597086914957311377)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>850
,p_display_value=>'Malagasy'
,p_return_value=>'mg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597170649505555422)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>860
,p_display_value=>'Malayalam'
,p_return_value=>'ml'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597103961289313076)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>870
,p_display_value=>'Sinhala'
,p_return_value=>'si'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597311521959313919)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>880
,p_display_value=>'Sesotho'
,p_return_value=>'st'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597223266215558777)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>890
,p_display_value=>'Sudanese'
,p_return_value=>'su'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597325707010316244)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>900
,p_display_value=>'Tajik'
,p_return_value=>'tg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597243594929560634)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>910
,p_display_value=>'Uzbek'
,p_return_value=>'uz'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597349057414318108)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>920
,p_display_value=>'Amharic'
,p_return_value=>'am'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597352803165318756)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>930
,p_display_value=>'Corsican'
,p_return_value=>'co'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597359316931319594)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>940
,p_display_value=>'Hawaiian'
,p_return_value=>'haw'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597368824005320365)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>950
,p_display_value=>'Kurdish (Kurmanji)'
,p_return_value=>'ku'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597735682490564369)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>960
,p_display_value=>'Kyrgyz'
,p_return_value=>'ky'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597743365574565149)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>970
,p_display_value=>'Luxembourgish'
,p_return_value=>'lb'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597783435108566335)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>980
,p_display_value=>'Pashto'
,p_return_value=>'ps'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597794685162567110)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>990
,p_display_value=>'Samoan'
,p_return_value=>'sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597800539739567761)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>1000
,p_display_value=>'Scottish Gaelic'
,p_return_value=>'gd'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597808622480568358)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>1010
,p_display_value=>'Shona'
,p_return_value=>'sn'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59597849061114569482)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>1020
,p_display_value=>'Sindhi'
,p_return_value=>'sd'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59598204159716326830)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>1030
,p_display_value=>'Frisian'
,p_return_value=>'fy'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59598210189104327567)
,p_plugin_attribute_id=>wwv_flow_imp.id(59553373073421520124)
,p_display_sequence=>1040
,p_display_value=>'Xhosa'
,p_return_value=>'xh'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(59561125314110702229)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'TRANSLATE TO'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"hr","ur","ar","ky"',
'<br>',
'Language list',
'<br>',
'  ',
'  en => English <br>',
'  ar => Arabic <br>',
'  bg => Bulgarian <br>',
'  zh-CN => Chinese (Simplified) <br>',
'  zh-TW => Chinese (Traditional) <br>',
'  hr => Croatian <br>',
'  cs => Czech <br>',
'  da => Danish <br>',
'  nl => Dutch <br>',
'  fi => Finnish <br>',
'  fr => French <br>',
'  de => German <br>',
'  el => Greek <br>',
'  hi => Hindi <br>',
'  it => Italian <br>',
'  ja => Japanese <br>',
'  ko => Korean <br>',
'  no => Norwegian <br>',
'  pl => Polish <br>',
'  pt => Portuguese <br>',
'  ro => Romanian <br>',
'  ru => Russian <br>',
'  es => Spanish <br>',
'  sv => Swedish <br>',
'  ca => Catalan <br>',
'  tl => Filipino <br>',
'  iw => Hebrew <br>',
'  id => Indonesian <br>',
'  lv => Latvian <br>',
'  lt => Lithuanian <br>',
'  sr => Serbian <br>',
'  sk => Slovak <br>',
'  sl => Slovenian <br>',
'  uk => Ukrainian <br>',
'  vi => Vietnamese <br>',
'  sq => Albanian <br>',
'  et => Estonian <br>',
'  gl => Galician <br>',
'  hu => Hungarian <br>',
'  mt => Maltese <br>',
'  th => Thai <br>',
'  tr => Turkish <br>',
'  fa => Persian <br>',
'  af => Afrikaans <br>',
'  ms => Malay <br>',
'  sw => Swahili <br>',
'  ga => Irish <br>',
'  cy => Welsh <br>',
'  be => Belarusian <br>',
'  is => Icelandic <br>',
'  mk => Macedonian <br>',
'  yi => Yiddish <br>',
'  hy => Armenian <br>',
'  az => Azerbaijani <br>',
'  eu => Basque <br>',
'  ka => Georgian <br>',
'  ht => Haitian Creole <br>',
'  ur => Urdu <br>',
'  bn => Bengali <br>',
'  bs => Bosnian <br>',
'  ceb => Cebuano <br>',
'  eo => Esperanto <br>',
'  gu => Gujarati <br>',
'  ha => Hausa <br>',
'  hmn => Hmong <br>',
'  ig => Igbo <br>',
'  jw => Javanese <br>',
'  kn => Kannada <br>',
'  km => Khmer <br>',
'  lo => Lao <br>',
'  la => Latin <br>',
'  mi => Maori <br>',
'  mr => Marathi <br>',
'  mn => Mongolian <br>',
'  ne => Nepali <br>',
'  pa => Punjabi <br>',
'  so => Somali <br>',
'  ta => Tamil <br>',
'  te => Telugu <br>',
'  yo => Yoruba <br>',
'  zu => Zulu <br>',
'  my => Myanmar (Burmese) <br>',
'  ny => Chichewa <br>',
'  kk => Kazakh <br>',
'  mg => Malagasy <br>',
'  ml => Malayalam <br>',
'  si => Sinhala <br>',
'  st => Sesotho <br>',
'  su => Sudanese <br>',
'  tg => Tajik <br>',
'  uz => Uzbek <br>',
'  am => Amharic <br>',
'  co => Corsican <br>',
'  haw => Hawaiian <br>',
'  ku => Kurdish (Kurmanji) <br>',
'  ky => Kyrgyz <br>',
'  lb => Luxembourgish <br>',
'  ps => Pashto <br>',
'  sm => Samoan <br>',
'  gd => Scottish Gaelic <br>',
'  sn => Shona <br>',
'  sd => Sindhi <br>',
'  fy => Frisian <br>',
'  xh => Xhosa <br>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'chose the language code ',
'"en","xh","zh-CN","zh-TW","bg","hr","ur","ar","ky","fy","sd","co","sn","haw","gd","ta","sm","lo","ps","ceb","ne","cs","da","fi","nl","fr","de","el","hi","it","ja","ko","no","pl","pt","ro","ru","es","sv","ca","tl","iw","id","lv","lt","sr","sk","sl","u'
||'k","vi","sq","et","gl","hu","mt","th","tr","fa","af","ms","sw","ga","cy","be","is","mk","yi","hy","az","eu","ka","ht","bn","bs","eo","gu","ha","hmn","ig","jw","kn","km","mr","ny","my","ml","mg","si","zu","te","la","mi","mn","pa","so","yo","kk","st","'
||'su","tg","uz","am","ku","lb"'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(59562774863306764529)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'WIDGET LOOK'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'popup'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563374907198008731)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>10
,p_display_value=>'Float'
,p_return_value=>'float'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59562812262610766661)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>20
,p_display_value=>'Nice dropdown with flags'
,p_return_value=>'dropdown_with_flags'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59562827357674767613)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>30
,p_display_value=>'Flags and dropdown'
,p_return_value=>'flags_dropdown'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563438744557011900)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>40
,p_display_value=>'Dropdown'
,p_return_value=>'dropdown'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563443245135012884)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>50
,p_display_value=>'Flags'
,p_return_value=>'flags'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563446703943014421)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>60
,p_display_value=>'Flags with language name'
,p_return_value=>'flags_name'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59562844332433771985)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>70
,p_display_value=>'Flags with language code'
,p_return_value=>'flags_code'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563455052642016392)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>80
,p_display_value=>'Language names'
,p_return_value=>'lang_names'
);
end;
/
begin
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563458246438018086)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>90
,p_display_value=>'Language codes'
,p_return_value=>'lang_codes'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563461348023018947)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>100
,p_display_value=>'Globe'
,p_return_value=>'globe'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59563465558986019867)
,p_plugin_attribute_id=>wwv_flow_imp.id(59562774863306764529)
,p_display_sequence=>110
,p_display_value=>'Popup'
,p_return_value=>'popup'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(59564124641359786230)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'AUTO SWITCH TO BROWSER LANGUAGE'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(59564765047171032639)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'POSITION'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'inline'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59564774636496034233)
,p_plugin_attribute_id=>wwv_flow_imp.id(59564765047171032639)
,p_display_sequence=>10
,p_display_value=>'Inline'
,p_return_value=>'inline'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59565334196354792161)
,p_plugin_attribute_id=>wwv_flow_imp.id(59564765047171032639)
,p_display_sequence=>20
,p_display_value=>'Bottom Left'
,p_return_value=>'bottom-left'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59564788546846037007)
,p_plugin_attribute_id=>wwv_flow_imp.id(59564765047171032639)
,p_display_sequence=>30
,p_display_value=>'Bottom Right'
,p_return_value=>'bottom-right'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59564791916567037902)
,p_plugin_attribute_id=>wwv_flow_imp.id(59564765047171032639)
,p_display_sequence=>40
,p_display_value=>'Top Left'
,p_return_value=>'top-left'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(59565381360391796706)
,p_plugin_attribute_id=>wwv_flow_imp.id(59564765047171032639)
,p_display_sequence=>50
,p_display_value=>'Top Right'
,p_return_value=>'top-right'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '612E67745F73776974636865722D706F707570207370616E207B0D0A20202020666F6E742D66616D696C793A20696E68657269742021696D706F7274616E743B0D0A20202020666F6E742D73697A653A20766172282D2D612D627574746F6E2D666F6E74';
wwv_flow_imp.g_varchar2_table(2) := '2D73697A652C2E373572656D292021696D706F7274616E743B0D0A20202020666F6E742D7765696768743A20766172282D2D612D627574746F6E2D666F6E742D7765696768742C343030292021696D706F7274616E743B0D0A202020206C696E652D6865';
wwv_flow_imp.g_varchar2_table(3) := '696768743A20766172282D2D612D627574746F6E2D6C696E652D6865696768742C3172656D292021696D706F7274616E743B0D0A20202020636F6C6F723A20236666662021696D706F7274616E743B0D0A7D0D0A6C692E742D4E617669676174696F6E42';
wwv_flow_imp.g_varchar2_table(4) := '61722D6974656D3A66697273742D6368696C642061207B0D0A2020202070616464696E673A203370782021696D706F7274616E743B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59550321886281427839)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_file_name=>'style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '612E67745F73776974636865722D706F707570207370616E7B666F6E742D66616D696C793A696E686572697421696D706F7274616E743B666F6E742D73697A653A766172282D2D612D627574746F6E2D666F6E742D73697A652C2E373572656D2921696D';
wwv_flow_imp.g_varchar2_table(2) := '706F7274616E743B666F6E742D7765696768743A766172282D2D612D627574746F6E2D666F6E742D7765696768742C3430302921696D706F7274616E743B6C696E652D6865696768743A766172282D2D612D627574746F6E2D6C696E652D686569676874';
wwv_flow_imp.g_varchar2_table(3) := '2C3172656D2921696D706F7274616E743B636F6C6F723A2366666621696D706F7274616E747D6C692E742D4E617669676174696F6E4261722D6974656D3A66697273742D6368696C6420617B70616464696E673A33707821696D706F7274616E747D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59552751775776727587)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_file_name=>'style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000005E494441545847EDD4C10900200C43D1D481DC461CC4895C54DDA01E82E0E17B2DD8F00A89256D25AF8C9A8DED591000010410';
wwv_flow_imp.g_varchar2_table(2) := 'F85EA0CF61B75DF6C1B50963A74D6D872300020820F0BF406FCD6E3BAB8ACBD3F5D2F50404400001045E0B1C7E7C5C952D13DCF50000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59586469343076163588)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_file_name=>'uae-flag.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172207472616E73616C6174655F66756E3D7B696E69743A66756E6374696F6E28297B76617220743D746869732C613D742E616374696F6E2E61747472696275746530312C653D742E616374696F6E2E61747472696275746530322C6E3D742E616374';
wwv_flow_imp.g_varchar2_table(2) := '696F6E2E61747472696275746530332C733D742E616374696F6E2E61747472696275746530342C723D742E616374696F6E2E61747472696275746530352C6C3D646F63756D656E742E637265617465456C656D656E7428226C6922293B6C2E636C617373';
wwv_flow_imp.g_varchar2_table(3) := '4E616D653D22742D4E617669676174696F6E4261722D6974656D223B766172206F3D646F63756D656E742E637265617465456C656D656E7428226122293B6F2E636C6173734E616D653D22742D427574746F6E20742D427574746F6E2D2D69636F6E2074';
wwv_flow_imp.g_varchar2_table(4) := '2D427574746F6E2D2D68656164657220742D427574746F6E2D2D6E6176426172222C6F2E7469746C653D22222C6F2E7461726765743D22223B76617220673D646F63756D656E742E637265617465456C656D656E74282264697622293B672E636C617373';
wwv_flow_imp.g_varchar2_table(5) := '4E616D653D22677472616E736C6174655F77726170706572222C6F2E617070656E644368696C642867292C6C2E617070656E644368696C64286F293B76617220693D646F63756D656E742E717565727953656C6563746F7228222E742D4E617669676174';
wwv_flow_imp.g_varchar2_table(6) := '696F6E42617222293B69662869297B692E696E736572744265666F7265286C2C692E6368696C6472656E5B305D293B76617220703D646F63756D656E742E637265617465456C656D656E74282273637269707422293B22696E6C696E65223D3D723F702E';
wwv_flow_imp.g_varchar2_table(7) := '696E6E657248544D4C3D2777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B612B27222C226465746563745F62726F777365725F6C616E6775616765223A272B282259223D';
wwv_flow_imp.g_varchar2_table(8) := '3D73292B272C226C616E677561676573223A5B22272B612B27222C272B652B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22616C745F666C616773223A7B226172223A2268747470733A';
wwv_flow_imp.g_varchar2_table(9) := '2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273A22626F74746F6D2D6C656674223D3D723F702E696E6E657248544D4C3D2777696E646F772E677472616E736C61';
wwv_flow_imp.g_varchar2_table(10) := '746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B612B27222C226465746563745F62726F777365725F6C616E6775616765223A272B282259223D3D73292B272C226C616E677561676573223A5B22272B612B2722';
wwv_flow_imp.g_varchar2_table(11) := '2C272B652B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A226C656674222C22766572746963616C5F706F736974696F6E223A2262';
wwv_flow_imp.g_varchar2_table(12) := '6F74746F6D222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273A22626F74746F6D2D7269676874';
wwv_flow_imp.g_varchar2_table(13) := '223D3D723F702E696E6E657248544D4C3D2777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B612B27222C226465746563745F62726F777365725F6C616E6775616765223A';
wwv_flow_imp.g_varchar2_table(14) := '272B282259223D3D73292B272C226C616E677561676573223A5B22272B612B27222C272B652B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F73697469';
wwv_flow_imp.g_varchar2_table(15) := '6F6E223A227269676874222C22766572746963616C5F706F736974696F6E223A22626F74746F6D222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F32303233';
wwv_flow_imp.g_varchar2_table(16) := '2F30392F7561652D666C61672E706E67227D7D273A22746F702D6C656674223D3D723F702E696E6E657248544D4C3D2777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B61';
wwv_flow_imp.g_varchar2_table(17) := '2B27222C226465746563745F62726F777365725F6C616E6775616765223A272B282259223D3D73292B272C226C616E677561676573223A5B22272B612B27222C272B652B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C61';
wwv_flow_imp.g_varchar2_table(18) := '74655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A226C656674222C22766572746963616C5F706F736974696F6E223A22746F70222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E';
wwv_flow_imp.g_varchar2_table(19) := '61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273A22746F702D7269676874223D3D72262628702E696E6E657248544D4C3D2777696E646F772E677472616E736C61746553657474696E';
wwv_flow_imp.g_varchar2_table(20) := '6773203D207B2264656661756C745F6C616E6775616765223A22272B612B27222C226465746563745F62726F777365725F6C616E6775616765223A272B282259223D3D73292B272C226C616E677561676573223A5B22272B612B27222C272B652B275D2C';
wwv_flow_imp.g_varchar2_table(21) := '22777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A227269676874222C22766572746963616C5F706F736974696F6E223A22746F70222C22616C';
wwv_flow_imp.g_varchar2_table(22) := '745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D27292C646F63756D656E742E686561642E617070656E644368';
wwv_flow_imp.g_varchar2_table(23) := '696C642870293B76617220643D646F63756D656E742E637265617465456C656D656E74282273637269707422293B22706F707570223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C';
wwv_flow_imp.g_varchar2_table(24) := '61746573742F706F7075702E6A73223A22666C6F6174223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F666C6F61742E6A73223A2264726F70646F776E5F77697468';
wwv_flow_imp.g_varchar2_table(25) := '5F666C616773223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F6477662E6A73223A22666C6167735F64726F70646F776E223D3D6E3F642E7372633D226874747073';
wwv_flow_imp.g_varchar2_table(26) := '3A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F66642E6A73223A2264726F70646F776E223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F';
wwv_flow_imp.g_varchar2_table(27) := '6C61746573742F64726F70646F776E2E6A73223A22666C616773223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F666C6167732E6A73223A22666C6167735F6E616D';
wwv_flow_imp.g_varchar2_table(28) := '65223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F666E2E6A73223A22666C6167735F636F6465223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472';
wwv_flow_imp.g_varchar2_table(29) := '616E736C6174652E6E65742F776964676574732F6C61746573742F66632E6A73223A226C616E675F6E616D6573223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F6C';
wwv_flow_imp.g_varchar2_table(30) := '6E2E6A73223A226C616E675F636F646573223D3D6E3F642E7372633D2268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F6C632E6A73223A22676C6F6265223D3D6E262628642E7372633D226874';
wwv_flow_imp.g_varchar2_table(31) := '7470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F676C6F62652E6A7322292C642E64656665723D21302C646F63756D656E742E686561642E617070656E644368696C642864297D7D7D3B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59590439909674188273)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_file_name=>'script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172207472616E73616C6174655F66756E203D207B0D0A0D0A202020202F2A20496E69742046756E6374696F6E2A2F0D0A20202020696E69743A2066756E6374696F6E202829207B0D0A2020202020202020766172206461203D20746869733B0D0A20';
wwv_flow_imp.g_varchar2_table(2) := '20202020202020202F2A2067657420706C7567696E20617474726962757465732A2F0D0A202020202020202076617220765F7472616E73616C746546726F6D203D2064612E616374696F6E2E61747472696275746530313B0D0A20202020202020207661';
wwv_flow_imp.g_varchar2_table(3) := '7220765F7472616E73616C7465546F203D2064612E616374696F6E2E61747472696275746530323B0D0A202020202020202076617220765F7769646765744C6F6F6B203D2064612E616374696F6E2E61747472696275746530333B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(4) := '2076617220765F626F72777365724175746F203D2064612E616374696F6E2E61747472696275746530343B0D0A202020202020202076617220765F706F7374696F6E203D2064612E616374696F6E2E61747472696275746530353B0D0A0D0A2020202020';
wwv_flow_imp.g_varchar2_table(5) := '2020202F2A20617070656E6420737769746368657220746F20746F70206E617669676174696F6E20626172202A2F0D0A202020202020202020202020766172206C69456C656D656E74203D20646F63756D656E742E637265617465456C656D656E742822';
wwv_flow_imp.g_varchar2_table(6) := '6C6922293B0D0A2020202020202020202020206C69456C656D656E742E636C6173734E616D65203D2022742D4E617669676174696F6E4261722D6974656D223B0D0A0D0A2020202020202020202020202F2F2043726561746520746865203C613E20656C';
wwv_flow_imp.g_varchar2_table(7) := '656D656E740D0A2020202020202020202020207661722061456C656D656E74203D20646F63756D656E742E637265617465456C656D656E7428226122293B0D0A20202020202020202020202061456C656D656E742E636C6173734E616D65203D2022742D';
wwv_flow_imp.g_varchar2_table(8) := '427574746F6E20742D427574746F6E2D2D69636F6E20742D427574746F6E2D2D68656164657220742D427574746F6E2D2D6E6176426172223B0D0A20202020202020202020202061456C656D656E742E7469746C65203D2022223B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(9) := '202020202061456C656D656E742E746172676574203D2022223B0D0A0D0A2020202020202020202020202F2F2043726561746520746865203C6469763E20656C656D656E740D0A20202020202020202020202076617220646976456C656D656E74203D20';
wwv_flow_imp.g_varchar2_table(10) := '646F63756D656E742E637265617465456C656D656E74282264697622293B0D0A202020202020202020202020646976456C656D656E742E636C6173734E616D65203D2022677472616E736C6174655F77726170706572223B0D0A0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(11) := '202020202F2F20417070656E6420746865203C6469763E20656C656D656E7420746F20746865203C613E20656C656D656E740D0A20202020202020202020202061456C656D656E742E617070656E644368696C6428646976456C656D656E74293B0D0A0D';
wwv_flow_imp.g_varchar2_table(12) := '0A2020202020202020202020202F2F20417070656E6420746865203C613E20656C656D656E7420746F20746865203C6C693E20656C656D656E740D0A2020202020202020202020206C69456C656D656E742E617070656E644368696C642861456C656D65';
wwv_flow_imp.g_varchar2_table(13) := '6E74293B0D0A0D0A2020202020202020202020202F2F2046696E642074686520666972737420656C656D656E74207769746820636C6173732022742D4E617669676174696F6E426172220D0A2020202020202020202020207661722066697273744E6176';
wwv_flow_imp.g_varchar2_table(14) := '69676174696F6E426172203D20646F63756D656E742E717565727953656C6563746F7228222E742D4E617669676174696F6E42617222293B0D0A0D0A2020202020202020202020202F2F20417070656E6420746865203C6C693E20656C656D656E742074';
wwv_flow_imp.g_varchar2_table(15) := '6F2074686520666972737420656C656D656E74207769746820636C6173732022742D4E617669676174696F6E426172220D0A2020202020202020202020206966202866697273744E617669676174696F6E42617229207B0D0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(16) := '2066697273744E617669676174696F6E4261722E696E736572744265666F7265286C69456C656D656E742C66697273744E617669676174696F6E4261722E6368696C6472656E5B305D293B0D0A0D0A20202020202020202020202020202F2F2043726561';
wwv_flow_imp.g_varchar2_table(17) := '746520616E6420617070656E642074686520677472616E736C61746553657474696E67732073637269707420200D0A20202020202020202020202076617220677472616E736C61746553657474696E6773536372697074203D20646F63756D656E742E63';
wwv_flow_imp.g_varchar2_table(18) := '7265617465456C656D656E74282273637269707422293B0D0A202020202020202020202020696628765F706F7374696F6E203D3D2027696E6C696E6527297B0D0A20202020202020202020202020202020677472616E736C61746553657474696E677353';
wwv_flow_imp.g_varchar2_table(19) := '63726970742E696E6E657248544D4C203D202777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B765F7472616E73616C746546726F6D2B27222C226465746563745F62726F';
wwv_flow_imp.g_varchar2_table(20) := '777365725F6C616E6775616765223A272B28765F626F72777365724175746F3D3D27592729202B272C226C616E677561676573223A5B22272B765F7472616E73616C746546726F6D2B27222C272B765F7472616E73616C7465546F2B275D2C2277726170';
wwv_flow_imp.g_varchar2_table(21) := '7065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F75';
wwv_flow_imp.g_varchar2_table(22) := '61652D666C61672E706E67227D7D273B0D0A2020202020202020202020207D656C736520696628765F706F7374696F6E203D3D2027626F74746F6D2D6C65667427297B0D0A20202020202020202020202020202020677472616E736C6174655365747469';
wwv_flow_imp.g_varchar2_table(23) := '6E67735363726970742E696E6E657248544D4C203D202777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B765F7472616E73616C746546726F6D2B27222C22646574656374';
wwv_flow_imp.g_varchar2_table(24) := '5F62726F777365725F6C616E6775616765223A272B28765F626F72777365724175746F3D3D27592729202B272C226C616E677561676573223A5B22272B765F7472616E73616C746546726F6D2B27222C272B765F7472616E73616C7465546F2B275D2C22';
wwv_flow_imp.g_varchar2_table(25) := '777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A226C656674222C22766572746963616C5F706F736974696F6E223A22626F74746F6D222C2261';
wwv_flow_imp.g_varchar2_table(26) := '6C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273B0D0A2020202020202020202020207D656C7365206966';
wwv_flow_imp.g_varchar2_table(27) := '28765F706F7374696F6E203D3D2027626F74746F6D2D726967687427297B0D0A20202020202020202020202020202020677472616E736C61746553657474696E67735363726970742E696E6E657248544D4C203D202777696E646F772E677472616E736C';
wwv_flow_imp.g_varchar2_table(28) := '61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B765F7472616E73616C746546726F6D2B27222C226465746563745F62726F777365725F6C616E6775616765223A272B28765F626F72777365724175746F3D3D';
wwv_flow_imp.g_varchar2_table(29) := '27592729202B272C226C616E677561676573223A5B22272B765F7472616E73616C746546726F6D2B27222C272B765F7472616E73616C7465546F2B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C6174655F777261707065';
wwv_flow_imp.g_varchar2_table(30) := '72222C22686F72697A6F6E74616C5F706F736974696F6E223A227269676874222C22766572746963616C5F706F736974696F6E223A22626F74746F6D222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F7770';
wwv_flow_imp.g_varchar2_table(31) := '2D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273B0D0A2020202020202020202020207D656C736520696628765F706F7374696F6E203D3D2027746F702D6C65667427297B0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(32) := '2020202020202020677472616E736C61746553657474696E67735363726970742E696E6E657248544D4C203D202777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B765F74';
wwv_flow_imp.g_varchar2_table(33) := '72616E73616C746546726F6D2B27222C226465746563745F62726F777365725F6C616E6775616765223A272B28765F626F72777365724175746F3D3D27592729202B272C226C616E677561676573223A5B22272B765F7472616E73616C746546726F6D2B';
wwv_flow_imp.g_varchar2_table(34) := '27222C272B765F7472616E73616C7465546F2B275D2C22777261707065725F73656C6563746F72223A222E677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A226C656674222C2276657274696361';
wwv_flow_imp.g_varchar2_table(35) := '6C5F706F736974696F6E223A22746F70222C22616C745F666C616773223A7B226172223A2268747470733A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273B0D0A';
wwv_flow_imp.g_varchar2_table(36) := '2020202020202020202020207D656C736520696628765F706F7374696F6E203D3D2027746F702D726967687427297B0D0A20202020202020202020202020202020677472616E736C61746553657474696E67735363726970742E696E6E657248544D4C20';
wwv_flow_imp.g_varchar2_table(37) := '3D202777696E646F772E677472616E736C61746553657474696E6773203D207B2264656661756C745F6C616E6775616765223A22272B765F7472616E73616C746546726F6D2B27222C226465746563745F62726F777365725F6C616E6775616765223A27';
wwv_flow_imp.g_varchar2_table(38) := '2B28765F626F72777365724175746F3D3D27592729202B272C226C616E677561676573223A5B22272B765F7472616E73616C746546726F6D2B27222C272B765F7472616E73616C7465546F2B275D2C22777261707065725F73656C6563746F72223A222E';
wwv_flow_imp.g_varchar2_table(39) := '677472616E736C6174655F77726170706572222C22686F72697A6F6E74616C5F706F736974696F6E223A227269676874222C22766572746963616C5F706F736974696F6E223A22746F70222C22616C745F666C616773223A7B226172223A226874747073';
wwv_flow_imp.g_varchar2_table(40) := '3A2F2F636F6469782E61692F77702D636F6E74656E742F75706C6F6164732F323032332F30392F7561652D666C61672E706E67227D7D273B0D0A2020202020202020202020207D0D0A202020202020202020202020646F63756D656E742E686561642E61';
wwv_flow_imp.g_varchar2_table(41) := '7070656E644368696C6428677472616E736C61746553657474696E6773536372697074293B0D0A0D0A2020202020202020202020202F2F2043726561746520616E6420617070656E642074686520677472616E736C61746520706F7075702E6A73207363';
wwv_flow_imp.g_varchar2_table(42) := '726970740D0A20202020202020202020202076617220677472616E736C617465506F707570536372697074203D20646F63756D656E742E637265617465456C656D656E74282273637269707422293B0D0A20202020202020202020202069662028765F77';
wwv_flow_imp.g_varchar2_table(43) := '69646765744C6F6F6B203D3D2027706F7075702729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F77696467657473';
wwv_flow_imp.g_varchar2_table(44) := '2F6C61746573742F706F7075702E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F6B203D3D2027666C6F61742729207B0D0A202020202020202020202020677472616E736C617465506F7075705363';
wwv_flow_imp.g_varchar2_table(45) := '726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F666C6F61742E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F';
wwv_flow_imp.g_varchar2_table(46) := '6B203D3D202764726F70646F776E5F776974685F666C6167732729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F77';
wwv_flow_imp.g_varchar2_table(47) := '6964676574732F6C61746573742F6477662E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F6B203D3D2027666C6167735F64726F70646F776E2729207B0D0A20202020202020202020202067747261';
wwv_flow_imp.g_varchar2_table(48) := '6E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F66642E6A73223B0D0A2020202020202020202020207D656C736520206966202876';
wwv_flow_imp.g_varchar2_table(49) := '5F7769646765744C6F6F6B203D3D202764726F70646F776E2729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F7769';
wwv_flow_imp.g_varchar2_table(50) := '64676574732F6C61746573742F64726F70646F776E2E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F6B203D3D2027666C6167732729207B0D0A202020202020202020202020677472616E736C6174';
wwv_flow_imp.g_varchar2_table(51) := '65506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F666C6167732E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F77';
wwv_flow_imp.g_varchar2_table(52) := '69646765744C6F6F6B203D3D2027666C6167735F6E616D652729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F7769';
wwv_flow_imp.g_varchar2_table(53) := '64676574732F6C61746573742F666E2E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F6B203D3D2027666C6167735F636F64652729207B0D0A202020202020202020202020677472616E736C617465';
wwv_flow_imp.g_varchar2_table(54) := '506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F66632E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765';
wwv_flow_imp.g_varchar2_table(55) := '744C6F6F6B203D3D20276C616E675F6E616D65732729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574';
wwv_flow_imp.g_varchar2_table(56) := '732F6C61746573742F6C6E2E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F6B203D3D20276C616E675F636F6465732729207B0D0A202020202020202020202020677472616E736C617465506F7075';
wwv_flow_imp.g_varchar2_table(57) := '705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F6C632E6A73223B0D0A2020202020202020202020207D656C7365202069662028765F7769646765744C6F6F';
wwv_flow_imp.g_varchar2_table(58) := '6B203D3D2027676C6F62652729207B0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E737263203D202268747470733A2F2F63646E2E677472616E736C6174652E6E65742F776964676574732F6C61746573742F';
wwv_flow_imp.g_varchar2_table(59) := '676C6F62652E6A73223B0D0A2020202020202020202020207D0D0A202020202020202020202020677472616E736C617465506F7075705363726970742E6465666572203D20747275653B0D0A202020202020202020202020646F63756D656E742E686561';
wwv_flow_imp.g_varchar2_table(60) := '642E617070656E644368696C6428677472616E736C617465506F707570536372697074293B0D0A2020202020202020202020207D0D0A0D0A0D0A20202020202020202F2A2A20456E64202A2F0D0A202020202020200D0A0D0A202020207D0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(89057528825935999627)
,p_plugin_id=>wwv_flow_imp.id(89052362035329393779)
,p_file_name=>'script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
