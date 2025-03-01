
////////////////////////////////////////////////////////////////////////////////////////////////
//
//		Pre Curl Scaler Direction Function
//
////////////////////////////////////////////////////////////////////////////////////////////////
// This token will be replaced with function name via RegExpr: "FN_"

// ensures the function is defined only once per instance
#ifndef FN_BODY 
#define FN_BODY

#ifndef CALC_FXH
#include <packs\happy.fxh\calc.fxh>
#endif

// Parameters
float2 FN_direction : FN_DIRECTION = float2(1.0, 0.0);

// Input 2 Defualt option
#ifndef FN_INPUT
float2 FN_defualt (float2 p)
{
	return FN_direction; // if a function input is not provided defualt to semantic
}
#define FN_INPUT FN_defualt
#endif


	
float FN_ (float2 p)
{
	return preCurlDirection(p, FN_INPUT(p));
}
// end of the function body
#endif 

////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef SF2D
#define SF2D FN_
#endif
////////////////////////////////////////////////////////////////////////////////////////////////



technique11 RemoveMe{}

