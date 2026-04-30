.class Lcom/adobe/premiereclip/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$1;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$1;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$100(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$1;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/MainActivity;->access$000(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 264
    return-void
.end method
