.class public Lcom/cidaoai/catsource/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cidaoai/catsource/MainActivity$Bridge;
    }
.end annotation


# static fields
.field private static final PICK_MEDIA:I = 0x3ea

.field private static final PICK_SCREENSHOTS:I = 0x3e9

.field private static final REQUEST_DELETE:I = 0x44d

.field private static final REQUEST_WORK_PERMISSIONS:I = 0x44c


# instance fields
.field private final media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;"
        }
    .end annotation
.end field

.field private pageReady:Z

.field private pendingAndroid10Delete:Landroid/net/Uri;

.field private prefs:Lcom/cidaoai/catsource/SecurePrefs;

.field private receiverRegistered:Z

.field private final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnails:Ljava/util/concurrent/ExecutorService;

.field private final updates:Landroid/content/BroadcastReceiver;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->thumbnails:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Lcom/cidaoai/catsource/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/cidaoai/catsource/MainActivity$1;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    iput-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->updates:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    return-void
.end method

.method static synthetic access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    return-object p0
.end method

.method static synthetic access$10(Lcom/cidaoai/catsource/MainActivity;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->notifyFiles()V

    return-void
.end method

.method static synthetic access$12(Lcom/cidaoai/catsource/MainActivity;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13(Lcom/cidaoai/catsource/MainActivity;Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/cidaoai/catsource/MainActivity;->pageReady:Z

    return-void
.end method

.method static synthetic access$2(Lcom/cidaoai/catsource/MainActivity;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->settingsComplete()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-static {p0}, Lcom/cidaoai/catsource/MainActivity;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4(Lcom/cidaoai/catsource/MainActivity;)[Ljava/lang/String;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->settingKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->ensureDefaults()V

    return-void
.end method

.method static synthetic access$6(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->maybeQueue()V

    return-void
.end method

.method static synthetic access$7(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->requestWorkMode()V

    return-void
.end method

.method static synthetic access$8(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->stopWorkMode()V

    return-void
.end method

.method static synthetic access$9(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->requestCleanup()V

    return-void
.end method

.method private addPersistedUri(Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;)V"
        }
    .end annotation

    .line 186
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    new-instance v1, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v1, v2, p1, v3}, Lcom/cidaoai/catsource/SelectedFile;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void

    .line 187
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v2, v2, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method private callJs(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cidaoai/catsource/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/cidaoai/catsource/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cidaoai/catsource/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private ensureDefaults()V
    .locals 7

    .line 83
    const-string v0, "targetStatus"

    const-string v1, "fixed"

    const-string v2, "rate"

    const-string v3, "aiModel"

    const-string v4, "aiBaseUrl"

    :try_start_0
    iget-object v5, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v5, v4}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    const-string v6, "https://api.openai.com/v1"

    invoke-virtual {v5, v4, v6}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v4, v3}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    const-string v5, "gpt-4.1-mini"

    invoke-virtual {v4, v3, v5}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v3, v2}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v3, v2, v4}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v2, v1}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v2, v1, v4}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v1, v0}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    const-string v2, "\u5728\u552e"

    invoke-virtual {v1, v0, v2}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 89
    :cond_4
    const-string v0, "descriptionPrompt"

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v1, v0}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :description_default_done

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    const-string v2, "description必须是可直接展示给消费者的自然中文介绍，只写猫咪可见的外貌、毛色、动作和气质。严禁出现视频中、图片中、画面中、朋友圈、文案标注、AI识别等来源或机器口吻；严禁写货源价、进货价、售价、金额、供货商、编号、疫苗、针数、驱虫、健康、无癣、无病等内部或承诺信息；这些信息只进入各自字段，不得重复写入description。"

    invoke-virtual {v1, v0, v2}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V

    :description_default_done
    return-void
.end method

.method private hasWorkPermissions()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->missingWorkPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private maybeQueue()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->settingsComplete()Z

    move-result v0

    const-string v1, ")"

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.onQueueProblem&&window.onQueueProblem("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u8bf7\u5148\u5b8c\u6574\u4fdd\u5b58\u4f9b\u8d27\u5546\u3001\u98de\u4e66\u548cAI\u8bbe\u7f6e\uff1b\u672c\u6279\u6587\u4ef6\u4ecd\u4fdd\u7559\u3002"

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-static {p0, v0, v2}, Lcom/cidaoai/catsource/ImportService;->jobIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    .line 200
    invoke-virtual {p0, v3}, Lcom/cidaoai/catsource/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 201
    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->notifyFiles()V

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "window.onQueued&&window.onQueued("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 203
    return-void

    .line 198
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v4, v4, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_4
    :goto_2
    return-void
.end method

.method private static message(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private missingWorkPermissions()[Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    .line 129
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v1}, Lcom/cidaoai/catsource/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p0, v1}, Lcom/cidaoai/catsource/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v1}, Lcom/cidaoai/catsource/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/cidaoai/catsource/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_3
    :goto_0
    nop

    .line 134
    :cond_4
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/cidaoai/catsource/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private notifyFiles()V
    .locals 4

    .line 206
    iget-boolean v0, p0, Lcom/cidaoai/catsource/MainActivity;->pageReady:Z

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity;->thumbnails:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/cidaoai/catsource/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/cidaoai/catsource/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cidaoai/catsource/MainActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method private requestCleanup()V
    .locals 10

    .line 161
    const-string v0, ")"

    const-string v1, "window.onQueueProblem&&window.onQueueProblem("

    invoke-static {p0}, Lcom/cidaoai/catsource/CleanupStore;->uris(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    return-void

    .line 164
    :cond_0
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v5, 0x44d

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/cidaoai/catsource/MainActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 167
    goto/16 :goto_2

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    .line 174
    goto/16 :goto_2

    .line 168
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 169
    iput-object v3, p0, Lcom/cidaoai/catsource/MainActivity;->pendingAndroid10Delete:Landroid/net/Uri;

    .line 170
    const/16 v4, 0x44d

    invoke-static {p0, v3, v4}, Lcom/cidaoai/catsource/DeleteRequest29;->deleteOrRequest(Landroid/app/Activity;Landroid/net/Uri;I)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 171
    :cond_3
    invoke-static {p0, v3}, Lcom/cidaoai/catsource/CleanupStore;->remove(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/cidaoai/catsource/MainActivity;->pendingAndroid10Delete:Landroid/net/Uri;

    goto :goto_0

    .line 175
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 176
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    .line 178
    goto :goto_2

    .line 175
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0, v3}, Lcom/cidaoai/catsource/CleanupStore;->remove(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u6e05\u7406\u5931\u8d25\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cidaoai/catsource/MainActivity;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :catch_1
    move-exception v2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u65e0\u6cd5\u6253\u5f00\u7cfb\u7edf\u5220\u9664\u786e\u8ba4\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cidaoai/catsource/MainActivity;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 183
    :goto_2
    return-void
.end method

.method private requestWorkMode()V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->settingsComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.onQueueProblem&&window.onQueueProblem("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u8bf7\u5148\u5b8c\u6574\u4fdd\u5b58\u4f9b\u8d27\u5546\u3001\u98de\u4e66\u548cAI\u8bbe\u7f6e\u3002"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->missingWorkPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 146
    array-length v1, v0

    if-lez v1, :cond_1

    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Lcom/cidaoai/catsource/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->startWorkNow()V

    .line 147
    :goto_0
    return-void
.end method

.method private sendStatusToPage()V
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/cidaoai/catsource/MainActivity;->pageReady:Z

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.onSystemUpdate&&window.onSystemUpdate("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ImportService;->status(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/cidaoai/catsource/WorkModeService;->status(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/cidaoai/catsource/CleanupStore;->count(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private settingKeys()[Ljava/lang/String;
    .locals 12

    .line 92
    const-string v9, "aiBaseUrl"

    const-string v10, "aiModel"

    const-string v11, "descriptionPrompt"

    const-string v0, "supplier"

    const-string v1, "rate"

    const-string v2, "fixed"

    const-string v3, "targetStatus"

    const-string v4, "feishuAppId"

    const-string v5, "feishuAppSecret"

    const-string v6, "feishuAppToken"

    const-string v7, "feishuTableId"

    const-string v8, "aiApiKey"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private settingsComplete()Z
    .locals 8

    .line 96
    const-string v6, "aiBaseUrl"

    const-string v7, "aiModel"

    const-string v0, "supplier"

    const-string v1, "feishuAppId"

    const-string v2, "feishuAppSecret"

    const-string v3, "feishuAppToken"

    const-string v4, "feishuTableId"

    const-string v5, "aiApiKey"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    aget-object v3, v0, v2

    .line 97
    iget-object v4, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-virtual {v4, v3}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private startWorkNow()V
    .locals 1

    .line 150
    invoke-static {p0}, Lcom/cidaoai/catsource/WorkModeService;->startIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->moveTaskToBack(Z)Z

    .line 153
    return-void
.end method

.method private stopWorkMode()V
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/cidaoai/catsource/WorkModeService;->stopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method private thumbnail(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 221
    :cond_0
    nop

    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v1

    const/16 v4, 0x140

    if-gt v3, v4, :cond_6

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v1

    if-gt v3, v4, :cond_6

    .line 222
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    :try_start_3
    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    :cond_1
    if-nez v0, :cond_2

    const-string p1, ""

    return-object p1

    .line 225
    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:image/jpeg;base64,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 223
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_5

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    :cond_5
    throw p1

    .line 221
    :cond_6
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 220
    :catchall_2
    move-exception v2

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_9

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object p1, v2

    :cond_9
    throw p1
.end method


# virtual methods
.method synthetic lambda$0$com-cidaoai-catsource-MainActivity(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 210
    const-string v0, ")"

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "thumbnail"

    if-nez v3, :cond_2

    .line 212
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "window.onNativeFiles&&window.onNativeFiles("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "screenshots"

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "media"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 214
    goto :goto_2

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {p2}, Lcom/cidaoai/catsource/SelectedFile;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p2, p2, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/cidaoai/catsource/MainActivity;->thumbnail(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 211
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->json()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/cidaoai/catsource/MainActivity;->thumbnail(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "window.onQueueProblem&&window.onQueueProblem("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 215
    :goto_2
    return-void
.end method

.method synthetic lambda$1$com-cidaoai-catsource-MainActivity(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/16 v0, 0x44d

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    .line 104
    if-ne p2, v1, :cond_1

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->pendingAndroid10Delete:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->pendingAndroid10Delete:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/cidaoai/catsource/CleanupStore;->remove(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->pendingAndroid10Delete:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->requestCleanup()V

    .line 107
    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/cidaoai/catsource/CleanupStore;->clear(Landroid/content/Context;)V

    .line 109
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    return-void

    .line 111
    :cond_2
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_3

    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_9

    :cond_3
    if-ne p2, v1, :cond_9

    if-nez p3, :cond_4

    goto :goto_4

    .line 112
    :cond_4
    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->screenshots:Ljava/util/List;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->media:Ljava/util/List;

    .line 113
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    .line 114
    if-eqz p2, :cond_7

    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lt p3, v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cidaoai/catsource/MainActivity;->addPersistedUri(Landroid/net/Uri;Ljava/util/List;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 115
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/cidaoai/catsource/MainActivity;->addPersistedUri(Landroid/net/Uri;Ljava/util/List;)V

    .line 116
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->notifyFiles()V

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->maybeQueue()V

    .line 117
    return-void

    .line 111
    :cond_9
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/cidaoai/catsource/SecurePrefs;

    invoke-direct {p1, p0}, Lcom/cidaoai/catsource/SecurePrefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->prefs:Lcom/cidaoai/catsource/SecurePrefs;

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->ensureDefaults()V

    .line 53
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    .line 54
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 57
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/cidaoai/catsource/MainActivity$Bridge;

    invoke-direct {v0, p0}, Lcom/cidaoai/catsource/MainActivity$Bridge;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/cidaoai/catsource/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/cidaoai/catsource/MainActivity$2;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/cidaoai/catsource/MainActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->thumbnails:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 238
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 239
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 121
    const/16 p2, 0x44c

    if-eq p1, p2, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->hasWorkPermissions()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->startWorkNow()V

    goto :goto_0

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "window.onQueueProblem&&window.onQueueProblem("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\u5de5\u4f5c\u6a21\u5f0f\u9700\u8981\u201c\u6240\u6709\u7167\u7247\u548c\u89c6\u9891\u201d\u4ee5\u53ca\u901a\u77e5\u6743\u9650\uff0c\u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5141\u8bb8\u540e\u91cd\u8bd5\u3002"

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cidaoai/catsource/MainActivity;->callJs(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cidaoai.catsource.IMPORT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->updates:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/cidaoai/catsource/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity;->updates:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cidaoai/catsource/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cidaoai/catsource/MainActivity;->receiverRegistered:Z

    invoke-direct {p0}, Lcom/cidaoai/catsource/MainActivity;->sendStatusToPage()V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/cidaoai/catsource/MainActivity;->receiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity;->updates:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cidaoai/catsource/MainActivity;->receiverRegistered:Z

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 79
    return-void
.end method
