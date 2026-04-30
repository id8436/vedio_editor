.class public abstract Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;
.super Ljava/lang/Object;
.source "BehanceSDKDrawerBehavior.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSlide(Landroid/view/View;F)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStateChanged(Landroid/view/View;I)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
