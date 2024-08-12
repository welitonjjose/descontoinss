# frozen_string_literal: true

class DashboardController < ApplicationController
  def index; end

  def report
    @proponents = Proponent.all.group_by(&:salary_range)
  end
end
