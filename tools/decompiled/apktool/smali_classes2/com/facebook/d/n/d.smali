.class public Lcom/facebook/d/n/d;
.super Ljava/lang/Object;
.source "WebpSupportStatus.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static d:Lcom/facebook/d/n/b;

.field public static e:Z

.field private static f:Z

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/facebook/d/n/d;->a:Z

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/facebook/d/n/d;->b:Z

    .line 25
    invoke-static {}, Lcom/facebook/d/n/d;->b()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/d/n/d;->c:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/d/n/d;->d:Lcom/facebook/d/n/b;

    .line 29
    sput-boolean v2, Lcom/facebook/d/n/d;->e:Z

    .line 31
    sput-boolean v2, Lcom/facebook/d/n/d;->f:Z

    .line 85
    const-string/jumbo v0, "RIFF"

    invoke-static {v0}, Lcom/facebook/d/n/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/d/n/d;->g:[B

    .line 86
    const-string/jumbo v0, "WEBP"

    invoke-static {v0}, Lcom/facebook/d/n/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/d/n/d;->h:[B

    .line 91
    const-string/jumbo v0, "VP8 "

    invoke-static {v0}, Lcom/facebook/d/n/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/d/n/d;->i:[B

    .line 92
    const-string/jumbo v0, "VP8L"

    invoke-static {v0}, Lcom/facebook/d/n/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/d/n/d;->j:[B

    .line 93
    const-string/jumbo v0, "VP8X"

    invoke-static {v0}, Lcom/facebook/d/n/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/d/n/d;->k:[B

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0

    :cond_1
    move v1, v2

    .line 22
    goto :goto_1
.end method

.method public static a()Lcom/facebook/d/n/b;
    .locals 2

    .prologue
    .line 34
    sget-boolean v0, Lcom/facebook/d/n/d;->f:Z

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/facebook/d/n/d;->d:Lcom/facebook/d/n/b;

    .line 46
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 39
    :try_start_0
    const-string/jumbo v0, "com.facebook.webpsupport.WebpBitmapFactoryImpl"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/n/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/d/n/d;->f:Z

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a([BI)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    add-int/lit8 v2, p1, 0xc

    sget-object v3, Lcom/facebook/d/n/d;->k:[B

    invoke-static {p0, v2, v3}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v3

    .line 151
    add-int/lit8 v2, p1, 0x14

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 152
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 151
    goto :goto_0

    :cond_1
    move v0, v1

    .line 152
    goto :goto_1
.end method

.method public static a([BII)Z
    .locals 2

    .prologue
    .line 167
    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, p1, 0xc

    sget-object v1, Lcom/facebook/d/n/d;->k:[B

    .line 168
    invoke-static {p0, v0, v1}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BI[B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    array-length v0, p2

    add-int/2addr v0, p1

    array-length v2, p0

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 209
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 210
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 63
    :try_start_0
    const-string/jumbo v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ASCII not found!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b()Z
    .locals 5

    .prologue
    const/16 v3, 0x11

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_2

    .line 109
    const-string/jumbo v2, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 110
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    array-length v4, v2

    invoke-static {v2, v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 118
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v1, :cond_0

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public static b([BI)Z
    .locals 2

    .prologue
    .line 156
    add-int/lit8 v0, p1, 0xc

    sget-object v1, Lcom/facebook/d/n/d;->i:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v0

    return v0
.end method

.method public static b([BII)Z
    .locals 2

    .prologue
    .line 193
    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    sget-object v0, Lcom/facebook/d/n/d;->g:[B

    .line 194
    invoke-static {p0, p1, v0}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x8

    sget-object v1, Lcom/facebook/d/n/d;->h:[B

    .line 195
    invoke-static {p0, v0, v1}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c([BI)Z
    .locals 2

    .prologue
    .line 160
    add-int/lit8 v0, p1, 0xc

    sget-object v1, Lcom/facebook/d/n/d;->j:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v0

    return v0
.end method

.method public static d([BI)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    add-int/lit8 v2, p1, 0xc

    sget-object v3, Lcom/facebook/d/n/d;->k:[B

    invoke-static {p0, v2, v3}, Lcom/facebook/d/n/d;->a([BI[B)Z

    move-result v3

    .line 176
    add-int/lit8 v2, p1, 0x14

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 177
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 176
    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_1
.end method
