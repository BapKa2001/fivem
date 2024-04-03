QBShared = QBShared or {}
QBShared.Vehicles = QBShared.Vehicles or {}

QBShared.Vehicles = {
    --- Compacts 
    ['asbo'] = { -- this has to match the sqawm code of the vehicle 
        ['name'] = 'Asbo',         -- This is the display of the vehicle
        ['brand'] = 'Maxwell',     -- This is the vehicle's brand (Ford, Chevrolet, BMW, Mercedes, etc)
        ['model'] = 'asbo',        -- This must match the spawn code of the vehicle
        ['price'] = '4000',          -- The price that the vehicle sells for
        ['category'] = 'compacts', -- Catgegory of the vehilce, stick with GetVehicleClass() options https://docs.fivem.net/natives/?_0x29439776AAA00A62
        ['categoryLabel'] = 'Compacts', -- Customize for your Vehicle Shop headings (can even inlude spaces)
        ['hash'] = 'automobile',   --  This has to  match the spawn code of the vehicle and must be surrounded by backticks. Example of a Backtick:'
        ['shop'] = 'pdm',          -- Can be a single shop or multiple shops. For multiple shops for example {'shopname1','shopname2','shopname3'}
    },
    ['bmws1000rr'] = {
        ['name'] = 'bmws1000rr',
        ['brand'] = 'bmws1000rr',
        ['model'] = 'bmws1000rr',
        ['price'] = '1500000',
        ['category'] = 'EDM',
        ['categoryLabel'] = 'Addon',
        ['hash'] = 'bmws1000rr',
        ['shop'] = 'pdm',
    },
    ['cbr1000rrr'] = {
        ['name'] = 'cbr1000rrr',
        ['brand'] = 'cbr1000rrr',
        ['model'] = 'cbr1000rrr',
        ['price'] = '1500000',
        ['category'] = 'EDM',
        ['categoryLabel'] = 'Addon',
        ['hash'] = 'cbr1000rrr',
        ['shop'] = 'pdm',
    },
}

for i = 1, #Vehicles do
    QBShared.Vehicles[Vehicles[i].model] = {
        spawncode = Vehicles[i].model,
        name = Vehicles[i].name,
        brand = Vehicles[i].brand,
        model = Vehicles[i].model,
        price = Vehicles[i].price,
        category = Vehicles[i].category,
        hash = joaat(Vehicles[i].model),
        type = Vehicles[i].type,
        shop = Vehicles[i].shop
    }
end