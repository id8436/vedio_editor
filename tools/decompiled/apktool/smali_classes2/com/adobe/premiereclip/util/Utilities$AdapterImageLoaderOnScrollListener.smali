.class public Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "Utilities.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

.field private mTimeOfLastSettlingState:J


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 855
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mTimeOfLastSettlingState:J

    .line 857
    iput-object p2, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mActivity:Landroid/app/Activity;

    .line 858
    iput-object p1, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    .line 859
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)J
    .locals 2

    .prologue
    .line 851
    iget-wide v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mTimeOfLastSettlingState:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    .prologue
    .line 862
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 864
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->startProcessing()V

    .line 866
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->notifyDataSetChanged()V

    .line 869
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    invoke-static {}, Lcom/adobe/premiereclip/util/Utilities;->access$300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;-><init>(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 886
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mAdapter:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->stopProcessing()V

    .line 890
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->mTimeOfLastSettlingState:J

    .line 892
    :cond_3
    return-void
.end method
