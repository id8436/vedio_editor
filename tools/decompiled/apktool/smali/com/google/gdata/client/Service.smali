.class public Lcom/google/gdata/client/Service;
.super Ljava/lang/Object;
.source "Service.java"


# static fields
.field private static final BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

.field private static final CORE_VERSION:Lcom/google/gdata/util/Version;

.field private static final SERVICE_VERSION:Ljava/lang/String;


# instance fields
.field private altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

.field protected connectTimeout:I

.field private contentType:Lcom/google/gdata/util/ContentType;

.field protected extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field protected final metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

.field private protocolVersion:Lcom/google/gdata/util/Version;

.field readTimeout:I

.field protected requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

.field private strictValidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GData-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/Service;->SERVICE_VERSION:Ljava/lang/String;

    .line 146
    const-class v0, Lcom/google/gdata/client/Service;

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/Service;->CORE_VERSION:Lcom/google/gdata/util/Version;

    .line 555
    new-instance v0, Lcom/google/gdata/wireformats/AltRegistry;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/AltRegistry;-><init>()V

    sput-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    .line 558
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/AtomDualParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/AtomDualParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomDualGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/AtomDualGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 562
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomServiceDualGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/AtomServiceDualGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 566
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomDualGenerator;

    sget-object v4, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    invoke-direct {v3, v4}, Lcom/google/gdata/wireformats/output/AtomDualGenerator;-><init>(Lcom/google/gdata/wireformats/AltFormat;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 571
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltRegistry;->lock()V

    .line 572
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 662
    new-instance v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    invoke-direct {v0}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 799
    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    iput-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    .line 822
    iput v1, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    .line 847
    iput v1, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    .line 871
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    iput-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    .line 522
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/Service;->initProtocolVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    .line 531
    new-instance v0, Lcom/google/gdata/data/Feed;

    invoke-direct {v0}, Lcom/google/gdata/data/Feed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Feed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 535
    new-instance v0, Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0}, Lcom/google/gdata/model/MetadataRegistry;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    .line 536
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/atom/Feed;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 537
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 538
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 539
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/gdata/client/Service;->computeQueryMap(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method private static computeQueryMap(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1

    .prologue
    .line 2188
    invoke-interface {p0}, Lcom/google/gdata/client/Service$GDataRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 2189
    if-nez v0, :cond_0

    .line 2190
    sget-object v0, Lcom/google/gdata/util/common/net/UriParameterMap;->EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 2192
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->parse(Ljava/lang/String;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method private getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1099
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1100
    invoke-interface {p1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V

    .line 1101
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1102
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1105
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1105
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method private getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1133
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1134
    invoke-interface {p1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1135
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1136
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1139
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1138
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1139
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method private static initProtocolVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;)",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 497
    .line 498
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    .line 499
    :goto_0
    const-class v1, Lcom/google/gdata/client/Service;

    if-eq p0, v1, :cond_0

    .line 501
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    :goto_1
    return-object v0

    .line 502
    :catch_0
    move-exception v1

    .line 503
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 509
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    .line 511
    sget-object v0, Lcom/google/gdata/client/Service;->CORE_VERSION:Lcom/google/gdata/util/Version;

    goto :goto_1
.end method

.method protected static initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;",
            "Lcom/google/gdata/util/Version;",
            ")",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->ensureRegistry()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v1

    .line 459
    const/4 v0, 0x0

    .line 462
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 477
    :goto_0
    return-object p1

    .line 463
    :catch_0
    move-exception v2

    .line 466
    :try_start_1
    invoke-static {p0}, Lcom/google/gdata/util/VersionRegistry;->getVersionFromProperty(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 470
    :goto_1
    if-nez v0, :cond_0

    .line 475
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/google/gdata/util/VersionRegistry;->addDefaultVersion(Lcom/google/gdata/util/Version;Z)V

    goto :goto_0

    .line 467
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_2
.end method

.method private parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2126
    const-string/jumbo v0, "resultType"

    invoke-static {v0, p3}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    const/4 v0, 0x0

    .line 2129
    const-string/jumbo v1, "alt"

    invoke-interface {p2, v1}, Lcom/google/gdata/wireformats/input/InputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2130
    if-eqz v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 2133
    :cond_0
    if-nez v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 2135
    if-nez v0, :cond_1

    .line 2136
    new-instance v0, Lcom/google/gdata/util/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized content type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v1, v0}, Lcom/google/gdata/wireformats/AltRegistry;->getParser(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v1

    .line 2141
    if-nez v1, :cond_2

    .line 2142
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No parser for content type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2145
    :cond_2
    invoke-interface {v1}, Lcom/google/gdata/wireformats/input/InputParser;->getResultType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input parser ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") does not produce expected result type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2155
    :cond_3
    const-string/jumbo v0, "fields"

    invoke-interface {p2, v0}, Lcom/google/gdata/wireformats/input/InputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2157
    iget-boolean v2, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_8

    const-class v0, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    const/4 v0, 0x1

    .line 2159
    :goto_0
    if-eqz v0, :cond_5

    .line 2160
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->disableStrictValidation()V

    .line 2165
    :cond_5
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2168
    if-eqz v0, :cond_6

    .line 2169
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    .line 2174
    :cond_6
    instance-of v0, v1, Lcom/google/gdata/data/IAtom;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 2175
    check-cast v0, Lcom/google/gdata/data/IAtom;

    invoke-interface {v0, p0}, Lcom/google/gdata/data/IAtom;->setService(Lcom/google/gdata/client/Service;)V

    .line 2177
    :cond_7
    return-object v1

    .line 2157
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 2168
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_9

    .line 2169
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    :cond_9
    throw v1
.end method


# virtual methods
.method public batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    .locals 3
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
    .line 1450
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1452
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1453
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1454
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1455
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;

    .line 1458
    invoke-interface {v0}, Lcom/google/gdata/data/IFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1459
    invoke-static {v0}, Lcom/google/gdata/model/batch/BatchUtils;->throwIfInterrupted(Lcom/google/gdata/data/IFeed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1464
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1463
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1464
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method protected classOf(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createBatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1502
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->BATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createDeleteRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1779
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->DELETE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1375
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1156
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1483
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createLinkQueryRequest(Lcom/google/gdata/data/ILink;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1819
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Lcom/google/gdata/data/ILink;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createPatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1686
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->PATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    sget-object v1, Lcom/google/gdata/util/ContentType;->APPLICATION_XML:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->getRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 777
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/Service;->setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 778
    return-object v0
.end method

.method public createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/client/Service$GDataRequestFactory;->getRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 762
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/Service;->setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 763
    return-object v0
.end method

.method public createUpdateRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1588
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1713
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public delete(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method public delete(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1701
    return-void
.end method

.method public delete(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1734
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createDeleteRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1736
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1737
    invoke-interface {v1, p2}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1738
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    .line 1742
    return-void

    .line 1740
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method protected endVersionScope()V
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/VersionRegistry;->resetThreadVersion()V

    .line 614
    return-void
.end method

.method public getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1278
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1307
    .line 1308
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1310
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1311
    invoke-interface {v1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V

    .line 1312
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1313
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1317
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1316
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1317
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1347
    .line 1348
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1350
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1351
    invoke-interface {v1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1352
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1353
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1357
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1356
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1357
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    return-object v0
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1034
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1054
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1077
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1017
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 972
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 998
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataRegistry()Lcom/google/gdata/model/MetadataRegistry;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    return-object v0
.end method

.method public getProtocolVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method public getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    return-object v0
.end method

.method public getSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->createSchema()Lcom/google/gdata/model/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/google/gdata/client/Service;->SERVICE_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamFromLink(Lcom/google/gdata/data/ILink;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1796
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createLinkQueryRequest(Lcom/google/gdata/data/ILink;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1798
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1799
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1801
    return-object v0
.end method

.method public getStrictValidation()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    return v0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
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
    .line 1400
    if-nez p2, :cond_0

    .line 1401
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must supply entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1406
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1408
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1409
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1410
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1414
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1413
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1414
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public introspect(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/IServiceDocument;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "alt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v2}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 933
    :cond_0
    if-nez v0, :cond_2

    const/16 v0, 0x3f

    .line 934
    :goto_0
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    .line 937
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 940
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 941
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/introspection/IServiceDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 944
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 933
    :cond_2
    const/16 v0, 0x26

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 944
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2096
    new-instance v0, Lcom/google/gdata/client/Service$ClientInputProperties;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/client/Service$ClientInputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)V

    .line 2098
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->getParseSource()Lcom/google/gdata/data/ParseSource;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/util/ContentType;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2118
    new-instance v0, Lcom/google/gdata/client/Service$ClientInputProperties;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/gdata/client/Service$ClientInputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)V

    .line 2120
    invoke-direct {p0, p1, v0, p3}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
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
    const/4 v0, 0x0

    .line 1616
    .line 1617
    if-eqz p3, :cond_0

    .line 1618
    invoke-interface {p3}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {v1}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1623
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gdata/client/Service;->patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1656
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createPatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1659
    invoke-interface {v1, p4}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1660
    invoke-interface {p3, p2}, Lcom/google/gdata/data/IEntry;->setSelectedFields(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p0, v1, p3}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1662
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1663
    invoke-virtual {p0, p3}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1666
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1665
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1666
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1178
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptLanguage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string/jumbo v1, "Accept-Language"

    invoke-interface {v0, v1, p1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 883
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2

    .prologue
    .line 836
    if-gez p1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    .line 840
    return-void
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    .line 815
    return-void
.end method

.method public setExtensionProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 639
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public setOAuthProxyHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_0
    return-void
.end method

.method public setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public setProtocolVersion(Lcom/google/gdata/util/Version;)V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v0}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid service class, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v2}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    .line 606
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2

    .prologue
    .line 861
    if-gez p1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    .line 865
    return-void
.end method

.method public setRequestFactory(Lcom/google/gdata/client/Service$GDataRequestFactory;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 678
    return-void
.end method

.method public setStrictValidation(Z)V
    .locals 0

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    .line 902
    return-void
.end method

.method public setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    if-ltz v0, :cond_0

    .line 787
    iget v0, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    invoke-interface {p1, v0}, Lcom/google/gdata/client/Service$GDataRequest;->setConnectTimeout(I)V

    .line 789
    :cond_0
    iget v0, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    if-ltz v0, :cond_1

    .line 790
    iget v0, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    invoke-interface {p1, v0}, Lcom/google/gdata/client/Service$GDataRequest;->setReadTimeout(I)V

    .line 792
    :cond_1
    return-void
.end method

.method protected startVersionScope()V
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->setThreadVersion(Lcom/google/gdata/util/Version;)V

    .line 610
    return-void
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
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
    .line 1526
    invoke-interface {p2}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v0

    .line 1527
    invoke-static {v0}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1528
    const/4 v0, 0x0

    .line 1530
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1558
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createUpdateRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1560
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1561
    invoke-interface {v1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1563
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1564
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1567
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1566
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1567
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public useSsl()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    instance-of v0, v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a http transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    check-cast v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    invoke-virtual {v0}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->useSsl()V

    .line 725
    return-void
.end method

.method protected writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 2044
    if-nez v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v1}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 2048
    :cond_0
    if-nez v0, :cond_1

    .line 2049
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v1, v0}, Lcom/google/gdata/wireformats/AltRegistry;->getGenerator(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v2

    .line 2053
    invoke-interface {v2}, Lcom/google/gdata/wireformats/output/OutputGenerator;->getSourceType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2054
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid source type: expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/gdata/wireformats/output/OutputGenerator;->getSourceType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for output format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2065
    :cond_2
    iget-boolean v1, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .line 2067
    :goto_0
    if-eqz v1, :cond_4

    .line 2068
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->disableStrictValidation()V

    .line 2071
    :cond_4
    :try_start_0
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->getRequestStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v2, v0, p2, p3}, Lcom/google/gdata/wireformats/output/OutputGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    if-eqz v1, :cond_5

    .line 2075
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    .line 2079
    :cond_5
    return-void

    .line 2065
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 2074
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 2075
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    :cond_7
    throw v0
.end method

.method public writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2029
    new-instance v0, Lcom/google/gdata/client/Service$ClientOutputProperties;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V

    .line 2030
    return-void
.end method
