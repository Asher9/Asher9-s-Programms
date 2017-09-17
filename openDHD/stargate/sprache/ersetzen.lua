-- pastebin run -f 
-- openDHD from Asher9
-- https://github.com/Asher9/Asher9-s-Programms/tree/master/openDHD

local sprachen  = ...

return {
  ["On"]              = sprachen.irisKontrolleNameAn,
  ["Off"]             = sprachen.irisKontrolleNameAus,
  ["Open"]            = sprachen.irisNameOffen,
  ["Opening"]         = sprachen.irisNameOeffnend,
  ["Closed"]          = sprachen.irisNameGeschlossen,
  ["Closing"]         = sprachen.irisNameSchliessend,
  ["Offline"]         = sprachen.irisNameOffline,
  ["Override"]        = sprachen.Eingriff,
  ["Manual"]          = sprachen.manueller,
  ["Control"]         = sprachen.IrisSteuerungName,
  ["Accepted"]        = sprachen.akzeptiert,
  ["Atmogood"]        = sprachen.atmosphere2 .. sprachen.atmosphereJA,
  ["Atmodangerous"]   = sprachen.atmosphere2 .. sprachen.atmosphereNEIN,
}
