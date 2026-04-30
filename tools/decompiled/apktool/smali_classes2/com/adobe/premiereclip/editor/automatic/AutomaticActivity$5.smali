.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 336
    return-void
.end method
