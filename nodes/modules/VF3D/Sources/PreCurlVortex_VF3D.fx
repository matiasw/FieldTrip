
////////////////////////////////////////////////////////////////////////////////////////////////
//
//		Pre Curl Vortex Function
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
StructuredBuffer<float3> FN_pointPosBuffer : FN_POINTPOSBUFFER;
StructuredBuffer<float3> FN_controlDirBuffer : FN_CONTROLDIRBUFFER; 
StructuredBuffer<float> FN_radiusBuffer : FN_RADIUSBUFFER; 
int FN_pointCount : FN_POINTCOUNT;
	
float3 FN_ (float3 p)
{
	float3 force = 0;
	for (uint i = 0; i < FN_pointCount; i++)
	{
		force += preCurlVortex(p, FN_pointPosBuffer[i], FN_controlDirBuffer[i], FN_radiusBuffer[i]);
	}
	
	return force;
}
// end of the function body
#endif 

////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef VF3D
#define VF3D FN_
#endif
////////////////////////////////////////////////////////////////////////////////////////////////


technique11 RemoveMe{}

