.class public Lorg/mortbay/jetty/servlet/ServletHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ServletHandler.java"


# static fields
.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"

.field public static final __J_S_CONTEXT_TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"

.field public static final __J_S_ERROR_EXCEPTION:Ljava/lang/String; = "javax.servlet.error.exception"

.field public static final __J_S_ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "javax.servlet.error.exception_type"

.field public static final __J_S_ERROR_MESSAGE:Ljava/lang/String; = "javax.servlet.error.message"

.field public static final __J_S_ERROR_REQUEST_URI:Ljava/lang/String; = "javax.servlet.error.request_uri"

.field public static final __J_S_ERROR_SERVLET_NAME:Ljava/lang/String; = "javax.servlet.error.servlet_name"

.field public static final __J_S_ERROR_STATUS_CODE:Ljava/lang/String; = "javax.servlet.error.status_code"

.field static class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;


# instance fields
.field protected transient _chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

.field private transient _filterNameMap:Ljava/util/Map;

.field private transient _filterNameMappings:Lorg/mortbay/util/MultiMap;

.field private transient _filterPathMappings:Ljava/util/List;

.field private _filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

.field private transient _servletNameMap:Ljava/util/Map;

.field private transient _servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

.field private _servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 88
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 89
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 90
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    .line 110
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 794
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 533
    if-nez p2, :cond_1

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 535
    :goto_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v0, :cond_3

    .line 537
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/FilterChain;

    monitor-exit p0

    move-object v5, v0

    .line 598
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v1, p2

    .line 533
    goto :goto_0

    .line 541
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :cond_3
    if-eqz p2, :cond_d

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v0, :cond_d

    move v3, v4

    move-object v2, v5

    .line 550
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 552
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 553
    invoke-virtual {v0, p2, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 554
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    .line 541
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v0, v2

    .line 559
    :goto_4
    if-eqz p3, :cond_9

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v2}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 562
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v2}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 564
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p3}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move v2, v4

    move-object v3, v0

    .line 565
    :goto_5
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 567
    invoke-static {v6, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 568
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 569
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 565
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 572
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 573
    :goto_6
    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 575
    invoke-static {v2, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 576
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 577
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 573
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    move-object v0, v3

    .line 582
    :cond_9
    if-eqz v0, :cond_0

    .line 586
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v2, :cond_b

    .line 588
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_a

    .line 589
    new-instance v5, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;

    invoke-direct {v5, p0, v0, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 590
    :cond_a
    monitor-enter p0

    .line 592
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v5}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 595
    :cond_b
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 596
    new-instance v5, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;

    invoke-direct {v5, p0, v0, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_3

    :cond_d
    move-object v0, v5

    goto/16 :goto_4
.end method

.method private invalidateChainsCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    .line 640
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 2

    .prologue
    .line 988
    if-eqz p1, :cond_0

    .line 989
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 990
    :cond_0
    return-void

    .line 989
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addFilter(Lorg/mortbay/jetty/servlet/FilterHolder;Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 978
    :cond_0
    if-eqz p2, :cond_1

    .line 979
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_1
    invoke-static {v1, p2, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 980
    :cond_1
    return-void

    .line 977
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_0

    .line 979
    :cond_3
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto :goto_1
.end method

.method public addFilterMapping(Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 2

    .prologue
    .line 998
    if-eqz p1, :cond_0

    .line 999
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 1000
    :cond_0
    return-void

    .line 999
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 895
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 897
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 3

    .prologue
    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 911
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 915
    return-object v0
.end method

.method public addFilterWithMapping(Lorg/mortbay/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 928
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    move-object v1, v0

    .line 934
    :goto_0
    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_1
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 936
    new-instance v2, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    .line 937
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v2, p2}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v2, p3}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 940
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v3

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_2
    invoke-static {v3, v2, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 953
    return-void

    .line 934
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto :goto_1

    .line 940
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 942
    :catch_0
    move-exception v0

    .line 944
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 945
    throw v0

    .line 947
    :catch_1
    move-exception v0

    .line 949
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 950
    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 852
    return-void

    .line 851
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletMapping(Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 2

    .prologue
    .line 860
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 861
    return-void

    .line 860
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 794
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v2

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_0
    invoke-static {v2, v1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 796
    invoke-virtual {p0, v1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 798
    return-object v1

    .line 794
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_0
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 779
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0, v0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 784
    return-object v0
.end method

.method public addServletWithMapping(Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 810
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    move-object v1, v0

    .line 816
    :goto_0
    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_1
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 818
    new-instance v2, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 819
    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v2, p2}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v3

    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_2
    invoke-static {v3, v2, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 830
    return-void

    .line 816
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto :goto_1

    .line 821
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/servlet/ServletHandler;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 823
    :catch_0
    move-exception v0

    .line 825
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 826
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 827
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 828
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public customizeFilter(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1359
    return-object p1
.end method

.method public customizeFilterDestroy(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1366
    return-object p1
.end method

.method public customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1334
    return-object p1
.end method

.method public customizeServletDestroy(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1341
    return-object p1
.end method

.method protected declared-synchronized doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 142
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v1, :cond_3

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 144
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 145
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 147
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    iget v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    invoke-direct {v2, p0, v3}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    .line 159
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    .line 161
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/Context;

    if-nez v0, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_2
    monitor-exit p0

    return-void

    .line 142
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStop()V

    .line 172
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 176
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 185
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "EXCEPTION "

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 189
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/16 v1, 0x3f

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 263
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    move-object v1, p1

    .line 266
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 267
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_2
    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    new-instance v1, Lorg/mortbay/jetty/servlet/Dispatcher;

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v1, v5, v4, v3, v2}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 275
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    move-object v1, p1

    goto :goto_1
.end method

.method public getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletContext:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/mortbay/jetty/Request;

    if-eqz v2, :cond_4

    move-object/from16 v2, p2

    check-cast v2, Lorg/mortbay/jetty/Request;

    move-object v4, v2

    .line 321
    :goto_1
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object v10

    .line 322
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v11

    .line 323
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v12

    .line 324
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getRoleMap()Ljava/util/Map;

    move-result-object v13

    .line 325
    const/4 v7, 0x0

    .line 326
    const/4 v6, 0x0

    .line 330
    const/4 v2, 0x0

    .line 331
    const/4 v5, 0x0

    .line 334
    :try_start_0
    const-string/jumbo v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 337
    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v8

    .line 338
    if-eqz v8, :cond_27

    .line 340
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 341
    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getRoleMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 343
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "servlet="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 345
    :cond_2
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v8

    .line 347
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lorg/mortbay/jetty/servlet/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    const/4 v9, 0x4

    move/from16 v0, p4

    if-ne v0, v9, :cond_6

    .line 351
    const-string/jumbo v9, "javax.servlet.include.servlet_path"

    invoke-virtual {v4, v9, v8}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    const-string/jumbo v8, "javax.servlet.include.path_info"

    invoke-virtual {v4, v8, v3}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    :goto_3
    if-eqz v2, :cond_26

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    array-length v3, v3

    if-lez v3, :cond_26

    .line 361
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    :goto_4
    move-object v8, v2

    move-object v9, v3

    .line 375
    :goto_5
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "chain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "servlet holder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 382
    :cond_3
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->takeRequestListeners()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 383
    if-eqz v5, :cond_8

    .line 385
    :try_start_1
    new-instance v3, Ljavax/servlet/ServletRequestEvent;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v3, v2, v0}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/mortbay/jetty/EofException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 386
    :try_start_2
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    .line 387
    const/4 v2, 0x0

    move v6, v2

    :goto_6
    if-ge v6, v7, :cond_9

    .line 389
    invoke-static {v5, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    .line 390
    invoke-interface {v2, v3}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6

    .line 320
    :cond_4
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_1

    .line 346
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lorg/mortbay/jetty/servlet/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 356
    :cond_6
    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    .line 406
    :catch_0
    move-exception v2

    move-object v3, v6

    move-object v5, v7

    .line 408
    :goto_7
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 409
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    :catchall_0
    move-exception v2

    move-object v6, v3

    move-object v7, v5

    move-object v3, v2

    :goto_8
    if-eqz v7, :cond_23

    .line 512
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_9
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_23

    .line 514
    invoke-static {v7, v5}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    .line 515
    invoke-interface {v2, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v2, v5

    .line 516
    goto :goto_9

    .line 367
    :cond_7
    :try_start_5
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 368
    if-eqz v2, :cond_25

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    array-length v3, v3

    if-lez v3, :cond_25

    .line 370
    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 371
    const/4 v3, 0x0

    move/from16 v0, p4

    invoke-direct {p0, v0, v3, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterChain(ILjava/lang/String;Lorg/mortbay/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    :try_end_5
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    move-object v8, v5

    move-object v9, v2

    goto/16 :goto_5

    :cond_8
    move-object v3, v6

    .line 395
    :cond_9
    if-eqz v9, :cond_b

    .line 397
    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 398
    if-eqz v8, :cond_a

    .line 399
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v8, v0, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_6
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/mortbay/jetty/EofException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 510
    :goto_a
    if-eqz v5, :cond_c

    .line 512
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_b
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_c

    .line 514
    invoke-static {v5, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    .line 515
    invoke-interface {v2, v3}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v2, v6

    .line 516
    goto :goto_b

    .line 401
    :cond_a
    :try_start_7
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_a

    .line 406
    :catch_1
    move-exception v2

    goto :goto_7

    .line 404
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_7
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/mortbay/jetty/EofException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 411
    :catch_2
    move-exception v2

    move-object v6, v3

    move-object v7, v5

    .line 413
    :goto_c
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 510
    :catchall_1
    move-exception v2

    move-object v3, v2

    goto :goto_8

    .line 519
    :cond_c
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/4 v2, 0x4

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 523
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :catch_3
    move-exception v2

    .line 417
    :goto_d
    :try_start_9
    throw v2

    .line 419
    :catch_4
    move-exception v2

    .line 421
    :goto_e
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_f

    .line 423
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_d

    .line 424
    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 425
    :cond_d
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_e

    .line 426
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 427
    :cond_e
    instance-of v3, v2, Ljavax/servlet/ServletException;

    if-eqz v3, :cond_f

    .line 428
    check-cast v2, Ljavax/servlet/ServletException;

    throw v2

    .line 434
    :cond_f
    instance-of v3, v2, Ljavax/servlet/UnavailableException;

    if-eqz v3, :cond_11

    .line 436
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 447
    :cond_10
    :goto_f
    instance-of v3, v2, Lorg/mortbay/jetty/RetryRequest;

    if-eqz v3, :cond_12

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 450
    check-cast v2, Lorg/mortbay/jetty/RetryRequest;

    throw v2

    .line 438
    :cond_11
    instance-of v3, v2, Ljavax/servlet/ServletException;

    if-eqz v3, :cond_10

    .line 440
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 441
    move-object v0, v2

    check-cast v0, Ljavax/servlet/ServletException;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 442
    if-eq v3, v2, :cond_10

    if-eqz v3, :cond_10

    move-object v2, v3

    .line 443
    goto :goto_f

    .line 452
    :cond_12
    instance-of v3, v2, Lorg/mortbay/jetty/HttpException;

    if-eqz v3, :cond_13

    .line 453
    check-cast v2, Lorg/mortbay/jetty/HttpException;

    throw v2

    .line 454
    :cond_13
    instance-of v3, v2, Lorg/mortbay/io/RuntimeIOException;

    if-eqz v3, :cond_14

    .line 455
    check-cast v2, Lorg/mortbay/io/RuntimeIOException;

    throw v2

    .line 456
    :cond_14
    instance-of v3, v2, Lorg/mortbay/jetty/EofException;

    if-eqz v3, :cond_15

    .line 457
    check-cast v2, Lorg/mortbay/jetty/EofException;

    throw v2

    .line 458
    :cond_15
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 460
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 473
    :goto_10
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 475
    const-string/jumbo v3, "javax.servlet.error.exception_type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v5}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    const-string/jumbo v3, "javax.servlet.error.exception"

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    instance-of v3, v2, Ljavax/servlet/UnavailableException;

    if-eqz v3, :cond_1b

    .line 479
    move-object v0, v2

    check-cast v0, Ljavax/servlet/UnavailableException;

    move-object v3, v0

    .line 480
    invoke-virtual {v3}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 481
    const/16 v3, 0x194

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 510
    :cond_16
    :goto_11
    if-eqz v7, :cond_1d

    .line 512
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_12
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1d

    .line 514
    invoke-static {v7, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    .line 515
    invoke-interface {v2, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v2, v3

    .line 516
    goto :goto_12

    .line 463
    :cond_17
    :try_start_a
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_18

    instance-of v3, v2, Ljavax/servlet/UnavailableException;

    if-eqz v3, :cond_19

    .line 465
    :cond_18
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_10

    .line 469
    :cond_19
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 483
    :cond_1a
    const/16 v3, 0x1f7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_11

    .line 486
    :cond_1b
    const/16 v3, 0x1f4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_11

    .line 489
    :cond_1c
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Response already committed for handling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_11

    .line 519
    :cond_1d
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/4 v2, 0x4

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 523
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :catch_5
    move-exception v2

    .line 493
    :goto_13
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_1e

    .line 494
    :try_start_b
    throw v2

    .line 495
    :cond_1e
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Error for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 499
    :cond_1f
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_21

    .line 501
    const-string/jumbo v3, "javax.servlet.error.exception_type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v5}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string/jumbo v3, "javax.servlet.error.exception"

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const/16 v3, 0x1f4

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 510
    :cond_20
    :goto_14
    if-eqz v7, :cond_22

    .line 512
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_15
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_22

    .line 514
    invoke-static {v7, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletRequestListener;

    .line 515
    invoke-interface {v2, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v2, v3

    .line 516
    goto :goto_15

    .line 506
    :cond_21
    :try_start_c
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v3, "Response already committed for handling "

    invoke-static {v3, v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_14

    .line 519
    :cond_22
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/4 v2, 0x4

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 523
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_23
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setServletName(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setRoleMap(Ljava/util/Map;)V

    .line 521
    const/4 v2, 0x4

    move/from16 v0, p4

    if-eq v0, v2, :cond_24

    .line 523
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_24
    throw v3

    .line 510
    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v7, v5

    goto/16 :goto_8

    .line 491
    :catch_6
    move-exception v2

    move-object v7, v5

    goto/16 :goto_13

    :catch_7
    move-exception v2

    move-object v6, v3

    move-object v7, v5

    goto/16 :goto_13

    .line 419
    :catch_8
    move-exception v2

    move-object v7, v5

    goto/16 :goto_e

    :catch_9
    move-exception v2

    move-object v6, v3

    move-object v7, v5

    goto/16 :goto_e

    .line 415
    :catch_a
    move-exception v2

    move-object v7, v5

    goto/16 :goto_d

    :catch_b
    move-exception v2

    move-object v6, v3

    move-object v7, v5

    goto/16 :goto_d

    .line 411
    :catch_c
    move-exception v2

    goto/16 :goto_c

    :catch_d
    move-exception v2

    move-object v7, v5

    goto/16 :goto_c

    .line 406
    :catch_e
    move-exception v2

    move-object v3, v6

    goto/16 :goto_7

    :cond_25
    move-object v8, v5

    move-object v9, v2

    goto/16 :goto_5

    :cond_26
    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_4

    :cond_27
    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_4
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 707
    new-instance v3, Lorg/mortbay/util/MultiException;

    invoke-direct {v3}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 710
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    move v0, v1

    .line 712
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 713
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/FilterHolder;->start()V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_5

    .line 719
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 720
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v2, v1

    .line 721
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 725
    :try_start_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 727
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 728
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 730
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "No forced path servlet for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 721
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 733
    :cond_2
    aget-object v4, v0, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 736
    :cond_3
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 738
    :catch_0
    move-exception v1

    .line 740
    const-string/jumbo v4, "EXCEPTION "

    invoke-static {v4, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    invoke-virtual {v3, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 744
    :cond_4
    invoke-virtual {v3}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 746
    :cond_5
    return-void
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v2

    move v0, v1

    .line 671
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 673
    aget-object v3, v2, v0

    .line 674
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isInitializeAtStart()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public matchesPath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->containsMatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 875
    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>()V

    return-object v0
.end method

.method public newFilterHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 866
    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 763
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>()V

    return-object v0
.end method

.method public newServletHolder(Ljava/lang/Class;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 769
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Not Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1119
    :cond_0
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 1120
    return-void
.end method

.method public setFilterChainsCached(Z)V
    .locals 0

    .prologue
    .line 1128
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 1129
    return-void
.end method

.method public setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V
    .locals 6

    .prologue
    .line 1137
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string/jumbo v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1139
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    .line 1140
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1141
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1142
    return-void
.end method

.method public declared-synchronized setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 6

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string/jumbo v4, "filter"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1149
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1150
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1151
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    monitor-exit p0

    return-void

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitializeAtStart(Z)V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 2

    .prologue
    .line 1310
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 1311
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1313
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    if-eqz v1, :cond_0

    .line 1315
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_chainCache:[Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->setMaxEntries(I)V

    .line 1311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string/jumbo v4, "filter"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 121
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string/jumbo v4, "filterMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string/jumbo v4, "servlet"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 123
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string/jumbo v4, "servletMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    const-string/jumbo v10, "filter"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    const-string/jumbo v10, "filterMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string/jumbo v10, "servlet"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string/jumbo v10, "servletMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 132
    :cond_1
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 134
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 135
    return-void
.end method

.method public setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V
    .locals 6

    .prologue
    .line 1160
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    const-string/jumbo v4, "servletMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1162
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    .line 1163
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1164
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1165
    return-void
.end method

.method public declared-synchronized setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 6

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    const-string/jumbo v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1175
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1176
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1177
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    monitor-exit p0

    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0

    .prologue
    .line 686
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 687
    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1033
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    if-nez v0, :cond_4

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 1066
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 1092
    :goto_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "filterNameMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "pathFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "servletFilterMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "servletPathMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1098
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "servletNameMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->initialize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    :cond_3
    monitor-exit p0

    return-void

    .line 1040
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1041
    new-instance v0, Lorg/mortbay/util/MultiMap;

    invoke-direct {v0}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    move v1, v2

    .line 1042
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1044
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1045
    if-nez v0, :cond_5

    .line 1046
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "No filter named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1047
    :cond_5
    :try_start_3
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 1048
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1049
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1053
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 1054
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_8

    .line 1056
    aget-object v4, v3, v0

    if-eqz v4, :cond_7

    .line 1057
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/mortbay/util/MultiMap;

    aget-object v5, v3, v0

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/mortbay/jetty/servlet/FilterMapping;

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1042
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 1070
    :cond_9
    new-instance v4, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v4}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    move v3, v2

    .line 1073
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    array-length v0, v0

    if-ge v3, v0, :cond_d

    .line 1075
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1076
    if-nez v0, :cond_a

    .line 1077
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No such servlet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_a
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1080
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/mortbay/jetty/servlet/ServletMapping;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 1081
    :goto_4
    array-length v6, v5

    if-ge v1, v6, :cond_c

    .line 1082
    aget-object v6, v5, v1

    if-eqz v6, :cond_b

    .line 1083
    aget-object v6, v5, v1

    invoke-virtual {v4, v6, v0}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1073
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 1087
    :cond_d
    iput-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/mortbay/jetty/servlet/PathMap;

    goto/16 :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1006
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1007
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_0

    move v1, v0

    .line 1009
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1011
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v4, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_filters:[Lorg/mortbay/jetty/servlet/FilterHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1018
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_1

    .line 1021
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1023
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler;->_servlets:[Lorg/mortbay/jetty/servlet/ServletHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    :cond_1
    monitor-exit p0

    return-void

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
