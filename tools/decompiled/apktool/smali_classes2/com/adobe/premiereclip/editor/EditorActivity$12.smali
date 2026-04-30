.class Lcom/adobe/premiereclip/editor/EditorActivity$12;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$12;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioSettingsUpdated(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$12;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Editor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 1029
    sget-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_DELETE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    if-ne p1, v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$12;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1100(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 1032
    :cond_0
    return-void
.end method
