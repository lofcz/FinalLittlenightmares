//---always call when game ends---//
//resets gama back to normal (not needed if done else where in game,
//                              but good to have, just incase)
external_call(global.ResetGamma);
//frees memory space
external_free("GmGammaDll.dll");
