.class public Lcom/google/api/gbase/client/GoogleBaseService;
.super Lcom/google/gdata/client/media/MediaService;
.source "GoogleBaseService.java"


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final GOOGLE_BASE_SERVICE:Ljava/lang/String; = "gbase"

.field public static final GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;


# instance fields
.field protected application:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GBase-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/api/gbase/client/GoogleBaseService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseService;->GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;

    .line 89
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseService;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const-string/jumbo v0, "gbase"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->addExtensions()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseService;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "gbase"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->addExtensions()V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1, p3, p4}, Lcom/google/api/gbase/client/GoogleBaseService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V
    .locals 3

    .prologue
    .line 429
    instance-of v0, p1, Lcom/google/gdata/data/BaseEntry;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected entry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    check-cast p1, Lcom/google/gdata/data/BaseEntry;

    .line 435
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    .line 436
    if-nez v0, :cond_1

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->setApplication(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addApplicationAttribute(Lcom/google/gdata/data/IFeed;)V
    .locals 5

    .prologue
    .line 450
    instance-of v0, p1, Lcom/google/gdata/data/BaseFeed;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected feed type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    check-cast p1, Lcom/google/gdata/data/BaseFeed;

    .line 454
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    .line 455
    if-nez v0, :cond_5

    .line 456
    sget-object v0, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    move-object v1, v0

    .line 458
    :goto_0
    invoke-virtual {p1}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 460
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v2

    .line 461
    if-nez v2, :cond_2

    move-object v2, v1

    .line 464
    :cond_2
    sget-object v4, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/google/gdata/data/batch/BatchOperationType;->UPDATE:Lcom/google/gdata/data/batch/BatchOperationType;

    if-ne v2, v4, :cond_1

    .line 466
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    goto :goto_1

    .line 469
    :cond_4
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private addExtensions()V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareAllExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 478
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 479
    return-void
.end method


# virtual methods
.method public batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "TF;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/client/batch/BatchInterruptedException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IFeed;)V

    .line 418
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 300
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 279
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 208
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 190
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public getMediaEntry(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseMediaEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 323
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    return-object v0
.end method

.method public getMediaEntry(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseMediaEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 348
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    return-object v0
.end method

.method public getMediaFeed(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseMediaFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 226
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    return-object v0
.end method

.method public getMediaFeed(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseMediaFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 251
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseService;->GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/media/MediaService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    .line 411
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 397
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    .line 404
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method
