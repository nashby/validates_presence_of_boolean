require 'test_helper'

describe ValidatesPresenceOfBoolean::NotNilValidator do
  let(:model_class_new_syntax) do
    model_class = Class.new do
      include ActiveModel::Validations

      validates :admin, not_nil: true

      attr_reader :admin

      def initialize(admin)
        @admin = admin
      end

      def self.name
        "ZOMG"
      end
    end
  end

  let(:model_class_old_syntax) do
    model_class = Class.new do
      include ActiveModel::Validations

      validates_presence_of_boolean :admin

      attr_reader :admin

      def initialize(admin)
        @admin = admin
      end

      def self.name
        "ZOMG"
      end
    end
  end

  def model_new(admin)
    model_class_new_syntax.new(admin)
  end

  def model_old(admin)
    model_class_old_syntax.new(admin)
  end

  it 'is valid when attr is true' do
    model_new(true).must_be :valid?
    model_old(true).must_be :valid?
  end

  it 'is valid when attr is false' do
    model_new(false).must_be :valid?
    model_old(false).must_be :valid?
  end

  it 'is not valid when attr is nil' do
    model_new(nil).wont_be :valid?
    model_old(nil).wont_be :valid?
  end
end
