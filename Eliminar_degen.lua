local personaje =game.Players.LocalPlayer
--Array con términos prohibidos,debe estar en minúscula
local prohibido={"55ox95","cmz","bull","goon","bbc","gooning","porn","snowbunny","fuck","sex","snow_bunny","vore","loli","furry","porno","sumiso","submisive"}
function EstaEnArraysimple(arr_permitido, nombre)
	for i, value in ipairs(arr_permitido) do
		if value == nombre then
			return true
		end
		print()
	end

	return false
end

function isInArray(arr, nombre)
	--Array con nombres permitidos,debe estar en minúscula 
	local permitido={""}
	for i, value in ipairs(arr) do
		if string.find(nombre, value, 1, true) and EstaEnArraysimple(permitido, nombre)==false then
			personaje:Kick("Nombre de usuario inadecuado.")
		
			return true 
		end
	end
	return false -- Return false after checking all elements in arr
end

local nombre=personaje.Name
local nombre_display=personaje.DisplayName
isInArray(prohibido,string.lower(nombre))
isInArray(prohibido,string.lower(nombre_display))





