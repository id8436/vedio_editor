.class public Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "BehanceSDKOverFlowLayout.java"


# instance fields
.field public final horizontal_spacing:I

.field public final vertical_spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;->horizontal_spacing:I

    .line 26
    iput p2, p0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;->vertical_spacing:I

    .line 27
    return-void
.end method
