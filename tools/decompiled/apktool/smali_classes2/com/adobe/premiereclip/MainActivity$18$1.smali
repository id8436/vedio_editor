.class Lcom/adobe/premiereclip/MainActivity$18$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$18;)V
    .locals 0

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$18$1;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1887
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$1;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2500(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1888
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$1;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1889
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$1;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1890
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$1;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1891
    return-void
.end method
