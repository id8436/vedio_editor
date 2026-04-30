.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$7;
.super Ljava/lang/Object;
.source "ClipPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$7;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$7;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->onBackPressed()V

    .line 213
    return-void
.end method
