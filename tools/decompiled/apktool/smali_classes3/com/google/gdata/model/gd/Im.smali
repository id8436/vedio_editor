.class public Lcom/google/gdata/model/gd/Im;
.super Lcom/google/gdata/model/Element;
.source "Im.java"


# static fields
.field public static final ADDRESS:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/Im;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "im"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Im;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 120
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "address"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->ADDRESS:Lcom/google/gdata/model/AttributeKey;

    .line 126
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "label"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->LABEL:Lcom/google/gdata/model/AttributeKey;

    .line 132
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "primary"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    .line 138
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "protocol"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->PROTOCOL:Lcom/google/gdata/model/AttributeKey;

    .line 144
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "rel"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Im;->REL:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/google/gdata/model/gd/Im;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 171
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Im;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 178
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Im;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 192
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/google/gdata/model/gd/Im;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/google/gdata/model/gd/Im;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/google/gdata/model/gd/Im;->ADDRESS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 160
    sget-object v1, Lcom/google/gdata/model/gd/Im;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 161
    sget-object v1, Lcom/google/gdata/model/gd/Im;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 162
    sget-object v1, Lcom/google/gdata/model/gd/Im;->PROTOCOL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 163
    sget-object v1, Lcom/google/gdata/model/gd/Im;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    if-ne p0, p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/Im;->sameClassAs(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_2
    check-cast p1, Lcom/google/gdata/model/gd/Im;

    .line 356
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/Im;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/model/gd/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/Im;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/model/gd/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getPrimary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/Im;->getPrimary()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/model/gd/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/Im;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/model/gd/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/Im;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/model/gd/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/google/gdata/model/gd/Im;->ADDRESS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/google/gdata/model/gd/Im;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PROTOCOL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/google/gdata/model/gd/Im;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/google/gdata/model/gd/Im;->ADDRESS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/google/gdata/model/gd/Im;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasProtocol()Z
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PROTOCOL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/google/gdata/model/gd/Im;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 366
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 370
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 373
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getPrimary()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 376
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getRel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 379
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->getRel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_4
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Im;->lock()Lcom/google/gdata/model/gd/Im;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Im;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/google/gdata/model/gd/Im;->ADDRESS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 216
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/gdata/model/gd/Im;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 245
    return-object p0
.end method

.method public setPrimary(Ljava/lang/Boolean;)Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 275
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/google/gdata/model/gd/Im;->PROTOCOL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 306
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/google/gdata/model/gd/Im;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/google/gdata/model/gd/Im;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 335
    return-object p0
.end method
