fx_version'bodacious'
game 'gta5'

author 'Cedrick Alegroso'
description 'Optmized scripts pack '
version '2.1'




client_script {
  '@es_extended/locale.lua',


  --anti VDM 
  'cl_antivdm.lua',

  
--  'weapondmg.lua',

   
   'weapondmg1.lua',

  --carry 
  'cl_carry.lua',

  'cl_id.lua',

  'bleed.lua',

  'cl_accident.lua',

  'cl_crossarm.lua',

  'cl_disc.lua',

  --crouch
  'cl_crouch.lua',

  --damageragdoll
  --'cl_damageragdoll.lua',

  --whistle
 -- 'cl_whistle.lua',

  --takehostage
  'cl_takehostage.lua',

  --piggyback
  'cl_piggyback.lua',

  --seatshuf
  'cl_seatShuffle.lua',

  --point
  'cl_point.lua',

  --tpm
  --'cl_tpm.lua',


  --carhud
 -- 'SimpleCarHUD_cl.lua',


  --cooldown
  'cl_cooldown.lua',



  --katacke
 -- 'cl_katackle.lua',

  --medSystem
  'cl_med.lua',

  

  
  --noNPC
  'NoNPC.lua',

  --jumpy
 --- 'cl_jumpy.lua',

  --
 -- 'SimpleCarHUD_cl.lua',

  --blips
  --'esx_blips/client.lua',

     --emstoggle
     'EMS-toggleid/client.lua',

      --emstoggle
    --  'cl_zone.lua',


      --emstoggle
      'cl_3d.lua',

  --    'cl_hackdep.lua',

  --    'cl_attachments.lua',

      --blips
    'discord.lua',

   
}


server_script {
  '@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  
  --carry 
  'sv_carry.lua',


  'sv_disc.lua',
  --takeHostage
   'sv_takehostage.lua',

  --piggyback
  'sv_piggyback.lua',

  --tpm
  --'sv_tpm.lua',


  --cooldown
  'sv_cooldown.lua',



  --katacke
 -- 'sv_ktackle',

  --med
  'sv_med.lua',

  --med
  'sv_3d.lua',


    --blips
    --'esx_blips/server.lua',


     


     



    

    
}

files {
 
  "html/index.html",
  "html/success.ogg",
  "html/intro.ogg",
  "html/fail.ogg",
  "sounds/dlcheist3_game.dat151.rel",
  "sounds/dlcheist3_game.dat151.nametable",
  "sounds/dlcheist3_sounds.dat54.rel",
  "sounds/dlcheist3_sounds.dat54.nametable",
  "sounds/dlcheist3/door_hacking.awc",
  "sounds/dlcheist3/fingerprint_match.awc",

  'shellprops.ytyp'

  }


  data_file 'DLC_ITYP_REQUEST' 'shellprops.ytyp'


  ui_page "utk_hackdependency/html/index.html"

  data_file "AUDIO_GAMEDATA" "sounds/dlcheist3_game.dat"
  data_file "AUDIO_SOUNDDATA" "sounds/dlcheist3_sounds.dat"
  data_file "AUDIO_WAVEPACK" "sounds/dlcheist3"
  


dependencies {
    'es_extended',
   
}

