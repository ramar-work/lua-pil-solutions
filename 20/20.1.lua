-- ....
Set = require( "set" )

sa = Set.new{ 15, 48, 49, 50 }
sb = Set.new{ 16, 48, 49, 53 }

a = sa - sb

for k,v in pairs(a) do
	print( k, v )
end
