.class Lcom/adobe/premiereclip/library/LooksListActivity$2;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

.field final synthetic val$dialogW:I

.field final synthetic val$screenW:F


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity;FI)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    iput p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->val$screenW:F

    iput p3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->val$dialogW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$000(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$200(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$100(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->val$screenW:F

    iget v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->val$dialogW:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x14

    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$100(Lcom/adobe/premiereclip/library/LooksListActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$2;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$000(Lcom/adobe/premiereclip/library/LooksListActivity;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method
