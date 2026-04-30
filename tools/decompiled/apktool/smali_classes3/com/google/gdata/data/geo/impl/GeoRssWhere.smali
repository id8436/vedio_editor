.class public Lcom/google/gdata/data/geo/impl/GeoRssWhere;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GeoRssWhere.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Box;
.implements Lcom/google/gdata/data/geo/Point;


# static fields
.field static final NAME:Ljava/lang/String; = "where"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Box;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 93
    if-eqz p1, :cond_1

    .line 94
    instance-of v0, p1, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>(Lcom/google/gdata/data/geo/Box;)V

    move-object p1, v0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 99
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 61
    if-eqz p1, :cond_1

    .line 62
    instance-of v0, p1, Lcom/google/gdata/data/geo/impl/GmlPoint;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>(Lcom/google/gdata/data/geo/Point;)V

    move-object p1, v0

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 67
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Box;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Box;)V

    .line 77
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 106
    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 107
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 108
    const-string/jumbo v1, "where"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public clearBox()V
    .locals 1

    .prologue
    .line 236
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->removeExtension(Ljava/lang/Class;)V

    .line 237
    return-void
.end method

.method public clearPoint()V
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->removeExtension(Ljava/lang/Class;)V

    .line 230
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 130
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 132
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 134
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 136
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 137
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 247
    sget-object v2, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "where"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 251
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "where"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    .line 144
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLowerLeft()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    move-result-object v0

    return-object v0
.end method

.method public getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;
    .locals 1

    .prologue
    .line 178
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getUpperRight()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    move-result-object v0

    return-object v0
.end method

.method public getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;
    .locals 1

    .prologue
    .line 186
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    .line 187
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBox()Z
    .locals 1

    .prologue
    .line 222
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoint()Z
    .locals 1

    .prologue
    .line 215
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1

    .prologue
    .line 201
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 205
    :cond_2
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>()V

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 207
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    goto :goto_0
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPoint;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 168
    :cond_2
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPoint;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0
.end method
