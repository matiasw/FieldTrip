
////////////////////////////////////////////////////////////////////////////////////////////////
//
//		Gain function on the output of a 3D vector field
//
////////////////////////////////////////////////////////////////////////////////////////////////
// This token will be replaced with class name: FN_

// ensures the function is defined only once per instance
#ifndef FN_BODY 
#define FN_BODY

#ifndef MAP_FXH
#include <packs\happy.fxh\map.fxh>
#endif


// Input VF3D placeholder
#ifndef FN_INPUT
#define FN_INPUT normalize
#endif

// Paramaters
float3 FN_control : FN_CONTROL = 0.5;

float3 FN_ (float3 p)
{
	return gain(FN_INPUT(p), FN_control);
}
// end of the function body
#endif 

////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef VF3D
#define VF3D FN_
#endif
////////////////////////////////////////////////////////////////////////////////////////////////



technique11 RemoveMe{}

