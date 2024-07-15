
namespace KShell {
    public Adw.Application app;

    public class App : Adw.Application {
        public App () {
            Object (
                application_id: "com.github.XtremeTHN.Shell"
            );

        }

        public override void activate () {
            var provider = new Gtk.CssProvider();
            provider.load_from_resource ("/com/github/XtremeTHN/Shell/style.css");

            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);

            add_window (new Components.TopBar ());
        }

        public static void main (string[] args) {
            var app = new App ();
            app.run (args);
        }
    }
}