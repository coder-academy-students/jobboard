class PagesController < ApplicationController

  def about
  end

  def admin
    if current_user.has_role? :admin
      @new_companies = Company.where(approved: false)
      @companies = Company.alphabetical
      @skills = Skill.alphabetical
      @active_jobs = Job.active
    else
      redirect_to root_path
    end
  end

  def contact
  end

  def dashboard
    @company = current_user.company
    @jobs = @company.jobs
  end

end
