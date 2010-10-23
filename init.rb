require 'redmine'

Redmine::Plugin.register :copy_on_new do
  name 'Copy On New plugin'
  author 'Brandon Valentine'
  description 'Allow the administrator to specify a template project from which items are copied when a new project is initialized'
  version '0.0.1'
  url 'http://github.com/brandonvalentine/redmine_copy_on_new'
  author_url 'http://github.com/brandonvalentine'

  settings :default => {
    'template_project' => 0
  }, :partial => 'settings/settings'
end
