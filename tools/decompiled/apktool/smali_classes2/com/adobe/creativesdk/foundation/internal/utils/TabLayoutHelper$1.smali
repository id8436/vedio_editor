.class final Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic val$tabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;->val$tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;->val$tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;->val$tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v2, v1

    .line 24
    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 26
    if-le v3, v2, :cond_0

    move v2, v3

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;->val$tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method
