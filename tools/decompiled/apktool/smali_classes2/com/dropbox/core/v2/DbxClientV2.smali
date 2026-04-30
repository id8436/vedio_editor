.class public Lcom/dropbox/core/v2/DbxClientV2;
.super Lcom/dropbox/core/v2/DbxClientV2Base;
.source "DbxClientV2.java"


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/DbxClientV2$DbxUserRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/DbxClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 92
    return-void
.end method
