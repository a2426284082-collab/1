.class public Lcom/cidaoai/catsource/WorkModeService;
.super Landroid/app/Service;
.source "WorkModeService.java"


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "com.cidaoai.catsource.WORK_START"

.field private static final ACTION_STOP:Ljava/lang/String; = "com.cidaoai.catsource.WORK_STOP"

.field private static final CHANNEL:Ljava/lang/String; = "work_mode_monitor"

.field private static final NOTIFICATION_ID:I = 0x1c20

.field private static final STORE:Ljava/lang/String; = "work_mode"


# instance fields
.field private handler:Landroid/os/Handler;

.field private needsRescan:Z

.field private observer:Landroid/database/ContentObserver;

.field private final scanTask:Ljava/lang/Runnable;

.field private final screenshots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startSecond:J

.field private thread:Landroid/os/HandlerThread;

.field private final videos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    .line 88
    new-instance v0, Lcom/cidaoai/catsource/WorkModeService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cidaoai/catsource/WorkModeService$$ExternalSyntheticLambda0;-><init>(Lcom/cidaoai/catsource/WorkModeService;)V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->scanTask:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/cidaoai/catsource/WorkModeService;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/cidaoai/catsource/WorkModeService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1(Lcom/cidaoai/catsource/WorkModeService;)Ljava/lang/Runnable;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/cidaoai/catsource/WorkModeService;->scanTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private baseline(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cidaoai/catsource/WorkModeService;->query(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method private isScreenRecording(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 167
    const-string p2, "screenrecord"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "screen_record"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u5f55\u5c4f"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isScreenshot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 162
    const-string p2, "screenshot"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "screen_shot"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u622a\u5c4f"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u622a\u56fe"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private static message(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 195
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

    .line 185
    nop

    .line 186
    nop

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cidaoai/catsource/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    .line 186
    const/16 v2, 0x14

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 188
    const/16 v2, 0x15

    invoke-static {p0}, Lcom/cidaoai/catsource/WorkModeService;->stopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "work_mode_monitor"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    const v3, 0x1080037

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "\u732b\u6e90\u5de5\u4f5c\u53f0"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 191
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Action$Builder;

    const/4 v2, 0x0

    const-string v3, "\u7ed3\u675f\u5de5\u4f5c\u6a21\u5f0f"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 190
    return-object p1
.end method

.method private pairAvailable()V
    .locals 5

    .line 144
    nop

    :goto_0
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {p0, v3, v4}, Lcom/cidaoai/catsource/ImportService;->jobIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/WorkModeService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    const-string v0, "work_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/cidaoai/catsource/WorkModeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pairs"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u5df2\u6536\u5230\u622a\u56fe\uff0c\u6b63\u5728\u7b49\u5f85\u5bf9\u5e94\u89c6\u9891\u3002"

    goto :goto_2

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u5df2\u6536\u5230\u89c6\u9891\uff0c\u6b63\u5728\u7b49\u5f85\u5bf9\u5e94\u622a\u56fe\u3002"

    goto :goto_2

    .line 156
    :cond_3
    const-string v0, "\u4e0a\u4e00\u7ec4\u5df2\u914d\u5bf9\u5e76\u4ea4\u7ed9\u540e\u53f0\u5904\u7406\uff0c\u53ef\u4ee5\u7ee7\u7eed\u4e0b\u4e00\u7ec4\u3002"

    .line 157
    :goto_2
    const-string v2, "\u5de5\u4f5c\u6a21\u5f0f\u8fd0\u884c\u4e2d"

    invoke-direct {p0, v2, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    return-void
.end method

.method private query(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 24

    .line 111
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "video"

    const-string v3, "image"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    const-string v6, "relative_path"

    const-string v7, "_data"

    if-lt v4, v5, :cond_0

    move-object v10, v6

    goto :goto_0

    :cond_0
    move-object v10, v7

    .line 112
    :goto_0
    nop

    .line 113
    const-string v12, "date_modified"

    const-string v13, "_size"

    const-string v8, "_id"

    const-string v9, "_display_name"

    const-string v11, "date_added"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v16

    .line 112
    nop

    .line 114
    const-string v17, "date_added>=?"

    .line 115
    iget-wide v4, v1, Lcom/cidaoai/catsource/WorkModeService;->startSecond:J

    const-wide/16 v8, 0x2

    sub-long/2addr v4, v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    .line 116
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cidaoai/catsource/WorkModeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 117
    const-string v19, "date_added ASC,_id ASC"

    .line 116
    move-object/from16 v15, p1

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 118
    if-nez v5, :cond_2

    .line 140
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :cond_1
    return-void

    .line 119
    :cond_2
    :try_start_1
    const-string v12, "_id"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 120
    const-string v13, "_display_name"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 121
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 122
    if-gez v6, :cond_3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 123
    :cond_3
    const-string v7, "date_added"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 124
    const-string v14, "date_modified"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 125
    const-string v15, "_size"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 126
    nop

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v16, :cond_5

    .line 140
    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :cond_4
    return-void

    .line 127
    :cond_5
    :try_start_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz p3, :cond_6

    iget-object v8, v1, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x0

    goto :goto_1

    .line 130
    :cond_6
    iget-object v10, v1, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    iget-wide v10, v1, Lcom/cidaoai/catsource/WorkModeService;->startSecond:J

    cmp-long v10, v18, v10

    if-ltz v10, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v18, v22, v10

    if-gtz v18, :cond_7

    const-wide/16 v8, 0x2

    goto :goto_1

    .line 131
    :cond_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-ltz v6, :cond_8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_8
    const-string v11, ""

    .line 132
    :goto_2
    if-eqz v10, :cond_f

    move/from16 v18, v6

    const-string v6, ".pending"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move/from16 v6, v18

    const-wide/16 v8, 0x2

    goto/16 :goto_4

    .line 133
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {v1, v10, v11}, Lcom/cidaoai/catsource/WorkModeService;->isScreenshot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v1, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v6, v18

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 134
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {v1, v10, v11}, Lcom/cidaoai/catsource/WorkModeService;->isScreenRecording(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v6, v18

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 135
    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v22, 0x3e8

    div-long v10, v10, v22

    sub-long v10, v10, v20

    const-wide/16 v16, 0x2

    cmp-long v6, v10, v16

    if-gez v6, :cond_d

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/cidaoai/catsource/WorkModeService;->needsRescan:Z

    move-wide/from16 v8, v16

    move/from16 v6, v18

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    :cond_c
    const-wide/16 v16, 0x2

    .line 136
    :cond_d
    iget-object v6, v1, Lcom/cidaoai/catsource/WorkModeService;->seen:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    goto :goto_3

    :cond_e
    iget-object v8, v1, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    :goto_3
    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v8, v16

    move/from16 v6, v18

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 132
    :cond_f
    move/from16 v18, v6

    const-wide/16 v16, 0x2

    move-object/from16 v6, p1

    move-wide/from16 v8, v16

    move/from16 v6, v18

    :goto_4
    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 130
    :cond_10
    move/from16 v18, v6

    const-wide/16 v16, 0x2

    move-object/from16 v6, p1

    move-wide/from16 v8, v16

    move/from16 v6, v18

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 140
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v5, :cond_11

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_12

    if-eq v4, v0, :cond_13

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_12
    move-object v4, v0

    :cond_13
    :goto_6
    throw v4
.end method

.method private scan(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cidaoai/catsource/WorkModeService;->query(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method private scheduleScan()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cidaoai/catsource/WorkModeService;->scanTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static startIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cidaoai/catsource/WorkModeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.cidaoai.catsource.WORK_START"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private startWork()V
    .locals 4

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cidaoai/catsource/WorkModeService;->startSecond:J

    .line 75
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image"

    invoke-direct {p0, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->baseline(Landroid/net/Uri;Ljava/lang/String;)V

    .line 76
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->baseline(Landroid/net/Uri;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/cidaoai/catsource/WorkModeService$1;

    iget-object v1, p0, Lcom/cidaoai/catsource/WorkModeService;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/cidaoai/catsource/WorkModeService$1;-><init>(Lcom/cidaoai/catsource/WorkModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {p0}, Lcom/cidaoai/catsource/WorkModeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    const-string v0, "\u5de5\u4f5c\u6a21\u5f0f\u8fd0\u884c\u4e2d"

    const-string v1, "\u7b49\u5f85\u65b0\u7684\u670b\u53cb\u5708\u622a\u56fe\uff1b\u68c0\u6d4b\u5230\u622a\u56fe\u540e\uff0c\u518d\u7b49\u5f85\u5bf9\u5e94\u89c6\u9891\u3002"

    invoke-direct {p0, v0, v1, v3}, Lcom/cidaoai/catsource/WorkModeService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method static status(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    .line 46
    const-string v0, "pairs"

    const-string v1, "detail"

    const-string v2, "state"

    const-string v3, "active"

    const-string v4, "work_mode"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 48
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 49
    const-string v4, "\u672a\u8fdb\u5165\u5de5\u4f5c\u6a21\u5f0f"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 50
    const-string v3, "\u5f00\u542f\u540e\uff0c\u6309\u201c\u622a\u56fe\u4e00\u6b21\u3001\u4fdd\u5b58\u4e00\u4e2a\u89c6\u9891\u201d\u7684\u987a\u5e8f\u8fde\u7eed\u5f55\u5165\u3002"

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    const-string v1, "waitingScreenshots"

    const-string v2, "waiting_screenshots"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    const-string v1, "waitingVideos"

    const-string v2, "waiting_videos"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method static stopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cidaoai/catsource/WorkModeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.cidaoai.catsource.WORK_STOP"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private stopWork()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/cidaoai/catsource/WorkModeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    .line 172
    :cond_0
    const-string v0, "\u672c\u6b21\u76d1\u542c\u5df2\u7ecf\u505c\u6b62\u3002\u5df2\u6210\u529f\u5bfc\u5165\u7684\u7d20\u6750\u53ef\u96c6\u4e2d\u6e05\u7406\u3002"

    const/4 v1, 0x0

    const-string v2, "\u5de5\u4f5c\u6a21\u5f0f\u5df2\u7ed3\u675f"

    invoke-direct {p0, v2, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/WorkModeService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/cidaoai/catsource/WorkModeService;->stopSelf()V

    .line 174
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 177
    const-string v0, "work_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "active"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "state"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 178
    const-string v0, "detail"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->screenshots:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const-string v1, "waiting_screenshots"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 179
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->videos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const-string v1, "waiting_videos"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Lcom/cidaoai/catsource/WorkModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Lcom/cidaoai/catsource/WorkModeService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x1c20

    invoke-virtual {p3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cidaoai.catsource.IMPORT_UPDATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cidaoai/catsource/WorkModeService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cidaoai/catsource/WorkModeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method


# virtual methods
.method synthetic lambda$0$com-cidaoai-catsource-WorkModeService()V
    .locals 3

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cidaoai/catsource/WorkModeService;->needsRescan:Z

    .line 91
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image"

    invoke-direct {p0, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->scan(Landroid/net/Uri;Ljava/lang/String;)V

    .line 92
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->scan(Landroid/net/Uri;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/cidaoai/catsource/WorkModeService;->pairAvailable()V

    .line 94
    iget-boolean v0, p0, Lcom/cidaoai/catsource/WorkModeService;->needsRescan:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cidaoai/catsource/WorkModeService;->scheduleScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cidaoai/catsource/WorkModeService;->message(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u3002\u8bf7\u786e\u8ba4\u5df2\u5141\u8bb8\u8bbf\u95ee\u6240\u6709\u7167\u7247\u548c\u89c6\u9891\u3002"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u76d1\u542c\u5931\u8d25"

    invoke-direct {p0, v2, v0, v1}, Lcom/cidaoai/catsource/WorkModeService;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    :cond_0
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 203
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/WorkModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    nop

    .line 61
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\u5de5\u4f5c\u6a21\u5f0f\u76d1\u542c"

    const/4 v3, 0x2

    const-string v4, "work_mode_monitor"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 62
    const-string v0, "\u6b63\u5728\u542f\u52a8\u76d1\u542c\u2026"

    invoke-direct {p0, v0}, Lcom/cidaoai/catsource/WorkModeService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x1c20

    invoke-virtual {p0, v1, v0}, Lcom/cidaoai/catsource/WorkModeService;->startForeground(ILandroid/app/Notification;)V

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "media-watch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cidaoai/catsource/WorkModeService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->handler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/cidaoai/catsource/WorkModeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cidaoai/catsource/WorkModeService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 200
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 201
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 67
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 68
    :goto_0
    const-string p2, "com.cidaoai.catsource.WORK_STOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/cidaoai/catsource/WorkModeService;->stopWork()V

    const/4 p1, 0x2

    return p1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/cidaoai/catsource/WorkModeService;->observer:Landroid/database/ContentObserver;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/cidaoai/catsource/WorkModeService;->startWork()V

    .line 70
    :cond_2
    const/4 p1, 0x1

    return p1
.end method
