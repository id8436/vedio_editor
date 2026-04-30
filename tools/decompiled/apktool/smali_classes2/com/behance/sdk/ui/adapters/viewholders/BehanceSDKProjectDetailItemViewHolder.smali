.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectDetailItemViewHolder.java"


# instance fields
.field public container:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    .line 18
    :cond_0
    return-void
.end method
