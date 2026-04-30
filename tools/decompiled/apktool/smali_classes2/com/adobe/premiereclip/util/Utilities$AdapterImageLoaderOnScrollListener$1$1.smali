.class Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;->this$1:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;->this$1:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->access$100(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->startProcessing()V

    .line 879
    iget-object v0, p0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1$1;->this$1:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener$1;->this$0:Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;->access$100(Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;)Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->notifyDataSetChanged()V

    .line 880
    return-void
.end method
