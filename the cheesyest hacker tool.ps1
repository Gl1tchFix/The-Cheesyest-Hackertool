﻿
$cheeses = "ACKAWI", "ASADERO", "ASIAGO", "BABY-SWISS", "BAKERS-CHEESE", "BALADI", "BASKET-CHEESE", "BREAKFAST-CHEESE", "BRIE", "BRIE(TRIPLE-CRÈME)", "CAMEMBERT", "CARMODY", "CHANTALENO", "CHEDDAR", "CHEDDAR(RAW-MILK)", "COLBY", "COLBY/JACK", "COTIJA", "COTIJA(QUESO-ANEJO)", "COTTAGE-CHEESE(FARMER’S-CHEESE)", "CREAM-CHEESE", "CRESCENZA", "CURD", "DRY-JACK-EDAM", "ENCHILADO", "ENCHILADO", "ANEJO", "FETA", "FOLDED-CHEESE", "FONTINA", "FROMAGE-BLANC", "FRYING-CHEESE", "GOUDA", "GOUDA(RAW-MILK)", "HAVARTI", "LONGHORN", "MANCHEGO", "MARBLE", "CHEDDAR", "MASCARPONE", "MENONITA", "MONTEREY-JACK-MOZZARELLA(LOW-MOISTURE,PART-SKIM)", "MOZZARELLA(WATER-PACKED)", "OAXACA", "PANELA", "PORT-SALUT(ALSO-PORT-DU-SALUT-OR-ST.-PAULIN)", "PROVOLONE", "QUARK", "QUESO-BLANCO", "QUESO-BLANCO-FRESCO(QUESO-PARA-FRIER)", "QUESO-BLANCO-FRESCO(QUESO-PARA-FRIER)-&-QUESO-FRESCO-QUESO-FRESCO-REQUESON", "RICOTTA", "ROMANO", "SCAMORZA", "SCHLOSS", "ST.GEORGE", "STRING", "SYRIAN(ARMENIAN-STRING)", "TELEME"
$i = 0

cls
$Host.UI.RawUI.ForegroundColor = "green"

While ($i -le 10) {

$rnd = Get-Random -Maximum $cheeses.Length
$cheese = $cheeses[$rnd]

$encoded = [system.Text.Encoding]::Default.GetBytes($cheese) | %{[System.Convert]::ToString($_,2).PadLeft(8,'0') }
write-host $encoded -NoNewline
write-host ""



}