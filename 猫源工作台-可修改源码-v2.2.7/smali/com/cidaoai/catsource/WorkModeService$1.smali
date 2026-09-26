.class Lcom/cidaoai/catsource/WorkModeService$1;
.super Landroid/database/ContentObserver;
.source "WorkModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cidaoai/catsource/WorkModeService;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cidaoai/catsource/WorkModeService;


# direct methods
.method constructor <init>(Lcom/cidaoai/catsource/WorkModeService;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cidaoai/catsource/WorkModeService$1;->this$0:Lcom/cidaoai/catsource/WorkModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/cidaoai/catsource/WorkModeService$1;->this$0:Lcom/cidaoai/catsource/WorkModeService;

    invoke-static {p1}, Lcom/cidaoai/catsource/WorkModeService;->access$0(Lcom/cidaoai/catsource/WorkModeService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cidaoai/catsource/WorkModeService$1;->this$0:Lcom/cidaoai/catsource/WorkModeService;

    invoke-static {p2}, Lcom/cidaoai/catsource/WorkModeService;->access$1(Lcom/cidaoai/catsource/WorkModeService;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/cidaoai/catsource/WorkModeService$1;->this$0:Lcom/cidaoai/catsource/WorkModeService;

    invoke-static {p1}, Lcom/cidaoai/catsource/WorkModeService;->access$0(Lcom/cidaoai/catsource/WorkModeService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cidaoai/catsource/WorkModeService$1;->this$0:Lcom/cidaoai/catsource/WorkModeService;

    invoke-static {p2}, Lcom/cidaoai/catsource/WorkModeService;->access$1(Lcom/cidaoai/catsource/WorkModeService;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method
