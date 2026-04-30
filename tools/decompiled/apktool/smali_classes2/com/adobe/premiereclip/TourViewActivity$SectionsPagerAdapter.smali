.class public Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TourViewActivity.java"


# instance fields
.field private currentPageIndex:I

.field private fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 381
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    .line 382
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    .line 379
    iput v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->currentPageIndex:I

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_COUNT:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->ordinal()I

    move-result v0

    return v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->currentPageIndex:I

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 397
    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;-><init>()V

    .line 399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 400
    const-string/jumbo v2, "section_number"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 402
    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    return-object v0
.end method

.method public pauseVideo(I)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->pause()V

    .line 421
    :cond_0
    return-void
.end method

.method public preventPlayback(I)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->preventPlayback()V

    .line 446
    :cond_0
    return-void
.end method

.method public restartVideo(I)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->restart()V

    .line 433
    :cond_0
    return-void
.end method

.method public resumeVideo(I)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->resume()V

    .line 427
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 449
    iput p1, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->currentPageIndex:I

    .line 450
    return-void
.end method

.method public stopVideo(I)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->stop()V

    .line 439
    :cond_0
    return-void
.end method
