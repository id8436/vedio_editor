.class public Lcom/dropbox/core/v2/DbxAppClientV2Base;
.super Ljava/lang/Object;
.source "DbxAppClientV2Base.java"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private final auth:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->auth:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    .line 24
    return-void
.end method


# virtual methods
.method public auth()Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2Base;->auth:Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;

    return-object v0
.end method
