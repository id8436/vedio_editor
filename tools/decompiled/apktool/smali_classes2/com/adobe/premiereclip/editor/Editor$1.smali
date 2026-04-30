.class Lcom/adobe/premiereclip/editor/Editor$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/Editor;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/Editor;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Editor$1;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor$1;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->access$000(Lcom/adobe/premiereclip/editor/Editor;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor$1;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->access$000(Lcom/adobe/premiereclip/editor/Editor;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->init()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    goto :goto_0
.end method
