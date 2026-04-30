.class Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field mBindRunningAverageNs:J

.field mCreateRunningAverageNs:J

.field mMaxScrap:I

.field mScrapHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5128
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5129
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5130
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method
