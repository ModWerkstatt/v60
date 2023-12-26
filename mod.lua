function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
			{
				name = "ModWerkstatt",
				role = "CREATOR",
			},
		},
		tags = { "railroad", "locomotive", "diesel", "shunter" },

        params = {
			{
				key = "v60fake",
				name = _("Fake_v60"),
				values = { _("No"), _("Yes"), },
				tooltip = _("option_fake_v60_desc"),
				defaultIndex = 0,
			},
        },
	},
	options = {
	},

	runFn = function (settings, modParams)
	local params = modParams[getCurrentModId()]

        local hidden = {
			["_fake.mdl"] = true,
        }

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/([^/]*.mdl)')
			return (modelName==nil or hidden[modelName]~=true)
		end

        if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["v60fake"] == 0 then
				addFileFilter("model/vehicle", modelFilter)
			end
		else
			addFileFilter("model/vehicle", modelFilter)
		end

		addModifier( "loadModel", metadataHandler )
	end
	}
end
