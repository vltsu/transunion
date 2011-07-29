#encoding: UTF-8
class ReportsController < ApplicationController
  def salary_index
    year  = params[:year]  || Time.now.year
    month = params[:month] || Time.now.month
    @date = Time.local(year, month)
    @colleagues = User.find(:all)
  end

  def salary_colleague_stat
    @colleague = User.find(params[:id])
    year  = params[:year]
    month = params[:month]
    if !year || !month; raise "No year and month"; end;
    @date = Time.local(year,month)
    @requests = Request.find(:all, :conditions => "user_id = #{@colleague.id} AND month(created_at) = #{@date.month} AND year(created_at) = #{@date.year}")
  end

  def salary_colleague_payed
    @colleague = User.find(params[:id])
    year  = params[:year]
    month = params[:month]
    if !year || !month; raise "No year and month"; end;
    @date = Time.local(year,month)
    @finances = Finance.find(:all, :conditions => "salary_person_id = #{@colleague.id} AND month(date) = #{@date.month} AND year(date) = #{@date.year} AND local_type='outcome_salary' ")
  end

end
