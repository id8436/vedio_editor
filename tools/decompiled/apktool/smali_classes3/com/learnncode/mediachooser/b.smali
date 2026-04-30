.class public Lcom/learnncode/mediachooser/b;
.super Ljava/lang/Object;
.source "GalleryCacheModified.java"


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/learnncode/mediachooser/b;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/learnncode/mediachooser/b;->b:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/learnncode/mediachooser/b;->a()V

    .line 49
    :cond_0
    sget-object v0, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 15
    sget-boolean v0, Lcom/learnncode/mediachooser/b;->b:Z

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 21
    div-int/lit8 v0, v0, 0x8

    .line 23
    new-instance v1, Lcom/learnncode/mediachooser/c;

    invoke-direct {v1, v0}, Lcom/learnncode/mediachooser/c;-><init>(I)V

    sput-object v1, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/learnncode/mediachooser/b;->b:Z

    .line 34
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/learnncode/mediachooser/b;->b:Z

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/learnncode/mediachooser/b;->a()V

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/learnncode/mediachooser/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, "GalleryCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hit count/Miss count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->hitCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->missCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string/jumbo v0, "GalleryCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Used size/Total size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/learnncode/mediachooser/b;->a:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
