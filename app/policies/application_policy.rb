# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :client, :record

  def initialize(client, record)
    @client = client
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(client, scope)
      @client = client
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :client, :scope
  end
end
