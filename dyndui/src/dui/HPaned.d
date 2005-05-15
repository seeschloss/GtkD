/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.HPaned;

private import def.Types;
private import def.Constants;
private import dui.Paned;
private import dui.Widget;
private import lib.gtk;

/**
 * A widget with resizable left and rigth children
 */
public:
class HPaned : Paned
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A widget with resizable left and rigth children";}
		char[] author(){return "Antonio";}
	}
	

    protected:
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
    
    public:
    
	/** 
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_hpaned_get_type();
	}
	
    /**
     * Creates a new HPaned widget
     */
    this()
    {
    	this(gtk_hpaned_new ());
    }
    
	/**
	 * Creates a new HPaned and adds two widgets as it's children
	 * @param child1
	 * @param child2
	 */
	this(Widget child1, Widget child2)
	{
		this();
		add(child1, child2);
	}
}