.class final Lcom/cidaoai/catsource/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cidaoai/catsource/ApiClient$HttpResult;
    }
.end annotation


# static fields
.field private static final FEISHU:Ljava/lang/String; = "https://open.feishu.cn/open-apis"

.field private static final MAX_FILE:J = 0x1400000L

.field private static cachedToken:Ljava/lang/String;

.field private static tokenExpiry:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cidaoai/catsource/ApiClient;->tokenExpiry:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DD)Lorg/json/JSONObject;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const-string v7, "feishuAppToken"

    const-string v8, "feishuTableId"

    const-string v2, "aiApiKey"

    const-string v3, "aiBaseUrl"

    const-string v4, "aiModel"

    const-string v5, "feishuAppId"

    const-string v6, "feishuAppSecret"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 47
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_20

    .line 49
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4f60\u662f\u732b\u54aa\u8d27\u6e90\u8d44\u6599\u6574\u7406\u5458\u3002\u6839\u636e\u670b\u53cb\u5708\u6587\u5b57\u3001\u56fe\u7247\u548c\u89c6\u9891\u62bd\u5e27\uff0c\u628a\u4e0d\u540c\u732b\u54aa\u62c6\u6210\u72ec\u7acb\u8bb0\u5f55\u3002\n\u4f9b\u8d27\u5546\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u670b\u53cb\u5708\u539f\u6587\uff1a\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "\uff08\u6ca1\u6709\u6587\u5b57\uff0c\u53ea\u80fd\u4f9d\u636e\u56fe\u7247\uff09"

    goto :goto_2

    :cond_0
    move-object/from16 v5, p5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    const-string v5, "\n\u670b\u53cb\u5708\u622a\u56fe\uff08\u4ec5\u4f9b\u8bc6\u522b\uff0c\u7981\u6b62\u5199\u5165file_names\uff09\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    const-string v4, "\n\u732b\u54aa\u5c55\u793a\u7d20\u6750\uff08file_names\u53ea\u80fd\u4ece\u8fd9\u91cc\u9009\u62e9\uff09\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    const-string v3, "\u53ea\u8fd4\u56deJSON\u5bf9\u8c61\uff0c\u683c\u5f0f\uff1a{\"cats\":[{\"supplier_original_id\":\"\",\"breed\":\"\",\"color\":\"\",\"gender\":\"\u516c\u3001\u6bcd\u6216\u7a7a\",\"age\":\"\",\"vaccine\":\"\",\"description\":\"\",\"cost_price\":null,\"price\":null,\"file_names\":[\"\u5b8c\u6574\u6587\u4ef6\u540d\"],\"confidence\":0.0,\"notes\":\"\u5f85\u786e\u8ba4\u5185\u5bb9\"}]}\u3002\u670b\u53cb\u5708\u4e2d\u7684\u552e\u5356\u4ef7\u683c\u5fc5\u987b\u586b\u5165cost_price\uff0cprice\u4fdd\u6301null\uff0c\u7531\u7a0b\u5e8f\u6839\u636e\u52a0\u4ef7\u89c4\u5219\u8ba1\u7b97\u3002\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5b57\u6bb5\u89c4\u8303\uff1abreed\u53ea\u586b\u6807\u51c6\u54c1\u79cd\u540d\uff0c\u7981\u6b62\u62ec\u53f7\u3001\u522b\u540d\u3001\u6bdb\u8272\u548c\u8425\u9500\u8bcd\uff1b\u5fb7\u6587\u6216\u5fb7\u6587\u5377\u6bdb\u7edf\u4e00\u4e3a\u5fb7\u6587\u5377\u6bdb\u732b\uff0c\u82f1\u77ed\u91d1\u6e10\u5c42\u62c6\u4e3abreed=\u82f1\u77ed\u3001color=\u91d1\u6e10\u5c42\uff0c\u82f1\u77ed\u94f6\u6e10\u5c42\u540c\u7406\u3002color\u53ea\u586b\u989c\u8272/\u82b1\u8272\uff0c\u7981\u6b62\u54c1\u79cd\u540d\u548c\u62ec\u53f7\u3002age\u5fc5\u987b\u4f18\u5148\u8bfb\u53d6\u6587\u6848\u4e2d\u7684\u6708\u9f84\uff0c\u5c0f\u4e8e12\u4e2a\u6708\u7edf\u4e00\u5199N\u4e2a\u6708\uff0c\u4f8b\u5982\u4e24\u4e2a\u6708/2\u6708/60\u5929\u7edf\u4e00\u4e3a2\u4e2a\u6708\uff1b\u672a\u660e\u786e\u5199\u5e74\u9f84\u65f6\u7559\u7a7a\uff0c\u4e0d\u51ed\u5916\u89c2\u731c\u6d4b\u3002vaccine\u4ec5\u6839\u636e\u6587\u6848\u7edf\u4e00\u5199\u672a\u63a5\u79cd\u30011\u9488\u30012\u9488\u30013\u9488\u6216\u75ab\u82d7\u9f50\u5168\uff0c\u672a\u5199\u5219\u7559\u7a7a\u3002description\u519940-80\u5b57\u771f\u5b9e\u5c55\u793a\u6587\u6848\uff0c\u53ef\u63cf\u8ff0\u53ef\u89c1\u5916\u8c8c\u53ca\u6587\u6848\u660e\u786e\u6027\u683c\uff0c\u7981\u6b62\u865a\u6784\u5065\u5eb7\u3001\u8840\u7edf\u3001\u75ab\u82d7\u548c\u751f\u6d3b\u7ecf\u5386\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string v3, "\u5fc5\u987b\u9010\u5f20\u67e5\u770b\u56fe\u7247\u548c\u89c6\u9891\u62bd\u5e27\uff0c\u4e0d\u80fd\u53ea\u4f9d\u636e\u6587\u6848\u3002color\u4f18\u5148\u4f9d\u636e\u732b\u54aa\u5b9e\u9645\u6bdb\u53d1\u989c\u8272\u3001\u6e10\u5c42\u548c\u82b1\u7eb9\u586b\u5199\uff0cbreed\u53ef\u7ed3\u5408\u89c6\u89c9\u7279\u5f81\u4e0e\u6587\u6848\uff1b\u4e0d\u8981\u4ece\u6027\u522b\u731c\u6bdb\u8272\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string v3, "\u56fe\u7247\u4e0e\u6587\u6848\u51b2\u7a81\u65f6\u5728notes\u4e2d\u8bf4\u660e\uff1b\u770b\u4e0d\u6e05\u5c31\u7559\u7a7a\u5e76\u5199\u5165notes\uff0c\u4e0d\u5f97\u731c\u6d4b\u3002\u4e0d\u8981\u628a\u5b9a\u91d1\u3001\u8fd0\u8d39\u3001\u65e5\u671f\u5f53\u4ef7\u683c\uff1b\u591a\u53ea\u732b\u5fc5\u987b\u62c6\u5206\uff1bfile_names\u53ea\u80fd\u4f7f\u7528\u7ed9\u51fa\u7684\u6587\u4ef6\u540d\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    const-string v3, "\u4e3a\u6bcf\u53ea\u732b\u5206\u914d\u9644\u4ef6\u65f6\u4f18\u5148\u9009\u62e9\u5bf9\u5e94\u89c6\u9891\uff1b\u670b\u53cb\u5708\u6574\u9875\u622a\u56fe\u53ea\u7528\u4e8e\u8bc6\u522b\u4fe1\u606f\uff0c\u4e0d\u8981\u653e\u8fdbfile_names\uff0c\u9664\u975e\u6ca1\u6709\u4efb\u4f55\u5bf9\u5e94\u89c6\u9891\u3002cost_price\u662f\u8d27\u6e90\u4ef7\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n自定义description要求（优先遵守）："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "descriptionPrompt"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "text"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 60
    nop

    .line 61
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v2, v9

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "high"

    const-string v10, "detail"

    const-string v11, "url"

    const-string v12, "image_url"

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    .line 62
    const/4 v13, 0x4

    if-lt v2, v13, :cond_1d

    .line 69
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_6

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    .line 70
    const/16 v8, 0xc

    if-lt v2, v8, :cond_19

    .line 86
    :goto_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v3, "aiModel"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "model"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    const-string v3, "temperature"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v2, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "json_object"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "response_format"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 90
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "role"

    const-string v7, "user"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "messages"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 86
    nop

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "aiApiKey"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aiBaseUrl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/$"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/chat/completions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 93
    const-string v5, "POST"

    const-string v7, "application/json"

    invoke-static {v5, v4, v3, v2, v7}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object v2

    .line 95
    const-string v3, "AI\u63a5\u53e3\u8c03\u7528\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    .line 96
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "choices"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v3, "```"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "^```(?:json)?\\s*"

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s*```$"

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "cats"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_18

    .line 101
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 102
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_16

    .line 103
    move v7, v9

    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v7, v6, :cond_7

    .line 123
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p5

    invoke-static {v1, v11, v14, v15}, Lcom/cidaoai/catsource/ApiClient;->sourceHash(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 124
    nop

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/cidaoai/catsource/ApiClient;->records(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v9

    goto :goto_9

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 126
    const-string v1, "fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    const-string v1, "\u6765\u6e90\u6307\u7eb9"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 129
    :goto_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 130
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "files"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "source_hash"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "duplicate_warning"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 129
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {v5}, Lcom/cidaoai/catsource/SelectedFile;->json()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 104
    :cond_7
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p5

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 105
    const-string v20, "age"

    const-string v21, "notes"

    const-string v16, "supplier_original_id"

    const-string v17, "breed"

    const-string v18, "color"

    const-string v19, "gender"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v13

    move v6, v9

    :goto_b
    const/4 v9, 0x6

    if-lt v6, v9, :cond_13

    .line 108
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 109
    const-string v13, "file_names"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 110
    if-eqz v10, :cond_a

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    goto :goto_d

    .line 111
    :cond_8
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    :cond_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p4

    goto :goto_c

    .line 113
    :cond_a
    :goto_d
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    move-object v6, v9

    goto :goto_10

    .line 114
    :cond_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d

    move-object v6, v0

    goto :goto_10

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cidaoai/catsource/SelectedFile;

    invoke-virtual {v6}, Lcom/cidaoai/catsource/SelectedFile;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v6, v6, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    .line 115
    :cond_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_10

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v1, v1, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    .line 116
    :cond_10
    :goto_10
    invoke-virtual {v12, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "cost_price"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "price"

    if-eqz v1, :cond_11

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    :cond_11
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 119
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_12

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v9, p6, v9

    mul-double/2addr v0, v9

    add-double v0, v0, p8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v9, 0x19    # 25

    add-long/2addr v0, v9

    const-wide/16 v9, 0x32    # 50

    div-long/2addr v0, v9

    mul-long/2addr v0, v9

    long-to-double v0, v0

    invoke-virtual {v12, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 103
    :cond_12
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_8

    .line 105
    :cond_13
    const/4 v1, 0x1

    aget-object v0, v13, v6

    .line 106
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_14
    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_15
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_b

    .line 102
    :cond_16
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v1, v0, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/cidaoai/catsource/SelectedFile;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 100
    :cond_18
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AI\u6ca1\u6709\u8bc6\u522b\u51fa\u732b\u54aa\u8bb0\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_19
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "\u56fe\u7247\u6587\u4ef6\uff1a"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-static {v8, v3}, Lcom/cidaoai/catsource/ApiClient;->imageDataUrl(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 76
    :cond_1a
    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    rsub-int/lit8 v1, v2, 0xc

    const/4 v8, 0x3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v9, p0

    invoke-static {v9, v0, v1}, Lcom/cidaoai/catsource/ApiClient;->videoFrameDataUrls(Landroid/content/Context;Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_1b

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 79
    :cond_1b
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    const-string v13, "\u89c6\u9891\u6587\u4ef6 "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u7684\u4ee3\u8868\u753b\u9762 "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 81
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 78
    move-object/from16 v9, p0

    move v1, v13

    move-object/from16 v13, v17

    goto :goto_11

    .line 76
    :cond_1c
    move-object/from16 v17, v13

    :goto_12
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 63
    :cond_1d
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 64
    :cond_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "\u670b\u53cb\u5708\u622a\u56fe\uff0c\u4ec5\u7528\u4e8e\u8bc6\u522b\u4fe1\u606f\uff1a"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-static {v9, v3}, Lcom/cidaoai/catsource/ApiClient;->imageDataUrl(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 49
    :cond_1f
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v0, v0, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    goto/16 :goto_1

    .line 48
    :cond_20
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v0, v0, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    goto/16 :goto_0
.end method

.method static analyzeTimelinePlan(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    const-string v0, "aiBaseUrl"

    const-string v1, "aiModel"

    const-string v2, "aiApiKey"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    nop

    .line 200
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "text"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "\u4f60\u662f\u5b89\u5353\u5fae\u4fe1\u670b\u53cb\u5708\u732b\u54aa\u8d27\u6e90\u89c6\u89c9\u5206\u6790\u5668\u3002\u8f93\u5165\u56fe\u7247\u662f\u7528\u6237\u4e13\u95e8\u7528\u4e8e\u5173\u6ce8\u732b\u54aa\u4f9b\u8d27\u5546\u7684\u5fae\u4fe1\u8d26\u53f7\u4e4b\u670b\u53cb\u5708\u8fde\u7eed\u9875\u9762\u3002\u5148\u5224\u65ad\u8fd9\u4e9b\u56fe\u7247\u662f\u5426\u786e\u5b9e\u4e3a\u670b\u53cb\u5708\u4fe1\u606f\u6d41\uff1b\u4e0d\u662f\u5219page_is_moments=false\u3002\u4e1a\u52a1\u524d\u63d0\uff1a\u8fd9\u4e9b\u53d1\u732b\u8d26\u53f7\u90fd\u662f\u4f9b\u8d27\u5546\uff0c\u4ed6\u4eec\u5e38\u7528\u7c7b\u4f3c\u65e5\u5e38\u6652\u732b\u7684\u6781\u77ed\u6587\u6848\u53d1\u5e03\u8d27\u6e90\uff0c\u4e0d\u4e00\u5b9a\u5199\u51fa\u552e\u3001\u4ef7\u683c\u6216\u627e\u5bb6\u3002\u56e0\u6b64\uff0c\u53ea\u8981\u5e16\u5b50\u5a92\u4f53\u4e2d\u51fa\u73b0\u771f\u5b9e\u732b\u54aa\uff0c\u5c31\u4f18\u5148\u89c6\u4e3a\u6f5c\u5728\u65b0\u8d27\u5e76\u6807\u8bb0event=new\uff1b\u4f8b\u5982\u2018\u4eca\u65e5\u7684\u5c0f\u84dd\u91d1\u2019\u3001\u2018\u5f1f\u5f1f\u59b9\u59b9\u66f4\u65b0\u2019\u3001\u2018\u5c0f\u53ef\u7231\u2019\u3001\u2018\u4eca\u65e5\u72b6\u6001\u2019\u7b49\u77ed\u6587\u6848\u90fd\u5fc5\u987b\u6536\u5f55\u3002\u6ca1\u6709\u4ef7\u683c\u3001\u7f16\u53f7\u3001\u6027\u522b\u6216\u5b8c\u6574\u8d44\u6599\u4e0d\u80fd\u6210\u4e3a\u8fc7\u6ee4\u7406\u7531\uff1a\u7f3a\u5931\u5b57\u6bb5\u7559\u7a7a\u3001\u964d\u4f4econfidence\u5e76\u5728notes\u6ce8\u660e\u5f85\u6838\u5bf9\u3002\u53ea\u6709\u753b\u9762\u6216\u6587\u6848\u660e\u786e\u5199\u7740\u5df2\u51fa\u3001\u5df2\u5b9a\u3001\u552e\u51fa\u3001\u627e\u5230\u5bb6\u7b49\u5b8c\u6210\u4ea4\u6613\u4fe1\u606f\u65f6\u624d\u6807\u8bb0event=sold\uff1b\u4e0d\u786e\u5b9a\u662f\u65b0\u8d27\u8fd8\u662f\u6652\u732b\u65f6\u9009\u62e9new\u800c\u4e0d\u662fother\u3002\u5ffd\u7565\u975e\u732b\u5185\u5bb9\u3001\u732b\u7cae\u732b\u7802\u7b49\u7528\u54c1\u5e7f\u544a\u3001\u77e5\u8bc6\u79d1\u666e\u3001\u8868\u60c5\u5305\u3001\u7eaf\u6587\u5b57\u95f2\u804a\u3001\u70b9\u8d5e\u8bc4\u8bba\u548c\u660e\u663e\u79c1\u4eba\u751f\u6d3b\u5185\u5bb9\u3002\u8de8\u5c4f\u540c\u4e00\u5e16\u5b50\u5fc5\u987b\u5408\u5e76\u3002\u8bc6\u522b\u6bcf\u53ea\u732b\u5bf9\u5e94\u7684\u662f\u56fe\u7247\u8fd8\u662f\u89c6\u9891\u5c01\u9762\uff1b\u770b\u89c1\u89c6\u9891\u64ad\u653e\u6807\u8bb0\u6216\u660e\u786e\u89c6\u9891\u754c\u9762\u65f6media_type\u5fc5\u987b\u586bvideo\u3002\u53ea\u8fd4\u56deJSON\uff1a{\"page_is_moments\":true,\"posts\":[{\"supplier\":\"\",\"raw_text\":\"\",\"source_time\":\"\",\"event\":\"new\u6216sold\u6216other\",\"sold_reference\":\"\",\"cats\":[{\"supplier_original_id\":\"\",\"breed\":\"\",\"color\":\"\",\"gender\":\"\u516c\u3001\u6bcd\u6216\u7a7a\",\"age\":\"\",\"cost_price\":null,\"confidence\":0.0,\"notes\":\"\",\"screenshot_index\":0,\"media_type\":\"image\u6216video\u6216unknown\",\"media_bbox\":[0.0,0.0,1.0,1.0]}]}]}\u3002media_bbox\u662f\u8981\u70b9\u51fb\u6216\u88c1\u526a\u7684\u732b\u54aa\u5a92\u4f53\u533a\u57df\u5f52\u4e00\u5316\u5de6\u4e0a\u53f3\u4e0b\u5750\u6807\uff0c\u5fc5\u987b\u6392\u9664\u5934\u50cf\u3001\u6635\u79f0\u3001\u6587\u5b57\u548c\u6309\u94ae\uff1b\u7981\u6b62\u7528[0,0,1,1]\u6216\u63a5\u8fd1\u6574\u5c4f\u7684\u6846\u3002\u4ef7\u683c\u586bcost_price\uff0c\u65e5\u671f\u3001\u5b9a\u91d1\u3001\u8fd0\u8d39\u4e0d\u80fd\u5f53\u4ef7\u683c\uff1b\u4e00\u6761\u52a8\u6001\u4e2d\u6709\u591a\u53ea\u53ef\u533a\u5206\u7684\u732b\u65f6\u5c3d\u91cf\u62c6\u5206\u3002"

    const-string v5, "\u5b57\u6bb5\u89c4\u8303\uff1acats\u4e2d\u5fc5\u987b\u8fd4\u56devaccine\u548cdescription\u3002breed\u53ea\u586b\u6807\u51c6\u54c1\u79cd\u540d\uff0c\u7981\u6b62\u62ec\u53f7\u3001\u522b\u540d\u3001\u6bdb\u8272\u548c\u8425\u9500\u8bcd\uff1b\u5fb7\u6587/\u5fb7\u6587\u5377\u6bdb\u7edf\u4e00\u4e3a\u5fb7\u6587\u5377\u6bdb\u732b\uff0c\u82f1\u77ed\u91d1\u6e10\u5c42\u62c6\u4e3abreed=\u82f1\u77ed\u3001color=\u91d1\u6e10\u5c42\uff0c\u82f1\u77ed\u94f6\u6e10\u5c42\u540c\u7406\u3002color\u53ea\u586b\u989c\u8272/\u82b1\u8272\uff0c\u7981\u6b62\u54c1\u79cd\u548c\u62ec\u53f7\u3002age\u4f18\u5148\u8bfb\u53d6\u6587\u6848\u5e76\u6807\u51c6\u5316\uff1a\u4e24\u4e2a\u6708/2\u6708/60\u5929\u7edf\u4e00\u51992\u4e2a\u6708\uff1b\u672a\u660e\u786e\u5199\u65f6\u7559\u7a7a\uff0c\u7981\u6b62\u51ed\u5916\u89c2\u731c\u6d4b\u3002vaccine\u4ec5\u6839\u636e\u6587\u6848\u5199\u672a\u63a5\u79cd\u30011\u9488\u30012\u9488\u30013\u9488\u6216\u75ab\u82d7\u9f50\u5168\uff0c\u672a\u5199\u7559\u7a7a\u3002description\u519940-80\u5b57\u771f\u5b9e\u5c55\u793a\u6587\u6848\uff0c\u53ea\u80fd\u6839\u636e\u53ef\u89c1\u5916\u8c8c\u548c\u660e\u786e\u6587\u6848\uff0c\u4e0d\u5f97\u865a\u6784\u5065\u5eb7\u3001\u8840\u7edf\u3001\u75ab\u82d7\u6216\u7ecf\u5386\u3002\u8fd4\u56de\u7ed3\u6784\u4e2d\u6bcf\u53eacat\u5fc5\u987b\u5305\u542b\"vaccine\":\"\"\u548c\"description\":\"\"\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 206
    const-string p1, "AI\u670b\u53cb\u5708\u8bc6\u522b\u5931\u8d25"

    invoke-static {p0, v0, p1}, Lcom/cidaoai/catsource/ApiClient;->callAiJson(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u622a\u56fe\u7d22\u5f15 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 203
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "image_url"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 204
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-static {v7}, Lcom/cidaoai/catsource/ApiClient;->bitmapDataUrlCopy(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "detail"

    const-string v8, "high"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 203
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u6ca1\u6709\u91c7\u96c6\u5230\u670b\u53cb\u5708\u753b\u9762"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static declared-synchronized automateTimeline(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;DDLjava/lang/String;)Lorg/json/JSONObject;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;DD",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/cidaoai/catsource/ApiClient;

    monitor-enter v3

    .line 366
    :try_start_0
    const-string v4, "aiApiKey"

    const-string v5, "aiBaseUrl"

    const-string v6, "aiModel"

    const-string v7, "feishuAppId"

    const-string v8, "feishuAppSecret"

    const-string v9, "feishuAppToken"

    const-string v10, "feishuTableId"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 367
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 368
    const-string v0, "\u4f60\u662f\u732b\u54aa\u8d27\u6e90\u670b\u53cb\u5708\u5de1\u68c0\u5458\u3002\u4e0b\u9762\u56fe\u7247\u6309\u987a\u5e8f\u662f\u540c\u4e00\u6b21\u670b\u53cb\u5708\u5237\u65b0\u540e\u8fde\u7eed\u6eda\u52a8\u7684\u9875\u9762\u3002\u53ea\u63d0\u53d6\u672c\u6b21\u753b\u9762\u91cc\u80fd\u591f\u660e\u786e\u770b\u89c1\u7684\u5356\u732b\u6216\u552e\u51fa\u4fe1\u606f\uff0c\u5ffd\u7565\u5e7f\u544a\u3001\u751f\u6d3b\u5185\u5bb9\u3001\u70b9\u8d5e\u8bc4\u8bba\u548c\u5fae\u4fe1\u754c\u9762\u3002\u540c\u4e00\u6761\u670b\u53cb\u5708\u8de8\u5c4f\u51fa\u73b0\u65f6\u5fc5\u987b\u5408\u5e76\uff0c\u4e0d\u80fd\u91cd\u590d\u3002\u4f9b\u8d27\u5546\u53d6\u670b\u53cb\u5708\u53d1\u5e03\u8005\u663e\u793a\u540d\u79f0\u3002\u53ea\u8fd4\u56deJSON\u5bf9\u8c61\uff1a{\"posts\":[{\"supplier\":\"\",\"raw_text\":\"\",\"source_time\":\"\",\"event\":\"new\u6216sold\u6216other\",\"sold_reference\":\"\u660e\u786e\u552e\u51fa\u7684\u4f9b\u8d27\u5546\u539f\u7f16\u53f7\uff0c\u6ca1\u6709\u5219\u7a7a\",\"cats\":[{\"supplier_original_id\":\"\",\"breed\":\"\",\"color\":\"\",\"gender\":\"\u516c\u3001\u6bcd\u6216\u7a7a\",\"age\":\"\",\"cost_price\":null,\"confidence\":0.0,\"notes\":\"\",\"screenshot_index\":0,\"bbox\":[0.0,0.0,1.0,1.0]}]}]}\u3002bbox\u4e3a\u732b\u54aa\u56fe\u7247\u5728\u5bf9\u5e94\u622a\u56fe\u91cc\u7684\u5f52\u4e00\u5316\u5de6\u4e0a\u53f3\u4e0b\u5750\u6807\uff0c\u5fc5\u987b\u5c3d\u91cf\u6392\u9664\u5934\u50cf\u3001\u6635\u79f0\u3001\u4ef7\u683c\u6587\u5b57\u548c\u5fae\u4fe1\u6309\u94ae\uff0c\u53ea\u6846\u732b\u54aa\u7167\u7247\u6216\u89c6\u9891\u5c01\u9762\u3002\u53ea\u6709\u51fa\u73b0\u660e\u786e\u5df2\u51fa\u3001\u5df2\u5b9a\u3001\u552e\u51fa\u5b57\u6837\u65f6event\u624d\u4e3asold\uff1b\u5e16\u5b50\u6d88\u5931\u6216\u770b\u4e0d\u6e05\u4e0d\u80fd\u5224\u65ad\u552e\u51fa\u3002\u5356\u4ef7\u586bcost_price\uff0c\u4e0d\u5f97\u628a\u65e5\u671f\u3001\u5b9a\u91d1\u6216\u8fd0\u8d39\u5f53\u4ef7\u683c\u3002\u4e0d\u80fd\u786e\u5b9a\u65f6\u7559\u7a7a\u5e76\u5199notes\uff0c\u4e0d\u5f97\u731c\u6d4b\u3002"

    const-string v26, "\u5b57\u6bb5\u89c4\u8303\uff1acats\u4e2d\u5fc5\u987b\u8fd4\u56devaccine\u548cdescription\u3002breed\u53ea\u586b\u6807\u51c6\u54c1\u79cd\u540d\uff0c\u7981\u6b62\u62ec\u53f7\u3001\u522b\u540d\u3001\u6bdb\u8272\u548c\u8425\u9500\u8bcd\uff1b\u5fb7\u6587/\u5fb7\u6587\u5377\u6bdb\u7edf\u4e00\u4e3a\u5fb7\u6587\u5377\u6bdb\u732b\uff0c\u82f1\u77ed\u91d1\u6e10\u5c42\u62c6\u4e3abreed=\u82f1\u77ed\u3001color=\u91d1\u6e10\u5c42\uff0c\u82f1\u77ed\u94f6\u6e10\u5c42\u540c\u7406\u3002color\u53ea\u586b\u989c\u8272/\u82b1\u8272\uff0c\u7981\u6b62\u54c1\u79cd\u548c\u62ec\u53f7\u3002age\u4f18\u5148\u8bfb\u53d6\u6587\u6848\u5e76\u6807\u51c6\u5316\uff1a\u4e24\u4e2a\u6708/2\u6708/60\u5929\u7edf\u4e00\u51992\u4e2a\u6708\uff1b\u672a\u660e\u786e\u5199\u65f6\u7559\u7a7a\uff0c\u7981\u6b62\u51ed\u5916\u89c2\u731c\u6d4b\u3002vaccine\u4ec5\u6839\u636e\u6587\u6848\u5199\u672a\u63a5\u79cd\u30011\u9488\u30012\u9488\u30013\u9488\u6216\u75ab\u82d7\u9f50\u5168\uff0c\u672a\u5199\u7559\u7a7a\u3002description\u519940-80\u5b57\u771f\u5b9e\u5c55\u793a\u6587\u6848\uff0c\u53ea\u80fd\u6839\u636e\u53ef\u89c1\u5916\u8c8c\u548c\u660e\u786e\u6587\u6848\uff0c\u4e0d\u5f97\u865a\u6784\u5065\u5eb7\u3001\u8840\u7edf\u3001\u75ab\u82d7\u6216\u7ecf\u5386\u3002\u8fd4\u56de\u7ed3\u6784\u4e2d\u6bcf\u53eacat\u5fc5\u987b\u5305\u542b\"vaccine\":\"\"\u548c\"description\":\"\"\u3002"

    move-object/from16 v15, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "text"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 380
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_18

    .line 385
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 386
    const-string v6, "model"

    const-string v7, "aiModel"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 387
    const-string v6, "temperature"

    const-wide v7, 0x3fa999999999999aL    # 0.05

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    .line 388
    const-string v6, "response_format"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "type"

    const-string v9, "json_object"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 389
    const-string v6, "messages"

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "role"

    const-string v10, "user"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "content"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    nop

    .line 390
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 391
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bearer "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "aiApiKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v6, "POST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "aiBaseUrl"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/$"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/chat/completions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v8, "application/json"

    .line 392
    invoke-static {v6, v7, v5, v0, v8}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object v0

    .line 394
    const-string v5, "AI\u81ea\u52a8\u5de1\u68c0\u5931\u8d25"

    invoke-static {v0, v5}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    .line 395
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v0, "choices"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "message"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "content"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 397
    const-string v5, "```"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "^```(?:json)?\\s*"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\s*```$"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "posts"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 399
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    move-object v5, v0

    .line 401
    invoke-static/range {p1 .. p1}, Lcom/cidaoai/catsource/ApiClient;->records(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v6

    .line 402
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 403
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_16

    .line 407
    nop

    .line 408
    move v0, v4

    move v8, v0

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v8, v12, :cond_4

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u73b0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8d27\u6e90\u52a8\u6001\uff0c\u65b0\u589e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u53ea\u732b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    if-lez v10, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\uff0c\u4e0b\u67b6"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    :cond_2
    if-lez v11, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\uff0c\u8df3\u8fc7\u91cd\u590d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "discovered"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "imported"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "sold"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 409
    :cond_4
    :try_start_1
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 410
    if-nez v12, :cond_5

    goto :goto_3

    .line 411
    :cond_5
    const-string v13, "event"

    const-string v14, "other"

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 412
    const-string v14, "other"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 408
    :goto_3
    move-object/from16 v16, v5

    goto/16 :goto_6

    .line 413
    :cond_6
    add-int/lit8 v14, v0, 0x1

    .line 414
    const-string v0, "supplier"

    const-string v15, "\u672a\u77e5\u4f9b\u8d27\u5546"

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v0, "\u672a\u77e5\u4f9b\u8d27\u5546"

    :cond_7
    move-object v15, v0

    .line 416
    const-string v0, "raw_text"

    const-string v4, ""

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 417
    const-string v0, "source_time"

    move-object/from16 v16, v5

    const-string v5, ""

    invoke-virtual {v12, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 418
    const-string v0, "sold"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    const-string v0, "sold_reference"

    const-string v4, ""

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nsold"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cidaoai/catsource/ApiClient;->textHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_6

    .line 422
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v1, v6, v15, v0}, Lcom/cidaoai/catsource/ApiClient;->markSold(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 423
    add-int/lit8 v10, v10, 0x1

    .line 424
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    move v0, v14

    goto :goto_6

    .line 428
    :cond_9
    const-string v0, "new"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 429
    :cond_a
    const-string v0, "cats"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 430
    if-nez v12, :cond_c

    .line 408
    :cond_b
    :goto_4
    move v0, v14

    goto :goto_6

    .line 431
    :cond_c
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v13, v0, :cond_d

    move v0, v14

    .line 408
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 432
    :cond_d
    move-object/from16 v17, v6

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 433
    if-nez v6, :cond_e

    move/from16 v19, v8

    move/from16 v18, v10

    move/from16 v22, v11

    move-object/from16 v20, v12

    move/from16 v21, v14

    move-object/from16 v11, p7

    goto/16 :goto_b

    .line 434
    :cond_e
    nop

    .line 435
    const-string v18, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    move/from16 v19, v8

    :try_start_2
    invoke-static {v2, v6}, Lcom/cidaoai/catsource/ApiClient;->cropForCat(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-static {v0}, Lcom/cidaoai/catsource/ApiClient;->screenHash(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 440
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, v18

    .line 441
    move/from16 v18, v10

    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v12

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    const-string v12, "supplier_original_id"

    move/from16 v21, v14

    const-string v14, ""

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "breed"

    const-string v14, ""

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 443
    const-string v12, "color"

    const-string v14, ""

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "cost_price"

    const-string v14, ""

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cidaoai/catsource/ApiClient;->textHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 445
    add-int/lit8 v11, v11, 0x1

    .line 446
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    nop

    .line 431
    :cond_f
    move/from16 v22, v11

    move-object/from16 v11, p7

    goto/16 :goto_b

    .line 449
    :cond_10
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/cidaoai/catsource/ApiClient;->nextCatIds(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 450
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 452
    if-nez v8, :cond_11

    :try_start_5
    invoke-static {v2, v6}, Lcom/cidaoai/catsource/ApiClient;->cropForCat(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 453
    :cond_11
    invoke-static {v8}, Lcom/cidaoai/catsource/ApiClient;->bitmapJpegBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v22, v11

    :try_start_6
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_\u670b\u53cb\u5708\u5c01\u9762.jpg"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "image/jpeg"

    const-string v2, "bitable_image"

    invoke-static {v1, v0, v8, v11, v2}, Lcom/cidaoai/catsource/ApiClient;->uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "file_token"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 456
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v22, v11

    :goto_8
    nop

    .line 457
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 458
    const-string v2, "\u732b\u54aaID"

    invoke-static {v0, v2, v14}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u56fe\u7247"

    invoke-static {v0, v2, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    const-string v2, "\u54c1\u79cd"

    const-string v8, "breed"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "color"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/cidaoai/catsource/ApiClient;->normalizeBreed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u6bdb\u8272/\u82b1\u8272"

    const-string v8, "color"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "breed"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/cidaoai/catsource/ApiClient;->normalizeColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string v2, "\u6027\u522b"

    const-string v8, "gender"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u5e74\u9f84"

    const-string v8, "age"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u75ab\u82d7"

    const-string v8, "vaccine"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u63cf\u8ff0"

    const-string v8, "description"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v2, "cost_price"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 462
    const-string v2, "cost_price"

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v6, v2, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 463
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_12

    .line 464
    const-string v2, "\u8fdb\u8d27\u4ef7"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v2, "\u4ef7\u683c"

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    add-double v25, p3, v25

    mul-double v11, v11, v25

    add-double v11, v11, p5

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    const-wide/16 v23, 0x19    # 25

    add-long v11, v11, v23

    const-wide/16 v23, 0x32    # 50

    div-long v11, v11, v23

    mul-long v11, v11, v23

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    :cond_12
    const-string v2, "\u72b6\u6001"

    const-string v8, "\u5728\u552e"

    move-object/from16 v11, p7

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "\u5728\u552e"

    goto :goto_9

    :cond_13
    const-string v8, "\u5f85\u6838\u5bf9"

    :goto_9
    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    const-string v2, "\u4f9b\u8d27\u5546"

    invoke-static {v0, v2, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u4f9b\u8d27\u5546\u539f\u7f16\u53f7"

    const-string v8, "supplier_original_id"

    const-string v12, ""

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    const-string v2, "\u539f\u59cb\u63cf\u8ff0"

    const/16 v8, 0x1388

    invoke-static {v4, v8}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v2, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u6765\u6e90\u65f6\u95f4"

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {}, Lcom/cidaoai/catsource/ApiClient;->nowText()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_14
    move-object v12, v5

    :goto_a
    invoke-static {v0, v2, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    const-string v2, "\u6765\u6e90\u6307\u7eb9"

    invoke-static {v0, v2, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "\u81ea\u52a8\u5de1\u68c0\u8bc6\u522b\uff1b\u7f6e\u4fe1\u5ea6 "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "confidence"

    move v14, v9

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v12, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v23

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "%"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    const-string v8, "notes"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff1b"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "notes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_15
    const-string v6, "\u6838\u5bf9\u5907\u6ce8"

    const/16 v8, 0x1388

    invoke-static {v2, v8}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    invoke-static {v1, v0}, Lcom/cidaoai/catsource/ApiClient;->createRecord(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 476
    add-int/lit8 v9, v14, 0x1

    .line 477
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v6, v17

    move/from16 v10, v18

    move/from16 v8, v19

    move-object/from16 v12, v20

    move/from16 v14, v21

    move/from16 v11, v22

    goto/16 :goto_5

    .line 403
    :cond_16
    move-object/from16 v11, p7

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 404
    const-string v4, "fields"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 405
    if-eqz v2, :cond_17

    const-string v4, "\u6765\u6e90\u6307\u7eb9"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "\u6765\u6e90\u6307\u7eb9"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object/from16 v2, p2

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 381
    :cond_18
    move-object/from16 v11, p7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v6, "text"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "text"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u670b\u53cb\u5708\u622a\u56fe\u7d22\u5f15 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 382
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v6, "image_url"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 383
    const-string v4, "image_url"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "url"

    move-object/from16 v8, p2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-static {v9}, Lcom/cidaoai/catsource/ApiClient;->bitmapDataUrlCopy(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "detail"

    const-string v9, "high"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 380
    add-int/lit8 v5, v5, 0x1

    move-object v2, v8

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 367
    :cond_19
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6ca1\u6709\u91c7\u96c6\u5230\u670b\u53cb\u5708\u753b\u9762"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static bitmapDataUrl(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:image/jpeg;base64,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->bitmapJpegBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bitmapDataUrlCopy(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 488
    nop

    .line 489
    const/16 v1, 0x708

    if-le v0, v1, :cond_0

    .line 490
    const-wide v1, 0x409c200000000000L    # 1800.0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 491
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v0, v3

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v1

    double-to-int v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_0
    move-object v0, p0

    .line 493
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x52

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 495
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "data:image/jpeg;base64,"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bitmapJpegBytes(Landroid/graphics/Bitmap;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 670
    const/16 v3, 0x640

    if-le v2, v3, :cond_0

    const-wide/high16 v3, 0x4099000000000000L    # 1600.0

    int-to-double v5, v2

    div-double/2addr v3, v5

    int-to-double v5, v0

    mul-double/2addr v5, v3

    double-to-int v0, v5

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v5, v1

    mul-double/2addr v5, v3

    double-to-int v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 671
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x56

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static callAiJson(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v1, "aiModel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    const-string v1, "temperature"

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "json_object"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "response_format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 245
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "role"

    const-string v4, "user"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "messages"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 241
    nop

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "aiApiKey"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aiBaseUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "/$"

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/chat/completions"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 248
    const-string v1, "POST"

    const-string v2, "application/json"

    invoke-static {v1, p0, v0, p1, v2}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object p0

    .line 250
    invoke-static {p0, p2}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    .line 251
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    const-string p0, "choices"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 253
    const-string p1, "```"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "^```(?:json)?\\s*"

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s*```$"

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static clamp(D)D
    .locals 2

    .line 516
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static declared-synchronized clearTokenCache()V
    .locals 3

    const-class v0, Lcom/cidaoai/catsource/ApiClient;

    monitor-enter v0

    .line 40
    :try_start_0
    const-string v1, ""

    sput-object v1, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/cidaoai/catsource/ApiClient;->tokenExpiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static coverFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 674
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-static {p0, v1}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_\u9996\u5e27.jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEmptyFields(Lorg/json/JSONObject;)Z
    .locals 3

    if-eqz p0, :empty_fields

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :empty_fields_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :empty_fields

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :empty_fields_loop

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v1, v2, :empty_fields_loop

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :check_empty_array

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :empty_fields_loop

    const/4 v0, 0x0

    return v0

    :check_empty_array
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :not_empty_fields

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :empty_fields_loop

    :not_empty_fields
    const/4 v0, 0x0

    return v0

    :empty_fields
    const/4 v0, 0x1

    return v0
.end method

.method private static normalizeBreed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :breed_has_value

    const-string p0, ""

    :breed_has_value
    if-nez p1, :breed_color_has_value

    const-string p1, ""

    :breed_color_has_value
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u82f1\u56fd\u77ed\u6bdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_british

    const-string v1, "\u82f1\u77ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_british

    const-string v1, "\u84dd\u732b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_american

    :breed_british
    const-string v0, "\u82f1\u77ed"

    return-object v0

    :breed_check_american
    const-string v1, "\u7f8e\u56fd\u77ed\u6bdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_american

    const-string v1, "\u7f8e\u77ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_maine

    :breed_american
    const-string v0, "\u7f8e\u77ed"

    return-object v0

    :breed_check_maine
    const-string v1, "\u7f05\u56e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_devon

    const-string v0, "\u7f05\u56e0\u732b"

    return-object v0

    :breed_check_devon
    const-string v1, "\u5fb7\u6587"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_ragdoll

    const-string v0, "\u5fb7\u6587\u5377\u6bdb\u732b"

    return-object v0

    :breed_check_ragdoll
    const-string v1, "\u5e03\u5076"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_sphynx

    const-string v0, "\u5e03\u5076"

    return-object v0

    :breed_check_sphynx
    const-string v1, "\u65af\u82ac\u514b\u65af"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_sphynx

    const-string v1, "\u65e0\u6bdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_napoleon

    :breed_sphynx
    const-string v0, "\u65af\u82ac\u514b\u65af\u65e0\u6bdb\u732b"

    return-object v0

    :breed_check_napoleon
    const-string v1, "\u62ff\u7834\u4ed1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_munchkin

    const-string v0, "\u62ff\u7834\u4ed1"

    return-object v0

    :breed_check_munchkin
    const-string v1, "\u66fc\u57fa\u5eb7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_munchkin

    const-string v1, "\u77ee\u811a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_chinchilla

    :breed_munchkin
    const-string v0, "\u66fc\u57fa\u5eb7"

    return-object v0

    :breed_check_chinchilla
    const-string v1, "\u91d1\u5409\u62c9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_exotic

    const-string v0, "\u91d1\u5409\u62c9"

    return-object v0

    :breed_check_exotic
    const-string v1, "\u5f02\u56fd\u77ed\u6bdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_exotic

    const-string v1, "\u5f02\u77ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_exotic

    const-string v1, "\u52a0\u83f2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_siamese

    :breed_exotic
    const-string v0, "\u5f02\u56fd\u77ed\u6bdb\u732b"

    return-object v0

    :breed_check_siamese
    const-string v1, "\u66b9\u7f57"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_bengal

    const-string v0, "\u66b9\u7f57\u732b"

    return-object v0

    :breed_check_bengal
    const-string v1, "\u5b5f\u52a0\u62c9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :breed_bengal

    const-string v1, "\u8c79\u732b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_check_fold

    :breed_bengal
    const-string v0, "\u5b5f\u52a0\u62c9\u8c79\u732b"

    return-object v0

    :breed_check_fold
    const-string v1, "\u6298\u8033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :breed_clean

    const-string v0, "\u82cf\u683c\u5170\u6298\u8033\u732b"

    return-object v0

    :breed_clean
    const-string v0, "[\uff08(].*?[\uff09)]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u6e10\u5c42"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :breed_only_color

    const-string v0, "\u6d77\u53cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :breed_only_color

    const-string v0, "\u84dd\u53cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :breed_return_clean

    :breed_only_color
    const-string p0, ""

    :breed_return_clean
    return-object p0
.end method

.method private static normalizeColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :color_breed_has_value

    const-string p0, ""

    :color_breed_has_value
    if-nez p1, :color_has_value

    const-string p1, ""

    :color_has_value
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u84dd\u91d1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_gold

    const-string v0, "\u84dd\u91d1\u6e10\u5c42"

    return-object v0

    :color_check_gold
    const-string v1, "\u91d1\u6e10\u5c42"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_silver

    const-string v0, "\u91d1\u6e10\u5c42"

    return-object v0

    :color_check_silver
    const-string v1, "\u94f6\u6e10\u5c42"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_seal_bicolor

    const-string v0, "\u94f6\u6e10\u5c42"

    return-object v0

    :color_check_seal_bicolor
    const-string v1, "\u6d77\u8c79\u53cc\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :color_seal_bicolor

    const-string v1, "\u6d77\u53cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_blue_bicolor

    :color_seal_bicolor
    const-string v0, "\u6d77\u53cc"

    return-object v0

    :color_check_blue_bicolor
    const-string v1, "\u84dd\u8272\u53cc\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :color_blue_bicolor

    const-string v1, "\u84dd\u53cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_blue_white

    :color_blue_bicolor
    const-string v0, "\u84dd\u53cc"

    return-object v0

    :color_check_blue_white
    const-string v1, "\u84dd\u767d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_cream_white

    const-string v0, "\u84dd\u767d"

    return-object v0

    :color_check_cream_white
    const-string v1, "\u4e73\u767d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_calico

    const-string v0, "\u4e73\u767d"

    return-object v0

    :color_check_calico
    const-string v1, "\u4e09\u82b1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_tortoiseshell

    const-string v0, "\u4e09\u82b1"

    return-object v0

    :color_check_tortoiseshell
    const-string v1, "\u73b3\u7441"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_tabby

    const-string v0, "\u73b3\u7441"

    return-object v0

    :color_check_tabby
    const-string v1, "\u864e\u6591"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_point

    const-string v0, "\u864e\u6591"

    return-object v0

    :color_check_point
    const-string v1, "\u91cd\u70b9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_check_blue

    const-string v0, "\u91cd\u70b9\u8272"

    return-object v0

    :color_check_blue
    const-string v1, "\u84dd\u732b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :color_clean

    const-string v0, "\u84dd\u8272"

    return-object v0

    :color_clean
    const-string v0, "[\uff08(].*?[\uff09)]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static normalizeDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :description_has_value

    const-string p0, ""

    return-object p0

    :description_has_value
    const-string v0, "(?:从)?(?:视频|图片|图像|画面)(?:中|里|可见|可以看到)(?:展示的)?"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^。！？；]*(?:朋友圈标注|朋友圈文案|文案标注|货源价|进货价|成本价|批发价|售价|价格|[0-9]+(?:\\.[0-9]+)?元|疫苗|[一二三四五六七八九十0-9]+针|健康|无癣|无病|驱虫)[^。！？；]*[。！？；]?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s{2,}"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tryReuseEmptyRecord(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/cidaoai/catsource/ApiClient;->updateRecord(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p0, 0x1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :rethrow_reuse_error

    const-string p2, "NumberFieldConvFail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :rethrow_reuse_error

    const/4 p0, 0x0

    return p0

    :rethrow_reuse_error
    throw p0
.end method

.method private static createRecord(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://open.feishu.cn/open-apis/bitable/v1/apps/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "feishuAppToken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tables/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feishuTableId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/records"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->token(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Authorization"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "fields"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "application/json"

    const-string v2, "POST"

    invoke-static {v2, v0, v1, p0, p1}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object p0

    const-string p1, "\u521b\u5efa\u98de\u4e66\u8bb0\u5f55\u5931\u8d25"

    invoke-static {p0, p1}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "record"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "record_id"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u98de\u4e66\u8bb0\u5f55\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static cropForCat(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-string v3, "screenshot_index"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 501
    move-object/from16 v3, p0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 502
    const-string v3, "bbox"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 503
    nop

    .line 504
    const-wide v5, 0x3fb47ae147ae147bL    # 0.08

    const-wide v7, 0x3fc70a3d70a3d70aL    # 0.18

    const-wide v9, 0x3fed70a3d70a3d71L    # 0.92

    const-wide v11, 0x3fea3d70a3d70a3dL    # 0.82

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v13, 0x4

    if-lt v3, v13, :cond_0

    .line 505
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/cidaoai/catsource/ApiClient;->clamp(D)D

    move-result-wide v13

    invoke-virtual {v0, v2, v7, v8}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/cidaoai/catsource/ApiClient;->clamp(D)D

    move-result-wide v15

    .line 506
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v9, v10}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/cidaoai/catsource/ApiClient;->clamp(D)D

    move-result-wide v17

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v11, v12}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/cidaoai/catsource/ApiClient;->clamp(D)D

    move-result-wide v19

    goto :goto_0

    .line 508
    :cond_0
    move-wide v13, v5

    move-wide v15, v7

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    :goto_0
    sub-double v21, v17, v13

    const-wide v23, 0x3fbeb851eb851eb8L    # 0.12

    cmpg-double v0, v21, v23

    if-ltz v0, :cond_2

    sub-double v21, v19, v15

    cmpg-double v0, v21, v23

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v5, v13

    move-wide v7, v15

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    .line 509
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v13, v0

    mul-double/2addr v13, v5

    double-to-int v0, v13

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 510
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v13, v3

    mul-double/2addr v13, v7

    double-to-int v3, v13

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 511
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-double v13, v13

    sub-double/2addr v9, v5

    mul-double/2addr v13, v9

    double-to-int v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 512
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v9, v6

    sub-double/2addr v11, v7

    mul-double/2addr v9, v11

    double-to-int v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 513
    invoke-static {v1, v0, v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cropForMedia(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    const-string v0, "media_bbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/cidaoai/catsource/ApiClient;->validMediaBox(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "bbox"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    :cond_0
    invoke-static {p0, p1}, Lcom/cidaoai/catsource/ApiClient;->cropForCat(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 350
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "AI\u5a92\u4f53\u6846\u65e0\u6548\uff0c\u5df2\u963b\u6b62\u4e0a\u4f20\u6574\u5f20\u670b\u53cb\u5708\u622a\u56fe"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 683
    iget v0, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\uff08HTTP "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->code:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff09\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x190

    invoke-static {p0, v1}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static firstVideoFrameJpeg(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 666
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 p0, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/32 p0, 0x186a0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->bitmapJpegBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    throw p0
.end method

.method private static imageDataUrl(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 649
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

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

    :cond_0
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v1

    const/16 v4, 0x640

    if-gt v3, v4, :cond_6

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v1

    if-gt v3, v4, :cond_6

    .line 650
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x52

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data:image/jpeg;base64,"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u65e0\u6cd5\u8bfb\u53d6\u56fe\u7247"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v2

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v2, :cond_5

    if-eq v2, p0, :cond_4

    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p0, v2

    :cond_5
    throw p0

    .line 649
    :cond_6
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

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
    move-exception p0

    if-eqz v2, :cond_9

    if-eq v2, p0, :cond_8

    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    move-object p0, v2

    :cond_9
    throw p0
.end method

.method static declared-synchronized importCats(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    const-class v4, Lcom/cidaoai/catsource/ApiClient;

    monitor-enter v4

    .line 540
    :try_start_0
    const-string v0, "feishuAppId"

    const-string v5, "feishuAppSecret"

    const-string v6, "feishuAppToken"

    const-string v7, "feishuTableId"

    filled-new-array {v0, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p8 .. p8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 542
    const-string v0, "\u5728\u552e"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f85\u6838\u5bf9"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5bfc\u5165\u72b6\u6001\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_12

    .line 544
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 545
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 546
    invoke-virtual/range {p8 .. p8}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->nextCatIds(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v8

    .line 547
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 548
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p8 .. p8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v11, v0, :cond_2

    .line 590
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ok"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 549
    :cond_2
    move-object/from16 v12, p8

    :try_start_1
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 550
    const-string v0, "file_names"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 551
    :cond_3
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 552
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 553
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v16, v5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v12, v5, :cond_10

    .line 559
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 571
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 576
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 577
    const-string v5, "\u732b\u54aaID"

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u56fe\u7247"

    invoke-static {v0, v5, v14}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u89c6\u9891"

    invoke-static {v0, v5, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    const-string v5, "\u54c1\u79cd"

    const-string v10, "breed"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "color"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/cidaoai/catsource/ApiClient;->normalizeBreed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u6bdb\u8272/\u82b1\u8272"

    const-string v10, "color"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "breed"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/cidaoai/catsource/ApiClient;->normalizeColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    const-string v5, "\u6027\u522b"

    const-string v10, "gender"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u5e74\u9f84"

    const-string v10, "age"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u75ab\u82d7"

    const-string v10, "vaccine"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u63cf\u8ff0"

    const-string v10, "description"

    const-string v12, ""

    invoke-virtual {v13, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    const-string v5, "price"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "\u4ef7\u683c"

    const-string v10, "price"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    :cond_4
    const-string v5, "\u72b6\u6001"

    invoke-static {v0, v5, v3}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u4f9b\u8d27\u5546"

    move-object/from16 v12, p3

    invoke-static {v0, v5, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    const-string v5, "\u4f9b\u8d27\u5546\u539f\u7f16\u53f7"

    const-string v10, "supplier_original_id"

    const-string v14, ""

    invoke-virtual {v13, v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string v5, "cost_price"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "\u8fdb\u8d27\u4ef7"

    const-string v10, "cost_price"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    :cond_5
    const-string v5, "\u539f\u59cb\u63cf\u8ff0"

    const/16 v10, 0x1388

    move-object/from16 v14, p4

    invoke-static {v14, v10}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v5, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    const-string v5, "\u6765\u6e90\u65f6\u95f4"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {}, Lcom/cidaoai/catsource/ApiClient;->nowText()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_6
    move-object/from16 v15, p5

    :goto_6
    invoke-static {v0, v5, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v5, "\u6765\u6e90\u6307\u7eb9"

    move-object/from16 v15, p6

    invoke-static {v0, v5, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "\u6838\u5bf9\u5907\u6ce8"

    const-string v10, "notes"

    const-string v3, ""

    invoke-virtual {v13, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x1388

    invoke-static {v3, v10}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->createRecord(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 588
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "cat_id"

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "record_id"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 548
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p7

    move-object/from16 v5, v16

    goto/16 :goto_2

    .line 571
    :cond_7
    move-object/from16 v12, p3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    .line 572
    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v3, p7

    goto/16 :goto_5

    .line 573
    :cond_8
    iget-object v5, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/cidaoai/catsource/ApiClient;->upload(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cidaoai/catsource/SelectedFile;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "file_token"

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v3, p7

    goto/16 :goto_5

    .line 559
    :cond_a
    move-object/from16 v12, p3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/cidaoai/catsource/SelectedFile;

    .line 560
    invoke-virtual {v3}, Lcom/cidaoai/catsource/SelectedFile;->isVideo()Z

    move-result v0

    if-nez v0, :cond_b

    move-object/from16 v3, p7

    goto/16 :goto_4

    .line 561
    :cond_b
    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    move-object/from16 v17, v5

    invoke-static {v1, v2, v3}, Lcom/cidaoai/catsource/ApiClient;->upload(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cidaoai/catsource/SelectedFile;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    move-object/from16 v17, v5

    .line 562
    :goto_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "file_token"

    move-object/from16 v18, v8

    iget-object v8, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 563
    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_e

    .line 565
    :try_start_2
    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/cidaoai/catsource/ApiClient;->firstVideoFrameJpeg(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    .line 566
    if-eqz v0, :cond_d

    iget-object v5, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    iget-object v8, v3, Lcom/cidaoai/catsource/SelectedFile;->originalName:Ljava/lang/String;

    invoke-static {v8}, Lcom/cidaoai/catsource/ApiClient;->coverFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "image/jpeg"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v6

    :try_start_3
    const-string v6, "bitable_image"

    invoke-static {v2, v0, v8, v1, v6}, Lcom/cidaoai/catsource/ApiClient;->uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 567
    :catch_0
    move-exception v0

    goto :goto_8

    .line 566
    :cond_d
    move-object/from16 v19, v6

    goto :goto_9

    .line 567
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    :goto_8
    goto :goto_9

    .line 563
    :cond_e
    move-object/from16 v19, v6

    .line 569
    :goto_9
    :try_start_4
    iget-object v0, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_token"

    iget-object v3, v3, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    goto/16 :goto_4

    .line 554
    :cond_10
    move-object/from16 v19, v6

    move-object/from16 v18, v8

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cidaoai/catsource/SelectedFile;

    .line 555
    if-eqz v5, :cond_11

    .line 556
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object v5, v3

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    move-object/from16 v3, p7

    goto/16 :goto_3

    .line 555
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9644\u4ef6\u4e0d\u5b58\u5728\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_12
    move-object v3, v5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v5, v1, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object v5, v3

    move-object/from16 v3, p7

    goto/16 :goto_1

    .line 541
    :cond_13
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6ca1\u6709\u53ef\u5bfc\u5165\u7684\u732b\u54aa\u8bb0\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static declared-synchronized importTimelinePlan(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Lorg/json/JSONObject;Ljava/util/Map;DDLjava/lang/String;)Lorg/json/JSONObject;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;DD",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-class v4, Lcom/cidaoai/catsource/ApiClient;

    monitor-enter v4

    .line 260
    :try_start_0
    const-string v0, "feishuAppId"

    const-string v5, "feishuAppSecret"

    const-string v6, "feishuAppToken"

    const-string v7, "feishuTableId"

    filled-new-array {v0, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 261
    const-string v0, "posts"

    move-object/from16 v5, p3

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    move-object v5, v0

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/cidaoai/catsource/ApiClient;->records(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v6

    .line 263
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 268
    nop

    .line 269
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v9, v14, :cond_4

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u73b0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u52a8\u6001\uff0c\u65b0\u589e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u53ea\u732b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    if-lez v11, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\uff0c\u4e0b\u67b6"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_1
    if-lez v12, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\uff0c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891\u5f85\u8865"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_2
    if-lez v13, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\uff0c\u8df3\u8fc7\u91cd\u590d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "discovered"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "imported"

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "sold"

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    const-string v2, "video_failures"

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit v4

    return-object v0

    .line 270
    :cond_4
    :try_start_1
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_2

    .line 271
    :cond_5
    const-string v15, "event"

    const-string v8, "other"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "other"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 269
    :goto_2
    move-object/from16 v16, v5

    goto/16 :goto_5

    .line 272
    :cond_6
    add-int/lit8 v15, v0, 0x1

    .line 273
    const-string v0, "supplier"

    move-object/from16 v16, v5

    const-string v5, "\u672a\u77e5\u4f9b\u8d27\u5546"

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "\u672a\u77e5\u4f9b\u8d27\u5546"

    :cond_7
    move-object v5, v0

    .line 274
    const-string v0, "raw_text"

    move/from16 v17, v10

    const-string v10, ""

    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 275
    const-string v0, "source_time"

    move/from16 v18, v12

    const-string v12, ""

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 276
    const-string v0, "sold"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 277
    const-string v0, "sold_reference"

    const-string v8, ""

    invoke-virtual {v14, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v2, v6, v5, v0}, Lcom/cidaoai/catsource/ApiClient;->markSold(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v11, v11, 0x1

    .line 279
    move v0, v15

    move/from16 v10, v17

    move/from16 v12, v18

    goto :goto_5

    .line 281
    :cond_8
    const-string v0, "new"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 282
    :cond_9
    const-string v0, "cats"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_b

    .line 269
    :cond_a
    :goto_3
    move v0, v15

    move/from16 v10, v17

    move/from16 v12, v18

    goto :goto_5

    .line 283
    :cond_b
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v14, v0, :cond_c

    move v0, v15

    move/from16 v10, v17

    move/from16 v12, v18

    .line 269
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_1

    .line 284
    :cond_c
    move-object/from16 v19, v6

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v1, v7

    move-object/from16 v21, v8

    move/from16 v29, v9

    move-object/from16 v27, v10

    move/from16 v20, v11

    move-object/from16 v23, v12

    move/from16 v22, v15

    move-object/from16 v10, p9

    goto/16 :goto_11

    .line 285
    :cond_d
    const-string v20, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    move-object/from16 v21, v8

    :try_start_2
    invoke-static {v3, v6}, Lcom/cidaoai/catsource/ApiClient;->cropForMedia(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/cidaoai/catsource/ApiClient;->screenHash(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v20

    goto :goto_7

    .line 287
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v20

    .line 288
    :goto_7
    move/from16 v20, v11

    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    move/from16 v22, v15

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\n"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "supplier_original_id"

    move-object/from16 v23, v12

    const-string v12, ""

    invoke-virtual {v6, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 289
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "breed"

    const-string v15, ""

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "color"

    const-string v15, ""

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 290
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "cost_price"

    const-string v15, ""

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cidaoai/catsource/ApiClient;->textHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v13, v13, 0x1

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_e
    move-object v1, v7

    move/from16 v29, v9

    move-object/from16 v27, v10

    move-object/from16 v10, p9

    goto/16 :goto_11

    .line 292
    :cond_f
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->nextCatIds(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 293
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    move/from16 v24, v13

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 294
    const-string v0, "video"

    move-object/from16 v26, v7

    const-string v7, "media_type"

    move-object/from16 v27, v11

    const-string v11, ""

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, p4

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 296
    const-string v28, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    if-eqz v7, :cond_12

    .line 299
    :try_start_5
    new-instance v0, Lcom/cidaoai/catsource/SelectedFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v29, v9

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x1

    invoke-direct {v0, v9, v7, v11}, Lcom/cidaoai/catsource/SelectedFile;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    move-object v11, v10

    :try_start_7
    iget-wide v9, v0, Lcom/cidaoai/catsource/SelectedFile;->size:J

    const-wide/32 v30, 0x1400000

    cmp-long v9, v9, v30

    if-gtz v9, :cond_11

    .line 301
    invoke-static {v1, v2, v0}, Lcom/cidaoai/catsource/ApiClient;->upload(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cidaoai/catsource/SelectedFile;)Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "file_token"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 303
    invoke-static {v1, v7}, Lcom/cidaoai/catsource/ApiClient;->firstVideoFrameJpeg(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    .line 304
    if-eqz v0, :cond_10

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "file_token"

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_\u89c6\u9891\u9996\u5e27.jpg"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "image/jpeg"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v25, v11

    :try_start_8
    const-string v11, "bitable_image"

    invoke-static {v2, v0, v1, v10, v11}, Lcom/cidaoai/catsource/ApiClient;->uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 306
    goto :goto_a

    .line 304
    :cond_10
    move-object/from16 v25, v11

    goto :goto_a

    .line 300
    :cond_11
    move-object/from16 v25, v11

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89c6\u9891\u8d85\u8fc720MB"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 306
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v25, v11

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move/from16 v29, v9

    :goto_8
    move-object/from16 v25, v10

    .line 307
    :goto_9
    add-int/lit8 v18, v18, 0x1

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "\u89c6\u9891\u4fdd\u5b58\u540e\u4e0a\u4f20\u5931\u8d25\uff1a"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x78

    invoke-static {v0, v7}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 309
    move-object/from16 v1, v28

    goto :goto_b

    :cond_12
    move/from16 v29, v9

    move-object/from16 v25, v10

    if-eqz v0, :cond_13

    .line 310
    add-int/lit8 v18, v18, 0x1

    const-string v28, "\u89c6\u9891\u672a\u80fd\u81ea\u52a8\u4fdd\u5b58\uff0c\u9700\u4eba\u5de5\u8865\u5145"

    move-object/from16 v1, v28

    goto :goto_b

    .line 312
    :cond_13
    :goto_a
    move-object/from16 v1, v28

    :goto_b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_15

    .line 314
    if-nez v8, :cond_14

    :try_start_a
    invoke-static {v3, v6}, Lcom/cidaoai/catsource/ApiClient;->cropForMedia(Ljava/util/List;Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 315
    :cond_14
    invoke-static {v8}, Lcom/cidaoai/catsource/ApiClient;->bitmapJpegBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 316
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "file_token"

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_\u670b\u53cb\u5708\u5c01\u9762.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image/jpeg"

    const-string v11, "bitable_image"

    invoke-static {v2, v0, v9, v10, v11}, Lcom/cidaoai/catsource/ApiClient;->uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 318
    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    .line 319
    :cond_15
    if-eqz v8, :cond_16

    :try_start_b
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    :goto_c
    nop

    .line 320
    :goto_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 321
    const-string v7, "\u732b\u54aaID"

    invoke-static {v0, v7, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u56fe\u7247"

    invoke-static {v0, v7, v15}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u89c6\u9891"

    invoke-static {v0, v7, v13}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v7, "\u54c1\u79cd"

    const-string v8, "breed"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "color"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cidaoai/catsource/ApiClient;->normalizeBreed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u6bdb\u8272/\u82b1\u8272"

    const-string v8, "color"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "breed"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/cidaoai/catsource/ApiClient;->normalizeColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v7, "\u6027\u522b"

    const-string v8, "gender"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u5e74\u9f84"

    const-string v8, "age"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u75ab\u82d7"

    const-string v8, "vaccine"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u63cf\u8ff0"

    const-string v8, "description"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    const-string v7, "cost_price"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-nez v7, :cond_17

    .line 325
    const-string v7, "cost_price"

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v6, v7, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 326
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "\u8fdb\u8d27\u4ef7"

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v0, v7, v12}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u4ef7\u683c"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v12, p5, v12

    mul-double/2addr v10, v12

    add-double v10, v10, p7

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v8, 0x19    # 25

    add-long/2addr v10, v8

    const-wide/16 v8, 0x32    # 50

    div-long/2addr v10, v8

    mul-long/2addr v10, v8

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v0, v7, v10}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v7, "\u5728\u552e"

    move-object/from16 v10, p9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_e

    :cond_18
    const-string v7, "\u5728\u552e"

    goto :goto_f

    :cond_19
    move-object/from16 v10, p9

    :goto_e
    const-string v7, "\u5f85\u6838\u5bf9"

    .line 329
    :goto_f
    const-string v11, "\u72b6\u6001"

    invoke-static {v0, v11, v7}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u4f9b\u8d27\u5546"

    invoke-static {v0, v7, v5}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v7, "\u4f9b\u8d27\u5546\u539f\u7f16\u53f7"

    const-string v11, "supplier_original_id"

    const-string v12, ""

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v7, v11}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    const-string v7, "\u539f\u59cb\u63cf\u8ff0"

    const/16 v11, 0x1388

    move-object/from16 v12, v25

    invoke-static {v12, v11}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v7, v13}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "\u6765\u6e90\u65f6\u95f4"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-static {}, Lcom/cidaoai/catsource/ApiClient;->nowText()Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    :cond_1a
    move-object/from16 v13, v23

    :goto_10
    invoke-static {v0, v7, v13}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    const-string v7, "\u6765\u6e90\u6307\u7eb9"

    move-object/from16 v13, v27

    invoke-static {v0, v7, v13}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "AI\u89c6\u89c9\u5de1\u68c0\uff1b\u7f6e\u4fe1\u5ea6 "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "confidence"

    move-object/from16 v27, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v15, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    const-string v8, "notes"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\uff1b"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "notes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\uff1b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    :cond_1c
    const-string v1, "\u6838\u5bf9\u5907\u6ce8"

    const/16 v6, 0x1388

    invoke-static {v7, v6}, Lcom/cidaoai/catsource/ApiClient;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/cidaoai/catsource/ApiClient;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-static {v2, v0}, Lcom/cidaoai/catsource/ApiClient;->createRecord(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v1, v26

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v13, v24

    .line 283
    :goto_11
    add-int/lit8 v14, v14, 0x1

    move-object v7, v1

    move-object/from16 v6, v19

    move/from16 v11, v20

    move-object/from16 v8, v21

    move/from16 v15, v22

    move-object/from16 v12, v23

    move-object/from16 v10, v27

    move/from16 v9, v29

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 264
    :cond_1d
    move-object/from16 v10, p9

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object v1, v7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 265
    const-string v6, "fields"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 266
    if-eqz v5, :cond_1e

    const-string v6, "\u6765\u6e90\u6307\u7eb9"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "\u6765\u6e90\u6307\u7eb9"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1e
    move-object v7, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static limit(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 684
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static locateVideoTarget(Lorg/json/JSONObject;Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    const-string v0, "aiBaseUrl"

    const-string v1, "aiModel"

    const-string v2, "aiApiKey"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4f60\u662f\u5b89\u5353\u5fae\u4fe1\u670b\u53cb\u5708\u5a92\u4f53\u5b9a\u4f4d\u5668\u3002\u5f53\u524d\u622a\u56fe\u662f\u6ed1\u52a8\u505c\u6b62\u540e\u7684\u670b\u53cb\u5708\u4fe1\u606f\u6d41\u3002\u8bf7\u91cd\u65b0\u5bfb\u627e\u4e0b\u9762\u63cf\u8ff0\u5bf9\u5e94\u7684\u90a3\u4e00\u6761\u732b\u54aa\u52a8\u6001\uff0c\u5b9a\u4f4d\u5176\u4e2d\u732b\u54aa\u5a92\u4f53\u533a\u57df\uff0c\u5e76\u5224\u65ad\u5b83\u7a76\u7adf\u662f\u89c6\u9891\u5c01\u9762\u8fd8\u662f\u9759\u6001\u56fe\u7247\uff1a\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 229
    const-string v0, "\u4e0d\u8981\u6cbf\u7528\u4e4b\u524d\u622a\u56fe\u7684\u5750\u6807\uff0c\u4e0d\u8981\u5b9a\u4f4d\u5934\u50cf\u3001\u6635\u79f0\u3001\u6587\u6848\u3001\u8bc4\u8bba\u6309\u94ae\u6216\u5176\u4ed6\u5e16\u5b50\u7684\u5a92\u4f53\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 230
    const-string v0, "\u89c6\u9891\u901a\u5e38\u5177\u6709\u64ad\u653e\u6807\u8bb0\u6216\u89c6\u9891\u754c\u9762\u7279\u5f81\uff1b\u9759\u6001\u56fe\u7247\u5fc5\u987b\u5224is_video=false\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 231
    const-string v0, "\u5982\u679c\u76ee\u6807\u52a8\u6001\u5f53\u524d\u4e0d\u5728\u753b\u9762\u5185\u3001\u5a92\u4f53\u88ab\u906e\u6321\u6216\u65e0\u6cd5\u533a\u5206\uff0cvisible\u5fc5\u987b\u4e3afalse\uff0c\u7981\u6b62\u731c\u5750\u6807\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 232
    const-string v0, "\u53ea\u8fd4\u56deJSON\uff1a{\"visible\":true,\"is_video\":true,\"bbox\":[0.0,0.0,1.0,1.0],\"confidence\":0.0,\"reason\":\"\"}\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 233
    const-string v0, "bbox\u53ea\u80fd\u6846\u5f53\u524d\u622a\u56fe\u4e2d\u7684\u732b\u54aa\u56fe\u7247\u6216\u89c6\u9891\u5c01\u9762\uff0c\u5fc5\u987b\u660e\u663e\u5c0f\u4e8e\u6574\u5f20\u5c4f\u5e55\uff0c\u4e25\u7981\u8fd4\u56de[0,0,1,1]\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "text"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p2

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "image_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 236
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "url"

    invoke-static {p1}, Lcom/cidaoai/catsource/ApiClient;->bitmapDataUrlCopy(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "detail"

    const-string v3, "high"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 235
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 234
    nop

    .line 237
    const-string p2, "AI\u91cd\u65b0\u5b9a\u4f4d\u89c6\u9891\u5931\u8d25"

    invoke-static {p0, p1, p2}, Lcom/cidaoai/catsource/ApiClient;->callAiJson(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static markSold(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return p0

    .line 519
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const/4 p0, 0x0

    return p0

    .line 519
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 520
    const-string v1, "fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 521
    if-nez v1, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    const-string v2, "\u4f9b\u8d27\u5546"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 523
    :cond_2
    const-string v2, "\u4f9b\u8d27\u5546\u539f\u7f16\u53f7"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\u732b\u54aaID"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 524
    :cond_3
    const-string p1, "record_id"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "\u72b6\u6001"

    const-string v0, "\u5df2\u552e"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/cidaoai/catsource/ApiClient;->updateRecord(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 525
    const/4 p0, 0x1

    return p0
.end method

.method private static nextCatIds(Lorg/json/JSONObject;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAT-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->records(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 616
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 p0, 0x1

    :goto_1
    if-le p0, p1, :cond_1

    return-object v2

    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int v4, v1, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s%06d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 615
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "\u732b\u54aaID"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static nextVideoAction(Lorg/json/JSONObject;Landroid/graphics/Bitmap;I)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    const-string v0, "aiBaseUrl"

    const-string v1, "aiModel"

    const-string v2, "aiApiKey"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cidaoai/catsource/ApiClient;->require(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4f60\u662f\u5b89\u5353\u89c6\u89c9\u64cd\u4f5c\u5668\uff0c\u76ee\u6807\u662f\u628a\u5f53\u524d\u5df2\u7ecf\u6253\u5f00\u7684\u666e\u901a\u5fae\u4fe1\u670b\u53cb\u5708\u89c6\u9891\u4fdd\u5b58\u5230\u624b\u673a\u3002\u8fd9\u662f\u7b2c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\u6b65\u3002\u5224\u65ad\u5f53\u524d\u9875\u9762\uff0c\u53ea\u80fd\u9009\u62e9\u4e00\u4e2a\u52a8\u4f5c\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 213
    const-string v0, "\u5141\u8bb8\u52a8\u4f5c\uff1along_press\uff08\u957f\u6309\u89c6\u9891\u753b\u9762\uff09\u3001tap\uff08\u53ea\u5141\u8bb8\u70b9\u51fb\u4fdd\u5b58\u89c6\u9891/\u4fdd\u5b58\u5230\u624b\u673a/\u4e0b\u8f7d\u89c6\u9891\u7b49\u660e\u786e\u4fdd\u5b58\u6309\u94ae\uff09\u3001"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 214
    const-string v0, "wait\uff08\u9875\u9762\u52a0\u8f7d\uff09\u3001back\uff08\u660e\u663e\u8d70\u9519\u9875\u9762\uff09\u3001fail\uff08\u6ca1\u6709\u4fdd\u5b58\u80fd\u529b\u6216\u51fa\u73b0\u9a8c\u8bc1/\u654f\u611f\u9875\u9762\uff09\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 215
    const-string v0, "\u7981\u6b62\u70b9\u51fb\u652f\u4ed8\u3001\u767b\u5f55\u3001\u6388\u6743\u3001\u5220\u9664\u3001\u53d1\u9001\u3001\u8f6c\u53d1\u3001\u6295\u8bc9\u3001\u8054\u7cfb\u4eba\u7b49\u6309\u94ae\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 216
    const-string v0, "\u53ea\u8fd4\u56deJSON\uff1a{\"page\":\"player/menu/loading/wrong/blocked\",\"action\":\"long_press/tap/wait/back/fail\","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 217
    const-string v0, "\"target\":\"\u76ee\u6807\u540d\u79f0\",\"point\":[0.5,0.5],\"confidence\":0.0,\"reason\":\"\"}\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 218
    const-string v0, "point\u4e3a\u5f52\u4e00\u5316\u5750\u6807\u3002\u64ad\u653e\u5668\u9875\u9762\u4f18\u5148\u957f\u6309\u89c6\u9891\u4e2d\u592e\uff1b\u83dc\u5355\u9875\u53ea\u6709\u6e05\u695a\u770b\u5230\u4fdd\u5b58\u6309\u94ae\u624dtap\uff1b\u4e0d\u786e\u5b9a\u5c31wait\u6216fail\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 219
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "text"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p2

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "image_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 221
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "url"

    invoke-static {p1}, Lcom/cidaoai/catsource/ApiClient;->bitmapDataUrlCopy(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "detail"

    const-string v3, "high"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 220
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 219
    nop

    .line 222
    const-string p2, "AI\u89c6\u9891\u64cd\u4f5c\u5224\u65ad\u5931\u8d25"

    invoke-static {p0, p1, p2}, Lcom/cidaoai/catsource/ApiClient;->callAiJson(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static nowText()Ljava/lang/String;
    .locals 2

    .line 685
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static part(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\nContent-Disposition: form-data; name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"\r\n\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cidaoai/catsource/ApiClient;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 681
    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 678
    if-eqz p0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v2, 0x10000

    :try_start_2
    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :cond_0
    int-to-long v6, v5

    add-long/2addr v3, v6

    cmp-long v6, v3, p1

    if-gtz v6, :cond_1

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p0, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u6587\u4ef6\u8d85\u8fc7\u5141\u8bb8\u5927\u5c0f"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    :try_start_6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_3

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p0, v0

    :cond_5
    throw p0

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u65e0\u6cd5\u8bfb\u53d6\u6587\u4ef6"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static records(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    move-object v2, v1

    .line 605
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://open.feishu.cn/open-apis/bitable/v1/apps/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "feishuAppToken"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tables/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "feishuTableId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/records?page_size=100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&page_token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->token(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v4, "GET"

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5, v5}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object v2

    const-string v3, "\u8bfb\u53d6\u98de\u4e66\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 608
    const-string v2, "code"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 609
    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v3, "has_more"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "page_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    .line 610
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 608
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bfb\u53d6\u98de\u4e66\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/cidaoai/catsource/ApiClient$HttpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 643
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p0, 0x4e20

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const p0, 0x1d4c0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p0, "Accept"

    const-string v0, "application/json"

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    .line 644
    if-eqz p3, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p0, "Content-Type"

    invoke-virtual {p1, p0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length p0, p3

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p0, 0x0

    :try_start_0
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_1
    throw p0

    .line 645
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p2, 0x190

    if-lt p0, p2, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_3
    if-nez p2, :cond_4

    const/4 p2, 0x0

    new-array p2, p2, [B

    goto :goto_4

    :cond_4
    const-wide/32 p3, 0x3200000

    invoke-static {p2, p3, p4}, Lcom/cidaoai/catsource/ApiClient;->readAll(Ljava/io/InputStream;J)[B

    move-result-object p2

    :goto_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p1, Lcom/cidaoai/catsource/ApiClient$HttpResult;

    invoke-direct {p1, p0, p2}, Lcom/cidaoai/catsource/ApiClient$HttpResult;-><init>(I[B)V

    return-object p1

    .line 643
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs require(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u7f3a\u5c11\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u3001"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static screenDifference(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D
    .locals 12

    .line 160
    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->stableArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1}, Lcom/cidaoai/catsource/ApiClient;->stableArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 161
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    nop

    .line 165
    const-wide/16 p0, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_0

    .line 171
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    long-to-double p0, p0

    const-wide v0, 0x4127e80000000000L    # 783360.0

    div-double/2addr p0, v0

    return-wide p0

    .line 165
    :cond_0
    move v5, v3

    :goto_1
    if-lt v5, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 167
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 168
    shr-int/lit8 v10, v7, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v7, v7, 0xff

    .line 169
    sub-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v8, v6

    int-to-long v6, v8

    add-long/2addr p0, v6

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method static screenHash(Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 153
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    array-length v4, v1

    move p0, v2

    :goto_1
    if-lt p0, v4, :cond_0

    .line 156
    const/16 p0, 0x20

    invoke-virtual {v3, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    aget-byte v0, v1, p0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%02x"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 137
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xc

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v3

    invoke-static {v1, v2, v3, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-static {v1, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    nop

    .line 142
    const/16 v1, 0x100

    new-array v5, v1, [I

    .line 143
    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-lt v8, v3, :cond_4

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    const-wide/16 v3, 0x100

    div-long/2addr v6, v3

    long-to-int v9, v6

    .line 151
    nop

    :goto_3
    if-lt v2, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    aget v3, v5, v2

    if-lt v3, v9, :cond_3

    const/16 v3, 0x31

    goto :goto_4

    :cond_3
    const/16 v3, 0x30

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    :cond_4
    move v9, v2

    :goto_5
    if-lt v9, v3, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {v4, v9, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 145
    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    mul-int/lit8 v11, v11, 0x1e

    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    mul-int/lit8 v12, v12, 0x3b

    add-int/2addr v11, v12

    and-int/lit16 v10, v10, 0xff

    mul-int/lit8 v10, v10, 0xb

    add-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x64

    .line 146
    mul-int/lit8 v10, v8, 0x10

    add-int/2addr v10, v9

    aput v11, v5, v10

    .line 147
    int-to-long v10, v11

    add-long/2addr v6, v10

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_5
.end method

.method private static sourceHash(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cidaoai/catsource/SelectedFile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move p0, v1

    :goto_4
    if-lt p0, v0, :cond_0

    const/16 p0, 0x18

    invoke-virtual {p3, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-byte p2, p1, p0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%02x"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "\n\u7d20\u6750:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "\n\u622a\u56fe:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cidaoai/catsource/SelectedFile;

    iget-object p2, p2, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cidaoai/catsource/SelectedFile;

    iget-object v2, v2, Lcom/cidaoai/catsource/SelectedFile;->safeName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static stableArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xc

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v0

    invoke-static {p0, v1, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static textHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 531
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    .line 534
    const/16 p0, 0x18

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 533
    :cond_0
    aget-byte v4, p0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized token(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/cidaoai/catsource/ApiClient;

    monitor-enter v0

    .line 594
    :try_start_0
    sget-object v1, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    sget-wide v3, Lcom/cidaoai/catsource/ApiClient;->tokenExpiry:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    sget-object p0, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 595
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "app_id"

    const-string v3, "feishuAppId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app_secret"

    const-string v3, "feishuAppSecret"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 596
    const-string v1, "POST"

    const-string v2, "https://open.feishu.cn/open-apis/auth/v3/tenant_access_token/internal"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v4, "application/json"

    invoke-static {v1, v2, v3, p0, v4}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object p0

    .line 597
    const-string v1, "\u98de\u4e66\u9274\u6743\u5931\u8d25"

    invoke-static {p0, v1}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 598
    const-string p0, "code"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 599
    const-string p0, "tenant_access_token"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p0, "expire"

    const-wide/16 v4, 0x1c20

    invoke-virtual {v1, p0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/cidaoai/catsource/ApiClient;->tokenExpiry:J

    sget-object p0, Lcom/cidaoai/catsource/ApiClient;->cachedToken:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 598
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u98de\u4e66\u9274\u6743\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static updateRecord(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void

    .line 637
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://open.feishu.cn/open-apis/bitable/v1/apps/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "feishuAppToken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tables/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feishuTableId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/records/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->token(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Authorization"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fields"

    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p2, "application/json"

    const-string v1, "PUT"

    invoke-static {v1, p1, v0, p0, p2}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object p0

    const-string p1, "\u66f4\u65b0\u98de\u4e66\u8bb0\u5f55\u5931\u8d25"

    invoke-static {p0, p1}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 640
    return-void

    .line 639
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u66f4\u65b0\u98de\u4e66\u8bb0\u5f55\u5931\u8d25\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u98de\u4e66\u8bb0\u5f55ID\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static upload(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cidaoai/catsource/SelectedFile;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    iget-wide v0, p2, Lcom/cidaoai/catsource/SelectedFile;->size:J

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, p2, Lcom/cidaoai/catsource/SelectedFile;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/cidaoai/catsource/ApiClient;->readAll(Ljava/io/InputStream;J)[B

    move-result-object p0

    .line 621
    iget-object v0, p2, Lcom/cidaoai/catsource/SelectedFile;->originalName:Ljava/lang/String;

    iget-object v1, p2, Lcom/cidaoai/catsource/SelectedFile;->mime:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cidaoai/catsource/SelectedFile;->isImage()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "bitable_image"

    goto :goto_0

    :cond_0
    const-string p2, "bitable_file"

    :goto_0
    invoke-static {p1, p0, v0, v1, p2}, Lcom/cidaoai/catsource/ApiClient;->uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 620
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u9644\u4ef6\u8d85\u8fc720MB\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/cidaoai/catsource/SelectedFile;->originalName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static uploadBytes(Lorg/json/JSONObject;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    array-length v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----CatImporter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    const-string v2, "file_name"

    invoke-static {v1, v0, v2, p2}, Lcom/cidaoai/catsource/ApiClient;->part(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parent_type"

    invoke-static {v1, v0, v2, p4}, Lcom/cidaoai/catsource/ApiClient;->part(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "feishuAppToken"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "parent_node"

    invoke-static {v1, v0, v2, p4}, Lcom/cidaoai/catsource/ApiClient;->part(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length p4, p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v2, "size"

    invoke-static {v1, v0, v2, p4}, Lcom/cidaoai/catsource/ApiClient;->part(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "\r\nContent-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "\""

    const-string v3, "_"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\"\r\nContent-Type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\r\n\r\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cidaoai/catsource/ApiClient;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\r\n--"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "--\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cidaoai/catsource/ApiClient;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 628
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bearer "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cidaoai/catsource/ApiClient;->token(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Authorization"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "multipart/form-data; boundary="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "POST"

    const-string p4, "https://open.feishu.cn/open-apis/drive/v1/medias/upload_all"

    invoke-static {p3, p4, p1, p0, p2}, Lcom/cidaoai/catsource/ApiClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/cidaoai/catsource/ApiClient$HttpResult;

    move-result-object p0

    const-string p1, "\u4e0a\u4f20\u9644\u4ef6\u5931\u8d25"

    invoke-static {p0, p1}, Lcom/cidaoai/catsource/ApiClient;->ensureSuccess(Lcom/cidaoai/catsource/ApiClient$HttpResult;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cidaoai/catsource/ApiClient$HttpResult;->bodyText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "file_token"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u4e0a\u4f20\u9644\u4ef6\u5931\u8d25\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "msg"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 624
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u9644\u4ef6\u8d85\u8fc720MB\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validMediaBox(Lorg/json/JSONArray;)Z
    .locals 17

    .line 356
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v7

    .line 358
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v9

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    .line 359
    sub-double v11, v9, v4

    sub-double v13, v2, v7

    .line 360
    const-wide/16 v15, 0x0

    cmpl-double v0, v4, v15

    if-ltz v0, :cond_1

    cmpl-double v0, v7, v15

    if-ltz v0, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v9, v4

    if-gtz v0, :cond_1

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    .line 361
    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v0, v11, v2

    if-ltz v0, :cond_1

    cmpl-double v0, v13, v2

    if-ltz v0, :cond_1

    mul-double/2addr v11, v13

    .line 360
    const-wide v2, 0x3fe28f5c28f5c28fL    # 0.58

    cmpg-double v0, v11, v2

    if-gtz v0, :cond_1

    return v6

    :cond_1
    return v1

    .line 356
    :cond_2
    :goto_0
    return v1
.end method

.method private static videoFrameDataUrls(Landroid/content/Context;Landroid/net/Uri;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 655
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x9

    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 656
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    new-array p2, v4, [D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    aput-wide v4, p2, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    new-array p2, v4, [D

    fill-array-data p2, :array_0

    goto :goto_1

    :cond_3
    new-array p2, v2, [D

    fill-array-data p2, :array_1

    .line 657
    :goto_1
    array-length v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-lt v3, v4, :cond_4

    .line 658
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_6

    .line 657
    :cond_4
    :try_start_2
    aget-wide v5, p2, v3

    const-wide/16 v7, 0x3e8

    invoke-static {p0, p1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    mul-long/2addr v9, v7

    long-to-double v7, v9

    mul-double/2addr v7, v5

    double-to-long v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_5

    :goto_3
    goto :goto_4

    :cond_5
    invoke-static {v5}, Lcom/cidaoai/catsource/ApiClient;->bitmapDataUrl(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 658
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_5
    throw p0

    :catch_2
    move-exception p0

    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 659
    :goto_6
    return-object v0

    :array_0
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fe8000000000000L    # 0.75
    .end array-data

    :array_1
    .array-data 8
        0x3fc3333333333333L    # 0.15
        0x3fe0000000000000L    # 0.5
        0x3feb333333333333L    # 0.85
    .end array-data
.end method

.method private static write(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 680
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method
