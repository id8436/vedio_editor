.class Lcom/adobe/premiereclip/editor/EditorActivity$30;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$30;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoryCardTextChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$30;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2600(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$30;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/Editor;->makeClipIntoStoryCard(Ljava/lang/String;)V

    .line 2200
    return-void
.end method
