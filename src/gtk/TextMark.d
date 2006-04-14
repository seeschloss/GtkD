/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = TextMark
 * strct   = GtkTextMark
 * realStrct=
 * clss    = TextMark
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_text_mark_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.TextBuffer
 * structWrap:
 * 	- GtkTextBuffer* -> TextBuffer
 * local aliases:
 */

module gtk.TextMark;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.TextBuffer;

/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 * A GtkTextMark is like a bookmark in a text buffer; it preserves a position in
 * the text. You can convert the mark to an iterator using
 * gtk_text_buffer_get_iter_at_mark(). Unlike iterators, marks remain valid across
 * buffer mutations, because their behavior is defined when text is inserted or
 * deleted. When text containing a mark is deleted, the mark remains in the
 * position originally occupied by the deleted text. When text is inserted at a
 * mark, a mark with left gravity will be moved to the
 * beginning of the newly-inserted text, and a mark with right
 * gravity will be moved to the end.
 * [3]
 * Marks are reference counted, but the reference count only controls the validity
 * of the memory; marks can be deleted from the buffer at any time with
 * gtk_text_buffer_delete_mark(). Once deleted from the buffer, a mark is
 * essentially useless.
 * Marks optionally have names; these can be convenient to avoid passing the
 * GtkTextMark object around.
 * Marks are typically created using the gtk_text_buffer_create_mark() function.
 */
private import gobject.ObjectG;
public class TextMark : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextMark* gtkTextMark;
	
	
	public GtkTextMark* getTextMarkStruct()
	{
		return gtkTextMark;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextMark;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextMark* gtkTextMark)
	{
		super(cast(GObject*)gtkTextMark);
		this.gtkTextMark = gtkTextMark;
	}
	
	/**
	 */
	
	
	/**
	 * Sets the visibility of mark; the insertion point is normally
	 * visible, i.e. you can see it as a vertical bar. Also, the text
	 * widget uses a visible mark to indicate where a drop will occur when
	 * dragging-and-dropping text. Most other marks are not visible.
	 * Marks are not visible by default.
	 * mark:
	 *  a GtkTextMark
	 * setting:
	 *  visibility of mark
	 */
	public void setVisible(int setting)
	{
		// void gtk_text_mark_set_visible (GtkTextMark *mark,  gboolean setting);
		gtk_text_mark_set_visible(gtkTextMark, setting);
	}
	
	/**
	 * Returns TRUE if the mark is visible (i.e. a cursor is displayed
	 * for it)
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  TRUE if visible
	 */
	public int getVisible()
	{
		// gboolean gtk_text_mark_get_visible (GtkTextMark *mark);
		return gtk_text_mark_get_visible(gtkTextMark);
	}
	
	/**
	 * Returns TRUE if the mark has been removed from its buffer
	 * with gtk_text_buffer_delete_mark(). Marks can't be used
	 * once deleted.
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  whether the mark is deleted
	 */
	public int getDeleted()
	{
		// gboolean gtk_text_mark_get_deleted (GtkTextMark *mark);
		return gtk_text_mark_get_deleted(gtkTextMark);
	}
	
	/**
	 * Returns the mark name; returns NULL for anonymous marks.
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  mark name
	 */
	public char[] getName()
	{
		// const gchar* gtk_text_mark_get_name (GtkTextMark *mark);
		return Str.toString(gtk_text_mark_get_name(gtkTextMark) );
	}
	
	/**
	 * Gets the buffer this mark is located inside,
	 * or NULL if the mark is deleted.
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  the mark's GtkTextBuffer
	 */
	public TextBuffer getBuffer()
	{
		// GtkTextBuffer* gtk_text_mark_get_buffer (GtkTextMark *mark);
		return new TextBuffer( gtk_text_mark_get_buffer(gtkTextMark) );
	}
	
	/**
	 * Determines whether the mark has left gravity.
	 * mark:
	 *  a GtkTextMark
	 * Returns:
	 *  TRUE if the mark has left gravity, FALSE otherwise
	 * [3]
	 * "left" and "right" here refer to logical direction (left is the toward the start
	 * of the buffer); in some languages such as Hebrew the logically-leftmost text is
	 * not actually on the left when displayed.
	 */
	public int getLeftGravity()
	{
		// gboolean gtk_text_mark_get_left_gravity (GtkTextMark *mark);
		return gtk_text_mark_get_left_gravity(gtkTextMark);
	}
}
