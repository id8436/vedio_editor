.class Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;
.super Ljava/net/CookieHandler;
.source "GoogleGDataRequest.java"


# instance fields
.field private nextHandler:Ljava/net/CookieHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 335
    const-string/jumbo v0, "com.google.gdata.DisableCookieHandler"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, "Installing GoogleCookieHandler"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    .line 338
    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 340
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/client/http/GoogleGDataRequest$1;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/GoogleService;

    .line 354
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleService;->handlesCookies()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleService;->getCookies()Ljava/util/Set;

    move-result-object v0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .line 361
    invoke-virtual {v0, p1}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matches(Ljava/net/URI;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 363
    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->getHeaderValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    invoke-virtual {v0, p1, p2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/GoogleService;

    .line 396
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/client/GoogleService;->handlesCookies()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const-string/jumbo v1, "Set-Cookie"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 398
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    new-instance v3, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    invoke-direct {v3, p1, v1}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v3}, Lcom/google/gdata/client/GoogleService;->addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V

    .line 402
    invoke-static {}, Lcom/google/gdata/client/http/GoogleGDataRequest;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding cookie:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookieHandler;->nextHandler:Ljava/net/CookieHandler;

    invoke-virtual {v0, p1, p2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    .line 410
    :cond_1
    return-void
.end method
