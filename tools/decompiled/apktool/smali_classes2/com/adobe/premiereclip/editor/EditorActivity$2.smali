.class Lcom/adobe/premiereclip/editor/EditorActivity$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$2;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplitDisabled(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$2;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$200(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/ClipOptionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->disableSplitView()V

    .line 385
    return-void
.end method

.method public onSplitEnabled(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$2;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$200(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/ClipOptionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->enableSplitView()V

    .line 380
    return-void
.end method
