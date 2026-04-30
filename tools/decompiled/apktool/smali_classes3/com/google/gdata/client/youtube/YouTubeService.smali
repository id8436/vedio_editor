.class public Lcom/google/gdata/client/youtube/YouTubeService;
.super Lcom/google/gdata/client/media/MediaService;
.source "YouTubeService.java"


# static fields
.field private static final DEFAULT_AUTH_URL:Ljava/net/URL;

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field private static final SERVICE_NAME:Ljava/lang/String; = "youtube"

.field private static final SERVICE_VERSION:Ljava/lang/String; = "YouTube-Java/1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "https://www.google.com/youtube"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const-class v0, Lcom/google/gdata/client/youtube/YouTubeService;

    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/youtube/YouTubeService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/client/youtube/YouTubeService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 5

    .prologue
    .line 134
    const-string/jumbo v1, "youtube"

    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v1

    const-string/jumbo v2, "X-GData-Key"

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v0

    const-string/jumbo v1, "X-GData-Client"

    invoke-interface {v0, v1, p1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/google/gdata/data/youtube/ChannelFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/ChannelFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 143
    new-instance v1, Lcom/google/gdata/data/youtube/ComplaintFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/ComplaintFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 144
    new-instance v1, Lcom/google/gdata/data/youtube/CommentFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/CommentFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 145
    new-instance v1, Lcom/google/gdata/data/youtube/FriendFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/FriendFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 146
    new-instance v1, Lcom/google/gdata/data/youtube/UserEventFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/UserEventFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 147
    new-instance v1, Lcom/google/gdata/data/youtube/PlaylistFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/PlaylistFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 148
    new-instance v1, Lcom/google/gdata/data/youtube/PlaylistLinkFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/PlaylistLinkFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 149
    new-instance v1, Lcom/google/gdata/data/youtube/RatingFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/RatingFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 150
    new-instance v1, Lcom/google/gdata/data/youtube/SubscriptionFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/SubscriptionFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 151
    new-instance v1, Lcom/google/gdata/data/youtube/UserProfileFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/UserProfileFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 152
    new-instance v1, Lcom/google/gdata/data/youtube/VideoFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/VideoFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/youtube/YouTubeService;->setStrictValidation(Z)V

    .line 155
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/youtube/YouTubeService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public static isCompatible(Lcom/google/gdata/util/Version;)Z
    .locals 2

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Version cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeService;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFormUploadToken(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/youtube/FormUploadToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)",
            "Lcom/google/gdata/data/youtube/FormUploadToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must supply entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/youtube/YouTubeService;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 207
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/youtube/YouTubeService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 208
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 210
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->getParseSource()Lcom/google/gdata/data/ParseSource;

    move-result-object v0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/youtube/FormUploadToken;->parse(Ljava/io/InputStream;)Lcom/google/gdata/data/youtube/FormUploadToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 214
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "YouTube-Java/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/media/MediaService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
