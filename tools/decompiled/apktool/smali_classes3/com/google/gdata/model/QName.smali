.class public final Lcom/google/gdata/model/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/gdata/model/QName;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY_LOCALNAME:Ljava/lang/String; = "*"

.field public static final ANY_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;


# instance fields
.field private final localName:Ljava/lang/String;

.field private final namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/QName;->ANY_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, "localName"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/google/gdata/model/QName;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 48
    iput-object p2, p0, Lcom/google/gdata/model/QName;->localName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/gdata/model/QName;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 141
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-nez v1, :cond_2

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 150
    if-eqz v1, :cond_3

    .line 151
    sget-object v2, Lcom/google/gdata/model/QName;->ANY_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 159
    if-eqz v1, :cond_4

    const-string/jumbo v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/google/gdata/model/QName;

    invoke-virtual {p0, p1}, Lcom/google/gdata/model/QName;->compareTo(Lcom/google/gdata/model/QName;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    instance-of v1, p1, Lcom/google/gdata/model/QName;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    check-cast p1, Lcom/google/gdata/model/QName;

    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-nez v1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/model/QName;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gdata/model/QName;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public matches(Lcom/google/gdata/model/QName;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->matchesAnyNamespace()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    .line 87
    iget-object v2, p0, Lcom/google/gdata/model/QName;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-nez v2, :cond_3

    move-object v2, v1

    .line 88
    :goto_1
    if-nez v3, :cond_4

    .line 91
    :goto_2
    if-nez v2, :cond_5

    .line 92
    if-nez v1, :cond_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->matchesAnyLocalName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/model/QName;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/model/QName;->localName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public matchesAnyLocalName()Z
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "*"

    iget-object v1, p0, Lcom/google/gdata/model/QName;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesAnyNamespace()Z
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/model/QName;->ANY_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v1, p0, Lcom/google/gdata/model/QName;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
