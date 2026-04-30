.class Lcom/dropbox/core/DbxWebAuth$1;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxWebAuth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/DbxAuthFinish;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/DbxWebAuth;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxWebAuth;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$1;->this$0:Lcom/dropbox/core/DbxWebAuth;

    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$1;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 412
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 414
    :cond_0
    sget-object v0, Lcom/dropbox/core/DbxAuthFinish;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxAuthFinish;

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth$1;->val$state:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1}, Lcom/dropbox/core/DbxAuthFinish;->withUrlState(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    .line 414
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
    .line 408
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxWebAuth$1;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method
