.class Lcom/adobe/premiereclip/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$10;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/MainActivity$10;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$10;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1300(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 1458
    if-eqz v0, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$10;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 1460
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$10;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1300(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 1462
    :cond_0
    return-void
.end method
