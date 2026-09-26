.class public final Lcom/cidaoai/catsource/MainActivity$Bridge;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cidaoai/catsource/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cidaoai/catsource/MainActivity;


# direct methods
.method public constructor <init>(Lcom/cidaoai/catsource/MainActivity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pick(I[Ljava/lang/String;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    new-instance v1, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda1;-><init>(Lcom/cidaoai/catsource/MainActivity$Bridge;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cidaoai/catsource/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method


# virtual methods
.method public exportSettings()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v1}, Lcom/cidaoai/catsource/MainActivity;->access$4(Lcom/cidaoai/catsource/MainActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :export_loop
    array-length v3, v1

    if-lt v2, v3, :export_item

    const-string v1, "backupVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :export_item
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v4}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :export_loop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :export_error

    :export_error
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :export_fallback

    :export_fallback
    const-string v0, "{\"error\":\"无法导出设置\"}"

    return-object v0
.end method

.method public copySettingsBackup()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/cidaoai/catsource/MainActivity$Bridge;->exportSettings()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :copy_do

    return-object v0

    :copy_do
    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/cidaoai/catsource/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "猫源工作台设置备份"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "{\"ok\":true}"

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :copy_error

    :copy_error
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :copy_fallback

    :copy_fallback
    const-string v0, "{\"error\":\"无法复制设置\"}"

    return-object v0
.end method

.method public restoreSettingsBackup()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/cidaoai/catsource/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :restore_empty

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :restore_empty

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :restore_empty

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :restore_empty

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cidaoai/catsource/MainActivity$Bridge;->saveSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :restore_empty
    const-string v0, "{\"error\":\"剪贴板中没有设置备份码\"}"

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :restore_error

    :restore_error
    const-string v0, "{\"error\":\"剪贴板内容不是有效的设置备份码\"}"

    return-object v0
.end method

.method public cleanupUsedFiles()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    new-instance v2, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda3;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/cidaoai/catsource/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearMedia()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$12(Lcom/cidaoai/catsource/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$11(Lcom/cidaoai/catsource/MainActivity;)V

    return-void
.end method

.method public clearScreenshots()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$10(Lcom/cidaoai/catsource/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$11(Lcom/cidaoai/catsource/MainActivity;)V

    return-void
.end method

.method public getSettingsStatus()Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 246
    const-string v1, "supplier"

    const-string v2, "rate"

    const-string v3, "fixed"

    const-string v4, "targetStatus"

    const-string v5, "feishuAppId"

    const-string v6, "feishuAppToken"

    const-string v7, "feishuTableId"

    const-string v8, "aiBaseUrl"

    const-string v9, "aiModel"

    const-string v10, "descriptionPrompt"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    .line 247
    const-string v1, "hasFeishuSecret"

    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v3}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v3

    const-string v4, "feishuAppSecret"

    invoke-virtual {v3, v4}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasAiKey"

    iget-object v3, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v3}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v3

    const-string v5, "aiApiKey"

    invoke-virtual {v3, v5}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 248
    const-string v1, "complete"

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v2}, Lcom/cidaoai/catsource/MainActivity;->access$2(Lcom/cidaoai/catsource/MainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_2
    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v5}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"error\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$3(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemStatus()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 268
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "job"

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v2}, Lcom/cidaoai/catsource/ImportService;->status(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "work"

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v2}, Lcom/cidaoai/catsource/WorkModeService;->status(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cleanupCount"

    iget-object v2, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v2}, Lcom/cidaoai/catsource/CleanupStore;->count(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"error\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$3(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$3$com-cidaoai-catsource-MainActivity$Bridge(I[Ljava/lang/String;)V
    .locals 2

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    const-string v1, "image/*"

    goto :goto_0

    :cond_0
    const-string v1, "*/*"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/16 p2, 0x41

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-virtual {p2, v0, p1}, Lcom/cidaoai/catsource/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    return-void
.end method

.method public pickMedia()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 272
    const-string v5, "video/webm"

    const-string v6, "video/quicktime"

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    const-string v2, "image/webp"

    const-string v3, "image/gif"

    const-string v4, "video/mp4"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/cidaoai/catsource/MainActivity$Bridge;->pick(I[Ljava/lang/String;)V

    return-void
.end method

.method public pickScreenshots()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 271
    const-string v0, "image/png"

    const-string v1, "image/webp"

    const-string v2, "image/jpeg"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/cidaoai/catsource/MainActivity$Bridge;->pick(I[Ljava/lang/String;)V

    return-void
.end method

.method public retryLastFailed()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/ImportService;->retryFailed(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ok"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u6ca1\u6709\u53ef\u91cd\u8bd5\u7684\u5931\u8d25\u6279\u6b21"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"error\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cidaoai/catsource/MainActivity;->access$3(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetFailedBatch()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v0}, Lcom/cidaoai/catsource/ImportService;->clearFailed(Landroid/content/Context;)V

    const-string v0, "{\"ok\":true}"

    return-object v0
.end method

.method public saveSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 253
    const-string v0, "feishuAppSecret"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$4(Lcom/cidaoai/catsource/MainActivity;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-lt v4, v2, :cond_1

    .line 260
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$5(Lcom/cidaoai/catsource/MainActivity;)V

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/cidaoai/catsource/ApiClient;->clearTokenCache()V

    :cond_0
    iget-object p1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$6(Lcom/cidaoai/catsource/MainActivity;)V

    .line 261
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ok"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "complete"

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v1}, Lcom/cidaoai/catsource/MainActivity;->access$2(Lcom/cidaoai/catsource/MainActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    aget-object v7, p1, v4

    .line 255
    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "aiApiKey"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v6

    .line 256
    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 257
    :cond_3
    const-string v9, "feishuAppId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v9}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/cidaoai/catsource/SecurePrefs;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move v5, v6

    .line 258
    :cond_5
    iget-object v6, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    invoke-static {v6}, Lcom/cidaoai/catsource/MainActivity;->access$1(Lcom/cidaoai/catsource/MainActivity;)Lcom/cidaoai/catsource/SecurePrefs;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lcom/cidaoai/catsource/SecurePrefs;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"error\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cidaoai/catsource/MainActivity;->access$3(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public startWorkMode()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    new-instance v2, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda0;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/cidaoai/catsource/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopWorkMode()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    iget-object v1, p0, Lcom/cidaoai/catsource/MainActivity$Bridge;->this$0:Lcom/cidaoai/catsource/MainActivity;

    new-instance v2, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/cidaoai/catsource/MainActivity$Bridge$$ExternalSyntheticLambda2;-><init>(Lcom/cidaoai/catsource/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/cidaoai/catsource/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
