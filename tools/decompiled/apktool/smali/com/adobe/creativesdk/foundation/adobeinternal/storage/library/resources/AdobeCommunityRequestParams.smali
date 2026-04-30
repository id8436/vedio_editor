.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;
.super Ljava/lang/Object;
.source "AdobeCommunityRequestParams.java"


# static fields
.field private static final PATH_KEY:Ljava/lang/String; = "path"


# instance fields
.field private final VERSION_KEY:Ljava/lang/String;

.field private paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->VERSION_KEY:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->paramMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method private insertParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public constructParameterString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string/jumbo v0, ""

    .line 53
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method

.method public getParamaterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->path:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "path"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->insertParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->version:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "version"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/resources/AdobeCommunityRequestParams;->insertParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
