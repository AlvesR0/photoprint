#include <string.h>

#include <gtk/gtkframe.h>
#include <gtk/gtkexpander.h>
#include <gtk/gtksizegroup.h>
#include <gtk/gtklabel.h>

#include "stpui_widgets/dimension.h"
#include "support/signature.h"
#include "pp_pageextent.h"

#include "pp_sigcontrol.h"

#include "config.h"
#include "gettext.h"
#define _(x) gettext(x)

enum {
	CHANGED_SIGNAL,
	REFLOW_SIGNAL,
	LAST_SIGNAL
};

static guint pp_sigcontrol_signals[LAST_SIGNAL] = { 0 };

static void pp_sigcontrol_class_init (pp_SigControlClass *klass);
static void pp_sigcontrol_init (pp_SigControl *stpuicombo);


static void rows_changed(GtkWidget *wid,gpointer *ob)
{
	pp_SigControl *lo=(pp_SigControl *)ob;
	Signature *sig=lo->sig;
	GtkSpinButton *spin=GTK_SPIN_BUTTON(wid);
	int v=gtk_spin_button_get_value_as_int(spin);
	sig->SetRows(v);
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[CHANGED_SIGNAL], 0);
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[REFLOW_SIGNAL], 0);
}


static void cols_changed(GtkWidget *wid,gpointer *ob)
{
	pp_SigControl *lo=(pp_SigControl *)ob;
	Signature *sig=lo->sig;
	GtkSpinButton *spin=GTK_SPIN_BUTTON(wid);
	int v=gtk_spin_button_get_value_as_int(spin);
	sig->SetColumns(v);
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[CHANGED_SIGNAL], 0);
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[REFLOW_SIGNAL], 0);
}


static void hgutter_changed(GtkWidget *wid,gpointer *ob)
{
	pp_SigControl *lo=(pp_SigControl *)ob;
	Signature *sig=lo->sig;
	int v=int(dimension_get_pt(DIMENSION(wid)));
	sig->SetGutters(v,sig->GetVGutter());
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[CHANGED_SIGNAL], 0);
}


static void vgutter_changed(GtkWidget *wid,gpointer *ob)
{
	pp_SigControl *lo=(pp_SigControl *)ob;
	Signature *sig=lo->sig;
	int v=int(dimension_get_pt(DIMENSION(wid)));
	sig->SetGutters(sig->GetHGutter(),v);
	g_signal_emit(G_OBJECT (ob),pp_sigcontrol_signals[CHANGED_SIGNAL], 0);
}


void pp_sigcontrol_refresh(pp_SigControl *ob)
{
	ob->sig->ReCalc();
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(ob->rows),ob->sig->GetRows());
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(ob->cols),ob->sig->GetColumns());
	dimension_set_pt(DIMENSION(ob->hgutter),ob->sig->GetHGutter());
	dimension_set_pt(DIMENSION(ob->vgutter),ob->sig->GetVGutter());
}


void pp_sigcontrol_set_unit(pp_SigControl *ob,enum Units unit)
{
	dimension_set_unit(DIMENSION(ob->hgutter),unit);
	dimension_set_unit(DIMENSION(ob->vgutter),unit);
}


GtkWidget*
pp_sigcontrol_new (Signature *sig,enum Units unit)
{
	pp_SigControl *ob=PP_SIGCONTROL(g_object_new (pp_sigcontrol_get_type (), NULL));
//	gtk_box_set_spacing(GTK_BOX(ob),5);

	ob->sig=sig;
	
	GtkWidget *label;


	// Layout frame


	gtk_expander_set_expanded(GTK_EXPANDER(ob),true);
	gtk_expander_set_label(GTK_EXPANDER(ob),_("Layout"));

	GtkWidget *table=gtk_table_new(4,2,false);
	gtk_table_set_row_spacings(GTK_TABLE(table),5);

	gtk_container_add(GTK_CONTAINER(ob),table);

	//    Columns spin button
	
	label=gtk_label_new(_("Columns:"));
	gtk_misc_set_alignment(GTK_MISC(label),1.0,0.5);
	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(label),0,1,0,1);
	gtk_widget_show(label);

	ob->cols=gtk_spin_button_new_with_range(1.0,10.0,1.0);
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(ob->cols),ob->sig->GetColumns());
	g_signal_connect(G_OBJECT(ob->cols),"value-changed",G_CALLBACK(cols_changed),ob);
	gtk_widget_show(ob->cols);

	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(ob->cols),1,2,0,1);

	//    Rows spin button

	label=gtk_label_new(_("Rows:"));
	gtk_misc_set_alignment(GTK_MISC(label),1.0,0.5);
	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(label),0,1,1,2);
	gtk_widget_show(label);

	ob->rows=gtk_spin_button_new_with_range(1.0,10.0,1.0);
	gtk_spin_button_set_value(GTK_SPIN_BUTTON(ob->rows),ob->sig->GetRows());
	g_signal_connect(G_OBJECT(ob->rows),"value-changed",G_CALLBACK(rows_changed),ob);
	gtk_widget_show(ob->rows);

	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(ob->rows),1,2,1,2);


	// Gutters frame

	//    HGutter spin button

	
	label=gtk_label_new(_("Gap:"));
	gtk_misc_set_alignment(GTK_MISC(label),1.0,0.5);
	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(label),2,3,0,1);
	gtk_widget_show(label);

	ob->hgutter=dimension_new(0.0,200.0,unit);
	g_signal_connect(G_OBJECT(ob->hgutter),"value-changed",G_CALLBACK(hgutter_changed),ob);
	gtk_widget_show(ob->hgutter);

	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(ob->hgutter),3,4,0,1);

	//    VGutter spin button

	label=gtk_label_new(_("Gap:"));
	gtk_misc_set_alignment(GTK_MISC(label),1.0,0.5);
	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(label),2,3,1,2);
	gtk_widget_show(label);

	ob->vgutter=dimension_new(0.0,200.0,unit);
	g_signal_connect(G_OBJECT(ob->vgutter),"value-changed",G_CALLBACK(vgutter_changed),ob);
	gtk_widget_show(ob->vgutter);

	gtk_table_attach_defaults(GTK_TABLE(table),GTK_WIDGET(ob->vgutter),3,4,1,2);

	gtk_widget_show(table);

	pp_sigcontrol_refresh(ob);

	return(GTK_WIDGET(ob));
}


GType
pp_sigcontrol_get_type (void)
{
	static GType stpuic_type = 0;

	if (!stpuic_type)
	{
		static const GTypeInfo pp_sigcontrol_info =
		{
			sizeof (pp_SigControlClass),
			NULL, /* base_init */
			NULL, /* base_finalize */
			(GClassInitFunc) pp_sigcontrol_class_init,
			NULL, /* class_finalize */
			NULL, /* class_data */
			sizeof (pp_SigControl),
			0,
			(GInstanceInitFunc) pp_sigcontrol_init,
		};
		stpuic_type = g_type_register_static (GTK_TYPE_EXPANDER, "pp_SigControl", &pp_sigcontrol_info, (GTypeFlags)0);
	}
	return stpuic_type;
}


static void
pp_sigcontrol_class_init (pp_SigControlClass *klass)
{
	pp_sigcontrol_signals[CHANGED_SIGNAL] =
	g_signal_new ("changed",
		G_TYPE_FROM_CLASS (klass),
		GSignalFlags(G_SIGNAL_RUN_FIRST | G_SIGNAL_ACTION),
		G_STRUCT_OFFSET (pp_SigControlClass, changed),
		NULL, NULL,
		g_cclosure_marshal_VOID__VOID, G_TYPE_NONE, 0);
	pp_sigcontrol_signals[REFLOW_SIGNAL] =
	g_signal_new ("reflow",
		G_TYPE_FROM_CLASS (klass),
		GSignalFlags(G_SIGNAL_RUN_FIRST | G_SIGNAL_ACTION),
		G_STRUCT_OFFSET (pp_SigControlClass, reflow),
		NULL, NULL,
		g_cclosure_marshal_VOID__VOID, G_TYPE_NONE, 0);
}


static void
pp_sigcontrol_init (pp_SigControl *ob)
{
	ob->sig=NULL;
}
