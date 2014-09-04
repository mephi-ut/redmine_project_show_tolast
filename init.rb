require 'redmine'

Redmine::Plugin.register :redmine_project_show_tolast do
  name 'Redmine move project "Show"'
  description 'Redmine make item "Show" to be the last in Project menu.'
  url 'https://github.com/mephi-ut/redmine_project_show_tolast'
  author 'Dmitry Yu Okunev'
  author_url 'https://github.com/xaionaro'
  version '0.0.1'
  delete_menu_item :project_menu, :overview
  menu :project_menu, :overview, { :controller => 'projects', :action => 'show' }, :last => true
end

