.class public Lcom/google/gdata/model/batch/BatchId;
.super Lcom/google/gdata/model/Element;
.source "BatchId.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/batch/BatchId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/batch/BatchId;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/gdata/model/batch/BatchId;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchId;->setId(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchId;

    .line 76
    return-void
.end method

.method public static getIdFrom(Lcom/google/gdata/model/Element;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/batch/BatchId;

    .line 58
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchId;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 108
    if-ne p0, p1, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchId;->sameClassAs(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    check-cast p1, Lcom/google/gdata/model/batch/BatchId;

    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/model/batch/BatchId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/model/batch/BatchId;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchId;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_0
    return v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchId;
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 94
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{BatchId id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchId;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
