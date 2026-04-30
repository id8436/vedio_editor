.class public Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "W3CPoint.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/geo/impl/W3CPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/geo/impl/W3CPoint;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;->this$0:Lcom/google/gdata/data/geo/impl/W3CPoint;

    .line 176
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 177
    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 186
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;->this$0:Lcom/google/gdata/data/geo/impl/W3CPoint;

    const-class v1, Lcom/google/gdata/data/geo/GeoLat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;->this$0:Lcom/google/gdata/data/geo/impl/W3CPoint;

    const-class v2, Lcom/google/gdata/data/geo/GeoLong;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    .line 188
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "All geo:Point elements must have a latitude coordinate."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    if-nez v1, :cond_2

    .line 195
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "All geo:Point elements must have a longitude coordinate."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    return-void
.end method
