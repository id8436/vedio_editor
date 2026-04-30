.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKColorPickerDialogSimple.java"


# static fields
.field private static final KEY_BUNDLE_EXTRA_CURRENT_COLOR:Ljava/lang/String; = "KEY_BUNDLE_EXTRA_CURRENT_COLOR"

.field private static final KEY_BUNDLE_EXTRA_FULLSCREEN:Ljava/lang/String; = "KEY_BUNDLE_EXTRA_FULLSCREEN"

.field private static final KEY_BUNDLE_EXTRA_START_COLOR:Ljava/lang/String; = "KEY_BUNDLE_EXTRA_START_COLOR"


# instance fields
.field private anchor:Landroid/graphics/Point;

.field private bsdkColorPickerDialogBackground:Landroid/view/View;

.field private bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

.field private bsdkColorPickerDialogContentTop:Landroid/widget/LinearLayout;

.field private bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

.field private bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

.field private bsdkColorPickerDialogPointer:Landroid/view/View;

.field private bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

.field private bsdkColorPickerDialogSampleCurrent:Landroid/view/View;

.field private bsdkColorPickerDialogSampleOrig:Landroid/view/View;

.field private colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

.field private currentColor:I

.field dialogHeight:I

.field dialogPointerDiagonal:I

.field dialogWidth:I

.field private fullscreen:Z

.field private startColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->startColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleCurrent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContentTop:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private handleNewAnchor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 206
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 207
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 238
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 211
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 212
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 214
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_2

    .line 215
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 216
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_4

    .line 228
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 221
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 233
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private handleNewAnchorAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 243
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 244
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 245
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 248
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 249
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 251
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_2

    .line 252
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 253
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_4

    .line 265
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 266
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 258
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iget v4, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    .line 193
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

    .line 194
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_sample_orig:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleOrig:Landroid/view/View;

    .line 195
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_sample_current:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleCurrent:Landroid/view/View;

    .line 196
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_pointer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    .line 197
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    .line 198
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_hex_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    .line 199
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogBackground:Landroid/view/View;

    .line 200
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_dialog_content_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContentTop:Landroid/widget/LinearLayout;

    .line 201
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkDialogTheme_TransparentBG:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setStyle(II)V

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    .line 70
    :cond_0
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_START_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_START_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->startColor:I

    .line 72
    :cond_1
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_CURRENT_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string/jumbo v1, "KEY_BUNDLE_EXTRA_CURRENT_COLOR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    .line 76
    :cond_2
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 82
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_color_picker_simple:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->initView(Landroid/view/View;)V

    .line 85
    iget-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleOrig:Landroid/view/View;

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->startColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleCurrent:Landroid/view/View;

    iget v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogSampleOrig:Landroid/view/View;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$4;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V

    .line 132
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogHexInput:Landroid/widget/EditText;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 181
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 182
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 183
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPointer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 184
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogBackground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 185
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogContentTop:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 186
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogPicker:Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    invoke-virtual {v1, v3}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->setAlpha(F)V

    .line 188
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->bsdkColorPickerDialogRoot:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogHeight:I

    .line 96
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogWidth:I

    .line 97
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_pointer_diagonal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->dialogPointerDiagonal:I

    .line 99
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->handleNewAnchor()V

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    invoke-interface {v0, v1}, Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;->onColorSelected(I)V

    .line 333
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 334
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    const-string/jumbo v0, "KEY_BUNDLE_EXTRA_FULLSCREEN"

    iget-boolean v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string/jumbo v0, "KEY_BUNDLE_EXTRA_START_COLOR"

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->startColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string/jumbo v0, "KEY_BUNDLE_EXTRA_CURRENT_COLOR"

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->currentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    .line 327
    return-void
.end method

.method public setFloating(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    .line 291
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    .line 292
    return-void
.end method

.method public setFullscreen()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    .line 280
    return-void
.end method

.method public setStartingColor(I)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->startColor:I

    .line 314
    return-void
.end method

.method public updateAnchor(Landroid/graphics/Point;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->fullscreen:Z

    if-nez v0, :cond_0

    .line 301
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->anchor:Landroid/graphics/Point;

    .line 302
    if-eqz p2, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->handleNewAnchorAnim()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->handleNewAnchor()V

    goto :goto_0
.end method
