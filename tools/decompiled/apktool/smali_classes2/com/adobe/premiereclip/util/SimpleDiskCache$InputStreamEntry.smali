.class public Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# instance fields
.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshot:Lcom/f/a/g;


# direct methods
.method public constructor <init>(Lcom/f/a/g;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/f/a/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;->metadata:Ljava/util/Map;

    .line 318
    iput-object p1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;->snapshot:Lcom/f/a/g;

    .line 319
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;->snapshot:Lcom/f/a/g;

    invoke-virtual {v0}, Lcom/f/a/g;->close()V

    .line 332
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;->snapshot:Lcom/f/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/f/a/g;->a(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$InputStreamEntry;->metadata:Ljava/util/Map;

    return-object v0
.end method
