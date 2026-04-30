.class Lcom/dropbox/core/v1/DbxClientV1$9;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/v1/DbxDeltaC",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field final synthetic val$collector:Lcom/dropbox/core/util/Collector;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Lcom/dropbox/core/util/Collector;)V
    .locals 0

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$9;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$9;->val$collector:Lcom/dropbox/core/util/Collector;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 1609
    :cond_0
    new-instance v0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;

    sget-object v1, Lcom/dropbox/core/v1/DbxEntry;->Reader:Lcom/dropbox/core/json/JsonReader;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$9;->val$collector:Lcom/dropbox/core/util/Collector;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v1/DbxDeltaC$Reader;-><init>(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)V

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxDeltaC;

    return-object v0
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1605
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$9;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method
