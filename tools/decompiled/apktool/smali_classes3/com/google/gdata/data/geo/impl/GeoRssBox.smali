.class public Lcom/google/gdata/data/geo/impl/GeoRssBox;
.super Lcom/google/gdata/data/ValueConstruct;
.source "GeoRssBox.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Box;


# static fields
.field static final NAME:Ljava/lang/String; = "box"


# instance fields
.field private lowerLeft:Lcom/google/gdata/data/geo/Point;

.field private upperRight:Lcom/google/gdata/data/geo/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Box;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 75
    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getLowerLeft()Lcom/google/gdata/data/geo/Point;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getUpperRight()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "box"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->setRequired(Z)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssPoint;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    new-instance v1, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-direct {v1, p3, p4}, Lcom/google/gdata/data/geo/impl/GeoRssPoint;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/geo/impl/GeoRssBox;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 52
    return-void
.end method

.method private createInvalidValueException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Format of a georss:box is \"latitude longitude latitude longitutde\", where the first pair is the lower left point, and the second pair is the upper right point.  All values must be doubles, separated by spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 83
    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 84
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 85
    const-string/jumbo v1, "box"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 87
    return-object v0
.end method

.method private getPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/geo/Point;
    .locals 3

    .prologue
    .line 172
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 173
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-direct {v2, v0, v1}, Lcom/google/gdata/data/geo/impl/GeoRssPoint;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-direct {p0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->createInvalidValueException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getLowerLeft()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->lowerLeft:Lcom/google/gdata/data/geo/Point;

    return-object v0
.end method

.method public getUpperRight()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->upperRight:Lcom/google/gdata/data/geo/Point;

    return-object v0
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 4

    .prologue
    .line 115
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 116
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p2}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'lowerLeft\' must be below \'upperRight\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'lowerLeft\' and \'upperRight\' must either both be null or non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    iput-object p1, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->lowerLeft:Lcom/google/gdata/data/geo/Point;

    .line 126
    iput-object p2, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->upperRight:Lcom/google/gdata/data/geo/Point;

    .line 128
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    .line 153
    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->createInvalidValueException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 159
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->getPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/geo/Point;

    move-result-object v1

    .line 160
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->getPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    .line 164
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 165
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->lowerLeft:Lcom/google/gdata/data/geo/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->upperRight:Lcom/google/gdata/data/geo/Point;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->lowerLeft:Lcom/google/gdata/data/geo/Point;

    invoke-interface {v1}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->lowerLeft:Lcom/google/gdata/data/geo/Point;

    invoke-interface {v1}, Lcom/google/gdata/data/geo/Point;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->upperRight:Lcom/google/gdata/data/geo/Point;

    invoke-interface {v1}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/GeoRssBox;->upperRight:Lcom/google/gdata/data/geo/Point;

    invoke-interface {v1}, Lcom/google/gdata/data/geo/Point;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
