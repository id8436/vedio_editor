.class public Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;
.super Ljava/lang/Object;
.source "AtompubVersionTransforms.java"


# static fields
.field private static final V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0}, Lcom/google/gdata/model/MetadataContext;->forVersion(Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAtompubTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataRegistry;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/model/QName;

    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomPubDraftNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 79
    return-void
.end method

.method private static varargs addAtompubTransforms(Lcom/google/gdata/model/MetadataRegistry;[Lcom/google/gdata/model/ElementKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataRegistry;",
            "[",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 70
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 71
    invoke-static {p0, v2}, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->addAtompubTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public static addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/model/atompub/Categories;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/model/atompub/Edited;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/model/atompub/ServiceDocument;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->addAtompubTransforms(Lcom/google/gdata/model/MetadataRegistry;[Lcom/google/gdata/model/ElementKey;)V

    .line 57
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atompub/Workspace;->TITLE:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 59
    sget-object v0, Lcom/google/gdata/model/atompub/Workspace;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 62
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 64
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 66
    return-void
.end method
