.class public final Lcom/dropbox/core/DbxRequestConfig$Builder;
.super Ljava/lang/Object;
.source "DbxRequestConfig.java"


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private maxRetries:I

.field private userLocale:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 242
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxRequestConfig;
    .locals 6

    .prologue
    .line 381
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method public withAutoRetryDisabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 343
    return-object p0
.end method

.method public withAutoRetryEnabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2

    .prologue
    .line 369
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxRetries must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iput p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 371
    return-object p0
.end method

.method public withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2

    .prologue
    .line 310
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "httpRequestor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 312
    return-object p0
.end method

.method public withUserLocale(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public withUserLocaleFrom(Ljava/util/Locale;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestConfig;->access$200(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public withUserLocaleFromPreferences()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 281
    return-object p0
.end method
