class JournalRecord
  attr_accessor :surname, :group, :mark1,
  :mark2, :mark3
  def initialize(surname, group, mark1, mark2, mark3)
    @surname, @group, @mark1, @mark2, @mark3 = surname, group, mark1, mark2, mark3
  end
end

class Journal
  def initialize(record_list)
    @record_list = record_list
  end

  def debt
    debt_guys = @record_list.select { |record| record.mark1 == nil ||
                                        record.mark2 == nil ||
                                        record.mark3 == nil }
    debt_guys.each { |guy| puts guy.surname }
  end

  def marks_percent
    sum = 0.0
    @record_list.each do |record|
      sum += record.mark1.nil? ? 0 : record.mark1
      sum += record.mark2.nil? ? 0 : record.mark2
      sum += record.mark3.nil? ? 0 : record.mark3
    end
    (sum / (@record_list.length * 15)) * 100
  end

  def good_marks_percent
    goodfellas = 0
    @record_list.each do |record|
      goodfellas += 1 if goodfella?(record)
    end
    goodfellas * 100 / @record_list.length
  end

  private

  def goodfella?(record)
    if (!record.mark1.nil? && record.mark1 >= 4) ||
      (!record.mark2.nil? && record.mark2 >= 4) ||
      (!record.mark3.nil? && record.mark3 >= 4)
      true
    end
    false
  end

  def best_subj
    geom = 0.0
    alg = 0.0
    inform = 0.0
    @record_list.each do |record|
      geom += record.mark1.nil? ? 0 : record.mark1
      alg += record.mark2.nil? ? 0 : record.mark2
      inform += record.mark3.nil? ? 0 : record.mark3
    end
    max = geom
    str = "GEOMETRY"
    if alg > max
      max = alg
      str = "ALGEBRA"
    end
    if inform > max
      max = inform
      str = "INFORMATICS"
    end
    str
  end

  def groups_marks_desc
    groups_marks_total = Hash.new(0)
    groups_stud = Hash.new(0)
    @record_list.each do |record|
      groups_stud[record.group] += 1
      groups_marks_total[record.group] += record.mark1.nil? ? 0 : record.mark1
      groups_marks_total[record.group] += record.mark2.nil? ? 0 : record.mark2
      groups_marks_total[record.group] += record.mark3.nil? ? 0 : record.mark3
    end
    groups_marks_avg = Hash.new
    groups_marks_total.each do |key, _|
      groups_marks_avg[key] = groups_marks_total[key] / (groups_stud[key] * 15)
    end
    groups_marks_avg.sort_by {|k, v| v}.reverse
  end
end
