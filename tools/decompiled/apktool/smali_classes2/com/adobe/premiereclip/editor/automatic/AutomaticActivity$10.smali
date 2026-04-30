.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isViewAvailable()Z
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 1804
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 1805
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    invoke-static {}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 1807
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 1808
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 1809
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    :cond_0
    const/4 v0, 0x0

    .line 1812
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
