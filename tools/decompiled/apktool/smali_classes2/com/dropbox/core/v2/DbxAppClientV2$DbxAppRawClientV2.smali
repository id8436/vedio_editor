.class final Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "DbxAppClientV2.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p4, p5}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->key:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->secret:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/DbxAppClientV2$1;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 2
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
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxAppClientV2$DbxAppRawClientV2;->secret:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 81
    return-void
.end method
