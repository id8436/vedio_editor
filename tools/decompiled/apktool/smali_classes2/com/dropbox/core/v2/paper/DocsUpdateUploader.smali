.class public Lcom/dropbox/core/v2/paper/DocsUpdateUploader;
.super Lcom/dropbox/core/DbxUploader;
.source "DocsUpdateUploader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxUploader",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;",
        "Lcom/dropbox/core/v2/paper/PaperDocUpdateError;",
        "Lcom/dropbox/core/v2/paper/PaperDocUpdateErrorException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$Serializer;

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/dropbox/core/DbxUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected bridge synthetic newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/DocsUpdateUploader;->newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/v2/paper/PaperDocUpdateErrorException;

    move-result-object v0

    return-object v0
.end method

.method protected newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/v2/paper/PaperDocUpdateErrorException;
    .locals 5

    .prologue
    .line 37
    new-instance v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateErrorException;

    const-string/jumbo v2, "2/paper/docs/update"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/PaperDocUpdateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/PaperDocUpdateError;)V

    return-object v1
.end method
