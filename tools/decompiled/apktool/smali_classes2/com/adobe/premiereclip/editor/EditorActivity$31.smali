.class Lcom/adobe/premiereclip/editor/EditorActivity$31;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$31;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTitleTextChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$31;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2800(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setTitleText(Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$31;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2900(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 2215
    return-void
.end method
