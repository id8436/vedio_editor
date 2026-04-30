.class public Lcom/adobe/sync/CompositeRetrySyncManager;
.super Ljava/lang/Object;
.source "CompositeRetrySyncManager.java"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static instance:Lcom/adobe/sync/CompositeRetrySyncManager;


# instance fields
.field private retryCompositeSyncCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/sync/CompositeRetrySyncManager;->instance:Lcom/adobe/sync/CompositeRetrySyncManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/adobe/sync/CompositeRetrySyncManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/sync/CompositeRetrySyncManager;->instance:Lcom/adobe/sync/CompositeRetrySyncManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/adobe/sync/CompositeRetrySyncManager;

    invoke-direct {v0}, Lcom/adobe/sync/CompositeRetrySyncManager;-><init>()V

    sput-object v0, Lcom/adobe/sync/CompositeRetrySyncManager;->instance:Lcom/adobe/sync/CompositeRetrySyncManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/adobe/sync/CompositeRetrySyncManager;->instance:Lcom/adobe/sync/CompositeRetrySyncManager;

    return-object v0
.end method


# virtual methods
.method public canRetryCompositeSync(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 29
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 30
    iget-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public resetRetryCountAllCompositesSync()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public resetRetryCountCompositeSync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/sync/CompositeRetrySyncManager;->retryCompositeSyncCount:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
