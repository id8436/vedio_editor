.class public Lcom/adobe/premiereclip/util/ProjectPosterView;
.super Ljava/lang/Object;
.source "ProjectPosterView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V
    .locals 6

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    const v0, 0x7f02020b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 49
    :cond_1
    if-nez p5, :cond_2

    .line 50
    new-instance v0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;-><init>(Ljava/lang/String;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 51
    sget-object v1, Lcom/adobe/premiereclip/util/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->logStats()V

    goto :goto_0

    .line 60
    :cond_3
    new-instance v0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;-><init>(Ljava/lang/String;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 61
    sget-object v1, Lcom/adobe/premiereclip/util/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V
    .locals 7

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 35
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 37
    return-void
.end method
