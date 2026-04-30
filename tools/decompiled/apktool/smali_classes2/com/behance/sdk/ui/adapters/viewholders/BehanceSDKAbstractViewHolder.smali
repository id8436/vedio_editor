.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKAbstractViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKAbstractViewHolder.java"


# instance fields
.field public card:Landroid/support/v7/widget/CardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKAbstractViewHolder;->card:Landroid/support/v7/widget/CardView;

    .line 16
    return-void
.end method
