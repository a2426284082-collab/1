.class final Lcom/cidaoai/catsource/ApiClient$HttpResult;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cidaoai/catsource/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpResult"
.end annotation


# instance fields
.field final body:[B

.field final code:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->code:I

    iput-object p2, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->body:[B

    return-void
.end method


# virtual methods
.method bodyText()Ljava/lang/String;
    .locals 3

    .line 686
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cidaoai/catsource/ApiClient$HttpResult;->body:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
