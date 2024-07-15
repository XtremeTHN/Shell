namespace Utils {
    public void set_edges_for_panel(Gtk.Window panel, GtkLayerShell.Edge[] edges, bool anchor_to_edge=true) {
        foreach (GtkLayerShell.Edge edge in edges) {
            GtkLayerShell.set_anchor(panel, edge, anchor_to_edge);
        }
    }
}