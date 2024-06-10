# frozen_string_literal: true

class TestTagArticleScaffold
  BASE_COMMAND_GENERATE = 'rails g model'
  BASE_COMMAND_DESTROY = 'rails d model'
  CLASS_NAME = 'TestTagArticle'
  COMMAND_OPTIONS = '--force --v1_table_name test_tag_articles'

  FIELDS = [
    'test_tag:references',
    'test_article:references'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end