.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;
.super Ljava/lang/Object;
.source "AdobeRequestParameters.java"


# instance fields
.field private final PAGE_KEY:Ljava/lang/String;

.field private final SIZE_KEY:Ljava/lang/String;

.field private final VERSION_KEY:Ljava/lang/String;

.field private acceptType:Ljava/lang/String;

.field private page:I

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

.field private size:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "page"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->PAGE_KEY:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "size"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->SIZE_KEY:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->VERSION_KEY:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->paramMap:Ljava/util/Map;

    .line 29
    return-void
.end method

.method private insertParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method


# virtual methods
.method public constructParameterString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string/jumbo v0, ""

    .line 75
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 77
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

    .line 78
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

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method

.method public getAcceptType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->acceptType:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->page:I

    return v0
.end method

.method public getParamaterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->size:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->acceptType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPage(I)V
    .locals 2

    .prologue
    .line 36
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->page:I

    .line 37
    const-string/jumbo v0, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->insertParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 45
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->size:I

    .line 46
    if-lez p1, :cond_0

    .line 47
    const-string/jumbo v0, "size"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->insertParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->version:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "version"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->insertParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
