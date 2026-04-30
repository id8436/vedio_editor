.class public abstract Lcom/adobe/premiereclip/looks/BaseLook;
.super Ljava/lang/Object;
.source "BaseLook.java"


# instance fields
.field private id:Ljava/lang/String;

.field private mHeight:I

.field private mWidth:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/BaseLook;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/adobe/premiereclip/looks/BaseLook;->name:Ljava/lang/String;

    .line 45
    const/16 v0, 0x10

    .line 47
    iput v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    .line 48
    const/16 v0, 0x100

    iput v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mHeight:I

    .line 49
    return-void
.end method


# virtual methods
.method public abstract drawThumbnail(Landroid/content/Context;Landroid/widget/ImageView;)V
.end method

.method public abstract getCubeData(Landroid/content/Context;)Ljava/io/InputStream;
.end method

.method public getLookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLookName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/high16 v14, 0x43800000    # 256.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    const/4 v3, 0x0

    .line 72
    iget v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mHeight:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [B

    .line 73
    iget v0, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 77
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/adobe/premiereclip/looks/BaseLook;->getCubeData(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    :try_start_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move v7, v1

    .line 82
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 83
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 85
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 86
    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 87
    float-to-double v10, v2

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 88
    float-to-double v10, v1

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 89
    float-to-double v10, v6

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 90
    cmpg-float v6, v5, v3

    if-gez v6, :cond_0

    move v6, v3

    .line 95
    :goto_1
    cmpg-float v5, v2, v3

    if-gez v5, :cond_1

    move v5, v3

    .line 100
    :goto_2
    cmpg-float v2, v1, v3

    if-gez v2, :cond_2

    move v2, v3

    .line 105
    :goto_3
    iget v1, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mHeight:I

    div-int v1, v7, v1

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    .line 107
    rem-int/lit8 v10, v1, 0x2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 108
    iget v10, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mHeight:I

    mul-int/2addr v1, v10

    .line 109
    sub-int v10, v7, v1

    iget v11, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    div-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 110
    iget v11, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    add-int/lit8 v11, v11, -0x1

    sub-int v10, v11, v10

    .line 111
    iget v11, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    mul-int/2addr v10, v11

    .line 112
    add-int/2addr v1, v10

    iget v10, p0, Lcom/adobe/premiereclip/looks/BaseLook;->mWidth:I

    rem-int v10, v7, v10

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x4

    .line 117
    :goto_4
    float-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v8, v1

    .line 118
    add-int/lit8 v6, v1, 0x1

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    .line 119
    add-int/lit8 v2, v1, 0x2

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v2

    .line 120
    add-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    aput-byte v2, v8, v1

    .line 121
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    .line 122
    goto/16 :goto_0

    .line 92
    :cond_0
    cmpl-float v6, v5, v14

    if-ltz v6, :cond_8

    move v6, v4

    .line 93
    goto :goto_1

    .line 97
    :cond_1
    cmpl-float v5, v2, v14

    if-ltz v5, :cond_7

    move v5, v4

    .line 98
    goto :goto_2

    .line 102
    :cond_2
    cmpl-float v2, v1, v14

    if-ltz v2, :cond_6

    move v2, v4

    .line 103
    goto :goto_3

    .line 114
    :cond_3
    mul-int/lit8 v1, v7, 0x4

    goto :goto_4

    .line 123
    :cond_4
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_5
    :goto_5
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    move v5, v2

    goto :goto_2

    :cond_8
    move v6, v5

    goto :goto_1
.end method

.method public setLookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/BaseLook;->id:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLookName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/BaseLook;->name:Ljava/lang/String;

    .line 69
    return-void
.end method
