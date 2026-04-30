.class public Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

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


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    .line 342
    iput-object p2, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;->metadata:Ljava/util/Map;

    .line 343
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

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
    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;->metadata:Ljava/util/Map;

    return-object v0
.end method
