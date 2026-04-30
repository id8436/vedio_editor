.class public Lcom/google/gdata/data/geo/GeoLat;
.super Lcom/google/gdata/data/ValueConstruct;
.source "GeoLat.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "lat"
    nsAlias = "geo"
    nsUri = "http://www.w3.org/2003/01/geo/wgs84_pos#"
.end annotation


# static fields
.field public static final COORDINATE_PRECISION:I = 0x6

.field public static final MAX_LAT:D = 90.0

.field public static final MIN_LAT:D = -90.0

.field private static final NUM_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private lat:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/geo/GeoLat;->NUM_FORMAT:Ljava/text/NumberFormat;

    .line 61
    sget-object v0, Lcom/google/gdata/data/geo/GeoLat;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 62
    sget-object v0, Lcom/google/gdata/data/geo/GeoLat;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/GeoLat;-><init>(Ljava/lang/Double;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "lat"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v2, p0, Lcom/google/gdata/data/geo/GeoLat;->lat:Ljava/lang/Double;

    .line 84
    invoke-virtual {p0, v3}, Lcom/google/gdata/data/geo/GeoLat;->setRequired(Z)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/GeoLat;->setLatitude(Ljava/lang/Double;)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/google/gdata/data/geo/GeoLat;->setImmutable(Z)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/data/geo/GeoLat;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/gdata/data/geo/GeoLat;->lat:Ljava/lang/Double;

    .line 109
    const/4 v0, 0x0

    .line 111
    if-eqz p1, :cond_2

    .line 112
    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Latitude must be between -90 and 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    sget-object v0, Lcom/google/gdata/data/geo/GeoLat;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_2
    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/GeoLat;->setLatitude(Ljava/lang/Double;)V

    .line 144
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'value\' must be a double."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
