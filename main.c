#include <stdio.h>

#include <gtk/gtk.h>
#include <webkit2/webkit2.h>

static void destroyWindowCb(GtkWidget* widget, GtkWidget* window);
static gboolean closeWebViewCb(WebKitWebView* webView, GtkWidget* window);


int main(int argc, char* argv[]){
    gtk_init(&argc, &argv);                                                             // Initialize GTK+

    GtkWidget *main_window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_default_size(GTK_WINDOW(main_window), 800, 600);

    WebKitWebView *webView = WEBKIT_WEB_VIEW(webkit_web_view_new());                    // Create Browser Instance

    gtk_container_add(GTK_CONTAINER(main_window), GTK_WIDGET(webView));                 // Add Browser Instance to Main Window

    g_signal_connect(main_window, "destroy", G_CALLBACK(destroyWindowCb), NULL);        // Callbacks to close the application
    g_signal_connect(webView, "close", G_CALLBACK(closeWebViewCb), main_window);

    webkit_web_view_load_uri(webView, "https://www.tokyu.co.jp/unten2/unten.html");     // Load URL

    gtk_widget_grab_focus(GTK_WIDGET(webView));                                         // Get Mouse and Keyboard Focus
    gtk_widget_show_all(main_window);                                                   // Show the Main Window

    WebKitSettings *settings = webkit_web_view_get_settings (webView);
	webkit_settings_set_default_font_size(settings, 64);

    gtk_main();

    return 0;
}

static void destroyWindowCb(GtkWidget* widget, GtkWidget* window){
    gtk_main_quit();
}

static gboolean closeWebViewCb(WebKitWebView* webView, GtkWidget* window){
    gtk_widget_destroy(window);
    return TRUE;
}