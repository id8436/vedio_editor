.class Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "ExtendableListView.java"


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 0

    .prologue
    .line 2758
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$1;)V
    .locals 0

    .prologue
    .line 2758
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1700(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 2763
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1800(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
