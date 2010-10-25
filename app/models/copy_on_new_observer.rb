class CopyOnNewObserver < ActiveRecord::Observer
  observe :project

  cattr_reader :available_settings
  @@available_settings = %w(wiki versions issue_categories issues members queries boards)

  def after_create(object)
    if object.is_a?(Project) && Setting.plugin_copy_on_new['template_project'].to_i != 0
      template_project = Project.find(Setting.plugin_copy_on_new['template_project'].to_i)
      object.copy(template_project)
      object.save
      if template_project
      end
    end
  end

end
