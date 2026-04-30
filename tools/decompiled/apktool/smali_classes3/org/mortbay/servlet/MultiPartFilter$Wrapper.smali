.class Lorg/mortbay/servlet/MultiPartFilter$Wrapper;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "MultiPartFilter.java"


# instance fields
.field encoding:Ljava/lang/String;

.field map:Lorg/mortbay/util/MultiMap;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 358
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    .line 369
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 390
    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 394
    :try_start_0
    new-instance v1, Ljava/lang/String;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 404
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_2
    if-eqz v0, :cond_1

    .line 403
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->map:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v1, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 432
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 433
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 452
    :goto_0
    return-object v0

    .line 434
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 435
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 437
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    .line 442
    :try_start_0
    new-instance v4, Ljava/lang/String;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v5, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 444
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 449
    :cond_3
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 450
    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 452
    goto :goto_0
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 462
    iput-object p1, p0, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;->encoding:Ljava/lang/String;

    .line 463
    return-void
.end method
