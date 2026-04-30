.class public Lcom/dropbox/core/DbxRequestConfig;
.super Ljava/lang/Object;
.source "DbxRequestConfig.java"


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private final httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private final maxRetries:I

.field private final userLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "clientIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "httpRequestor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    if-gez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxRetries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    .line 26
    invoke-static {p2}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 28
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2

    .prologue
    .line 176
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "clientIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method private static toLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 201
    if-nez p0, :cond_1

    .line 202
    const/4 p0, 0x0

    .line 222
    :cond_0
    :goto_0
    return-object p0

    .line 205
    :cond_1
    const-string/jumbo v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "_"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 218
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 219
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 220
    array-length v3, v0

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 222
    :goto_1
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 220
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 6

    .prologue
    .line 166
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method public getClientIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    return-object v0
.end method

.method public getMaxRetries()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    return v0
.end method

.method public getUserLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRetryEnabled()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
