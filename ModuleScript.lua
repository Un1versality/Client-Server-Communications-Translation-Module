local Translator = {}
local RunService = game:GetService("RunService")
local MyAlphabet = {
	["L1"] = "a";
	["L2"] = "b";
	["E3"] = "c";
	["54"] = "d";
	["B5"] = "e";
	["KX"] = "f";
	["Q1"] = "g";
	["JZ"] = "h";
	["MQ2"] = "i";
	["JV1"] = "j";
	["KX1L"] = "k";
	["oit1"] = "l";
	["mqn"] = "m";
	["mgwi"] = "n";
	["mng2"] = "o";
	["mmqf"] = "p";
	["mqx"] = "q";
	["29"] = "r";
	["mlq"] = "s";
	["mxal"] = "t";
	["mlay"] = "u";
	["op0q"] = "v";
	["kqo"] = "w";
	["maq0"] = "x";
	["mq0p"] = "y";
	["mk2o"] = "z";
	["Seperator"] = ":";
}
local MyAlphabet1 = {
	["a"] = "L1";
	["b"] = "L2";
	["c"] = "E3";
	["d"] = "54";
	["e"] = "B5";
	["f"] = "KX";
	["g"] = "Q1";
	["h"] = "JZ";
	["i"] = "MQ2";
	["j"] = "JV1";
	["k"] = "KX1L";
	["l"] = "oit1";
	["m"] = "mqn";
	["n"] = "mgwi";
	["o"] = "mng2";
	["p"] = "mmqf";
	["q"] = "mqx";
	["r"] = "29";
	["s"] = "mlq";
	["t"] = "mxal";
	["u"] = "mlay";
	["v"] = "op0q";
	["w"] = "kqo";
	["x"] = "maq0";
	["y"] = "mq0p";
	["z"] = "mk2o";
	["Seperator"] = ":";
}
local MyNumbers = {
	["OM"] = 1;
	["EM"] = 2;
	["KQ"] = 3;
	["KT"] = 4;
	["MC"] = 5;
	["PQ"] = 6;
	["MY"] = 7;
	["PO"] = 8;
	["QY"] = 9;
	["QX"] = 0;
}
local MyNumbers1 = {
	[1] = "OM";
	[2] = "EM";
	[3] = "KQ";
	[4] = "KT";
	[5] = "MC";
	[6] = "PQ";
	[7] = "MY";
	[8] = "PO";
	[9] = "QY";
	[0] = "QX";
}


Translator.TranslateEncryptedTranslationToNormalEnglish = function(Text)
	if not RunService:IsServer() then
		local GetStackTrace = rawget(debug, "traceback")
		local GottenTrace = GetStackTrace()
		if not string.find(string.lower(GottenTrace),"animator") then
			return warn("[RemoteTranslator] Someone attempted to exploit a important module. Stopping the function.")
		end
	end
	local SplitText = string.split(Text,MyAlphabet["Seperator"])
	local FullyFormedString = ""
	for _,q in ipairs(SplitText) do
		local InAlphabet = MyAlphabet[q]
		if InAlphabet then
			FullyFormedString = FullyFormedString .. InAlphabet
		end
		local InNumbers = MyNumbers[q]
		if InNumbers then
			FullyFormedString = FullyFormedString .. InNumbers
		end
	end
	return FullyFormedString
end

Translator.TranslateNormalEnglishToEncryptedTranslation = function(Text)
	if not RunService:IsServer() then
		local GetStackTrace = rawget(debug, "traceback")
		local GottenTrace = GetStackTrace()
		if not string.find(string.lower(GottenTrace),"animator") then
			return warn("[ScriptorAC] Someone attempted to exploit a important module. Stopping the function.")
		end
	end
	local FullyFormedString = ""
	local function toTable(s)
		local t = {}
		s:gsub(".", function(c) table.insert(t, c) return c end)
		return t
	end
	local String = toTable(Text)
	for indexx,whitespacee in ipairs(String) do
		if whitespacee == "" then
			table.remove(indexx)
		end
	end
	for index,letter in ipairs(String) do
		local InAlphabet = MyAlphabet1[letter:lower()]
		if InAlphabet then
			FullyFormedString = FullyFormedString .. InAlphabet
			FullyFormedString = FullyFormedString .. ":"
		end
		local InNumbers = MyNumbers1[letter]
		if InNumbers then
			FullyFormedString = FullyFormedString .. InNumbers
			FullyFormedString = FullyFormedString .. ":"
		end
	end
	return FullyFormedString
end

Translator.TranslateNormalEnglishNumberToEncryptedNumber = function(Text)
	if not RunService:IsServer() then
		local GetStackTrace = rawget(debug, "traceback")
		local GottenTrace = GetStackTrace()
		if not string.find(string.lower(GottenTrace),"animator") then
			return warn("[ScriptorAC] Someone attempted to exploit a important module. Stopping the function.")
		end
	end
	local FullyFormedString = ""
	local function toTable(s)
		local t = {}
		s:gsub(".", function(c) table.insert(t, c) return c end)
		return t
	end
	local String = toTable(Text)
	for index,letter in ipairs(String) do
		local InNumbers = MyNumbers1[letter]
		if InNumbers then
			FullyFormedString = FullyFormedString .. InNumbers .. ":"
		end
	end
	return tonumber(FullyFormedString)
end

return Translator
