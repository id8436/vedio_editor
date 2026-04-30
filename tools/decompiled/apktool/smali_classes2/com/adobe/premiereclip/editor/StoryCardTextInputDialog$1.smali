.class Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;
.super Ljava/lang/Object;
.source "StoryCardTextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;

    const v1, 0x7f12060b

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->access$000(Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;)Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;->onStoryCardTextChanged(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->dismiss()V

    .line 58
    return-void
.end method
