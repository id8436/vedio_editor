.class Lcom/k/a/bp;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method static a(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
