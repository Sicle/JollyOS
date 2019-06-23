local limit = turtle.getFuelLimit()


Fuel =
{
    Current = function()
        return turtle.getFuelLevel()
    end,

    Limit = function()
        return limit
    end,

    Check = function()
        return Fuel.Current() > 1000
    end,

    Refuel = function( slot, quantity )
        local _slot = slot
        local _quantity = quantity
        local prevSlot = Inventory.GetSelectedSlot()

        if slot == nil then
            _slot = turtle.getSelectedSlot()
        end
        if quantity == nil then
            _quantity = 1
        end

        Inventory.Select( slot )
        turtle.refuel( quantity )
        Inventory.Select( prevSlot )
    end,

    RefuelCoal = function()
        local prevSlot = Inventory.GetSelectedSlot()

        Inventory.Scan()

        for i = 1, 16 do
            if string.find( Inventory.GetItemName( i ), "coal" ) then
                while Inventory.GetItemCount( i ) > 1 do
                    Inventory.Select( i )
                    turtle.refuel( 1 )
                    Inventory.Scan( i )

                    if Fuel.Check() then
                        return
                    end
                end
            end
        end

        Inventory.Select( prevSlot )
    end
}


if not Fuel.Check() then
    Fuel.RefuelCoal()
end


print( "Fuel level: " .. Fuel.Current() .. "/" .. Fuel.Limit() )
print( "Fueling module loaded" )
