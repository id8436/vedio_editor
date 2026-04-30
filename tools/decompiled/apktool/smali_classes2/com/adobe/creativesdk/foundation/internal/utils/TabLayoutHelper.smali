.class public Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupTabLayout(Landroid/support/design/widget/TabLayout;)V
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    return-void
.end method
