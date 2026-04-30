.class Lcom/adobe/premiereclip/editor/EditorActivity$23;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$23;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$23;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->onConfirmDelete(Landroid/view/View;)V

    .line 2003
    return-void
.end method
