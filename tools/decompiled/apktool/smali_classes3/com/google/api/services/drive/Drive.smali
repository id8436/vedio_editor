.class public Lcom/google/api/services/drive/Drive;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "Drive.java"


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/drive/v3/"

.field public static final DEFAULT_BATCH_PATH:Ljava/lang/String; = "batch/drive/v3"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "drive/v3/"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MAJOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MINOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.23.0 of the Drive API library."

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/api/client/googleapis/GoogleUtils;->VERSION:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/google/api/services/drive/Drive$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-direct {p0, v0}, Lcom/google/api/services/drive/Drive;-><init>(Lcom/google/api/services/drive/Drive$Builder;)V

    .line 115
    return-void
.end method

.method constructor <init>(Lcom/google/api/services/drive/Drive$Builder;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    .line 122
    return-void
.end method


# virtual methods
.method public about()Lcom/google/api/services/drive/Drive$About;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/api/services/drive/Drive$About;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$About;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public changes()Lcom/google/api/services/drive/Drive$Changes;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/google/api/services/drive/Drive$Changes;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Changes;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public channels()Lcom/google/api/services/drive/Drive$Channels;
    .locals 1

    .prologue
    .line 1276
    new-instance v0, Lcom/google/api/services/drive/Drive$Channels;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Channels;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public comments()Lcom/google/api/services/drive/Drive$Comments;
    .locals 1

    .prologue
    .line 1377
    new-instance v0, Lcom/google/api/services/drive/Drive$Comments;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Comments;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public files()Lcom/google/api/services/drive/Drive$Files;
    .locals 1

    .prologue
    .line 2115
    new-instance v0, Lcom/google/api/services/drive/Drive$Files;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Files;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method protected initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 127
    return-void
.end method

.method public permissions()Lcom/google/api/services/drive/Drive$Permissions;
    .locals 1

    .prologue
    .line 4357
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Permissions;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public replies()Lcom/google/api/services/drive/Drive$Replies;
    .locals 1

    .prologue
    .line 5668
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Replies;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public revisions()Lcom/google/api/services/drive/Drive$Revisions;
    .locals 1

    .prologue
    .line 6481
    new-instance v0, Lcom/google/api/services/drive/Drive$Revisions;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Revisions;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public teamdrives()Lcom/google/api/services/drive/Drive$Teamdrives;
    .locals 1

    .prologue
    .line 7079
    new-instance v0, Lcom/google/api/services/drive/Drive$Teamdrives;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Teamdrives;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method
