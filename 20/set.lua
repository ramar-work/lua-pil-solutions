-- ....
local Set = {}

local mt = { 
	__sub = function (a, b)
		local tt = {}
		for k,_ in pairs( a ) do
			if not b[k]
			then
				tt[k] = a[k]
			end
		end
		return tt
	end

,	__len = function (a)
		local count = 0
		for _,v in pairs( a ) do count = count + 1 end
		return count	
	end
}

-- create a new set with the values of a given list
function Set.new (l)
 local set = {}
 for _, v in ipairs(l) do set[v] = true end
 setmetatable( set, mt )
 return set
end

function Set.union (a, b)
 local res = Set.new{}
 for k in pairs(a) do res[k] = true end
 for k in pairs(b) do res[k] = true end
 return res
end

function Set.intersection (a, b)
 local res = Set.new{}
 for k in pairs(a) do
 res[k] = b[k]
 end
 return res
end

 -- presents a set as a string
function Set.tostring (set)
 local l = {} -- list to put all elements from the set
 for e in pairs(set) do
 l[#l + 1] = tostring(e)
 end
 return "{" .. table.concat(l, ", ") .. "}"
end


return Set
