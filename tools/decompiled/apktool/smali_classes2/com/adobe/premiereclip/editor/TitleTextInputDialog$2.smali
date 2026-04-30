.class Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;
.super Ljava/lang/Object;
.source "TitleTextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    const v1, 0x7f12060b

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-gt v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->access$100(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;)Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;->onTitleTextChanged(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->dismiss()V

    .line 95
    :cond_0
    return-void
.end method
