.class public Lcom/google/gdata/client/GoogleAuthTokenFactory;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/AuthTokenFactory;


# static fields
.field public static final GOOGLE_ACCOUNTS_PATH:Ljava/lang/String; = "/accounts"

.field public static final GOOGLE_LOGIN_PATH:Ljava/lang/String; = "/accounts/ClientLogin"


# instance fields
.field private applicationName:Ljava/lang/String;

.field private authToken:Lcom/google/gdata/client/http/HttpAuthToken;

.field private domainName:Ljava/lang/String;

.field private loginProtocol:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V
    .locals 6

    .prologue
    .line 289
    const-string/jumbo v3, "https"

    const-string/jumbo v4, "www.google.com"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/AuthTokenFactory$TokenListener;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    .line 322
    iput-object p4, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    .line 324
    iput-object p5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    .line 325
    return-void
.end method

.method private getAuthException(Ljava/util/Map;)Lcom/google/gdata/util/AuthenticationException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/gdata/util/AuthenticationException;"
        }
    .end annotation

    .prologue
    .line 657
    const-string/jumbo v0, "Error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    const-string/jumbo v1, "BadAuthentication"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    new-instance v0, Lcom/google/gdata/client/GoogleService$InvalidCredentialsException;

    const-string/jumbo v1, "Invalid credentials"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-object v0

    .line 662
    :cond_0
    const-string/jumbo v1, "AccountDeleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    new-instance v0, Lcom/google/gdata/client/GoogleService$AccountDeletedException;

    const-string/jumbo v1, "Account deleted"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$AccountDeletedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    const-string/jumbo v1, "AccountDisabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    new-instance v0, Lcom/google/gdata/client/GoogleService$AccountDisabledException;

    const-string/jumbo v1, "Account disabled"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$AccountDisabledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    const-string/jumbo v1, "NotVerified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    new-instance v0, Lcom/google/gdata/client/GoogleService$NotVerifiedException;

    const-string/jumbo v1, "Not verified"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$NotVerifiedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    const-string/jumbo v1, "TermsNotAgreed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    new-instance v0, Lcom/google/gdata/client/GoogleService$TermsNotAgreedException;

    const-string/jumbo v1, "Terms not agreed"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$TermsNotAgreedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_4
    const-string/jumbo v1, "ServiceUnavailable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 675
    new-instance v0, Lcom/google/gdata/client/GoogleService$ServiceUnavailableException;

    const-string/jumbo v1, "Service unavailable"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/GoogleService$ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_5
    const-string/jumbo v1, "CaptchaRequired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 679
    const-string/jumbo v0, "CaptchaUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/accounts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    new-instance v1, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;

    const-string/jumbo v3, "Captcha required"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "CaptchaToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/gdata/client/GoogleService$CaptchaRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 688
    :cond_6
    new-instance v0, Lcom/google/gdata/util/AuthenticationException;

    const-string/jumbo v1, "Error authenticating (check service name)"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 582
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 585
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 586
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 587
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 588
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 589
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " GData-Java/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v6, Lcom/google/gdata/client/GoogleAuthTokenFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 600
    if-nez v2, :cond_0

    .line 601
    const-string/jumbo v2, "&"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_0
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v2}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 607
    goto :goto_0

    .line 611
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 612
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 613
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 615
    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 622
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 625
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 626
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 632
    :goto_1
    if-eqz v4, :cond_6

    .line 633
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 635
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 640
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    .line 641
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 615
    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_4

    .line 616
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0

    .line 628
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 640
    :cond_6
    if-eqz v4, :cond_7

    .line 641
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 644
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 615
    :catchall_2
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken()Lcom/google/gdata/client/http/HttpAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Lcom/google/gdata/client/http/HttpAuthToken;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 505
    sget-object v7, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    const-string/jumbo v1, "Email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string/jumbo v1, "Passwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v1, "service"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v1, "accountType"

    invoke-virtual {p7}, Lcom/google/gdata/client/ClientLoginAccountType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    if-eqz p3, :cond_0

    .line 539
    const-string/jumbo v1, "logintoken"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    if-eqz p4, :cond_1

    .line 542
    const-string/jumbo v1, "logincaptcha"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->loginProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->domainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/accounts/ClientLogin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-static {v1, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->makePostRequest(Ljava/net/URL;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "="

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    .line 558
    const-string/jumbo v0, "Auth"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    if-nez v0, :cond_2

    .line 560
    invoke-direct {p0, v1}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthException(Ljava/util/Map;)Lcom/google/gdata/util/AuthenticationException;

    move-result-object v0

    throw v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    const-string/jumbo v2, "Error connecting with login URI"

    invoke-direct {v1, v2}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, v0}, Lcom/google/gdata/util/AuthenticationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 552
    throw v1

    .line 562
    :cond_2
    return-object v0
.end method

.method public handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/GoogleService$SessionExpiredException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 699
    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserToken(Ljava/lang/String;)V

    .line 708
    :cond_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    instance-of v0, v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    check-cast v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;->refreshToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    :cond_2
    throw p1
.end method

.method public setAuthSubToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 423
    return-void
.end method

.method public setAuthSubToken(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 438
    return-void
.end method

.method public setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V
    .locals 1

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->authToken:Lcom/google/gdata/client/http/HttpAuthToken;

    .line 475
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->tokenListener:Lcom/google/gdata/client/AuthTokenFactory$TokenListener;

    invoke-interface {v0, p1}, Lcom/google/gdata/client/AuthTokenFactory$TokenListener;->tokenChanged(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setOAuth2Credentials(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;

    invoke-direct {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuth2Token;-><init>(Lcom/google/api/client/auth/oauth2/Credential;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 466
    return-void
.end method

.method public setOAuthCredentials(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerKeyExists()V

    .line 456
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/GoogleAuthTokenFactory$OAuthToken;-><init>(Lcom/google/gdata/client/authn/oauth/OAuthParameters;Lcom/google/gdata/client/authn/oauth/OAuthSigner;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 457
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 338
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 353
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 372
    sget-object v5, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V

    .line 374
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->username:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->password:Ljava/lang/String;

    .line 397
    iget-object v5, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->serviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory;->applicationName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/client/ClientLoginAccountType;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setUserToken(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/google/gdata/client/GoogleAuthTokenFactory$UserToken;

    invoke-direct {v0, p1}, Lcom/google/gdata/client/GoogleAuthTokenFactory$UserToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/GoogleAuthTokenFactory;->setAuthToken(Lcom/google/gdata/client/http/HttpAuthToken;)V

    .line 413
    return-void
.end method
