.class Lcom/adobe/premiereclip/editor/EditorActivity$39;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isViewAvailable()Z
    .locals 2

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3400(Lcom/adobe/premiereclip/editor/EditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2978
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3500(Lcom/adobe/premiereclip/editor/EditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2979
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2980
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    .line 2981
    invoke-static {}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2982
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2983
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$39;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2984
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3600(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2985
    :cond_0
    const/4 v0, 0x0

    .line 2987
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
