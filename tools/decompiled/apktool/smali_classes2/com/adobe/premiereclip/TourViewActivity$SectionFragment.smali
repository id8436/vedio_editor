.class public Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "TourViewActivity.java"


# static fields
.field public static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field public tourVideo:Lcom/dd/crop/TextureVideoView;

.field private videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    .line 472
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 477
    .line 480
    const v0, 0x7f040134

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 482
    const v0, 0x7f120505

    .line 483
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 484
    const v1, 0x7f120506

    .line 485
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 486
    const v2, 0x7f120504

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 488
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "section_number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_MAIN:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 489
    const v2, 0x7f0a04fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 490
    const v0, 0x7f0a04fc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 491
    const v0, 0x7f120503

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dd/crop/TextureVideoView;

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    .line 492
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0, v6}, Lcom/dd/crop/TextureVideoView;->setVisibility(I)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/premiereclip/TourViewActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->videoUri:Landroid/net/Uri;

    .line 495
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->videoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/dd/crop/TextureVideoView;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 496
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dd/crop/TextureVideoView;->setLooping(Z)V

    .line 497
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->a()V

    .line 508
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 512
    return-object v3

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "section_number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_PREMIEREPRO:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    .line 501
    invoke-virtual {v5}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 502
    const v4, 0x7f0a04ff

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const v0, 0x7f0a04fe

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 504
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    const v0, 0x7f02020e

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->b()V

    .line 519
    :cond_0
    return-void
.end method

.method public preventPlayback()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    if-eqz v0, :cond_0

    .line 551
    const-string/jumbo v0, "TourViewActivity"

    const-string/jumbo v1, "PREVENT playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->b()V

    .line 553
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->d()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    .line 556
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->videoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/dd/crop/TextureVideoView;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 534
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dd/crop/TextureVideoView;->setLooping(Z)V

    .line 535
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->g()V

    .line 536
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->a()V

    .line 538
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->a()V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->restart()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->c()V

    .line 543
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    invoke-virtual {v0}, Lcom/dd/crop/TextureVideoView;->f()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$SectionFragment;->tourVideo:Lcom/dd/crop/TextureVideoView;

    .line 546
    :cond_0
    return-void
.end method
