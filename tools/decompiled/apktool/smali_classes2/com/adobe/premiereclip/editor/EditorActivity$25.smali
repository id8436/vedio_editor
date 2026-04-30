.class Lcom/adobe/premiereclip/editor/EditorActivity$25;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

.field final synthetic val$currentClipType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2060
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$25;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$25;->val$currentClipType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 2063
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$25;->val$currentClipType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleClipAudioFadeOut(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 2064
    if-eqz p2, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$25;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->setClipOptions(Lcom/adobe/premiereclip/editor/Editor$ClipOptions;F)V

    .line 2069
    :goto_0
    return-void

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$25;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->setClipOptions(Lcom/adobe/premiereclip/editor/Editor$ClipOptions;F)V

    goto :goto_0
.end method
