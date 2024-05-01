class UserPolicy < ApplicationPolicy
  def index?
    user.admin? # Only admins can access the index page
  end

  def show?
    record == user || user.admin? # Users can view their own profile or admins can view any profile
  end

  def create?
    user.admin? # Only admins can create new users
  end

  def update?
    record == user || user.admin? # Users can update their own profile or admins can update any profile
  end

  def destroy?
    user.admin? # Only admins can delete users
  end
end
