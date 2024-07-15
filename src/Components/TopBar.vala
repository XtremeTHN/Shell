
[GtkTemplate (ui = "/com/github/XtremeTHN/Shell/topbar.ui")]
class Components.TopBar : Adw.Window {
    [GtkChild]
    private unowned Gtk.Box workspaces;

    [GtkChild]
    private unowned Gtk.Label date_and_time;

    [GtkChild]
    private unowned Gtk.Image battery_icon;

    [GtkChild]
    private unowned Gtk.Label battery_percent;

    public TopBar () {
        Object ();
        GtkLayerShell.init_for_window (this);
        Utils.set_edges_for_panel (this, 
            { GtkLayerShell.Edge.TOP, GtkLayerShell.Edge.LEFT, GtkLayerShell.Edge.RIGHT }, 
            true);
            
        add_css_class ("topbar");

        present ();
    }
}