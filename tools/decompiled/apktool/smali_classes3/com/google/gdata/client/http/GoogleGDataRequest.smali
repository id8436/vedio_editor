.class public Lcom/google/gdata/client/http/GoogleGDataRequest;
.super Lcom/google/gdata/client/http/HttpGDataRequest;
.source "GoogleGDataRequest.java"


# static fields
.field public static final DISABLE_COOKIE_HANDLER_PROPERTY:Ljava/lang/String; = "com.google.gdata.DisableCookieHandler"

.field private static final activeService:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gdata/client/GoogleService;",
            ">;"
        }
    .end annotation
.end field

.field private static final googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private responseVersion:Lcom/google/gdata/util/Version;

.field private service:Lcom/google/gdata/client/GoogleService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const-class v0, Lcom/google/gdata/client/http/GoogleGDataRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->logger:Ljava/util/logging/Logger;

    .line 72
    :try_start_0
    const-string/jumbo v0, "com.google.apphosting.api.ApiProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "getCurrentEnvironment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "com.google.gdata.DisableCookieHandler"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    .line 428
    const-string/jumbo v0, "com.google.gdata.DisableCookieHandler"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    invoke-direct {v0, v3}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;-><init>(Lcom/google/gdata/client/http/GoogleGDataRequest$1;)V

    sput-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    .line 433
    :goto_1
    return-void

    .line 431
    :cond_1
    sput-object v3, Lcom/google/gdata/client/http/GoogleGDataRequest;->googleCookieHandler:Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    goto :goto_0

    .line 78
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/client/Service$GDataRequest$RequestType;",
            "Ljava/net/URL;",
            "Lcom/google/gdata/util/ContentType;",
            "Lcom/google/gdata/client/http/HttpAuthToken;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gdata/client/http/HttpUrlConnectionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct/range {p0 .. p7}, Lcom/google/gdata/client/http/HttpGDataRequest;-><init>(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/client/http/HttpAuthToken;Ljava/util/Map;Ljava/util/Map;Lcom/google/gdata/client/http/HttpUrlConnectionSource;)V

    .line 459
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 532
    :try_start_0
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 536
    invoke-super {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->execute()V

    .line 539
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "GData-Version"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_0

    .line 542
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/GoogleService;

    .line 543
    if-eqz v0, :cond_0

    .line 544
    new-instance v2, Lcom/google/gdata/util/Version;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/gdata/util/Version;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    iput-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->responseVersion:Lcom/google/gdata/util/Version;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_0
    sget-object v0, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/gdata/client/http/GoogleGDataRequest;->activeService:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public getRequestVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleService;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public getResponseVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->executed:Z

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request has not been executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->responseVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method protected handleErrorResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 564
    invoke-super {p0}, Lcom/google/gdata/client/http/HttpGDataRequest;->handleErrorResponse()V

    .line 577
    return-void

    .line 562
    :pswitch_0
    new-instance v0, Lcom/google/gdata/util/RedirectRequiredException;

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->httpConn:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/RedirectRequiredException;-><init>(Ljava/net/HttpURLConnection;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gdata/util/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_0

    const-string/jumbo v2, "Token expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    instance-of v1, v1, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    if-eqz v1, :cond_2

    .line 570
    :cond_1
    new-instance v1, Lcom/google/gdata/client/GoogleService$SessionExpiredException;

    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/client/GoogleService$SessionExpiredException;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/util/AuthenticationException;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/gdata/client/GoogleService$SessionExpiredException;->setResponse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 573
    throw v1

    .line 575
    :cond_2
    throw v0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setService(Lcom/google/gdata/client/GoogleService;)V
    .locals 2

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest;->service:Lcom/google/gdata/client/GoogleService;

    .line 507
    const-string/jumbo v0, "GoogleGDataRequest.disableVersionHeader"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gdata/client/GoogleService;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    const-string/jumbo v1, "GData-Version"

    invoke-virtual {v0}, Lcom/google/gdata/util/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/http/GoogleGDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method
