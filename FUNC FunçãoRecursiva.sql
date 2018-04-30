alter function functeste(@teste int)returns integer
begin
	if @teste <= 1
	begin
	return 1
	end
	return @teste + (select dbo.functeste(@teste -1))
end

Select dbo.functeste(1)