.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;
.super Ljava/lang/Object;
.source "AdobeAnalyticsETSSession.java"


# static fields
.field private static final ETS_STRING_TAG:Ljava/lang/String; = "ETSAnalytics"

.field private static etsSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;


# instance fields
.field private isAnalyticsEnabled:Z

.field private networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->etsSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->isAnalyticsEnabled:Z

    .line 53
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getEndpointURL()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Adobe Creative SDK"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 54
    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 93
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 95
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 98
    return-object v1
.end method

.method private getEndpointURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76
    const-string/jumbo v0, "https://cc-api-data-stage.adobe.io/ingest"

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-data.adobe.io/ingest"

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSharedSession()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->etsSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->etsSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    .line 88
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->etsSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    return-object v0
.end method


# virtual methods
.method public disableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->isAnalyticsEnabled:Z

    .line 64
    return-void
.end method

.method public enableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->isAnalyticsEnabled:Z

    .line 59
    return-void
.end method

.method public sendEvent(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->isAnalyticsEnabled:Z

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "ETSAnalytics"

    invoke-static {v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getEndpointURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    if-eqz v1, :cond_0

    .line 116
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {v2, v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;)V

    .line 117
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "application/json"

    invoke-virtual {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string/jumbo v3, "x-api-key"

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string/jumbo v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 128
    :goto_1
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V

    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    .line 126
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
