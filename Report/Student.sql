prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>14130552886732671
,p_default_application_id=>396
,p_default_owner=>'APEX811'
);
end;
/
 
prompt APPLICATION 396 - Student
--
-- Application Export:
--   Application:     396
--   Name:            Student
--   Date and Time:   12:31 Thursday December 6, 2018
--   Exported By:     APEX811
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     108855196699054
--

-- Application Statistics:
--   Pages:                      8
--     Items:                   38
--     Processes:                4
--     Regions:                 13
--     Buttons:                 11
--     Dynamic Actions:          8
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              14
--         Label:                3
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Button:               2
--         Report:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,396)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX811')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Student')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_396')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3BFD89E2841E3EDD2C0F2C81BAF6CEB6ACC9109B0220EC323FBACCE6FD944489'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_tz_format=>'DD-MON-YYYY HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(94060755499498940)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Student'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181205124225'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(94052226910498762)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(94062636223499001)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94051653403498759)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94051781033498762)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94051858605498762)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94051946132498762)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94052086731498762)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(94052154810498762)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(94060608198498937)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(94061896813498985)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(94052395330498767)
,p_theme_id=>51
,p_name=>'Dialog'
,p_internal_name=>'DIALOG'
,p_is_popup=>true
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(94052415451498795)
,p_theme_id=>51
,p_name=>'Page'
,p_internal_name=>'PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(94052962316498807)
,p_theme_id=>51
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(94055303302498851)
,p_template_name=>'Icon Button'
,p_internal_name=>'ICON_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(94059567403498860)
,p_template_name=>'Standard Button'
,p_internal_name=>'STANDARD_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053023193498809)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_internal_name=>'BUTTON_GROUP_HORIZONTAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053126388498823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_internal_name=>'BUTTON_GROUP_VERTICAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053276625498823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_internal_name=>'COLLAPSIBLE_CLOSED'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053393232498823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_internal_name=>'COLLAPSIBLE_OPEN'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053464835498823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_internal_name=>'COLLAPSIBLE_SET'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053560618498823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_internal_name=>'FOOTER_TOOLBAR_DISPLAYS_AT_BOTTOM_OF_PAGE'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053627340498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_internal_name=>'FOOTER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053703059498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_internal_name=>'FOOTER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053812693498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_internal_name=>'HEADER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94053950307498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_internal_name=>'HEADER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94054038300498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_internal_name=>'PANEL'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94054184665498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_internal_name=>'PLAIN_NO_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94054293742498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_internal_name=>'REGION_WITH_TITLE_BAR'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(94054394367498825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_internal_name=>'REGION_WITH_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(94054583646498835)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_internal_name=>'BUTTON_CONTROL_GROUP'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(94054670569498842)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_internal_name=>'LIST_VIEW'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(94054753406498842)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_internal_name=>'LIST_VIEW_INSET'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(94054803012498843)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(94054951596498843)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_internal_name=>'NAVIGATION_MENU'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(94054448741498826)
,p_row_template_name=>'Standard Report'
,p_internal_name=>'STANDARD_REPORT'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(94054448741498826)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(94055067728498845)
,p_template_name=>'No Label (For Screenreaders)'
,p_internal_name=>'NO_LABEL_FOR_SCREENREADERS'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(94055111595498850)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(94055203970498850)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(94059993370498868)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(94059840888498862)
,p_cal_template_name=>'Basic Calendar'
,p_internal_name=>'BASIC_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(94060426270498889)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_theme_internal_name=>'MOBILE'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(94052415451498795)
,p_default_dialog_template=>wwv_flow_api.id(94052395330498767)
,p_error_template=>wwv_flow_api.id(94052415451498795)
,p_printer_friendly_template=>wwv_flow_api.id(94052415451498795)
,p_login_template=>wwv_flow_api.id(94052415451498795)
,p_default_button_template=>wwv_flow_api.id(94059567403498860)
,p_default_region_template=>wwv_flow_api.id(94054184665498825)
,p_default_chart_template=>wwv_flow_api.id(94054184665498825)
,p_default_form_template=>wwv_flow_api.id(94054184665498825)
,p_default_reportr_template=>wwv_flow_api.id(94054394367498825)
,p_default_tabform_template=>wwv_flow_api.id(94054184665498825)
,p_default_wizard_template=>wwv_flow_api.id(94054184665498825)
,p_default_irr_template=>wwv_flow_api.id(94054184665498825)
,p_default_report_template=>wwv_flow_api.id(94054448741498826)
,p_default_label_template=>wwv_flow_api.id(94055111595498850)
,p_default_calendar_template=>wwv_flow_api.id(94059840888498862)
,p_default_list_template=>wwv_flow_api.id(94054753406498842)
,p_default_nav_list_template=>wwv_flow_api.id(94054670569498842)
,p_default_top_nav_list_temp=>wwv_flow_api.id(94054670569498842)
,p_default_side_nav_list_temp=>wwv_flow_api.id(94054951596498843)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(94053023193498809)
,p_default_dialogr_template=>wwv_flow_api.id(94054184665498825)
,p_default_option_label=>wwv_flow_api.id(94055111595498850)
,p_default_header_template=>wwv_flow_api.id(94053812693498825)
,p_default_footer_template=>wwv_flow_api.id(94053627340498825)
,p_default_required_label=>wwv_flow_api.id(94055203970498850)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#THEME_IMAGES#css/5_0.css',
'#JET_CSS_DIRECTORY#alta/oj-alta-notag-min.css'))
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(94060037944498871)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(94060136010498876)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(94060230338498876)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(94060389514498876)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(94052594626498800)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(94055423720498856)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(94056222665498856)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94052666842498801)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(94052415451498795)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(94052594626498800)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94052718732498806)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(94052415451498795)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(94052594626498800)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94052834120498807)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(94052415451498795)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(94052594626498800)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94055512844498856)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(94055423720498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94055641715498856)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(94055423720498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94055732729498856)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(94055423720498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94055838313498856)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(94055423720498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94055982780498856)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(94055423720498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056039794498856)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056133969498856)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056319938498856)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056467623498856)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056561376498856)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056639181498856)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056733603498857)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056894842498857)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94056975004498857)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057024431498857)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057128910498859)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057233387498859)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057344416498859)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057499795498859)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057562060498859)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057693137498859)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057718635498859)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057895255498859)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94057933574498859)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058046605498859)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058138399498859)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058217345498859)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058359352498859)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058485532498859)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058501522498859)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058620712498860)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058716678498860)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058800292498860)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94058900126498860)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059005708498860)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059189990498860)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059200662498860)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059323433498860)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059492606498860)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(94056222665498856)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059652174498860)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(94059738176498860)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(94060755499498940)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(94060579018498929)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(94052226910498762)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(94054951596498843)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20181123234615'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94062122636498990)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94053812693498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94062470578498992)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94053627340498825)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94062351615498992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(94062122636498990)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94062252149498990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94062122636498990)
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext:ui-icon-bars'
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>' data-direction="reverse"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94062575000498992)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(94062252149498990)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94062575000498992)
,p_event_id=>wwv_flow_api.id(94062575000498992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181203121638'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94011621117485449)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94065269441554305)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94011621117485449)
,p_button_name=>'jobs_board_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Jobs Board'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:P2_STUDENT_ID:&P1_STUDENT_ID.'
,p_grid_new_grid=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94065331685554306)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(94011621117485449)
,p_button_name=>'my_applications_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'My Applications'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_STUDENT_ID:&P1_STUDENT_ID.'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94065495123554307)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(94011621117485449)
,p_button_name=>'view_edit_my_details_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'View / Edit My Details'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_STUDENT_ID:&P1_STUDENT_ID.'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94065835235554311)
,p_name=>'P1_STUDENT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94011621117485449)
,p_prompt=>'Student'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRSTNAME, STUDENTID',
'FROM STUDENTS;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'Jobs Board'
,p_page_mode=>'NORMAL'
,p_step_title=>'Jobs Board'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181203113917'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95245100783728919)
,p_plug_name=>'Jobs Board'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JOBS.JOBID, SITES.COMPANYNAME, JOBS.JOBTITLE, SITES.SITENAME, SITES.ADDRESS, SITES.POSTCODE, JOBS.APPLICATIONCLOSINGDATE, JOBS.SALARY',
'FROM JOBS',
'INNER JOIN SITES ON JOBS.SITEID = SITES.SITEID'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231474249716444)
,p_name=>'JOBID'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Job ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'LINK'
,p_attribute_02=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_JOB_ID,P3_STUDENT_ID:&JOBID.,&P2_STUDENT_ID.'
,p_attribute_03=>'&JOBID.'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231591419716445)
,p_name=>'COMPANYNAME'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Company Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231633227716446)
,p_name=>'JOBTITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Job Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231712012716447)
,p_name=>'SITENAME'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Site Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231873997716448)
,p_name=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95231915317716449)
,p_name=>'POSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Postcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95232050220716450)
,p_name=>'APPLICATIONCLOSINGDATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Application Closing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95288056222748601)
,p_name=>'SALARY'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Salary'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94065911450554312)
,p_name=>'P2_STUDENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95245100783728919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'View Job'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Job'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181205121144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94064866882554301)
,p_plug_name=>'View Job'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94066581389554318)
,p_plug_name=>'Record Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(113102027744593502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94066581389554318)
,p_button_name=>'ApplicationButton'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Apply'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94066050815554313)
,p_name=>'P3_STUDENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95288150979748602)
,p_name=>'P3_JOB_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98280730122378501)
,p_name=>'P3_JOB_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Job title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98280817386378502)
,p_name=>'P3_JOB_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Job description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98280931798378503)
,p_name=>'P3_CONTACT_TELEPHONE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Contact telephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281078922378504)
,p_name=>'P3_SALARY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281106832378505)
,p_name=>'P3_START_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Start date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281270288378506)
,p_name=>'P3_VACANCIES_AVAILABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Vacancies available'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281331690378507)
,p_name=>'P3_APPLICATION_CLOSING_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Application closing date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281454661378508)
,p_name=>'P3_APPLICATION_METHOD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Application method'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281577181378509)
,p_name=>'P3_COMPANY_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Company name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281678747378510)
,p_name=>'P3_SITE_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Site name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(98281707757378511)
,p_name=>'P3_SITE_ADDRESS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(94064866882554301)
,p_prompt=>'Site address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(98281951436378513)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(94062122636498990)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(98282047581378514)
,p_event_id=>wwv_flow_api.id(98281951436378513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE,P3_JOB_DESCRIPTION,P3_CONTACT_EMAIL,P3_CONTACT_TELEPHONE,P3_SALARY,P3_START_DATE,P3_VACANCIES_AVAILABLE,P3_APPLICATION_CLOSING_DATE,P3_APPLICATION_METHOD,P3_COMPANY_NAME, P3_SITE_NAME, P3_SITE_ADDRESS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JOBS.JOBTITLE, JOBS.JOBDESCRIPTION, JOBS.CONTACTEMAIl, JOBS.CONTACTTELEPHONE,',
'JOBS.SALARY, JOBS.STARTDATE, JOBS.VACANCIESAVAILABLE, JOBS.APPLICATIONCLOSINGDATE,',
'JOBS.APPLICATIONMETHOD, SITES.COMPANYNAME, SITES.SITENAME, SITES.ADDRESS',
'FROM JOBS',
'INNER JOIN SITES ON JOBS.SITEID = SITES.SITEID',
'WHERE JOBS.JOBID = :P3_JOB_ID;'))
,p_attribute_07=>'P3_JOB_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(113102159379593503)
,p_name=>'application_button_clicked'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(113102027744593502)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(113102286011593504)
,p_event_id=>wwv_flow_api.id(113102159379593503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO APPLICATIONS',
'(STUDENTID,JOBID,STATUSDATE, APPLICATIONSTATUS )',
'VALUES',
'(:P3_STUDENT_ID, :P3_JOB_ID, SYSDATE, ''application submitted'');'))
,p_attribute_02=>'P3_JOB_ID,P3_STUDENT_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'My Applications'
,p_page_mode=>'NORMAL'
,p_step_title=>'My Applications'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181203114215'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94064938952554302)
,p_plug_name=>'My Applications'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATIONS.APPLICATIONID, SITES.COMPANYNAME, JOBS.JOBTITLE, APPLICATIONS.APPLICATIONSTATUS, APPLICATIONS.STATUSDATE FROM ',
'APPLICATIONS',
'JOIN JOBS ON JOBS.JOBID = APPLICATIONS.JOBID',
'JOIN SITES ON JOBS.SITEID = SITES.SITEID',
'WHERE APPLICATIONS.STUDENTID = :P4_STUDENT_ID'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067067036554323)
,p_name=>'APPLICATIONID'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Application ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'LINK'
,p_attribute_02=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_STUDENT_ID,P5_APPLICATION_ID:&P4_STUDENT_ID.,&APPLICATIONID.'
,p_attribute_03=>'&APPLICATIONID.'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067118760554324)
,p_name=>'COMPANYNAME'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Company Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067289871554325)
,p_name=>'JOBTITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Job Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067369509554326)
,p_name=>'APPLICATIONSTATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Application Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067470632554327)
,p_name=>'STATUSDATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Status Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94066114205554314)
,p_name=>'P4_STUDENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94064938952554302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'Application Progress'
,p_page_mode=>'NORMAL'
,p_step_title=>'Application Progress'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181205124225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94065039884554303)
,p_plug_name=>'Application Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94067648432554329)
,p_plug_name=>'Application History'
,p_parent_plug_id=>wwv_flow_api.id(94065039884554303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054293742498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATIONSTATUS, STATUSDATE',
'FROM APPLICATIONHISTORIES',
'WHERE APPLICATIONID = :P5_APPLICATION_ID',
'ORDER BY STATUSDATE'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067705205554330)
,p_name=>'APPLICATIONSTATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Application Status History'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94067873058554331)
,p_name=>'STATUSDATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Status Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94067952603554332)
,p_plug_name=>'Current Progress'
,p_parent_plug_id=>wwv_flow_api.id(94065039884554303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054293742498825)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATIONSTATUS, STATUSDATE',
'FROM APPLICATIONS',
'WHERE APPLICATIONID = :P5_APPLICATION_ID'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94068067654554333)
,p_name=>'APPLICATIONSTATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Application Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(94068123594554334)
,p_name=>'STATUSDATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Status Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94068280953554335)
,p_plug_name=>'Update Progress'
,p_parent_plug_id=>wwv_flow_api.id(94065039884554303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94069473009554347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(94068280953554335)
,p_button_name=>'update_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Update'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(112875831053424011)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94068280953554335)
,p_button_name=>'WithdrawApplication'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext'
,p_button_template_id=>wwv_flow_api.id(94055303302498851)
,p_button_image_alt=>'Withdraw Application'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94066213880554315)
,p_name=>'P5_STUDENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94065039884554303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94067590970554328)
,p_name=>'P5_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94065039884554303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94068394893554336)
,p_name=>'P5_PROGRESS_OPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94068280953554335)
,p_prompt=>'Progress option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC:',
'applicant invited for interview;applicant invited for interview,',
'applicant invited to assessment centre;applicant invited to assessment centre, ',
'applicant rejected;applicant rejected,',
'applicant offered position;applicant offered position,',
'applicant accepted offer;applicant accepted offer,',
'applicant declined offer;applicant declined offer'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94069513926554348)
,p_name=>'update_btn_clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(94069473009554347)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94069611384554349)
,p_event_id=>wwv_flow_api.id(94069513926554348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE APPLICATIONS',
'SET APPLICATIONSTATUS = :P5_PROGRESS_OPTION, STATUSDATE = SYSDATE',
'WHERE APPLICATIONID = :P5_APPLICATION_ID;'))
,p_attribute_02=>'P5_APPLICATION_ID,P5_PROGRESS_OPTION'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(112875508056424008)
,p_event_id=>wwv_flow_api.id(94069513926554348)
,p_event_result=>'TRUE'
,p_action_sequence=>25
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(112875962638424012)
,p_name=>'WithdrawApplication'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(112875831053424011)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(112876038110424013)
,p_event_id=>wwv_flow_api.id(112875962638424012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE APPLICATIONS',
'SET APPLICATIONSTATUS = ''application withdrawn'', STATUSDATE = SYSDATE',
'WHERE APPLICATIONID = :P5_APPLICATION_ID;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(112876403804424017)
,p_event_id=>wwv_flow_api.id(112875962638424012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'View / Edit My Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'View / Edit My Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'APEX811'
,p_last_upd_yyyymmddhh24miss=>'20181203000217'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94065168426554304)
,p_plug_name=>'View / Edit My Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(102736267524999819)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(94065168426554304)
,p_button_name=>'record_cv_submission_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Record CV Submission'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(102736112682999818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94065168426554304)
,p_button_name=>'update_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94066300788554316)
,p_name=>'P6_STUDENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Student ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102734690405999803)
,p_name=>'P6_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102734799381999804)
,p_name=>'P6_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'First name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102734886124999805)
,p_name=>'P6_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Last name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102734985337999806)
,p_name=>'P6_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735021267999807)
,p_name=>'P6_MOBILE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735156806999808)
,p_name=>'P6_LANDLINE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Landline'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735281050999809)
,p_name=>'P6_PROGRAMME_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Programme code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGRAMME_NAME, PROGRAMME_CODE',
'FROM PROGRAMMES;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735350320999810)
,p_name=>'P6_DOB'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Dob'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735482367999811)
,p_name=>'P6_PLACEMENT_PREFERENCE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Placement preference'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735534174999812)
,p_name=>'P6_TERM_ADDRESS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Term address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735684853999813)
,p_name=>'P6_TERM_POSTCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Term postcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735701036999814)
,p_name=>'P6_HOME_ADDRESS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Term address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735848836999815)
,p_name=>'P6_HOME_POSTCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Home postcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102735939762999816)
,p_name=>'P6_CV_SUBMITTED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Cv submitted'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102736082560999817)
,p_name=>'P6_CV_ACCEPTED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Cv accepted'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(102738618115999843)
,p_name=>'P6_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(94065168426554304)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(94055111595498850)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(102736324355999820)
,p_name=>'update_btn_clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(102736112682999818)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(102736461060999821)
,p_event_id=>wwv_flow_api.id(102736324355999820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE STUDENTS',
'SET PASSWORD = :P6_PASSWORD, EMAIL = :P6_EMAIL, MOBILE = :P6_MOBILE, LANDLINE = :P6_LANDLINE, PREFERENCE = :P6_PLACEMENT_PREFERENCE, TERMADDRESS = :P6_TERM_ADDRESS, TERMPOSTCODE = :P6_TERM_POSTCODE, HOMEADDRESS = :P6_HOME_ADDRESS, HOMEPOSTCODE = :P6_'
||'HOME_POSTCODE',
'WHERE STUDENTID = :P6_STUDENT_ID;'))
,p_attribute_02=>'P6_EMAIL,P6_MOBILE,P6_LANDLINE,P6_PLACEMENT_PREFERENCE,P6_TERM_ADDRESS,P6_TERM_POSTCODE,P6_HOME_ADDRESS,P6_HOME_POSTCODE,P6_STUDENT_ID,P6_PASSWORD'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(102736594716999822)
,p_name=>'record_cv_submission_btn_clicked'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(102736267524999819)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(102736697453999823)
,p_event_id=>wwv_flow_api.id(102736594716999822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE STUDENTS',
'SET CVSUBMITTED = SYSDATE',
'WHERE STUDENTID = :P6_STUDENT_ID;'))
,p_attribute_02=>'P6_STUDENT_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(102737181218999828)
,p_event_id=>wwv_flow_api.id(102736594716999822)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_CV_SUBMITTED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CVSUBMITTED',
'FROM STUDENTS',
'WHERE STUDENTID = :P6_STUDENT_ID'))
,p_attribute_07=>'P6_STUDENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(102736821801999825)
,p_name=>'page_loaded'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(102736970329999826)
,p_event_id=>wwv_flow_api.id(102736821801999825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_USERNAME,P6_FIRST_NAME,P6_LAST_NAME,P6_EMAIL,P6_MOBILE,P6_LANDLINE,P6_PROGRAMME_CODE,P6_DOB,P6_PLACEMENT_PREFERENCE,P6_TERM_ADDRESS,P6_TERM_POSTCODE,P6_HOME_ADDRESS,P6_HOME_POSTCODE,P6_CV_SUBMITTED,P6_CV_ACCEPTED,P6_PASSWORD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME, FIRSTNAME, LASTNAME, EMAIL, MOBILE, LANDLINE, PROGRAMME_CODE,',
'DOB, PREFERENCE, TERMADDRESS, TERMPOSTCODE, HOMEADDRESS, HOMEPOSTCODE, CVSUBMITTED, CVACCEPTED, PASSWORD',
'FROM STUDENTS',
'WHERE STUDENTID = :P6_STUDENT_ID'))
,p_attribute_07=>'P6_STUDENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(94060579018498929)
,p_name=>'Login Page'
,p_alias=>'LOGIN_JQM_SMARTPHONE'
,p_page_mode=>'NORMAL'
,p_step_title=>'Student - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(94052415451498795)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20181123234614'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94061050375498962)
,p_plug_name=>'Student'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94054184665498825)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94061349377498981)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94061050375498962)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94059567403498860)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94061102251498968)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94061050375498962)
,p_prompt=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94061231469498979)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94061050375498962)
,p_prompt=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94061507374498985)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94061423934498984)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94061710461498985)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(94061688380498985)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
