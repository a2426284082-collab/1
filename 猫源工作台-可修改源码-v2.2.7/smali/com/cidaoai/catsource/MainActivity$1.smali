.class Lcom/cidaoai/catsource/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cidaoai/catsource/MainActivity;
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

    .line 45
    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity$1;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$1;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$0(Lcom/cidaoai/catsource/MainActivity;)V

    return-void
.end method
