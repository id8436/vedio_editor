.class Lcom/dropbox/core/DbxOAuth1Upgrader$1;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxOAuth1Upgrader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/DbxOAuth1Upgrader;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxOAuth1Upgrader;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dropbox/core/DbxOAuth1Upgrader$1;->this$0:Lcom/dropbox/core/DbxOAuth1Upgrader;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader$1;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 60
    :cond_0
    sget-object v0, Lcom/dropbox/core/DbxOAuth1Upgrader;->ResponseReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
