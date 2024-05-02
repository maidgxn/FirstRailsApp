class ClientPolicy < ApplicationPolicy
  def update?
    client.admin? || record == client
  end

  def create?
    client.admin?
  end

  def destroy?
    client.admin?
  end
end
