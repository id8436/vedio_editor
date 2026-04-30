.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKColorPickerDialog.java"


# static fields
.field private static final KEY_BUNDLE_EXTRA_COLOR:Ljava/lang/String; = "KEY_BUNDLE_EXTRA_COLOR"

.field private static final KEY_BUNDLE_EXTRA_FULLSCREEN:Ljava/lang/String; = "KEY_BUNDLE_EXTRA_FULLSCREEN"


# instance fields
.field private anchor:Landroid/graphics/Point;

.field private bsdkColorPickerDialogCmyk:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

.field private bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

.field private bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

.field private bsdkColorPickerDialogPointer:Landroid/view/View;

.field private bsdkColorPickerDialogRgb:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

.field private bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

.field private bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

.field private bsdkColorPickerDialogWheel:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

.field private bsdkColorPickerHexPreview:Landroid/view/View;

.field private bsdkColorPickerMenu:Landroid/support/design/widget/BottomNavigationView;

.field private color:I

.field private colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

.field dialogHeight:I

.field dialogPointerDiagonal:I

.field dialogWidth:I

.field private fullscreen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogWheel:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    return v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->setColorFromActiveView()V

    return-void
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->setViewFlipperAnimation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogRgb:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogCmyk:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerHexPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    return-object v0
.end method

.method private handleNewAnchor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 264
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 265
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 266
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 296
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 269
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 270
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_2

    .line 273
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 274
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_4

    .line 286
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 287
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 279
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 291
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private handleNewAnchorAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 299
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 301
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 302
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 303
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 331
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 306
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 307
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 309
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_2

    .line 310
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 311
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_4

    .line 323
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 324
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 316
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 328
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    .line 245
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

    .line 246
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_wheel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogWheel:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    .line 247
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_view_flipper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

    .line 248
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_rgb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogRgb:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    .line 249
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_cmyk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogCmyk:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    .line 250
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_hex_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerHexPreview:Landroid/view/View;

    .line 251
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerMenu:Landroid/support/design/widget/BottomNavigationView;

    .line 252
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_hex_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    .line 253
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_pointer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    .line 254
    return-void
.end method

.method private setColorFromActiveView()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/16 v3, 0x10

    .line 396
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogWheel:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogRgb:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    goto :goto_0

    .line 404
    :pswitch_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogCmyk:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setViewFlipperAnimation(Z)V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_right:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 258
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz p1, :cond_1

    sget v0, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_left:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 259
    return-void

    .line 257
    :cond_0
    sget v0, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_left:I

    goto :goto_0

    .line 258
    :cond_1
    sget v0, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_right:I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkDialogTheme_TransparentBG:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->setStyle(II)V

    .line 67
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    .line 77
    :cond_0
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    .line 81
    :cond_1
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const v4, 0x3f59999a    # 0.85f

    const/4 v3, 0x0

    .line 87
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_color_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->initView(Landroid/view/View;)V

    .line 90
    iget-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogWheel:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerMenu:Landroid/support/design/widget/BottomNavigationView;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 173
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$4;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$4;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 232
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 235
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 236
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 237
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 240
    :cond_0
    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogHeight:I

    .line 101
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogWidth:I

    .line 102
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_pointer_diagonal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->dialogPointerDiagonal:I

    .line 104
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->handleNewAnchor()V

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->setColorFromActiveView()V

    .line 390
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    invoke-interface {v0, v1}, Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;->onColorSelected(I)V

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 393
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    const-string/jumbo v0, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    iget-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->setColorFromActiveView()V

    .line 380
    const-string/jumbo v0, "KEY_BUNDLE_EXTRA_COLOR"

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    return-void
.end method

.method public setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    .line 385
    return-void
.end method

.method public setFloating(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    .line 349
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    .line 350
    return-void
.end method

.method public setFullscreen()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    .line 338
    return-void
.end method

.method public setStartingColor(I)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->color:I

    .line 372
    return-void
.end method

.method public updateAnchor(Landroid/graphics/Point;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->fullscreen:Z

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->anchor:Landroid/graphics/Point;

    .line 360
    if-eqz p2, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->handleNewAnchorAnim()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->handleNewAnchor()V

    goto :goto_0
.end method
