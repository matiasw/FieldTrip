
#ifndef SDF_FXH
#include <packs\happy.fxh\sdf.fxh>
#endif

////////////////////////////////////////////////////////////////////////////////////////////////
//
//		2D Texture Based Distance Field
//
////////////////////////////////////////////////////////////////////////////////////////////////
// This token will be replaced with function name via RegExpr: "FN_"
#ifndef SF2D

// Paramaters
float4x4 FN_InvMat : FN_INVMAT;
Texture2D FN_dTex : FN_DTEX;
SamplerState FN_Samp : Immutable;


float FN_ (float2 p)
{
	float d = fDistTexture(p, FN_dTex, FN_Samp, FN_InvMat);
	return d;
}

#define SF2D FN_
#endif
////////////////////////////////////////////////////////////////////////////////////////////////



technique11 RemoveMe{}

