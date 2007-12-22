/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GstTypeFindFactory.html
 * outPack = gstreamer
 * outFile = TypeFindFactory
 * strct   = GstTypeFindFactory
 * realStrct=
 * ctorStrct=
 * clss    = TypeFindFactory
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_type_find_factory_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.TypeFind
 * 	- gstreamer.Caps
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstCaps* -> Caps
 * 	- GstTypeFind* -> TypeFind
 * 	- GstTypeFindFactory* -> TypeFindFactory
 * module aliases:
 * local aliases:
 */

module gstreamer.TypeFindFactory;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;


private import glib.Str;
private import glib.ListG;
private import gstreamer.TypeFind;
private import gstreamer.Caps;




/**
 * Description
 * These functions allow querying informations about registered typefind
 * functions. How to create and register these functions is described in
 * the section
 * "Writing typefind functions".
 * Example14.how to write a simple typefinder
 *  typedef struct {
	 *  guint8 *data;
	 *  guint size;
	 *  guint probability;
	 *  GstCaps *data;
	 *  } MyTypeFind;
	 *  static void
	 *  my_peek (gpointer data, gint64 offset, guint size)
	 *  {
		 *  MyTypeFind *find = (MyTypeFind *) data;
		 *  if (offset >= 0  offset + size <= find->size) {
			 *  return find->data + offset;
		 *  }
		 *  return NULL;
	 *  }
	 *  static void
	 *  my_suggest (gpointer data, guint probability, GstCaps *caps)
	 *  {
		 *  MyTypeFind *find = (MyTypeFind *) data;
		 *  if (probability > find->probability) {
			 *  find->probability = probability;
			 *  gst_caps_replace (find->caps, caps);
		 *  }
	 *  }
	 *  static GstCaps *
	 *  find_type (guint8 *data, guint size)
	 *  {
		 *  GList *walk, *type_list;
	 *  MyTypeFind find = {data, size, 0, NULL};
 *  GstTypeFind gst_find = {my_peek, my_suggest, find, };
 *  walk = type_list = gst_type_find_factory_get_list();
 *  while (walk) {
	 *  GstTypeFindFactory *factory = GST_TYPE_FIND_FACTORY (walk->data);
	 *  walk = g_list_next (walk)
	 *  gst_type_find_factory_call_function (factory, gst_find);
 *  }
 *  g_list_free (type_list);
 *  return find.caps;
 *  };
 * The above example shows how to write a very simple typefinder that
 * identifies the given data. You can get quite a bit more complicated than
 * that though.
 * Last reviewed on 2005-11-09 (0.9.4)
 */
private import gstreamer.PluginFeature;
public class TypeFindFactory : PluginFeature
{
	
	/** the main Gtk struct */
	protected GstTypeFindFactory* gstTypeFindFactory;
	
	
	public GstTypeFindFactory* getTypeFindFactoryStruct()
	{
		return gstTypeFindFactory;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstTypeFindFactory;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTypeFindFactory* gstTypeFindFactory)
	{
		version(noAssert)
		{
			if ( gstTypeFindFactory is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gstTypeFindFactory is null on constructor").newline;
				}
				else
				{
					printf("struct gstTypeFindFactory is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gstTypeFindFactory !is null, "struct gstTypeFindFactory is null on constructor");
		}
		super(cast(GstPluginFeature*)gstTypeFindFactory);
		this.gstTypeFindFactory = gstTypeFindFactory;
	}
	
	/**
	 */
	
	
	/**
	 * Gets the list of all registered typefind factories. You must free the
	 * list using g_list_free.
	 * Returns:
	 *  the list of all registered GstTypeFindFactory.
	 */
	public static ListG getList()
	{
		// GList* gst_type_find_factory_get_list (void);
		return new ListG( gst_type_find_factory_get_list() );
	}
	
	/**
	 * Gets the extensions associated with a GstTypeFindFactory. The returned
	 * array should not be changed. If you need to change stuff in it, you should
	 * copy it using g_stdupv(). This function may return NULL to indicate
	 * a 0-length list.
	 * factory:
	 *  A GstTypeFindFactory
	 * Returns:
	 *  a NULL-terminated array of extensions associated with this factory
	 */
	public char** getExtensions()
	{
		// gchar** gst_type_find_factory_get_extensions  (GstTypeFindFactory *factory);
		return gst_type_find_factory_get_extensions(gstTypeFindFactory);
	}
	
	/**
	 * Gets the GstCaps associated with a typefind factory.
	 * factory:
	 *  A GstTypeFindFactory
	 * Returns:
	 *  The GstCaps associated with this factory
	 */
	public Caps getCaps()
	{
		// GstCaps* gst_type_find_factory_get_caps (GstTypeFindFactory *factory);
		return new Caps( gst_type_find_factory_get_caps(gstTypeFindFactory) );
	}
	
	/**
	 * Calls the GstTypeFindFunction associated with this factory.
	 * factory:
	 *  A GstTypeFindFactory
	 * find:
	 *  A properly setup GstTypeFind entry. The get_data and suggest_type
	 *  members must be set.
	 */
	public void callFunction(TypeFind find)
	{
		// void gst_type_find_factory_call_function  (GstTypeFindFactory *factory,  GstTypeFind *find);
		gst_type_find_factory_call_function(gstTypeFindFactory, (find is null) ? null : find.getTypeFindStruct());
	}
}
