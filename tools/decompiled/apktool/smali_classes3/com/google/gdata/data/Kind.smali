.class public Lcom/google/gdata/data/Kind;
.super Ljava/lang/Object;
.source "Kind.java"


# static fields
.field public static final META_DIRECTORY:Ljava/lang/String; = "META-INF/gdata/kinds/"

.field private static kindAdaptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static getAdaptor(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-static {p0, p1}, Lcom/google/gdata/data/Kind;->getAdaptorClass(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Ljava/lang/Class;

    move-result-object v3

    .line 302
    if-nez v3, :cond_1

    move-object v0, v1

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :cond_1
    invoke-interface {p1, v3}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 312
    :goto_1
    if-eqz v2, :cond_4

    .line 314
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_2
    if-nez v0, :cond_2

    .line 327
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 337
    :cond_2
    if-nez v2, :cond_3

    .line 338
    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 349
    :goto_3
    invoke-interface {p1, v0}, Lcom/google/gdata/data/Kind$Adaptable;->addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 319
    goto :goto_1

    .line 328
    :catch_1
    move-exception v0

    .line 329
    new-instance v0, Lcom/google/gdata/data/Kind$AdaptorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to construct Adaptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    const/4 v1, 0x1

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 342
    :catch_2
    move-exception v0

    .line 343
    throw v0

    .line 344
    :catch_3
    move-exception v0

    .line 345
    new-instance v1, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string/jumbo v2, "Unable to create kind Adaptor"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static getAdaptorClass(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gdata/data/Kind$Adaptable;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 239
    sget-object v0, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    if-nez v0, :cond_4

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-static {p0}, Lcom/google/gdata/data/Kind;->getKindServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "META-INF/gdata/kinds/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 249
    if-nez v3, :cond_1

    move-object v0, v2

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 256
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_2

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string/jumbo v2, "Unable to load Adaptor service info"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :catch_1
    move-exception v0

    .line 265
    new-instance v1, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string/jumbo v2, "Unable to load Adaptor class"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :cond_3
    sget-object v1, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 273
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 281
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 283
    :goto_2
    const-class v4, Lcom/google/gdata/data/Kind$Adaptable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 290
    goto :goto_0
.end method

.method public static getKindServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 190
    array-length v1, v5

    add-int/lit8 v2, v1, -0x1

    move v1, v2

    .line 191
    :goto_0
    if-ltz v1, :cond_1

    .line 192
    if-eq v1, v2, :cond_0

    .line 193
    const-string/jumbo v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    aget-object v6, v5, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 201
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 202
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 203
    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 210
    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 212
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 213
    const-string/jumbo v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    aget-object v2, v1, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Kind term must be a valid URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 223
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isKindCategory(Lcom/google/gdata/data/Category;)Z
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {p0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
