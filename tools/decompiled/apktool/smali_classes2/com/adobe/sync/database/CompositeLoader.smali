.class public Lcom/adobe/sync/database/CompositeLoader;
.super Ljava/lang/Object;
.source "CompositeLoader.java"


# static fields
.field private static instance:Lcom/adobe/sync/database/CompositeLoader;

.field private static isInitialized:Z


# instance fields
.field private compositeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;"
        }
    .end annotation
.end field

.field private mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field private mDeletedProjectDirectory:Ljava/lang/String;

.field private mPulledProjectDirectory:Ljava/lang/String;

.field private mRootDirectory:Ljava/lang/String;

.field private mSyncGroupName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/sync/database/CompositeLoader;->instance:Lcom/adobe/sync/database/CompositeLoader;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/sync/database/CompositeLoader;->isInitialized:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/adobe/sync/database/CompositeLoader;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/sync/database/CompositeLoader;->instance:Lcom/adobe/sync/database/CompositeLoader;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/adobe/sync/database/CompositeLoader;

    invoke-direct {v0}, Lcom/adobe/sync/database/CompositeLoader;-><init>()V

    sput-object v0, Lcom/adobe/sync/database/CompositeLoader;->instance:Lcom/adobe/sync/database/CompositeLoader;

    .line 29
    :cond_0
    sget-object v0, Lcom/adobe/sync/database/CompositeLoader;->instance:Lcom/adobe/sync/database/CompositeLoader;

    return-object v0
.end method

.method private getProjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->mRootDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/sync/database/CompositeLoader;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 1

    .prologue
    .line 37
    iput-object p5, p0, Lcom/adobe/sync/database/CompositeLoader;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    .line 38
    iput-object p1, p0, Lcom/adobe/sync/database/CompositeLoader;->mRootDirectory:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/adobe/sync/database/CompositeLoader;->mPulledProjectDirectory:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/adobe/sync/database/CompositeLoader;->mDeletedProjectDirectory:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/adobe/sync/database/CompositeLoader;->mSyncGroupName:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->compositeCache:Ljava/util/HashMap;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/sync/database/CompositeLoader;->isInitialized:Z

    .line 44
    return-void
.end method

.method public loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 56
    sget-boolean v1, Lcom/adobe/sync/database/CompositeLoader;->isInitialized:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    if-nez p2, :cond_2

    .line 62
    invoke-direct {p0, p1}, Lcom/adobe/sync/database/CompositeLoader;->getProjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    :cond_2
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->compositeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 71
    if-nez v0, :cond_0

    .line 74
    if-eqz p3, :cond_6

    .line 77
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {v1, p1, p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/adobe/sync/database/CompositeLoader;->mPulledProjectDirectory:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/adobe/sync/database/CompositeLoader;->mDeletedProjectDirectory:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 99
    iget-object v1, p0, Lcom/adobe/sync/database/CompositeLoader;->compositeCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-nez p3, :cond_4

    .line 102
    :try_start_1
    const-string/jumbo v1, "preferences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "assets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "adobe-premiereclip-preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 109
    :cond_4
    :goto_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/adobe/sync/database/CompositeLoader;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 85
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 90
    :try_start_3
    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 94
    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 93
    :goto_4
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    .line 106
    :cond_7
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "assets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "adobe-premiereclip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p3

    goto :goto_2

    .line 111
    :catch_2
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 92
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public removeFromCompositeCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/adobe/sync/database/CompositeLoader;->isInitialized:Z

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->compositeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/adobe/sync/database/CompositeLoader;->compositeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
