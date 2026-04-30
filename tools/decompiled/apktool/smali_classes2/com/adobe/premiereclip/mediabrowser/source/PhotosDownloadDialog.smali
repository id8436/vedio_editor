.class public Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;
.super Landroid/app/Dialog;
.source "PhotosDownloadDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field protected logoView:Landroid/widget/ImageView;

.field public mCancel:Landroid/widget/TextView;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected prepareStatusView:Landroid/widget/TextView;

.field private progress:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->activity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public addProgress(I)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    const-string/jumbo v0, "Photos Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progress in add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    return-void
.end method

.method public decreaseMaxProgress()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 73
    const-string/jumbo v1, "Photos Dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reducing max prog from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    add-int/lit8 v0, v0, -0x64

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 75
    return-void
.end method

.method public maximumProgress(I)V
    .locals 3

    .prologue
    .line 67
    const-string/jumbo v0, "Photos Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f04011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->setContentView(I)V

    .line 38
    const v0, 0x7f1204bf

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setClickable(Z)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    const v0, 0x7f1204be

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->prepareStatusView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->prepareStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f1204bc

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->logoView:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->logoView:Landroid/widget/ImageView;

    const v1, 0x7f0202e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    const v0, 0x7f1204c0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mCancel:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->prepareStatusView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mCancel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public setImageSource(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-void
.end method

.method public setProgress(II)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    const-string/jumbo v0, "Photos Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progress in set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    return-void
.end method
