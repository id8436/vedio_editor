.class Lcom/adobe/premiereclip/editor/EditorActivity$32;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$32;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$32;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->onClickTextOption(Landroid/view/View;)V

    .line 2413
    return-void
.end method
