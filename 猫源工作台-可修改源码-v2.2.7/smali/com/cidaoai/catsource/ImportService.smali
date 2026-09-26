.class public Lcom/cidaoai/catsource/ImportService;
.super Landroid/app/Service;
.source "ImportService.java"


# static fields
.field private static final ACTION_JOB:Ljava/lang/String; = "com.cidaoai.catsource.IMPORT_JOB"

.field static final ACTION_UPDATE:Ljava/lang/String; = "com.cidaoai.catsource.IMPORT_UPDATE"

.field private static final CHANNEL:Ljava/lang/String; = "cat_imports"

.field private static final EXTRA_MEDIA:Ljava/lang/String; = "media"

.field private static final EXTRA_SHOTS:Ljava/lang/String; = "screenshots"

.field private static final NOTIFICATION_ID:I = 0x1c21

.field private static final PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final QUEUE:Ljava/util/concurrent/ExecutorService;

.field private static final STORE:Ljava/lang/String; = "import_jobs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cidaoai/catsource/ImportService;->QUEUE:Ljava/util/concurrent/ExecutorService;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearFailureIfMatches(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    const-string v0, "import_jobs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "failed_shots"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "failed_media"

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :cond_0
    return-void
.end method

.method static jobIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cidaoai/catsource/ImportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.cidaoai.catsource.IMPORT_JOB"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 35
    const-string v0, "screenshots"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "media"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    .line 34
    return-object p0
.end method

.method static clearFailed(Landroid/content/Context;)V
    .locals 4

    const-string v0, "import_jobs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "failed_shots"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "failed_media"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "state"

    const-string v3, "\u7b49\u5f85\u4e0a\u4f20"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "detail"

    const-string v3, "\u65e7\u5931\u8d25\u6279\u6b21\u5df2\u6e05\u7a7a\uff0c\u53ef\u4ee5\u91cd\u65b0\u6dfb\u52a0\u622a\u56fe\u548c\u89c6\u9891\u3002"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "running"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pending"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updated_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cidaoai.catsource.IMPORT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static jsonList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static message(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 163
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

.method private notification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cidaoai/catsource/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 153
    const/high16 v1, 0x4000000

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    .line 154
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v3, "cat_imports"

    invoke-direct {v1, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    const v3, 0x1080088

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "\u732b\u6e90\u5de5\u4f5c\u53f0"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 157
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-object v1, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 156
    return-object p1
.end method

.method private static number(Ljava/lang/String;)D
    .locals 2

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private process(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    move-object/from16 v11, p0

    const-string v0, "\u5f85\u6838\u5bf9"

    const-string v12, " \u6279\u7b49\u5f85\u6216\u5904\u7406\u4e2d\u3002"

    const-string v13, "\u8fd8\u6709 "

    const-string v14, "\u7ee7\u7eed\u5904\u7406"

    const-string v15, "com.cidaoai.catsource.IMPORT_UPDATE"

    const-string v9, "running"

    const-string v10, "pending"

    const-string v7, "import_jobs"

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Lcom/cidaoai/catsource/SecurePrefs;

    invoke-direct {v1, v11}, Lcom/cidaoai/catsource/SecurePrefs;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-direct {v11, v1}, Lcom/cidaoai/catsource/ImportService;->settings(Lcom/cidaoai/catsource/SecurePrefs;)Lorg/json/JSONObject;

    move-result-object v16

    .line 84
    const-string v2, "supplier"

    const-string v3, "\u4f9b\u8d27\u5546"

    invoke-direct {v11, v1, v2, v3}, Lcom/cidaoai/catsource/ImportService;->required(Lcom/cidaoai/catsource/SecurePrefs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 85
    const-string v2, "rate"

    invoke-virtual {v1, v2}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cidaoai/catsource/ImportService;->number(Ljava/lang/String;)D

    move-result-wide v18

    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cidaoai/catsource/ImportService;->number(Ljava/lang/String;)D

    move-result-wide v20

    .line 86
    const-string v2, "targetStatus"

    invoke-virtual {v1, v2}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u5728\u552e"

    .line 87
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/cidaoai/catsource/ImportService;->selected(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-direct {v11, v5}, Lcom/cidaoai/catsource/ImportService;->selected(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 88
    const-string v1, "AI\u8bc6\u522b\u4e2d"

    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u670b\u53cb\u5708\u622a\u56fe\u548c\u89c6\u9891\u4ee3\u8868\u753b\u9762\uff0c\u53ef\u4ee5\u5207\u5230\u5176\u4ed6\u5e94\u7528\u3002"

    invoke-direct {v11, v1, v2, v8}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    const-string v23, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v4, v22

    move-object/from16 v5, v17

    move-object/from16 v24, v15

    move v15, v6

    move-object/from16 v6, v23

    move-object/from16 v25, v7

    move-wide/from16 v7, v18

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    move-wide/from16 v9, v20

    :try_start_1
    invoke-static/range {v1 .. v10}, Lcom/cidaoai/catsource/ApiClient;->analyze(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DD)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    const-string v2, "duplicate_warning"

    invoke-virtual {v1, v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v2, :cond_3

    .line 91
    :try_start_2
    invoke-static/range {p0 .. p2}, Lcom/cidaoai/catsource/CleanupStore;->add(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 92
    invoke-direct/range {p0 .. p2}, Lcom/cidaoai/catsource/ImportService;->clearFailureIfMatches(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v0, "\u5df2\u8df3\u8fc7\u91cd\u590d"

    const-string v1, "\u98de\u4e66\u4e2d\u5df2\u6709\u76f8\u540c\u6765\u6e90\u6307\u7eb9\uff0c\u672c\u6279\u672a\u91cd\u590d\u5199\u5165\u3002"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x1

    :try_start_3
    invoke-direct {v11, v0, v1, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    move-object/from16 v9, v25

    invoke-virtual {v11, v9, v15}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v8, v26

    invoke-interface {v1, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-lez v0, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v15

    :goto_1
    move-object/from16 v7, v27

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    if-lez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v14, v0, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 110
    :cond_2
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v6, v24

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/cidaoai/catsource/ImportService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v11, v15}, Lcom/cidaoai/catsource/ImportService;->stopForeground(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->stopSelf()V

    .line 92
    :goto_2
    return-void

    .line 106
    :catchall_0
    move-exception v0

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    goto/16 :goto_5

    .line 103
    :catch_0
    move-exception v0

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    goto/16 :goto_6

    .line 106
    :catchall_1
    move-exception v0

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 103
    :catch_1
    move-exception v0

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    const/4 v10, 0x1

    goto/16 :goto_6

    .line 94
    :cond_3
    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    const/4 v10, 0x1

    :try_start_4
    const-string v2, "cats"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 95
    const-string v2, "\u4e0a\u4f20\u98de\u4e66\u4e2d"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AI\u8bc6\u522b\u51fa "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u53ea\u732b\uff0c\u6b63\u5728\u4e0a\u4f20\u9644\u4ef6\u5e76\u521b\u5efa\u8bb0\u5f55\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v2, v3, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const-string v5, ""

    const-string v19, ""

    .line 97
    const-string v2, "source_hash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    move-object/from16 v28, v6

    move-object/from16 v6, v19

    move-object/from16 v29, v7

    move-object/from16 v7, v20

    move-object/from16 v30, v8

    move-object v8, v0

    move-object/from16 v31, v9

    move-object/from16 v9, v18

    :try_start_5
    invoke-static/range {v1 .. v9}, Lcom/cidaoai/catsource/ApiClient;->importCats(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    const-string v1, "created"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    move v6, v15

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v6, v2, :cond_6

    .line 101
    invoke-static/range {p0 .. p2}, Lcom/cidaoai/catsource/CleanupStore;->add(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 102
    invoke-direct/range {p0 .. p2}, Lcom/cidaoai/catsource/ImportService;->clearFailureIfMatches(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v2, "\u5bfc\u5165\u6210\u529f"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u521b\u5efa "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u6761\u8bb0\u5f55\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3002\u7d20\u6750\u5df2\u52a0\u5165\u6e05\u7406\u961f\u5217\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v2, v0, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    nop

    .line 107
    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    move-object/from16 v2, v31

    invoke-virtual {v11, v2, v15}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v3, v30

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-lez v0, :cond_4

    move v8, v10

    goto :goto_4

    :cond_4
    move v8, v15

    :goto_4
    move-object/from16 v4, v29

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    if-lez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 110
    :cond_5
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v5, v28

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 100
    :cond_6
    move-object/from16 v5, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    if-lez v6, :cond_7

    :try_start_6
    const-string v7, "\u3001"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "cat_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v2

    move-object/from16 v30, v3

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    goto/16 :goto_3

    .line 103
    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 106
    :catchall_2
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    goto/16 :goto_c

    .line 103
    :catch_3
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    move-object/from16 v2, v31

    goto :goto_7

    .line 106
    :catchall_3
    move-exception v0

    :goto_5
    move-object v5, v6

    move-object v4, v7

    move-object v3, v8

    move-object v2, v9

    goto/16 :goto_c

    .line 103
    :catch_4
    move-exception v0

    :goto_6
    move-object v5, v6

    move-object v4, v7

    move-object v3, v8

    move-object v2, v9

    goto :goto_7

    .line 106
    :catchall_4
    move-exception v0

    move-object/from16 v5, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    const/4 v10, 0x1

    goto/16 :goto_c

    .line 103
    :catch_5
    move-exception v0

    move-object/from16 v5, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    const/4 v10, 0x1

    goto :goto_7

    .line 106
    :catchall_5
    move-exception v0

    move-object v2, v7

    move-object v4, v9

    move-object v3, v10

    move-object v5, v15

    move v15, v6

    move v10, v8

    goto/16 :goto_c

    .line 103
    :catch_6
    move-exception v0

    move-object v2, v7

    move-object v4, v9

    move-object v3, v10

    move-object v5, v15

    move v15, v6

    move v10, v8

    .line 104
    :goto_7
    :try_start_7
    invoke-direct/range {p0 .. p2}, Lcom/cidaoai/catsource/ImportService;->rememberFailure(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 105
    const-string v1, "\u5bfc\u5165\u5931\u8d25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cidaoai/catsource/ImportService;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\uff08\u6587\u4ef6\u5df2\u4fdd\u7559\uff0c\u53ef\u56de\u5230\u5e94\u7528\u70b9\u91cd\u8bd5\uff09"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v1, v0, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 107
    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    invoke-virtual {v11, v2, v15}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-lez v0, :cond_8

    move v8, v10

    goto :goto_8

    :cond_8
    move v8, v15

    :goto_8
    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    if-lez v0, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v14, v0, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    .line 110
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/cidaoai/catsource/ImportService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v11, v15}, Lcom/cidaoai/catsource/ImportService;->stopForeground(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->stopSelf()V

    .line 112
    :goto_b
    return-void

    .line 106
    :catchall_6
    move-exception v0

    .line 107
    :goto_c
    sget-object v1, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 108
    invoke-virtual {v11, v2, v15}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-lez v1, :cond_a

    move v8, v10

    goto :goto_d

    :cond_a
    move v8, v15

    :goto_d
    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    if-lez v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v14, v1, v10}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 110
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/cidaoai/catsource/ImportService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v11, v15}, Lcom/cidaoai/catsource/ImportService;->stopForeground(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/ImportService;->stopSelf()V

    .line 111
    :goto_e
    throw v0
.end method

.method private rememberFailure(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    const-string v0, "import_jobs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "failed_shots"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 134
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "failed_media"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method private required(Lcom/cidaoai/catsource/SecurePrefs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p1, p2}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u7f6e\u7f3a\u5c11\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static retryFailed(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const-string v0, "import_jobs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "failed_shots"

    const-string v4, "[]"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v3, Lorg/json/JSONArray;

    const-string v5, "failed_media"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v2}, Lcom/cidaoai/catsource/ImportService;->jsonList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3}, Lcom/cidaoai/catsource/ImportService;->jsonList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/cidaoai/catsource/ImportService;->jobIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    const/4 p0, 0x1

    return p0

    .line 42
    :cond_1
    :goto_0
    return v1
.end method

.method private selected(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 128
    return-object v0

    .line 127
    :cond_0
    new-instance v2, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/cidaoai/catsource/SelectedFile;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private settings(Lcom/cidaoai/catsource/SecurePrefs;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const-string v6, "aiBaseUrl"

    const-string v7, "aiModel"

    const-string v1, "feishuAppId"

    const-string v2, "feishuAppSecret"

    const-string v3, "feishuAppToken"

    const-string v4, "feishuTableId"

    const-string v5, "aiApiKey"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 118
    const-string v1, "descriptionPrompt"

    invoke-virtual {p1, v1}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 116
    :cond_0
    aget-object v3, v1, v2

    .line 117
    invoke-direct {p0, p1, v3, v3}, Lcom/cidaoai/catsource/ImportService;->required(Lcom/cidaoai/catsource/SecurePrefs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static status(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 12

    .line 49
    const-string v0, "[]"

    const-string v1, "pending"

    const-string v2, "running"

    const-string v3, "detail"

    const-string v4, "state"

    const-string v5, "import_jobs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :stale_checked

    const-string v7, "updated_at"

    const-wide/16 v8, 0x0

    invoke-interface {p0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x2bf20

    cmp-long v7, v10, v8

    if-lez v7, :stale_checked

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "state"

    const-string v9, "导入失败"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "detail"

    const-string v9, "后台任务异常中断或超时，文件已保留。可点重试失败批次，或放弃本批次重新开始。"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "running"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "pending"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v7, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :stale_checked

    .line 51
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "\u7b49\u5f85\u4e0a\u4f20"

    invoke-interface {p0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 52
    const-string v5, "\u5148\u6dfb\u52a0\u670b\u53cb\u5708\u622a\u56fe\uff0c\u518d\u6dfb\u52a0\u5bf9\u5e94\u89c6\u9891\u6216\u539f\u56fe\u3002"

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    sget-object v3, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    const-string v2, "hasFailed"

    const-string v3, "failed_media"

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    const-string v1, "updatedAt"

    const-string v2, "updated_at"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 57
    :catch_0
    move-exception p0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 144
    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    const-string v1, "import_jobs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/cidaoai/catsource/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "detail"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    const-string v2, "running"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "pending"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "updated_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Lcom/cidaoai/catsource/ImportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cidaoai/catsource/ImportService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x1c21

    invoke-virtual {p3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 148
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cidaoai.catsource.IMPORT_UPDATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ImportService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cidaoai/catsource/ImportService;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method


# virtual methods
.method synthetic lambda$0$com-cidaoai-catsource-ImportService(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 76
    :try_start_watch
    invoke-direct {p0, p1, p2}, Lcom/cidaoai/catsource/ImportService;->process(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_watch
    .catch Ljava/lang/Throwable; {:try_start_watch .. :try_end_watch} :catch_watch

    return-void

    :catch_watch
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/cidaoai/catsource/ImportService;->rememberFailure(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "后台任务异常中断："

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "（文件已保留，可重试或放弃本批次）"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "导入失败"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 164
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/ImportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u732b\u54aa\u8d44\u6599\u5bfc\u5165"

    const/4 v3, 0x2

    const-string v4, "cat_imports"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 64
    const-string v0, "\u51c6\u5907\u5904\u7406\u4e0a\u4f20\u8d44\u6599\u2026"

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/ImportService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x1c21

    invoke-virtual {p0, v1, v0}, Lcom/cidaoai/catsource/ImportService;->startForeground(ILandroid/app/Notification;)V

    .line 65
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 68
    const/4 p2, 0x2

    if-eqz p1, :cond_3

    const-string v0, "com.cidaoai.catsource.IMPORT_JOB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    const-string v0, "screenshots"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    const-string v1, "media"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 71
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/cidaoai/catsource/ImportService;->rememberFailure(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    sget-object p3, Lcom/cidaoai/catsource/ImportService;->PENDING:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u6709 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " \u6279\u7b49\u5f85\u6216\u5904\u7406\u4e2d\uff0c\u53ef\u4ee5\u5207\u56de\u5fae\u4fe1\u7ee7\u7eed\u5f55\u5165\u3002"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    const-string v2, "\u5df2\u5165\u961f"

    invoke-direct {p0, v2, p3, v1}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    sget-object p3, Lcom/cidaoai/catsource/ImportService;->QUEUE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cidaoai/catsource/ImportService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/cidaoai/catsource/ImportService$$ExternalSyntheticLambda0;-><init>(Lcom/cidaoai/catsource/ImportService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return p2

    .line 72
    :cond_2
    :goto_0
    const-string p1, "\u622a\u56fe\u6216\u5c55\u793a\u7d20\u6750\u4e3a\u7a7a\u3002"

    const/4 v0, 0x0

    const-string v1, "\u5931\u8d25"

    invoke-direct {p0, v1, p1, v0}, Lcom/cidaoai/catsource/ImportService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p3}, Lcom/cidaoai/catsource/ImportService;->stopSelf(I)V

    return p2

    .line 68
    :cond_3
    :goto_1
    return p2
.end method
