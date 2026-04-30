.class public Lcom/google/gdata/model/gd/AttendeeStatus;
.super Lcom/google/gdata/model/Element;
.source "AttendeeStatus.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/AttendeeStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE:Lcom/google/gdata/model/AttributeKey;
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
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "attendeeStatus"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/AttendeeStatus;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 75
    new-instance v0, Lcom/google/gdata/model/QName;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->VALUE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/AttendeeStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/AttendeeStatus;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 120
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/google/gdata/model/gd/AttendeeStatus;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 158
    if-ne p0, p1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/AttendeeStatus;->sameClassAs(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_1
    check-cast p1, Lcom/google/gdata/model/gd/AttendeeStatus;

    .line 165
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/AttendeeStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/model/gd/AttendeeStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/model/gd/AttendeeStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/AttendeeStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/AttendeeStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_0
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/AttendeeStatus;->lock()Lcom/google/gdata/model/gd/AttendeeStatus;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/AttendeeStatus;
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/AttendeeStatus;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/gdata/model/gd/AttendeeStatus;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus;->VALUE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 144
    return-object p0
.end method
