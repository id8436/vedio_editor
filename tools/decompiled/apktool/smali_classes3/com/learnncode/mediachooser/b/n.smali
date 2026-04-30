.class Lcom/learnncode/mediachooser/b/n;
.super Landroid/os/AsyncTask;
.source "VideoLoadAsyncModified.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/learnncode/mediachooser/c/a;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;JIILcom/learnncode/mediachooser/c/a;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/n;->b:Ljava/lang/String;

    .line 47
    iput-wide p2, p0, Lcom/learnncode/mediachooser/b/n;->c:J

    .line 48
    iput-object p6, p0, Lcom/learnncode/mediachooser/b/n;->a:Lcom/learnncode/mediachooser/c/a;

    .line 49
    iput p4, p0, Lcom/learnncode/mediachooser/b/n;->d:I

    .line 50
    iput p5, p0, Lcom/learnncode/mediachooser/b/n;->e:I

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 62
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 63
    iget-wide v2, p0, Lcom/learnncode/mediachooser/b/n;->c:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcom/learnncode/mediachooser/b/n;->d:I

    int-to-float v6, v6

    iget v7, p0, Lcom/learnncode/mediachooser/b/n;->e:I

    int-to-float v7, v7

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/learnncode/mediachooser/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/learnncode/mediachooser/b/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/learnncode/mediachooser/b/n;->a:Lcom/learnncode/mediachooser/c/a;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/c/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/n;->a:Lcom/learnncode/mediachooser/c/a;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/c/a;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/n;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/n;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/learnncode/mediachooser/b/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
