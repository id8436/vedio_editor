.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;
.super Ljava/lang/Object;
.source "ACEventBus.java"


# static fields
.field private static defaultInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;


# instance fields
.field private _eventBus:Lb/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0}, Lb/a/a/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;-><init>(Lb/a/a/c;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lb/a/a/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    .line 26
    return-void
.end method

.method public static getDefault()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->defaultInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->defaultInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    invoke-static {}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;-><init>(Lb/a/a/c;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->defaultInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->defaultInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/c;->d(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/c;->c(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/c;->a(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    invoke-virtual {v0, p1, p2}, Lb/a/a/c;->a(Ljava/lang/Object;I)V

    .line 38
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->_eventBus:Lb/a/a/c;

    invoke-virtual {v0, p1}, Lb/a/a/c;->b(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
