#ifndef LAYOUT_SINGLE_H
#define LAYOUT_SINGLE_H

#include <stdio.h>
#include <glib.h>
#include <gtk/gtkwidget.h>
#include <gdk/gdkpixbuf.h>

#include "imagesource/imagesource.h"
#include "support/pageextent.h"
#include "print.h"

#include "layoutdb.h"
#include "layout.h"

class Layout_Single_ImageInfo;
class PhotoPrint_State;

class Layout_Single : public Layout
{
	public:
	Layout_Single(PhotoPrint_State &state,Layout *oldlayout=NULL);
	virtual ~Layout_Single();
	const char *GetType();
	int GetCapabilities();
	int AddImage(const char *filename,bool allowcropping=false,PP_ROTATION rotation=PP_ROTATION_AUTO);
	void CopyImage(Layout_ImageInfo *ii);
	void Reflow();
	void SetPageExtent(PageExtent &pe);
	virtual void LayoutToDB(LayoutDB &db);
	virtual void DBToLayout(LayoutDB &db);
	virtual GtkWidget *CreateWidget();
	virtual void RefreshWidget(GtkWidget *widget);
	virtual ImageSource *GetImageSource(int page,CMColourDevice target=CM_COLOURDEVICE_PRINTER,CMTransformFactory *factory=NULL,int res=0);
	void UpdatePageSize();
	virtual Layout_ImageInfo *FirstSelected();
	virtual Layout_ImageInfo *NextSelected();
	Layout_Single_ImageInfo *ImageAt(int page);
	virtual void (*SetUnitFunc())(GtkWidget *wid,enum Units unit);
	friend class Layout_Single_ImageInfo;
};


class Layout_Single_ImageInfo : public Layout_ImageInfo
{
	public:
	Layout_Single_ImageInfo(Layout_Single &layout,const char *filename,int page,bool allowcropping=false,PP_ROTATION rotation=PP_ROTATION_AUTO);
	Layout_Single_ImageInfo(Layout_Single &layout,Layout_ImageInfo *ii,int page,bool allowcropping=false,PP_ROTATION rotation=PP_ROTATION_AUTO);
	virtual ~Layout_Single_ImageInfo();
	void DrawThumbnail(GtkWidget *widget,int xpos,int ypos,int width,int height);
	virtual ImageSource *GetImageSource(CMColourDevice target=CM_COLOURDEVICE_PRINTER,CMTransformFactory *factory=NULL);
	virtual LayoutRectangle *GetBounds();	// The dimensions of the image's "slot".
	virtual RectFit *GetFit(double scale);	// Details of the image's size after fitting to its slot.
	float hscale;
	float vscale;
	private:
	void Init();
	friend class Layout_Single;
};


#endif
