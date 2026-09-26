.class Lcom/cidaoai/catsource/MainActivity$2;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cidaoai/catsource/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cidaoai/catsource/MainActivity;


# direct methods
.method constructor <init>(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity$2;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$2;->this$0:Lcom/cidaoai/catsource/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cidaoai/catsource/MainActivity;->access$13(Lcom/cidaoai/catsource/MainActivity;Z)V

    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$2;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$11(Lcom/cidaoai/catsource/MainActivity;)V

    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$2;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$0(Lcom/cidaoai/catsource/MainActivity;)V

    .line 64
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 60
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file:///android_asset/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
