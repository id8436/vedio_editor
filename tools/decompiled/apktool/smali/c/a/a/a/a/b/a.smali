.class public abstract Lc/a/a/a/a/b/a;
.super Ljava/lang/Object;
.source "AbstractSpiCall.java"


# static fields
.field public static final ACCEPT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final ANDROID_CLIENT_TYPE:Ljava/lang/String; = "android"

.field public static final CLS_ANDROID_SDK_DEVELOPER_TOKEN:Ljava/lang/String; = "470fa2b4ae81cd56ecbcda9735803434cec591fa"

.field public static final CRASHLYTICS_USER_AGENT:Ljava/lang/String; = "Crashlytics Android SDK/"

.field public static final DEFAULT_TIMEOUT:I = 0x2710

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_API_KEY:Ljava/lang/String; = "X-CRASHLYTICS-API-KEY"

.field public static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-TYPE"

.field public static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-VERSION"

.field public static final HEADER_D:Ljava/lang/String; = "X-CRASHLYTICS-D"

.field public static final HEADER_DEVELOPER_TOKEN:Ljava/lang/String; = "X-CRASHLYTICS-DEVELOPER-TOKEN"

.field public static final HEADER_DEVICE_STATE:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-STATE"

.field public static final HEADER_REQUEST_ID:Ljava/lang/String; = "X-REQUEST-ID"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final kit:Lc/a/a/a/q;

.field private final method:Lc/a/a/a/a/e/d;

.field private final protocolAndHostOverride:Ljava/lang/String;

.field private final requestFactory:Lc/a/a/a/a/e/m;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a/a/b/a;->PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;Lc/a/a/a/a/e/d;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p3, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-nez p4, :cond_1

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput-object p1, p0, Lc/a/a/a/a/b/a;->kit:Lc/a/a/a/q;

    .line 95
    iput-object p2, p0, Lc/a/a/a/a/b/a;->protocolAndHostOverride:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p3}, Lc/a/a/a/a/b/a;->overrideProtocolAndHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/a/b/a;->url:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lc/a/a/a/a/b/a;->requestFactory:Lc/a/a/a/a/e/m;

    .line 98
    iput-object p5, p0, Lc/a/a/a/a/b/a;->method:Lc/a/a/a/a/e/d;

    .line 99
    return-void
.end method

.method private overrideProtocolAndHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    .line 159
    iget-object v0, p0, Lc/a/a/a/a/b/a;->protocolAndHostOverride:Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/a/a/b/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lc/a/a/a/a/b/a;->PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a/a/b/a;->protocolAndHostOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected getHttpRequest()Lc/a/a/a/a/e/e;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/a/a/b/a;->getHttpRequest(Ljava/util/Map;)Lc/a/a/a/a/e/e;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpRequest(Ljava/util/Map;)Lc/a/a/a/a/e/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc/a/a/a/a/e/e;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lc/a/a/a/a/b/a;->requestFactory:Lc/a/a/a/a/e/m;

    iget-object v1, p0, Lc/a/a/a/a/b/a;->method:Lc/a/a/a/a/e/d;

    invoke-virtual {p0}, Lc/a/a/a/a/b/a;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lc/a/a/a/a/e/m;->a(Lc/a/a/a/a/e/d;Ljava/lang/String;Ljava/util/Map;)Lc/a/a/a/a/e/e;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/a/a/a/a/e/e;->a(Z)Lc/a/a/a/a/e/e;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lc/a/a/a/a/e/e;->a(I)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crashlytics Android SDK/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/a/a/a/a/b/a;->kit:Lc/a/a/a/q;

    invoke-virtual {v3}, Lc/a/a/a/q;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string/jumbo v2, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc/a/a/a/a/b/a;->url:Ljava/lang/String;

    return-object v0
.end method
