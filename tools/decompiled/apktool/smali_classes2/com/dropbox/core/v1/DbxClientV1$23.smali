.class Lcom/dropbox/core/v1/DbxClientV1$23;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;)V
    .locals 0

    .prologue
    .line 2197
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$23;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2202
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 2206
    :goto_0
    return-object v0

    .line 2203
    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 2204
    :cond_1
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    .line 2205
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 2206
    :cond_2
    iget-object v0, v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

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
    .line 2197
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$23;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object v0

    return-object v0
.end method
