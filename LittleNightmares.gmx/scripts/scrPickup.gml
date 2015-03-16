value = 1;
if (argument_count > 0)
   {
    value = argument[0];
   }
sound = sndCoin
if (argument_count > 1)
   {
    sound = argument[1];
   }   
if (mode = 1)
{
oPlayer.gold += value; 
scrEffectCoin() // Vytvoří částicový efekt
sound_play(sound) // Přehraje zvuk
mode = 2;
}
