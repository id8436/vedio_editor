.class Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;
.super Ljava/lang/Object;
.source "TitleTextInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;->this$0:Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->access$000(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;Ljava/lang/String;)I

    move-result v1

    .line 76
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 77
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 78
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v3, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 82
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
