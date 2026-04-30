.class public Lorg/apache/http/client/utils/URIUtilsHC4;
.super Ljava/lang/Object;
.source "URIUtilsHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method

.method public static createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    if-eqz p1, :cond_1

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    if-lez p2, :cond_1

    .line 93
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    :cond_2
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_3
    if-eqz p3, :cond_4

    .line 101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_4
    if-eqz p4, :cond_5

    .line 104
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_5
    if-eqz p5, :cond_6

    .line 108
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 324
    if-nez p0, :cond_0

    .line 373
    :goto_0
    return-object v6

    .line 328
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 330
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 331
    if-nez v0, :cond_3

    .line 333
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_3

    .line 336
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 337
    if-ltz v1, :cond_7

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_1

    .line 339
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    :goto_1
    if-eqz v5, :cond_6

    .line 346
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 347
    if-ltz v7, :cond_6

    .line 348
    add-int/lit8 v1, v7, 0x1

    move v0, v1

    move v2, v3

    .line 350
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 351
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object v5, v6

    .line 341
    goto :goto_1

    .line 357
    :cond_2
    if-lez v2, :cond_5

    .line 359
    add-int v0, v1, v2

    :try_start_0
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 363
    :goto_3
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v4, v0

    move-object v0, v1

    .line 368
    :cond_3
    :goto_4
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 369
    if-eqz v0, :cond_4

    .line 370
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v4, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    :goto_5
    move-object v6, v0

    .line 373
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_5

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_4

    :cond_7
    move-object v5, v0

    goto :goto_1
.end method

.method private static normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;
    .locals 8

    .prologue
    const/16 v7, 0x2f

    .line 262
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p0

    .line 308
    :cond_1
    :goto_0
    return-object v0

    .line 266
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    const-string/jumbo v1, "Base URI must be absolute"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 268
    :goto_1
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 270
    array-length v4, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_7

    aget-object v5, v2, v0

    .line 271
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 270
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 274
    :cond_5
    const-string/jumbo v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 275
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 276
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_3

    .line 279
    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 282
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 286
    :cond_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_9

    .line 288
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 293
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 298
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 302
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_b
    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 306
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 207
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    const-string/jumbo v0, "Base URI"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v0, "Reference URI"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p0, p1}, Lorg/apache/http/client/utils/URIUtilsHC4;->resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 227
    :goto_1
    if-eqz v1, :cond_1

    .line 228
    const-string/jumbo v0, "#"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 230
    :cond_1
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 231
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 236
    :cond_2
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 226
    goto :goto_1
.end method

.method public static resolve(Ljava/net/URI;Lorg/apache/http/HttpHost;Ljava/util/List;)Ljava/net/URI;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 396
    const-string/jumbo v0, "Request URI"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    :cond_0
    new-instance v0, Lorg/apache/http/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 410
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 411
    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 414
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 416
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 417
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPort(I)Lorg/apache/http/client/utils/URIBuilder;

    .line 419
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 401
    :cond_3
    new-instance v1, Lorg/apache/http/client/utils/URIBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    invoke-direct {v1, v0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 402
    invoke-virtual {v1}, Lorg/apache/http/client/utils/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v0, v2

    move v2, v4

    :goto_1
    if-nez v0, :cond_4

    if-ltz v2, :cond_4

    .line 405
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    .line 404
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    .line 407
    :cond_4
    invoke-virtual {v1, v0}, Lorg/apache/http/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    move-object v0, v1

    goto :goto_0
.end method

.method private static resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    .prologue
    const/16 v3, 0x3f

    .line 248
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string/jumbo v0, "URI"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-object p0

    .line 184
    :cond_0
    new-instance v0, Lorg/apache/http/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 185
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v3}, Lorg/apache/http/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 188
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 191
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 194
    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/http/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 195
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    goto :goto_0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string/jumbo v0, "URI"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-object p0

    .line 138
    :cond_0
    new-instance v0, Lorg/apache/http/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 139
    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 141
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 142
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPort(I)Lorg/apache/http/client/utils/URIBuilder;

    .line 148
    :goto_1
    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {v0, v2}, Lorg/apache/http/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 151
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 154
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {v0, v2}, Lorg/apache/http/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 145
    invoke-virtual {v0, v2}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 146
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPort(I)Lorg/apache/http/client/utils/URIBuilder;

    goto :goto_1
.end method
