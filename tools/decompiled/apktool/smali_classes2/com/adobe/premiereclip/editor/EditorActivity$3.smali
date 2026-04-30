.class Lcom/adobe/premiereclip/editor/EditorActivity$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$3;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$3;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/editor/EditorActivity;->onTouchPlayer(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
