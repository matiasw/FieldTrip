
////////////////////////////////////////////////////////////////////////////////////////////////
//
//		3D Volume Texture Distance Function
//
////////////////////////////////////////////////////////////////////////////////////////////////
// This token will be replaced with function name via RegExpr: "FN_"

// ensures the function is defined only once per instance
#ifndef FN_BODY 
#define FN_BODY


#ifndef SDF_FXH
#include <packs\happy.fxh\sdf.fxh>
#endif

// DEFINES
#ifndef FN_SAMPLEMODE
#define FN_SAMPLEMODE Clamp
#endif


// Paramaters
float4x4 FN_InvMat : FN_INVMAT;
Texture3D FN_dVol : FN_DVOL;
float FN_repeat : FN_REPEAT;
SamplerState FN_Samp : Immutable
{
	Filter = MIN_MAG_MIP_LINEAR;
	AddressU = FN_SAMPLEMODE;
	AddressV = FN_SAMPLEMODE;
	AddressW = FN_SAMPLEMODE;
};



float FN_ (float3 p)
{
	return fDistVolume(p, FN_dVol, FN_Samp, FN_InvMat, FN_repeat);

}
// end of the function body
#endif 

////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef SF3D
#define SF3D FN_
#endif
////////////////////////////////////////////////////////////////////////////////////////////////



technique11 RemoveMe{}

