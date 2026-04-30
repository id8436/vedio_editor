.class public final Lcom/facebook/g/b;
.super Ljava/lang/Object;
.source "DefaultImageFormats.java"


# static fields
.field public static final a:Lcom/facebook/g/c;

.field public static final b:Lcom/facebook/g/c;

.field public static final c:Lcom/facebook/g/c;

.field public static final d:Lcom/facebook/g/c;

.field public static final e:Lcom/facebook/g/c;

.field public static final f:Lcom/facebook/g/c;

.field public static final g:Lcom/facebook/g/c;

.field public static final h:Lcom/facebook/g/c;

.field public static final i:Lcom/facebook/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "JPEG"

    const-string/jumbo v2, "jpeg"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    .line 22
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "PNG"

    const-string/jumbo v2, "png"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->b:Lcom/facebook/g/c;

    .line 23
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "GIF"

    const-string/jumbo v2, "gif"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->c:Lcom/facebook/g/c;

    .line 24
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "BMP"

    const-string/jumbo v2, "bmp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->d:Lcom/facebook/g/c;

    .line 25
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "WEBP_SIMPLE"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->e:Lcom/facebook/g/c;

    .line 26
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "WEBP_LOSSLESS"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->f:Lcom/facebook/g/c;

    .line 27
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "WEBP_EXTENDED"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->g:Lcom/facebook/g/c;

    .line 28
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "WEBP_EXTENDED_WITH_ALPHA"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->h:Lcom/facebook/g/c;

    .line 30
    new-instance v0, Lcom/facebook/g/c;

    const-string/jumbo v1, "WEBP_ANIMATED"

    const-string/jumbo v2, "webp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/g/b;->i:Lcom/facebook/g/c;

    return-void
.end method

.method public static a(Lcom/facebook/g/c;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/g/b;->b(Lcom/facebook/g/c;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/g/b;->i:Lcom/facebook/g/c;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/facebook/g/c;)Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/g/b;->e:Lcom/facebook/g/c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/g/b;->f:Lcom/facebook/g/c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/g/b;->g:Lcom/facebook/g/c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/g/b;->h:Lcom/facebook/g/c;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
