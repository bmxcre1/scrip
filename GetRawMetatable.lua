local function deep_copy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deep_copy(orig_key)] = deep_copy(orig_value)
        end
        setmetatable(copy, deep_copy(getmetatable(orig)))
    else
        copy = orig
    end
    return copy
end

getgenv().getrawmetatable = function(obj)
    local raw_meta = debug.getmetatable(obj)
    if not raw_meta then return nil end

    local function extract_tables(tbl)
        local tables = {}
        for k, v in pairs(tbl) do
            if type(v) == "table" then
                tables[k] = deep_copy(v)
            end
        end
        return tables
    end

    local all_tables = extract_tables(raw_meta)
    return {raw_meta = raw_meta, all_tables = all_tables}
end

print("[+] Loaded getrawmetatable(<Object>)")

