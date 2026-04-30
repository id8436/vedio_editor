.class public Lcom/alertdialogpro/internal/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/ListAdapter;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Landroid/os/Handler;

.field a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/DialogInterface;

.field private final d:Landroid/view/Window;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/os/Message;

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/os/Message;

.field private u:Landroid/widget/Button;

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/os/Message;

.field private x:Landroid/widget/ScrollView;

.field private y:I

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/alertdialogpro/internal/AlertController;->n:Z

    .line 74
    iput v0, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    .line 84
    iput v0, p0, Lcom/alertdialogpro/internal/AlertController;->F:I

    .line 94
    new-instance v0, Lcom/alertdialogpro/internal/a;

    invoke-direct {v0, p0}, Lcom/alertdialogpro/internal/a;-><init>(Lcom/alertdialogpro/internal/AlertController;)V

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->a:Landroid/view/View$OnClickListener;

    .line 142
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->b:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/alertdialogpro/internal/AlertController;->c:Landroid/content/DialogInterface;

    .line 144
    iput-object p3, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    .line 145
    new-instance v0, Lcom/alertdialogpro/internal/b;

    invoke-direct {v0, p2}, Lcom/alertdialogpro/internal/b;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->L:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x0

    sget-object v1, Lcom/alertdialogpro/g;->AlertDialogPro:[I

    sget v2, Lcom/alertdialogpro/e;->alertDialogProStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    sget v1, Lcom/alertdialogpro/g;->AlertDialogPro_adpLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alertdialogpro/internal/AlertController;->G:I

    .line 153
    sget v1, Lcom/alertdialogpro/g;->AlertDialogPro_adpListLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alertdialogpro/internal/AlertController;->H:I

    .line 156
    sget v1, Lcom/alertdialogpro/g;->AlertDialogPro_adpMultiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alertdialogpro/internal/AlertController;->I:I

    .line 159
    sget v1, Lcom/alertdialogpro/g;->AlertDialogPro_adpSingleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alertdialogpro/internal/AlertController;->J:I

    .line 162
    sget v1, Lcom/alertdialogpro/g;->AlertDialogPro_adpListItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alertdialogpro/internal/AlertController;->K:I

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    :goto_0
    return v0

    .line 173
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 174
    goto :goto_0

    .line 177
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 179
    :cond_2
    if-lez v2, :cond_3

    .line 180
    add-int/lit8 v2, v2, -0x1

    .line 181
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 182
    invoke-static {v3}, Lcom/alertdialogpro/internal/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 433
    .line 435
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 441
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->D:Landroid/view/View;

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 485
    :cond_0
    :goto_0
    return v2

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 449
    :goto_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v4, Lcom/alertdialogpro/f;->adp_icon:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    .line 450
    if-eqz v1, :cond_5

    .line 452
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->B:Landroid/widget/TextView;

    .line 454
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget v0, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    if-lez v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 447
    goto :goto_1

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 464
    :cond_4
    iget v0, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 473
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v2, v3

    .line 482
    goto :goto_0
.end method

.method static synthetic b(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->q:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 489
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    .line 490
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 493
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    .line 494
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/high16 v8, 0x20000

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 355
    invoke-direct {p0, v0}, Lcom/alertdialogpro/internal/AlertController;->b(Landroid/widget/LinearLayout;)V

    .line 356
    invoke-direct {p0}, Lcom/alertdialogpro/internal/AlertController;->d()Z

    move-result v1

    .line 358
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v4, Lcom/alertdialogpro/f;->adp_topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 359
    invoke-direct {p0, v0}, Lcom/alertdialogpro/internal/AlertController;->a(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 361
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v4, Lcom/alertdialogpro/f;->adp_buttonPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    if-nez v1, :cond_0

    .line 363
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 364
    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_textSpacerNoButtons:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 376
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->h:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 377
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->h:Landroid/view/View;

    move-object v4, v1

    .line 385
    :goto_0
    if-eqz v4, :cond_a

    move v1, v2

    .line 386
    :goto_1
    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/alertdialogpro/internal/AlertController;->a(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    :cond_1
    iget-object v6, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 391
    :cond_2
    if-eqz v1, :cond_b

    .line 392
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v6, Lcom/alertdialogpro/f;->adp_custom:I

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 393
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-boolean v4, p0, Lcom/alertdialogpro/internal/AlertController;->n:Z

    if-eqz v4, :cond_3

    .line 396
    iget v4, p0, Lcom/alertdialogpro/internal/AlertController;->j:I

    iget v6, p0, Lcom/alertdialogpro/internal/AlertController;->k:I

    iget v7, p0, Lcom/alertdialogpro/internal/AlertController;->l:I

    iget v8, p0, Lcom/alertdialogpro/internal/AlertController;->m:I

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 409
    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    .line 411
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->h:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_titleDivider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    :goto_3
    if-eqz v0, :cond_6

    .line 418
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->E:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 424
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->E:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    iget v0, p0, Lcom/alertdialogpro/internal/AlertController;->F:I

    if-le v0, v9, :cond_7

    .line 426
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->F:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 427
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 430
    :cond_7
    return-void

    .line 378
    :cond_8
    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->i:I

    if-eqz v1, :cond_9

    .line 379
    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 380
    iget v4, p0, Lcom/alertdialogpro/internal/AlertController;->i:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    .line 381
    goto/16 :goto_0

    .line 382
    :cond_9
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 385
    goto/16 :goto_1

    .line 404
    :cond_b
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 414
    :cond_c
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_titleDividerTop:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic d(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->t:Landroid/os/Message;

    return-object v0
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 517
    .line 518
    const/4 v4, 0x2

    .line 519
    const/4 v5, 0x4

    .line 521
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/alertdialogpro/f;->adp_button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    .line 522
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v6, Lcom/alertdialogpro/f;->adp_button2:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    .line 533
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    iget-object v6, p0, Lcom/alertdialogpro/internal/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    :goto_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    sget v4, Lcom/alertdialogpro/f;->adp_button3:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    .line 545
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alertdialogpro/internal/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    :goto_2
    if-eqz v1, :cond_3

    :goto_3
    return v3

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alertdialogpro/internal/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 529
    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    iget-object v6, p0, Lcom/alertdialogpro/internal/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    or-int/2addr v1, v4

    goto :goto_1

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alertdialogpro/internal/AlertController;->v:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    or-int/2addr v1, v5

    goto :goto_2

    :cond_3
    move v3, v2

    .line 556
    goto :goto_3
.end method

.method static synthetic e(Lcom/alertdialogpro/internal/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->w:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/alertdialogpro/internal/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->c:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic h(Lcom/alertdialogpro/internal/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->L:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 193
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->d:Landroid/view/Window;

    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->G:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 194
    invoke-direct {p0}, Lcom/alertdialogpro/internal/AlertController;->c()V

    .line 195
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 298
    iput p1, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    .line 299
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 300
    if-lez p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alertdialogpro/internal/AlertController;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    if-nez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 265
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->L:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 269
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_0
    iput-object p2, p0, Lcom/alertdialogpro/internal/AlertController;->p:Ljava/lang/CharSequence;

    .line 273
    iput-object p4, p0, Lcom/alertdialogpro/internal/AlertController;->q:Landroid/os/Message;

    .line 289
    :goto_0
    return-void

    .line 277
    :pswitch_1
    iput-object p2, p0, Lcom/alertdialogpro/internal/AlertController;->s:Ljava/lang/CharSequence;

    .line 278
    iput-object p4, p0, Lcom/alertdialogpro/internal/AlertController;->t:Landroid/os/Message;

    goto :goto_0

    .line 282
    :pswitch_2
    iput-object p2, p0, Lcom/alertdialogpro/internal/AlertController;->v:Ljava/lang/CharSequence;

    .line 283
    iput-object p4, p0, Lcom/alertdialogpro/internal/AlertController;->w:Landroid/os/Message;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->h:Landroid/view/View;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/alertdialogpro/internal/AlertController;->i:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/internal/AlertController;->n:Z

    .line 244
    iput p2, p0, Lcom/alertdialogpro/internal/AlertController;->j:I

    .line 245
    iput p3, p0, Lcom/alertdialogpro/internal/AlertController;->k:I

    .line 246
    iput p4, p0, Lcom/alertdialogpro/internal/AlertController;->l:I

    .line 247
    iput p5, p0, Lcom/alertdialogpro/internal/AlertController;->m:I

    .line 248
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->e:Ljava/lang/CharSequence;

    .line 199
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 339
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->o:Landroid/widget/Button;

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->r:Landroid/widget/Button;

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->u:Landroid/widget/Button;

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->D:Landroid/view/View;

    .line 209
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->f:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alertdialogpro/internal/AlertController;->x:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    iput-object p1, p0, Lcom/alertdialogpro/internal/AlertController;->h:Landroid/view/View;

    .line 232
    iput v0, p0, Lcom/alertdialogpro/internal/AlertController;->i:I

    .line 233
    iput-boolean v0, p0, Lcom/alertdialogpro/internal/AlertController;->n:Z

    .line 234
    return-void
.end method
