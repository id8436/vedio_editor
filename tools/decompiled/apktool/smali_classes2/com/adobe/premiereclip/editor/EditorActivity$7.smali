.class Lcom/adobe/premiereclip/editor/EditorActivity$7;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$7;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$7;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$7;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$7;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 466
    return-void
.end method
