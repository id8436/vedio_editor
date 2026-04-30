.class public Lcom/twitter/sdk/android/core/w;
.super Ljava/lang/Object;
.source "TwitterApiClient.java"


# instance fields
.field final retrofit:Lf/aw;

.field final services:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    .line 57
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lcom/twitter/sdk/android/core/g;)Ld/ar;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/z;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/w;-><init>(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/aj;)V
    .locals 2

    .prologue
    .line 77
    .line 79
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/ar;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/z;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/w;-><init>(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/aj;Ld/ar;)V
    .locals 2

    .prologue
    .line 90
    .line 93
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 90
    invoke-static {p2, p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/ar;Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/ar;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/z;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/w;-><init>(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ld/ar;)V
    .locals 2

    .prologue
    .line 67
    .line 69
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/ar;Lcom/twitter/sdk/android/core/g;)Ld/ar;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/z;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/w;-><init>(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/w;->buildConcurrentMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/w;->services:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/w;->buildRetrofit(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)Lf/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/w;->retrofit:Lf/aw;

    .line 100
    return-void
.end method

.method private buildConcurrentMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method private buildGson()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/a/k;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/k;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/m;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/m;-><init>()V

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/a/c;

    new-instance v2, Lcom/twitter/sdk/android/core/a/d;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/a/d;-><init>()V

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method private buildRetrofit(Ld/ar;Lcom/twitter/sdk/android/core/internal/z;)Lf/aw;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lf/ay;

    invoke-direct {v0}, Lf/ay;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lf/ay;->a(Ld/ar;)Lf/ay;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/internal/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/ay;->a(Ljava/lang/String;)Lf/ay;

    move-result-object v0

    .line 106
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/w;->buildGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {v1}, Lf/a/a/a;->a(Lcom/google/gson/Gson;)Lf/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/ay;->a(Lf/l;)Lf/ay;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lf/ay;->a()Lf/aw;

    move-result-object v0

    .line 103
    return-object v0
.end method


# virtual methods
.method public getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method public getCollectionService()Lcom/twitter/sdk/android/core/services/CollectionService;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/twitter/sdk/android/core/services/CollectionService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/CollectionService;

    return-object v0
.end method

.method public getConfigurationService()Lcom/twitter/sdk/android/core/services/ConfigurationService;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/twitter/sdk/android/core/services/ConfigurationService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/ConfigurationService;

    return-object v0
.end method

.method public getFavoriteService()Lcom/twitter/sdk/android/core/services/FavoriteService;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/twitter/sdk/android/core/services/FavoriteService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/FavoriteService;

    return-object v0
.end method

.method public getListService()Lcom/twitter/sdk/android/core/services/ListService;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lcom/twitter/sdk/android/core/services/ListService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/ListService;

    return-object v0
.end method

.method public getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/twitter/sdk/android/core/services/MediaService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/MediaService;

    return-object v0
.end method

.method public getSearchService()Lcom/twitter/sdk/android/core/services/SearchService;
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/twitter/sdk/android/core/services/SearchService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/SearchService;

    return-object v0
.end method

.method protected getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/core/w;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/twitter/sdk/android/core/w;->services:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/w;->retrofit:Lf/aw;

    invoke-virtual {v1, p1}, Lf/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/w;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/w;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    return-object v0
.end method
