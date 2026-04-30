.class Lcom/dropbox/core/v1/DbxClientV1$3;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/util/Maybe",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field final synthetic val$reader:Lcom/dropbox/core/json/JsonReader;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Lcom/dropbox/core/json/JsonReader;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$3;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$3;->val$reader:Lcom/dropbox/core/json/JsonReader;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/util/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            ")",
            "Lcom/dropbox/core/util/Maybe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/util/Maybe;->Just(Ljava/lang/Object;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/dropbox/core/util/Maybe;->Nothing()Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$3;->val$reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/Maybe;->Just(Ljava/lang/Object;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$3;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    return-object v0
.end method
