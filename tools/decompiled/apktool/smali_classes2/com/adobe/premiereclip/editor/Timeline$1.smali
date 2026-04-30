.class Lcom/adobe/premiereclip/editor/Timeline$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "Timeline.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/Timeline;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/Timeline;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$1;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
