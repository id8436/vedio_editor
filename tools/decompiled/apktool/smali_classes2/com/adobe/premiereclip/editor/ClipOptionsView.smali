.class public Lcom/adobe/premiereclip/editor/ClipOptionsView;
.super Ljava/lang/Object;
.source "ClipOptionsView.java"


# static fields
.field private static final DISABLED_COLOR:I = 0x7f110119

.field private static final ENABLED_COLOR:I = 0x7f110118

.field private static final HIGHLIGHT_COLOR:I = 0x7f110117


# instance fields
.field private activity:Landroid/app/Activity;

.field private audioOptionsView:Landroid/view/View;

.field private clipAvailable:Z

.field private clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

.field private clipOptionsLayout:Landroid/widget/RelativeLayout;

.field private clipOptionsTitle:Landroid/view/View;

.field private clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field private currentClipOptionIndex:I

.field private dummyTabs:Landroid/widget/LinearLayout;

.field private editorTop:Landroid/widget/LinearLayout;

.field private exposureOptionsView:Landroid/view/View;

.field private moreOptionsView:Landroid/view/View;

.field private open:Z

.field private splitMessage:Landroid/widget/TextView;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private textOptionsView:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerAdapter:Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->activity:Landroid/app/Activity;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->open:Z

    .line 81
    const v0, 0x7f120109

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->editorTop:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f120108

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsTitle:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v0, 0x7f120508

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 86
    const v0, 0x7f120509

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f120512

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsLayout:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f120513

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 97
    new-instance v0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;-><init>(Lcom/adobe/premiereclip/editor/ClipOptionsView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    const v1, 0x7f040166

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->exposureOptionsView:Landroid/view/View;

    .line 101
    const v1, 0x7f040165

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->audioOptionsView:Landroid/view/View;

    .line 102
    const v1, 0x7f040168

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->textOptionsView:Landroid/view/View;

    .line 103
    const v1, 0x7f040167

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->exposureOptionsView:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->audioOptionsView:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->textOptionsView:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->splitMessage:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->exposureOptionsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->audioOptionsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->textOptionsView:Landroid/view/View;

    return-object v0
.end method

.method private closeView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->editorTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    return-void
.end method

.method private openView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->editorTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    return-void
.end method

.method private selectAudioOption()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;->onSelectAudioOption()V

    .line 352
    :cond_0
    return-void
.end method

.method private selectExposureOption()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;->onSelectExposureOption()V

    .line 346
    :cond_0
    return-void
.end method

.method private selectMoreOption()V
    .locals 7

    .prologue
    const v6, 0x7f1205a7

    const v5, 0x7f1205a2

    const v4, 0x7f12059e

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;->onSelectMoreOption()V

    .line 378
    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private selectTextOption()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;->onSelectTextOption()V

    .line 358
    :cond_0
    return-void
.end method

.method private setColorFilter(Landroid/widget/ImageView;I)V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 383
    return-void
.end method

.method private setDummyTabs(Z)V
    .locals 7

    .prologue
    const v6, 0x7f12050e

    const v5, 0x7f12050c

    const v4, 0x7f12050a

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 280
    sget-object v0, Lcom/adobe/premiereclip/editor/ClipOptionsView$2;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120510

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipAvailable:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110117

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 308
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110117

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 309
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110117

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 310
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120511

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110117

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 322
    :goto_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipAvailable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 324
    :goto_2
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 325
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 326
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 327
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120510

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 328
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120510

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120510

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120510

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110119

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 313
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110119

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 314
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f12050f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110119

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->dummyTabs:Landroid/widget/LinearLayout;

    const v2, 0x7f120511

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f110119

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setColorFilter(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 322
    goto/16 :goto_2

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTabLayout()V
    .locals 7

    .prologue
    const v6, 0x7f020173

    const v5, 0x7f02016a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->setClipType(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/adobe/premiereclip/editor/ClipOptionsView$2;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/adobe/premiereclip/editor/ClipOptionsView$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$1;-><init>(Lcom/adobe/premiereclip/editor/ClipOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 199
    return-void

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 164
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f02018b

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 165
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 169
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f020177

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 173
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public closeClipOption()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->open:Z

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setDummyTabs(Z)V

    .line 245
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->closeView()V

    .line 246
    return-void
.end method

.method public disableSplitView()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->splitMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->activity:Landroid/app/Activity;

    const v2, 0x7f0a04d8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 256
    return-void
.end method

.method public enableClipMoreOptions(Z)V
    .locals 5

    .prologue
    const v4, 0x7f1205a5

    const v3, 0x7f1205a3

    const/4 v2, -0x1

    const v1, -0x777778

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public enableSplitView()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->splitMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->activity:Landroid/app/Activity;

    const v2, 0x7f0a04d9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 251
    return-void
.end method

.method public getAudioOptionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->audioOptionsView:Landroid/view/View;

    return-object v0
.end method

.method public getExposureOptionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->exposureOptionsView:Landroid/view/View;

    return-object v0
.end method

.method public getMoreOptionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->moreOptionsView:Landroid/view/View;

    return-object v0
.end method

.method public getTextOptionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->textOptionsView:Landroid/view/View;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->open:Z

    return v0
.end method

.method public reOpen()V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->currentClipOptionIndex:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectDummyOption(I)V

    .line 219
    return-void
.end method

.method public selectClipOption(I)V
    .locals 2

    .prologue
    .line 222
    iput p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->currentClipOptionIndex:I

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectExposureOption()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectTextOption()V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectAudioOption()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectMoreOption()V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectMoreOption()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectDummyOption(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipAvailable:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 204
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setDummyTabs(Z)V

    .line 205
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->openView()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->open:Z

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;->onClipOptionsOpened()V

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectClipOption(I)V

    .line 212
    :cond_1
    return-void
.end method

.method public setClip(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Z)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 125
    iput-boolean p2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipAvailable:Z

    .line 126
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->open:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setDummyTabs(Z)V

    .line 128
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setTabLayout()V

    .line 130
    :cond_0
    return-void
.end method

.method public setClipOptionListener(Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView;->clipOptionListener:Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;

    .line 134
    return-void
.end method
