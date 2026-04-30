.class Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$1;
.super Ljava/lang/Object;
.source "MediaSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeView()V

    .line 61
    return-void
.end method
