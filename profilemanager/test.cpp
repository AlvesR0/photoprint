#include <iostream>

#include "profilemanager.h"
#include "configdb.h"

using namespace std;

int main(int argc,char **argv)
{
//	ConfigFile f;
//	ProfileManager pm(&f,"[Colour Management]");
//	pm.AddPath("$HOME/.color/icc");

#if 0
	const char *fn=NULL;
	while(fn=pm.GetNextFilename(fn))
	{
		cerr << fn << endl;	
	}

	int c=pm.GetIntentCount();
	cerr << c << " intents available" << endl;
	for(int i=-1;i<c;++i)
	{
		cerr << "Intent " << i << ": " << pm.GetIntentName(i) << endl;
		cerr << pm.GetIntentDescription(i) << endl;
	}
#endif

	CMSProfile *in=new CMSProfile("/home/amr/.color/icc/sRGB Color Space Profile.icm");
	cerr << in->GetFilename() << ", " << in->GetDescription() << ", " << int(in->GetColourSpace()) << endl;
	CMSProfile *out=new CMSProfile("/home/amr/.color/icc/CPxTFT.icm");
	CMSProfile *proof=new CMSProfile("/home/amr/.color/icc/R300_Tesco_20060906.icm");

//	cerr << (in==0) << ", " << (out==0) << ", " << (proof==0) << endl;

//	delete t;
//	delete out;

	CMSTransform *t=new CMSTransform(in,out,LCMSWRAPPER_INTENT_PERCEPTUAL);
	CMSTransform *t2=new CMSProofingTransform(in,out,proof,LCMSWRAPPER_INTENT_PERCEPTUAL,LCMSWRAPPER_INTENT_ABSOLUTE_COLORIMETRIC);
	delete t2;
	delete t;
	delete proof;
	delete out;
	delete in;

	return(0);
}
