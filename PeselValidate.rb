class PeselValidate
	@pesel = 0

	def initialize(str1)
		@pesel=str1
	end

	def validate
		@pesel = @pesel.split(//).map(&:to_i)

		control=((1*@pesel[0]+3*@pesel[1]+7*@pesel[2]+9*@pesel[3]+1*@pesel[4]+3*@pesel[5]+7*@pesel[6]+9*@pesel[7]+1*@pesel[8]+3*@pesel[9])%10)
		print "\n" 
		if @pesel[10]==10-control || (@pesel[10]==0 && control%10==0)
			return true
		else
			return false
		end
	end
end
