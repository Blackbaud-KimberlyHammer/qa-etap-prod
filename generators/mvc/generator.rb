require 'thor'
require 'active_support/inflector'

class MvcGenerator < Thor

  attr_accessor :product, :name

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  include Thor::Actions

  desc "mvc WORKFLOW BASENAME", "creates model view controller in your project workflow directory"

  def mvc(product, name)

    self.product = product
    self.name = name

    template "model.rb.erb", File.join(workflows_path, product, "#{name}_model.rb")
    template "view.rb.erb", File.join(workflows_path, product, "#{name}_view.rb")
    template "controller.rb.erb", File.join(workflows_path, product, "#{name}_controller.rb")

    append_to_file "#{workflows_path}/../workflows.rb" do
      "#{workflow_loader} '#{product.downcase}/#{name.downcase}'\n"
    end

  end

  no_commands do

    def workflows_path
      "lib/cukesetaptesting/workflows"
    end

    def workflow_loader
      "Cukesetaptesting::Loader.load_workflow"
    end

    def create_modules
      product.split('/').zip(indents).map { |e| "#{e[1]}module #{e[0].camelize}" }.join("\n").rstrip
    end

    # for workflow a/b/c returns ["", "  ", "    "] spaces for formatting output plus initial indentation
    def indents
      @indents ||= indents_calc_and_format
    end

    def indents_calc_and_format
      i = []
      product.split('/').each_index { |e| i << e * 2 }
      i.map { |e| "\s" * e }.map { |e| "\s\s#{e}" }
    end

    def create_module_end
      indents.reverse.map { |e| "#{e}end" }.join("\n")
    end

  end
end
