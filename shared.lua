Config = {}

Config.SafeZones = {
    {
        name = "Garage SafeZone", -- [HU] = Ez a név fog megjeleni a blip neveként a térképen ha be van kapcsolva a blip
        radius = 40.0, -- [HU] = Ez a zóna bérete hogy milyen méretű legyen a safezone-od
        coords = vector3(223.0319, -791.9547, 30.7169), -- [HU] = Ide add meg a safezone kordinátáját
        debug = true, -- [HU] = Itt ki tuddd kapcsolni a zóna debug megjelenítését. Ha true akkor látszódik a safezone mérete ha false akkor nem

        blip = true, -- [HU] = Itt ki és be tudod kapcsolni hogy legyen a blip a térképen
        blipid = 487, -- [HU] = Itt meg tudod adni hogy a téképen milyen blip legyen. Az alábbi linken találod a blip id-ket: https://docs.fivem.net/docs/game-references/blips/
        blipcolour = 2 -- [HU] = Itt tudod állítani a blip színét. Az alábbi linken találod a színkódokat: https://docs.fivem.net/docs/game-references/blips/
    }
}

Notify = function (message, position, type) -- Ha saját notify-t szeretnél be állítani itt megteheted. Add meg a notify-od triggerét vagy exportját a jelenlegi helyett és add meg a paramétereket.
    lib.notify({
        title = message,
        type = type,
        position = position,
        showDuration = false
    })
end