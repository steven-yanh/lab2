#!/bin/bash

sqlite3 data.db ".mod csv"
sqlite3 data.db "SELECT Car_ID,Year,Make,Model,(Racer_Turbo+Racer_Supercharged+Racer_Performance+Racer_Horsepower+Car_Overall+
Engine_Modifications+Engine_Performance+Engine_Chrome+Engine_Detailing+Engine_Cleanliness+Body_Frame_Undercarriage+Body_Frame_Suspension
+Body_Frame_Chrome+Body_Frame_Detailing+Body_Frame_Cleanliness+Mods_Paint+Mods_Body+Mods_Wrap+Mods_Rims+Mods_Interior+Mods_Other+Mods_ICE
+Mods_Aftermarket+Mods_WIP+Mods_Overall) AS Total
FROM data
ORDER BY
    Total DESC "
