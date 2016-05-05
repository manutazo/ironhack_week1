module Payable
	def hourly_salary
	@salary / 52
	end

	def yearly_salary
		->
	end
end

class Employee
	attr_reader :name, :email
	def initialize(name, email)
      @name = name
      @email = email
   	 end
end
​
class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
   		 end
​
	module  
	def calculate_salary
    	@hours_worked * @hourly_rate
    	end
end

class SalariedEmployee < Employee
	def initialize(name, email, salary)
		super(name, email)
		@salary = salary
		end
end

class MultiPaymentEmployee < Employee
	include Payable
	def initialize(name, email, salary, hourly_rate, hours_worked)
		super(name, email)
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
 
	def calculate_salary
		@hours_worked > 40 ? @salary  / 52 + (@hours_worked - 40) * @hourly_rate : @salary / 52
	end
end

class Payroll
	def initialize (employees)
		@employees = employees
	end

	module notification
		def notify_employees(employee, to_pay)
		puts "#{employee.email} notification your salary this week is: #{to_pay}"
	end
	end

end

	module  pay-employees
		def pay_employees
		@employees.each do |employee|
			to_pay = employee.calculate_salary
			#puts "#{employee.name} => #{to_pay}"
			notify_employees(employee, to_pay)
		end
		end
		end
	end



josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
urtzi = HourlyEmployee.new("Urzti", "urtzi@example.com", 15, 40)
manuel = HourlyEmployee.new("Manuel", "manuel@example.com", 15, 40)
​
employees = [josh, nizar, ted, urtzi, manuel]
payroll = Payroll.new(employees)
payroll.pay_employees