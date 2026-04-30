.class Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 873
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->access$000(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 874
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->access$100(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->access$200(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;-><init>(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 883
    :cond_0
    return-void
.end method
