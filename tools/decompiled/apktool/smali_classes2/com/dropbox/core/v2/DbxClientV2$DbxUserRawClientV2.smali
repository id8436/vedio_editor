.class final Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxClientV2.java"


# instance fields
.field private final accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p1, p3, p4}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    .line 103
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "accessToken"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->accessToken:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;->accessToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 111
    return-void
.end method
