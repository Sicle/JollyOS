local _data =
{
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil
}


Inventory =
{
    Scan = function( slot )
        if scan ~= nil then
            if slot < 1 then
                slot = 1
            elseif slot > 16 then
                slot = 16
            end

            _data[ slot ] = turtle.getItemDetail( slot )
            return _data[ slot ]
        end

        local prevSlot = turtle.getSelectedSlot()

        for i = 1, 16 do
            _data[ i ] = turtle.getItemDetail( i )
        end

        turtle.select( prevSlot )
    end,

    Select = function( slot )
        if Inventory.GetSelectedSlot() ~= slot then
            turtle.select( slot )
        end
    end,

    GetSelectedSlot = function()
        return turtle.getSelectedSlot()
    end,

    GetItemName = function( slot )
        local _slot = slot

        if slot == nil then
            _slot = 1
        end

        if _data[ _slot ] == nil then
            return ""
        else
            return _data[ _slot ].name
        end
    end,

    GetItemCount = function( slot )
        local _slot = slot

        if slot == nil then
            _slot = 1
        end

        if _data[ _slot ] == nil then
            return 0
        else
            return _data[ _slot ].count
        end
    end,

    ToString = function()
        local buffer = ""

        for i = 1, 16 do
            if _data[ i ] ~= nil then
                if buffer ~= "" then
                    buffer = buffer .. ",\r\n"
                end
                buffer = buffer .. i .. " = " .. textutils.serialize( _data[ i ] )
            end
        end

        return buffer
    end
}


Inventory.Scan()
print( "Inventory module loaded" )
