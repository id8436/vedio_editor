.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal;
.source "AdobeDCXPushJournal.java"


# static fields
.field private static final AdobeDCXPushJournalComponentsUploadedKey:Ljava/lang/String; = "uploaded-components"

.field private static final AdobeDCXPushJournalCompositeArchivedKey:Ljava/lang/String; = "composite-archived"

.field private static final AdobeDCXPushJournalCompositeCreatedKey:Ljava/lang/String; = "composite-created"

.field private static final AdobeDCXPushJournalCompositeDeletedKey:Ljava/lang/String; = "composite-deleted"

.field private static final AdobeDCXPushJournalCompositeHrefKey:Ljava/lang/String; = "composite-href"

.field private static final AdobeDCXPushJournalCurrentBranchEtagKey:Ljava/lang/String; = "current-branch-etag"

.field private static final AdobeDCXPushJournalCurrentBranchVersionKey:Ljava/lang/String; = "current-branch-version"

.field private static final AdobeDCXPushJournalDeletedComponentsKey:Ljava/lang/String; = "deleted-components"

.field private static final AdobeDCXPushJournalDestHrefKey:Ljava/lang/String; = "href"

.field private static final AdobeDCXPushJournalEtagKey:Ljava/lang/String; = "etag"

.field private static final AdobeDCXPushJournalFormatVersionKey:Ljava/lang/String; = "push-journal-format-version"

.field private static final AdobeDCXPushJournalHrefKey:Ljava/lang/String; = "href"

.field private static final AdobeDCXPushJournalImmutablePathsToHrefsKey:Ljava/lang/String; = "immutable-path-to-href-lookup"

.field private static final AdobeDCXPushJournalLengthKey:Ljava/lang/String; = "length"

.field private static final AdobeDCXPushJournalMd5Key:Ljava/lang/String; = "md5"

.field private static final AdobeDCXPushJournalPendingDeletedComponentsKey:Ljava/lang/String; = "pending-delete-components"

.field private static final AdobeDCXPushJournalPushCompletedKey:Ljava/lang/String; = "push-completed"

.field private static final AdobeDCXPushJournalSrcHrefKey:Ljava/lang/String; = "srcHref"

.field private static final AdobeDCXPushJournalVersionKey:Ljava/lang/String; = "version"


# instance fields
.field private _deletedComponents:Lorg/json/JSONObject;

.field private _pathToHrefLookup:Lorg/json/JSONObject;

.field private _pendingDeleteComponents:Lorg/json/JSONArray;

.field private _uploadedComponents:Lorg/json/JSONObject;

.field private _weakComposite:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 598
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal$1;

    invoke-direct {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal$AdobeDCXJournalVerifier;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal$AdobeDCXJournalCreator;)V

    .line 659
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_weakComposite:Ljava/lang/ref/WeakReference;

    .line 660
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "uploaded-components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    .line 661
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "deleted-components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    .line 662
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "pending-delete-components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    .line 663
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "immutable-path-to-href-lookup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pathToHrefLookup:Lorg/json/JSONObject;

    .line 665
    return-void

    .line 598
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal$2;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0
.end method

.method static journalForCompositeFromFile(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static journalForCompositePersistedAt(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private updateDictionary()V
    .locals 3

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "pending-delete-components"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "deleted-components"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "uploaded-components"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.updateDictionary"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method clearComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 346
    monitor-enter p0

    .line 347
    const/4 v0, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move v0, v1

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->find(Ljava/lang/Object;Lorg/json/JSONArray;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 353
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move v0, v1

    .line 361
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move v0, v1

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 371
    :cond_3
    if-eqz v0, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 374
    :cond_4
    monitor-exit p0

    .line 375
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method clearPushCompleted()Z
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "push-completed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "push-completed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_weakComposite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 714
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPushedManifest()V

    .line 715
    const/4 v0, 0x1

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method componentHasBeenDeleted(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z
    .locals 2

    .prologue
    .line 391
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 395
    :goto_0
    monitor-exit p0

    .line 397
    return v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public componentIsPendingDeletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Z
    .locals 2

    .prologue
    .line 468
    .line 470
    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->find(Ljava/lang/Object;Lorg/json/JSONArray;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 474
    :goto_0
    monitor-exit p0

    .line 476
    return v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyPropertiesFrom(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V
    .locals 2

    .prologue
    .line 580
    const-string/jumbo v0, "etag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setEtag(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v0, "length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setLength(J)V

    .line 582
    const-string/jumbo v0, "md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setMd5(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setVersion(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method deletedComponentIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 407
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_0
    return-object v1
.end method

.method getComponentIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 557
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 563
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 569
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 570
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_2

    .line 572
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 576
    :cond_3
    return-object v1
.end method

.method public getCompositeHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBranchEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-etag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBranchVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHrefForUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 275
    :goto_0
    return-object v0

    .line 273
    :cond_0
    monitor-exit p0

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSourceHrefForUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    const-string/jumbo v1, "srcHref"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 287
    :goto_0
    return-object v0

    .line 285
    :cond_0
    monitor-exit p0

    .line 287
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->copyPropertiesFrom(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    .line 262
    :cond_0
    monitor-exit p0

    .line 264
    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasManifestEtag()Z
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "etag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasManifestVersion()Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hrefForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pathToHrefLookup:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pathToHrefLookup:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isComplete()Z
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "push-completed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->hasManifestEtag()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isCompositeHasBeenDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isCompositeHasBeenArchived()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompositeHasBeenArchived()Z
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-archived"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompositeHasBeenCreated()Z
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-created"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompositeHasBeenDeleted()Z
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-deleted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "deleted-components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "uploaded-components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pathOfDeletedComponentWithId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method recordCompositeHasBeenArchived(Z)V
    .locals 3

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    if-nez p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-archived"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 533
    :cond_0
    return-void

    .line 526
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-archived"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordCompositeHasBeenArchived"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method recordCompositeHasBeenCreated(Z)V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    if-nez p1, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-created"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 550
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 552
    :cond_0
    return-void

    .line 545
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-created"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordCompositeHasBeenCreated"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method recordCompositeHasBeenDeleted(Z)V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    if-nez p1, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-deleted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 518
    :cond_0
    return-void

    .line 511
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-deleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordCompositeHasBeenDeleted"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordCurrentBranchEtag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 676
    if-eqz p1, :cond_2

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-etag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->hasManifestEtag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "etag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    .line 692
    :cond_0
    :goto_1
    if-eqz p2, :cond_3

    .line 694
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 698
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->hasManifestVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 700
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    .line 706
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 707
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-etag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 695
    :catch_1
    move-exception v0

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 703
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "current-branch-version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3
.end method

.method recordDeletionOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 3

    .prologue
    .line 310
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->find(Ljava/lang/Object;Lorg/json/JSONArray;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 322
    if-ltz v0, :cond_0

    .line 325
    :try_start_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    .line 331
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordDeletionOfComponent"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method recordPendingDeletionOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 2

    .prologue
    .line 437
    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 444
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    .line 448
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 450
    monitor-exit p0

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method recordUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->recordUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method recordUploadedComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 188
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "etag"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 193
    const-string/jumbo v0, "length"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    const-string/jumbo v0, "md5"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    const-string/jumbo v0, "version"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_3
    if-eqz p4, :cond_4

    .line 199
    const-string/jumbo v0, "href"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_4
    if-eqz p3, :cond_5

    .line 201
    const-string/jumbo v0, "srcHref"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_5
    :goto_0
    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_uploadedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pathToHrefLookup:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 217
    :try_start_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pathToHrefLookup:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :cond_6
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_deletedComponents:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->find(Ljava/lang/Object;Lorg/json/JSONArray;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .line 226
    if-ltz v0, :cond_7

    .line 229
    :try_start_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->_pendingDeleteComponents:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    :cond_7
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->clearPushCompleted()Z

    .line 236
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 238
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXPushJournal.recordUploadedComponent"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    :try_start_7
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordUploadedComponent"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 230
    :catch_3
    move-exception v0

    .line 231
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method recordUploadedManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "etag"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-href"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "push-completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.recordUploadedManifest"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCompositeHref(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    if-nez p1, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->writeToFile()Z

    .line 498
    :cond_0
    return-void

    .line 490
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "composite-href"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPushJournal.setCompositeHref"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateManifestWithJournalEtagAndVersion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Z
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->hasManifestEtag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "etag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setEtag(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->hasManifestVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPushJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setVersion(Ljava/lang/String;)V

    .line 166
    :cond_1
    return v0
.end method
